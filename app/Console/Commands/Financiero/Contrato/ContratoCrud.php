<?php

namespace App\Console\Commands\Financiero\Contrato;

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

use Illuminate\Console\Command;
use Illuminate\Database\Eloquent\Collection;

use App\Lib\Base\Business\Logic\Pagination;
use App\Lib\Base\Util\Constantes;
use App\Lib\Base\Util\TipoAccionEnum;

use App\Models\Financiero\Contrato;
use App\Lib\Entities\Financiero\ContratoReturnView;
use Database\Factories\Financiero\ContratoFactory;

class ContratoCrud extends Command {
	
    /* The name and signature of the console command, @var string */
    protected $signature = 'contrato:crud {tipo}';

    /* The console command description, @var string */
    protected $description = 'Command description';
	
	public $tipo='I';//I,U,D
	
	public Contrato $contrato1;
	public Collection $contratos;
	public $contratoFactory;
	
	public function __construct() {
        parent::__construct();
		
		$this->contratoFactory = new ContratoFactory();
    }

    /* Execute the console command, @return int */
    public function handle() {
		$this->info('---------- Procesando contrato:crud ----------');
		
		if($this->tipo=='I') {
			
			//INSERT
			$this->contrato1 = new Contrato();
			
			
			$this->contrato1->created_at = date('Y-m-d H:i:s');
			$this->contrato1->updated_at = date('Y-m-d H:i:s');
			$this->contrato1->anio = 0;
			$this->contrato1->valor = 0.0;
			$this->contrato1->fecha = date('Y-m-d');
			$this->contrato1->firmado = false;						
			
			$this->contrato1->save();
			
		} else if($this->tipo=='U') {
		
			//UPDATE
			$this->contrato1 = new Contrato();
			
			$this->contrato1 = Contrato::find(1);
			
			
			$this->contrato1->created_at = date('Y-m-d H:i:s');
			$this->contrato1->updated_at = date('Y-m-d H:i:s');
			$this->contrato1->anio = 0;
			$this->contrato1->valor = 0.0;
			$this->contrato1->fecha = date('Y-m-d');
			$this->contrato1->firmado = false;			
			
			$this->contrato1->save();
			
		} else if($this->tipo=='D') {
		
			//DELETE
			$this->contrato1 = new Contrato();
			
			$this->contrato1 = Contrato::find(1);
			
			$this->contrato1->delete();
		
		} else if($this->tipo=='F') {
		
			//FACTORY
			$this->contratoFactory->count(5)
									->create();
		
		}
		
		$this->info('----- Ejecutado Correctamente -----');				
		
				
    }
	
	//php artisan contrato:crud I
}