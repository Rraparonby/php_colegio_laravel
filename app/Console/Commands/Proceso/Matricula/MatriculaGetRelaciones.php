<?php

namespace App\Console\Commands\Proceso\Matricula;

use Illuminate\Console\Command;
use Illuminate\Database\Eloquent\Collection;

use App\Lib\Base\Business\Logic\Pagination;
use App\Lib\Base\Util\Constantes;
use App\Lib\Base\Util\TipoAccionEnum;
use App\Models\Proceso\Matricula;
use App\Lib\Entities\Proceso\MatriculaReturnView;

class MatriculaGetRelaciones extends Command {
	
    /* The name and signature of the console command.
     * @var string */
    protected $signature = 'matricula:get_relaciones {limit} {skip}';

    /* The console command description.
     * @var string */
    protected $description = 'Command description';
	
	public Pagination $pagination1;
	
	public Matricula $matricula1;
	public Collection $matriculas;
	
	public array $headers_matriculas;
	public array $data_matriculas;
	
	public function __construct() {
        parent::__construct();
    }

    /* Execute the console command.
     * @return int */
    public function handle() {
		$sql_query = '';
		$this->info('---------- Procesado matricula:get_todos ----------');
		
		//Limit,Skip Parameter		
		$this->pagination1 = new Pagination();
		$this->pagination1->skip = intval($this->argument('skip'));
		$this->pagination1->limit = intval($this->argument('limit'));
		
		//Data
		$this->info('----- Matriculas -----');				
		$this->headers_matriculas = [];		
		
		//$this->matriculas = Matricula::all();
		
		$this->matriculas = Matricula::skip($this->pagination1->skip)
			 						->take($this->pagination1->limit)
			 						->get();
		//LOG
		if(Constantes::$CON_LOG) {
			$sql_query = Matricula::toSql();
			$this->info($sql_query);
		}
		
		/*----------------- FKs ----------------*/
		
		$alumno = null;	
		
		/*----------------- RELACIONES ----------------*/
		
	
		foreach($this->matriculas as $matricula) {
			/*----- FKs -----*/
			
			$alumno = $matricula->alumno;	
			
			/*----- Relaciones -----*/
			
		}
		
		$this->info($this->matriculas);
		
		//$this->data_matriculas = $this->matriculas->toArray();
									
		//$this->table($this->headers_matriculas,$this->data_matriculas);
    }
	
	//php artisan matricula:get_relaciones 10 0
}