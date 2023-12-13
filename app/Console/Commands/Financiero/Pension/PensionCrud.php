<?php

namespace App\Console\Commands\Financiero\Pension;

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

use Illuminate\Console\Command;
use Illuminate\Database\Eloquent\Collection;

use App\Lib\Base\Business\Logic\Pagination;
use App\Lib\Base\Util\Constantes;
use App\Lib\Base\Util\TipoAccionEnum;

use App\Models\Financiero\Pension;
use App\Lib\Entities\Financiero\PensionReturnView;
use Database\Factories\Financiero\PensionFactory;

class PensionCrud extends Command {
	
    /* The name and signature of the console command, @var string */
    protected $signature = 'pension:crud {tipo}';

    /* The console command description, @var string */
    protected $description = 'Command description';
	
	public $tipo='I';//I,U,D
	
	public Pension $pension1;
	public Collection $pensions;
	public $pensionFactory;
	
	public function __construct() {
        parent::__construct();
		
		$this->pensionFactory = new PensionFactory();
    }

    /* Execute the console command, @return int */
    public function handle() {
		$this->info('---------- Procesando pension:crud ----------');
		
		if($this->tipo=='I') {
			
			//INSERT
			$this->pension1 = new Pension();
			
			
			$this->pension1->created_at = date('Y-m-d H:i:s');
			$this->pension1->updated_at = date('Y-m-d H:i:s');
			$this->pension1->id_alumno = -1;
			$this->pension1->anio = 0;
			$this->pension1->mes = 0;
			$this->pension1->valor = 0.0;
			$this->pension1->cobrado = false;						
			
			$this->pension1->save();
			
		} else if($this->tipo=='U') {
		
			//UPDATE
			$this->pension1 = new Pension();
			
			$this->pension1 = Pension::find(1);
			
			
			$this->pension1->created_at = date('Y-m-d H:i:s');
			$this->pension1->updated_at = date('Y-m-d H:i:s');
			$this->pension1->id_alumno = -1;
			$this->pension1->anio = 0;
			$this->pension1->mes = 0;
			$this->pension1->valor = 0.0;
			$this->pension1->cobrado = false;			
			
			$this->pension1->save();
			
		} else if($this->tipo=='D') {
		
			//DELETE
			$this->pension1 = new Pension();
			
			$this->pension1 = Pension::find(1);
			
			$this->pension1->delete();
		
		} else if($this->tipo=='F') {
		
			//FACTORY
			$this->pensionFactory->count(5)
									->create();
		
		}
		
		$this->info('----- Ejecutado Correctamente -----');				
		
				
    }
	
	//php artisan pension:crud I
}