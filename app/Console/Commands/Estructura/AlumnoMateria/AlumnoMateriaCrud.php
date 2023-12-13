<?php

namespace App\Console\Commands\Estructura\AlumnoMateria;

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

use Illuminate\Console\Command;
use Illuminate\Database\Eloquent\Collection;

use App\Lib\Base\Business\Logic\Pagination;
use App\Lib\Base\Util\Constantes;
use App\Lib\Base\Util\TipoAccionEnum;

use App\Models\Estructura\AlumnoMateria;
use App\Lib\Entities\Estructura\AlumnoMateriaReturnView;
use Database\Factories\Estructura\AlumnoMateriaFactory;

class AlumnoMateriaCrud extends Command {
	
    /* The name and signature of the console command, @var string */
    protected $signature = 'alumno_materia:crud {tipo}';

    /* The console command description, @var string */
    protected $description = 'Command description';
	
	public $tipo='I';//I,U,D
	
	public AlumnoMateria $alumno_materia1;
	public Collection $alumno_materias;
	public $alumno_materiaFactory;
	
	public function __construct() {
        parent::__construct();
		
		$this->alumno_materiaFactory = new AlumnoMateriaFactory();
    }

    /* Execute the console command, @return int */
    public function handle() {
		$this->info('---------- Procesando alumno_materia:crud ----------');
		
		if($this->tipo=='I') {
			
			//INSERT
			$this->alumno_materia1 = new AlumnoMateria();
			
			
			$this->alumno_materia1->created_at = date('Y-m-d H:i:s');
			$this->alumno_materia1->updated_at = date('Y-m-d H:i:s');
			$this->alumno_materia1->id_alumno = -1;
			$this->alumno_materia1->id_materia = -1;						
			
			$this->alumno_materia1->save();
			
		} else if($this->tipo=='U') {
		
			//UPDATE
			$this->alumno_materia1 = new AlumnoMateria();
			
			$this->alumno_materia1 = AlumnoMateria::find(1);
			
			
			$this->alumno_materia1->created_at = date('Y-m-d H:i:s');
			$this->alumno_materia1->updated_at = date('Y-m-d H:i:s');
			$this->alumno_materia1->id_alumno = -1;
			$this->alumno_materia1->id_materia = -1;			
			
			$this->alumno_materia1->save();
			
		} else if($this->tipo=='D') {
		
			//DELETE
			$this->alumno_materia1 = new AlumnoMateria();
			
			$this->alumno_materia1 = AlumnoMateria::find(1);
			
			$this->alumno_materia1->delete();
		
		} else if($this->tipo=='F') {
		
			//FACTORY
			$this->alumno_materiaFactory->count(5)
									->create();
		
		}
		
		$this->info('----- Ejecutado Correctamente -----');				
		
				
    }
	
	//php artisan alumno_materia:crud I
}