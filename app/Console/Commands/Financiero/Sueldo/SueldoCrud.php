<?php

namespace App\Console\Commands\Financiero\Sueldo;

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

use Illuminate\Console\Command;
use Illuminate\Database\Eloquent\Collection;

use App\Lib\Base\Business\Logic\Pagination;
use App\Lib\Base\Util\Constantes;
use App\Lib\Base\Util\TipoAccionEnum;

use App\Models\Financiero\Sueldo;
use App\Lib\Entities\Financiero\SueldoReturnView;
use Database\Factories\Financiero\SueldoFactory;

class SueldoCrud extends Command {
	
    /* The name and signature of the console command, @var string */
    protected $signature = 'sueldo:crud {tipo}';

    /* The console command description, @var string */
    protected $description = 'Command description';
	
	public $tipo='I';//I,U,D
	
	public Sueldo $sueldo1;
	public Collection $sueldos;
	public $sueldoFactory;
	
	public function __construct() {
        parent::__construct();
		
		$this->sueldoFactory = new SueldoFactory();
    }

    /* Execute the console command, @return int */
    public function handle() {
		$this->info('---------- Procesando sueldo:crud ----------');
		
		if($this->tipo=='I') {
			
			//INSERT
			$this->sueldo1 = new Sueldo();
			
			
			$this->sueldo1->created_at = date('Y-m-d H:i:s');
			$this->sueldo1->updated_at = date('Y-m-d H:i:s');
			$this->sueldo1->id_docente = -1;
			$this->sueldo1->anio = 0;
			$this->sueldo1->mes = 0;
			$this->sueldo1->valor = 0.0;
			$this->sueldo1->cobrado = false;						
			
			$this->sueldo1->save();
			
		} else if($this->tipo=='U') {
		
			//UPDATE
			$this->sueldo1 = new Sueldo();
			
			$this->sueldo1 = Sueldo::find(1);
			
			
			$this->sueldo1->created_at = date('Y-m-d H:i:s');
			$this->sueldo1->updated_at = date('Y-m-d H:i:s');
			$this->sueldo1->id_docente = -1;
			$this->sueldo1->anio = 0;
			$this->sueldo1->mes = 0;
			$this->sueldo1->valor = 0.0;
			$this->sueldo1->cobrado = false;			
			
			$this->sueldo1->save();
			
		} else if($this->tipo=='D') {
		
			//DELETE
			$this->sueldo1 = new Sueldo();
			
			$this->sueldo1 = Sueldo::find(1);
			
			$this->sueldo1->delete();
		
		} else if($this->tipo=='F') {
		
			//FACTORY
			$this->sueldoFactory->count(5)
									->create();
		
		}
		
		$this->info('----- Ejecutado Correctamente -----');				
		
				
    }
	
	//php artisan sueldo:crud I
}