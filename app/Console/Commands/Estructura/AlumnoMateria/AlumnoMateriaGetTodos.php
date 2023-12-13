<?php

namespace App\Console\Commands\Estructura\AlumnoMateria;

use Illuminate\Console\Command;
use Illuminate\Database\Eloquent\Collection;

use App\Lib\Base\Business\Logic\Pagination;
use App\Lib\Base\Util\Constantes;
use App\Lib\Base\Util\TipoAccionEnum;
use App\Models\Estructura\AlumnoMateria;
use App\Lib\Entities\Estructura\AlumnoMateriaReturnView;

class AlumnoMateriaGetTodos extends Command {
	
    /* The name and signature of the console command.
     * @var string */
    protected $signature = 'alumno_materia:get_todos {limit} {skip}';

    /* The console command description.
     * @var string */
    protected $description = 'Command description';
	
	public Pagination $pagination1;
	
	public AlumnoMateria $alumno_materia1;
	public Collection $alumno_materias;
	
	public array $headers_alumno_materias;
	public array $data_alumno_materias;
	
	public function __construct() {
        parent::__construct();
    }

    /* Execute the console command.
     * @return int */
    public function handle() {
		$sql_query = '';
		$this->info('---------- Procesado alumno_materia:get_todos ----------');
		
		//Limit,Skip Parameter		
		$this->pagination1 = new Pagination();
		$this->pagination1->skip = intval($this->argument('skip'));
		$this->pagination1->limit = intval($this->argument('limit'));
		
		//Data
		$this->info('----- AlumnoMaterias -----');				
		$this->headers_alumno_materias = [];		
		
		//$this->alumno_materias = AlumnoMateria::all();
		
		$this->alumno_materias = AlumnoMateria::skip($this->pagination1->skip)
			 						->take($this->pagination1->limit)
			 						->get();
		//LOG
		if(Constantes::$CON_LOG) {
			$sql_query = AlumnoMateria::toSql();
			$this->info($sql_query);
		}
		
		$this->data_alumno_materias = $this->alumno_materias->toArray();
									
		$this->table($this->headers_alumno_materias,$this->data_alumno_materias);
    }
	
	//php artisan alumno_materia:get_todos 10 0
}