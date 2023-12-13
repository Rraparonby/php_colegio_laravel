<?php

namespace App\Console\Commands\Financiero\Contrato;

use Illuminate\Console\Command;
use Illuminate\Database\Eloquent\Collection;

use App\Lib\Base\Business\Logic\Pagination;
use App\Lib\Base\Util\Constantes;
use App\Lib\Base\Util\TipoAccionEnum;
use App\Models\Financiero\Contrato;
use App\Lib\Entities\Financiero\ContratoReturnView;

class ContratoGetTodos extends Command {
	
    /* The name and signature of the console command.
     * @var string */
    protected $signature = 'contrato:get_todos {limit} {skip}';

    /* The console command description.
     * @var string */
    protected $description = 'Command description';
	
	public Pagination $pagination1;
	
	public Contrato $contrato1;
	public Collection $contratos;
	
	public array $headers_contratos;
	public array $data_contratos;
	
	public function __construct() {
        parent::__construct();
    }

    /* Execute the console command.
     * @return int */
    public function handle() {
		$sql_query = '';
		$this->info('---------- Procesado contrato:get_todos ----------');
		
		//Limit,Skip Parameter		
		$this->pagination1 = new Pagination();
		$this->pagination1->skip = intval($this->argument('skip'));
		$this->pagination1->limit = intval($this->argument('limit'));
		
		//Data
		$this->info('----- Contratos -----');				
		$this->headers_contratos = [];		
		
		//$this->contratos = Contrato::all();
		
		$this->contratos = Contrato::skip($this->pagination1->skip)
			 						->take($this->pagination1->limit)
			 						->get();
		//LOG
		if(Constantes::$CON_LOG) {
			$sql_query = Contrato::toSql();
			$this->info($sql_query);
		}
		
		$this->data_contratos = $this->contratos->toArray();
									
		$this->table($this->headers_contratos,$this->data_contratos);
    }
	
	//php artisan contrato:get_todos 10 0
}