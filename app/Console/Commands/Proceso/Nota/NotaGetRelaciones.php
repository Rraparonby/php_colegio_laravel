<?php

namespace App\Console\Commands\Proceso\Nota;

use Illuminate\Console\Command;
use Illuminate\Database\Eloquent\Collection;

use App\Lib\Base\Business\Logic\Pagination;
use App\Lib\Base\Util\Constantes;
use App\Lib\Base\Util\TipoAccionEnum;
use App\Models\Proceso\Nota;
use App\Lib\Entities\Proceso\NotaReturnView;

class NotaGetRelaciones extends Command {
	
    /* The name and signature of the console command.
     * @var string */
    protected $signature = 'nota:get_relaciones {limit} {skip}';

    /* The console command description.
     * @var string */
    protected $description = 'Command description';
	
	public Pagination $pagination1;
	
	public Nota $nota1;
	public Collection $notas;
	
	public array $headers_notas;
	public array $data_notas;
	
	public function __construct() {
        parent::__construct();
    }

    /* Execute the console command.
     * @return int */
    public function handle() {
		$sql_query = '';
		$this->info('---------- Procesado nota:get_todos ----------');
		
		//Limit,Skip Parameter		
		$this->pagination1 = new Pagination();
		$this->pagination1->skip = intval($this->argument('skip'));
		$this->pagination1->limit = intval($this->argument('limit'));
		
		//Data
		$this->info('----- Notas -----');				
		$this->headers_notas = [];		
		
		//$this->notas = Nota::all();
		
		$this->notas = Nota::skip($this->pagination1->skip)
			 						->take($this->pagination1->limit)
			 						->get();
		//LOG
		if(Constantes::$CON_LOG) {
			$sql_query = Nota::toSql();
			$this->info($sql_query);
		}
		
		/*----------------- FKs ----------------*/
		
		$alumno = null;	
		$materia = null;	
		$docente = null;	
		
		/*----------------- RELACIONES ----------------*/
		
	
		foreach($this->notas as $nota) {
			/*----- FKs -----*/
			
			$alumno = $nota->alumno;	
			$materia = $nota->materia;	
			$docente = $nota->docente;	
			
			/*----- Relaciones -----*/
			
		}
		
		$this->info($this->notas);
		
		//$this->data_notas = $this->notas->toArray();
									
		//$this->table($this->headers_notas,$this->data_notas);
    }
	
	//php artisan nota:get_relaciones 10 0
}