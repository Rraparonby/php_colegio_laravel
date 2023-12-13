<?php

namespace App\Console\Commands\Estructura\DocenteMateria;

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

use Illuminate\Console\Command;
use Illuminate\Database\Eloquent\Collection;

use App\Lib\Base\Business\Logic\Pagination;
use App\Lib\Base\Util\Constantes;
use App\Lib\Base\Util\TipoAccionEnum;

use App\Models\Estructura\DocenteMateria;
use App\Lib\Entities\Estructura\DocenteMateriaReturnView;
use Database\Factories\Estructura\DocenteMateriaFactory;

class DocenteMateriaCrud extends Command {
	
    /* The name and signature of the console command, @var string */
    protected $signature = 'docente_materia:crud {tipo}';

    /* The console command description, @var string */
    protected $description = 'Command description';
	
	public $tipo='I';//I,U,D
	
	public DocenteMateria $docente_materia1;
	public Collection $docente_materias;
	public $docente_materiaFactory;
	
	public function __construct() {
        parent::__construct();
		
		$this->docente_materiaFactory = new DocenteMateriaFactory();
    }

    /* Execute the console command, @return int */
    public function handle() {
		$this->info('---------- Procesando docente_materia:crud ----------');
		
		if($this->tipo=='I') {
			
			//INSERT
			$this->docente_materia1 = new DocenteMateria();
			
			
			$this->docente_materia1->created_at = date('Y-m-d H:i:s');
			$this->docente_materia1->updated_at = date('Y-m-d H:i:s');
			$this->docente_materia1->id_docente = -1;
			$this->docente_materia1->id_materia = -1;						
			
			$this->docente_materia1->save();
			
		} else if($this->tipo=='U') {
		
			//UPDATE
			$this->docente_materia1 = new DocenteMateria();
			
			$this->docente_materia1 = DocenteMateria::find(1);
			
			
			$this->docente_materia1->created_at = date('Y-m-d H:i:s');
			$this->docente_materia1->updated_at = date('Y-m-d H:i:s');
			$this->docente_materia1->id_docente = -1;
			$this->docente_materia1->id_materia = -1;			
			
			$this->docente_materia1->save();
			
		} else if($this->tipo=='D') {
		
			//DELETE
			$this->docente_materia1 = new DocenteMateria();
			
			$this->docente_materia1 = DocenteMateria::find(1);
			
			$this->docente_materia1->delete();
		
		} else if($this->tipo=='F') {
		
			//FACTORY
			$this->docente_materiaFactory->count(5)
									->create();
		
		}
		
		$this->info('----- Ejecutado Correctamente -----');				
		
				
    }
	
	//php artisan docente_materia:crud I
}