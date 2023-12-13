<?php

namespace App\Console\Commands\Estructura\Alumno;

use Illuminate\Console\Command;
use Illuminate\Database\Eloquent\Collection;

use App\Lib\Base\Business\Logic\Pagination;
use App\Lib\Base\Util\Constantes;
use App\Lib\Base\Util\TipoAccionEnum;
use App\Models\Estructura\Alumno;
use App\Lib\Entities\Estructura\AlumnoReturnView;

class AlumnoGetTodos extends Command {
	
    /* The name and signature of the console command.
     * @var string */
    protected $signature = 'alumno:get_todos {limit} {skip}';

    /* The console command description.
     * @var string */
    protected $description = 'Command description';
	
	public Pagination $pagination1;
	
	public Alumno $alumno1;
	public Collection $alumnos;
	
	public array $headers_alumnos;
	public array $data_alumnos;
	
	public function __construct() {
        parent::__construct();
    }

    /* Execute the console command.
     * @return int */
    public function handle() {
		$sql_query = '';
		$this->info('---------- Procesado alumno:get_todos ----------');
		
		//Limit,Skip Parameter		
		$this->pagination1 = new Pagination();
		$this->pagination1->skip = intval($this->argument('skip'));
		$this->pagination1->limit = intval($this->argument('limit'));
		
		//Data
		$this->info('----- Alumnos -----');				
		$this->headers_alumnos = [];		
		
		//$this->alumnos = Alumno::all();
		
		$this->alumnos = Alumno::skip($this->pagination1->skip)
			 						->take($this->pagination1->limit)
			 						->get();
		//LOG
		if(Constantes::$CON_LOG) {
			$sql_query = Alumno::toSql();
			$this->info($sql_query);
		}
		
		$this->data_alumnos = $this->alumnos->toArray();
									
		$this->table($this->headers_alumnos,$this->data_alumnos);
    }
	
	//php artisan alumno:get_todos 10 0
}