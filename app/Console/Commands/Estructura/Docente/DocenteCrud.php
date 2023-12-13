<?php

namespace App\Console\Commands\Estructura\Docente;

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

use Illuminate\Console\Command;
use Illuminate\Database\Eloquent\Collection;

use App\Lib\Base\Business\Logic\Pagination;
use App\Lib\Base\Util\Constantes;
use App\Lib\Base\Util\TipoAccionEnum;

use App\Models\Estructura\Docente;
use App\Lib\Entities\Estructura\DocenteReturnView;
use Database\Factories\Estructura\DocenteFactory;

class DocenteCrud extends Command {
	
    /* The name and signature of the console command, @var string */
    protected $signature = 'docente:crud {tipo}';

    /* The console command description, @var string */
    protected $description = 'Command description';
	
	public $tipo='I';//I,U,D
	
	public Docente $docente1;
	public Collection $docentes;
	public $docenteFactory;
	
	public function __construct() {
        parent::__construct();
		
		$this->docenteFactory = new DocenteFactory();
    }

    /* Execute the console command, @return int */
    public function handle() {
		$this->info('---------- Procesando docente:crud ----------');
		
		if($this->tipo=='I') {
			
			//INSERT
			$this->docente1 = new Docente();
			
			
			$this->docente1->created_at = date('Y-m-d H:i:s');
			$this->docente1->updated_at = date('Y-m-d H:i:s');
			$this->docente1->nombre = Str::random(25);
			$this->docente1->apellido = Str::random(25);
			$this->docente1->fecha_nacimiento = date('Y-m-d');
			$this->docente1->anios_experiencia = 0;
			$this->docente1->nota_evaluacion = 0.0;						
			
			$this->docente1->save();
			
		} else if($this->tipo=='U') {
		
			//UPDATE
			$this->docente1 = new Docente();
			
			$this->docente1 = Docente::find(1);
			
			
			$this->docente1->created_at = date('Y-m-d H:i:s');
			$this->docente1->updated_at = date('Y-m-d H:i:s');
			$this->docente1->nombre = Str::random(25);
			$this->docente1->apellido = Str::random(25);
			$this->docente1->fecha_nacimiento = date('Y-m-d');
			$this->docente1->anios_experiencia = 0;
			$this->docente1->nota_evaluacion = 0.0;			
			
			$this->docente1->save();
			
		} else if($this->tipo=='D') {
		
			//DELETE
			$this->docente1 = new Docente();
			
			$this->docente1 = Docente::find(1);
			
			$this->docente1->delete();
		
		} else if($this->tipo=='F') {
		
			//FACTORY
			$this->docenteFactory->count(5)
									->create();
		
		}
		
		$this->info('----- Ejecutado Correctamente -----');				
		
				
    }
	
	//php artisan docente:crud I
}