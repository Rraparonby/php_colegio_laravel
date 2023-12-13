<?php

namespace App\Console\Commands\Estructura\Alumno;

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

use Illuminate\Console\Command;
use Illuminate\Database\Eloquent\Collection;

use App\Lib\Base\Business\Logic\Pagination;
use App\Lib\Base\Util\Constantes;
use App\Lib\Base\Util\TipoAccionEnum;

use App\Models\Estructura\Alumno;
use App\Lib\Entities\Estructura\AlumnoReturnView;
use Database\Factories\Estructura\AlumnoFactory;

class AlumnoCrud extends Command {
	
    /* The name and signature of the console command, @var string */
    protected $signature = 'alumno:crud {tipo}';

    /* The console command description, @var string */
    protected $description = 'Command description';
	
	public $tipo='I';//I,U,D
	
	public Alumno $alumno1;
	public Collection $alumnos;
	public $alumnoFactory;
	
	public function __construct() {
        parent::__construct();
		
		$this->alumnoFactory = new AlumnoFactory();
    }

    /* Execute the console command, @return int */
    public function handle() {
		$this->info('---------- Procesando alumno:crud ----------');
		
		if($this->tipo=='I') {
			
			//INSERT
			$this->alumno1 = new Alumno();
			
			
			$this->alumno1->created_at = date('Y-m-d H:i:s');
			$this->alumno1->updated_at = date('Y-m-d H:i:s');
			$this->alumno1->nombre = Str::random(25);
			$this->alumno1->apellido = Str::random(25);
			$this->alumno1->fecha_nacimiento = date('Y-m-d');						
			
			$this->alumno1->save();
			
		} else if($this->tipo=='U') {
		
			//UPDATE
			$this->alumno1 = new Alumno();
			
			$this->alumno1 = Alumno::find(1);
			
			
			$this->alumno1->created_at = date('Y-m-d H:i:s');
			$this->alumno1->updated_at = date('Y-m-d H:i:s');
			$this->alumno1->nombre = Str::random(25);
			$this->alumno1->apellido = Str::random(25);
			$this->alumno1->fecha_nacimiento = date('Y-m-d');			
			
			$this->alumno1->save();
			
		} else if($this->tipo=='D') {
		
			//DELETE
			$this->alumno1 = new Alumno();
			
			$this->alumno1 = Alumno::find(1);
			
			$this->alumno1->delete();
		
		} else if($this->tipo=='F') {
		
			//FACTORY
			$this->alumnoFactory->count(5)
									->create();
		
		}
		
		$this->info('----- Ejecutado Correctamente -----');				
		
				
    }
	
	//php artisan alumno:crud I
}