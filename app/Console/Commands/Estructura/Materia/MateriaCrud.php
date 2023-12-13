<?php

namespace App\Console\Commands\Estructura\Materia;

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

use Illuminate\Console\Command;
use Illuminate\Database\Eloquent\Collection;

use App\Lib\Base\Business\Logic\Pagination;
use App\Lib\Base\Util\Constantes;
use App\Lib\Base\Util\TipoAccionEnum;

use App\Models\Estructura\Materia;
use App\Lib\Entities\Estructura\MateriaReturnView;
use Database\Factories\Estructura\MateriaFactory;

class MateriaCrud extends Command {
	
    /* The name and signature of the console command, @var string */
    protected $signature = 'materia:crud {tipo}';

    /* The console command description, @var string */
    protected $description = 'Command description';
	
	public $tipo='I';//I,U,D
	
	public Materia $materia1;
	public Collection $materias;
	public $materiaFactory;
	
	public function __construct() {
        parent::__construct();
		
		$this->materiaFactory = new MateriaFactory();
    }

    /* Execute the console command, @return int */
    public function handle() {
		$this->info('---------- Procesando materia:crud ----------');
		
		if($this->tipo=='I') {
			
			//INSERT
			$this->materia1 = new Materia();
			
			
			$this->materia1->created_at = date('Y-m-d H:i:s');
			$this->materia1->updated_at = date('Y-m-d H:i:s');
			$this->materia1->codigo = Str::random(15);
			$this->materia1->nombre = Str::random(25);
			$this->materia1->activo = false;						
			
			$this->materia1->save();
			
		} else if($this->tipo=='U') {
		
			//UPDATE
			$this->materia1 = new Materia();
			
			$this->materia1 = Materia::find(1);
			
			
			$this->materia1->created_at = date('Y-m-d H:i:s');
			$this->materia1->updated_at = date('Y-m-d H:i:s');
			$this->materia1->codigo = Str::random(15);
			$this->materia1->nombre = Str::random(25);
			$this->materia1->activo = false;			
			
			$this->materia1->save();
			
		} else if($this->tipo=='D') {
		
			//DELETE
			$this->materia1 = new Materia();
			
			$this->materia1 = Materia::find(1);
			
			$this->materia1->delete();
		
		} else if($this->tipo=='F') {
		
			//FACTORY
			$this->materiaFactory->count(5)
									->create();
		
		}
		
		$this->info('----- Ejecutado Correctamente -----');				
		
				
    }
	
	//php artisan materia:crud I
}