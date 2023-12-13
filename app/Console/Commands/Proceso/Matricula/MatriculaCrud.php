<?php

namespace App\Console\Commands\Proceso\Matricula;

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

use Illuminate\Console\Command;
use Illuminate\Database\Eloquent\Collection;

use App\Lib\Base\Business\Logic\Pagination;
use App\Lib\Base\Util\Constantes;
use App\Lib\Base\Util\TipoAccionEnum;

use App\Models\Proceso\Matricula;
use App\Lib\Entities\Proceso\MatriculaReturnView;
use Database\Factories\Proceso\MatriculaFactory;

class MatriculaCrud extends Command {
	
    /* The name and signature of the console command, @var string */
    protected $signature = 'matricula:crud {tipo}';

    /* The console command description, @var string */
    protected $description = 'Command description';
	
	public $tipo='I';//I,U,D
	
	public Matricula $matricula1;
	public Collection $matriculas;
	public $matriculaFactory;
	
	public function __construct() {
        parent::__construct();
		
		$this->matriculaFactory = new MatriculaFactory();
    }

    /* Execute the console command, @return int */
    public function handle() {
		$this->info('---------- Procesando matricula:crud ----------');
		
		if($this->tipo=='I') {
			
			//INSERT
			$this->matricula1 = new Matricula();
			
			
			$this->matricula1->created_at = date('Y-m-d H:i:s');
			$this->matricula1->updated_at = date('Y-m-d H:i:s');
			$this->matricula1->anio = 0;
			$this->matricula1->costo = 0.0;
			$this->matricula1->fecha = date('Y-m-d');
			$this->matricula1->pagado = false;						
			
			$this->matricula1->save();
			
		} else if($this->tipo=='U') {
		
			//UPDATE
			$this->matricula1 = new Matricula();
			
			$this->matricula1 = Matricula::find(1);
			
			
			$this->matricula1->created_at = date('Y-m-d H:i:s');
			$this->matricula1->updated_at = date('Y-m-d H:i:s');
			$this->matricula1->anio = 0;
			$this->matricula1->costo = 0.0;
			$this->matricula1->fecha = date('Y-m-d');
			$this->matricula1->pagado = false;			
			
			$this->matricula1->save();
			
		} else if($this->tipo=='D') {
		
			//DELETE
			$this->matricula1 = new Matricula();
			
			$this->matricula1 = Matricula::find(1);
			
			$this->matricula1->delete();
		
		} else if($this->tipo=='F') {
		
			//FACTORY
			$this->matriculaFactory->count(5)
									->create();
		
		}
		
		$this->info('----- Ejecutado Correctamente -----');				
		
				
    }
	
	//php artisan matricula:crud I
}