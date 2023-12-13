<?php

namespace App\Console\Commands\Estructura\DocenteMateria;

use Illuminate\Console\Command;
use Illuminate\Database\Eloquent\Collection;

use App\Lib\Base\Business\Logic\Pagination;
use App\Lib\Base\Util\Constantes;
use App\Lib\Base\Util\TipoAccionEnum;
use App\Models\Estructura\DocenteMateria;
use App\Lib\Entities\Estructura\DocenteMateriaReturnView;

class DocenteMateriaGetRelaciones extends Command {
	
    /* The name and signature of the console command.
     * @var string */
    protected $signature = 'docente_materia:get_relaciones {limit} {skip}';

    /* The console command description.
     * @var string */
    protected $description = 'Command description';
	
	public Pagination $pagination1;
	
	public DocenteMateria $docente_materia1;
	public Collection $docente_materias;
	
	public array $headers_docente_materias;
	public array $data_docente_materias;
	
	public function __construct() {
        parent::__construct();
    }

    /* Execute the console command.
     * @return int */
    public function handle() {
		$sql_query = '';
		$this->info('---------- Procesado docente_materia:get_todos ----------');
		
		//Limit,Skip Parameter		
		$this->pagination1 = new Pagination();
		$this->pagination1->skip = intval($this->argument('skip'));
		$this->pagination1->limit = intval($this->argument('limit'));
		
		//Data
		$this->info('----- DocenteMaterias -----');				
		$this->headers_docente_materias = [];		
		
		//$this->docente_materias = DocenteMateria::all();
		
		$this->docente_materias = DocenteMateria::skip($this->pagination1->skip)
			 						->take($this->pagination1->limit)
			 						->get();
		//LOG
		if(Constantes::$CON_LOG) {
			$sql_query = DocenteMateria::toSql();
			$this->info($sql_query);
		}
		
		/*----------------- FKs ----------------*/
		
		$docente = null;	
		$materia = null;	
		
		/*----------------- RELACIONES ----------------*/
		
	
		foreach($this->docente_materias as $docente_materia) {
			/*----- FKs -----*/
			
			$docente = $docente_materia->docente;	
			$materia = $docente_materia->materia;	
			
			/*----- Relaciones -----*/
			
		}
		
		$this->info($this->docente_materias);
		
		//$this->data_docente_materias = $this->docente_materias->toArray();
									
		//$this->table($this->headers_docente_materias,$this->data_docente_materias);
    }
	
	//php artisan docente_materia:get_relaciones 10 0
}