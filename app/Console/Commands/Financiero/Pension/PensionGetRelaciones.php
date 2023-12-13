<?php

namespace App\Console\Commands\Financiero\Pension;

use Illuminate\Console\Command;
use Illuminate\Database\Eloquent\Collection;

use App\Lib\Base\Business\Logic\Pagination;
use App\Lib\Base\Util\Constantes;
use App\Lib\Base\Util\TipoAccionEnum;
use App\Models\Financiero\Pension;
use App\Lib\Entities\Financiero\PensionReturnView;

class PensionGetRelaciones extends Command {
	
    /* The name and signature of the console command.
     * @var string */
    protected $signature = 'pension:get_relaciones {limit} {skip}';

    /* The console command description.
     * @var string */
    protected $description = 'Command description';
	
	public Pagination $pagination1;
	
	public Pension $pension1;
	public Collection $pensions;
	
	public array $headers_pensions;
	public array $data_pensions;
	
	public function __construct() {
        parent::__construct();
    }

    /* Execute the console command.
     * @return int */
    public function handle() {
		$sql_query = '';
		$this->info('---------- Procesado pension:get_todos ----------');
		
		//Limit,Skip Parameter		
		$this->pagination1 = new Pagination();
		$this->pagination1->skip = intval($this->argument('skip'));
		$this->pagination1->limit = intval($this->argument('limit'));
		
		//Data
		$this->info('----- Pensions -----');				
		$this->headers_pensions = [];		
		
		//$this->pensions = Pension::all();
		
		$this->pensions = Pension::skip($this->pagination1->skip)
			 						->take($this->pagination1->limit)
			 						->get();
		//LOG
		if(Constantes::$CON_LOG) {
			$sql_query = Pension::toSql();
			$this->info($sql_query);
		}
		
		/*----------------- FKs ----------------*/
		
		$alumno = null;	
		
		/*----------------- RELACIONES ----------------*/
		
	
		foreach($this->pensions as $pension) {
			/*----- FKs -----*/
			
			$alumno = $pension->alumno;	
			
			/*----- Relaciones -----*/
			
		}
		
		$this->info($this->pensions);
		
		//$this->data_pensions = $this->pensions->toArray();
									
		//$this->table($this->headers_pensions,$this->data_pensions);
    }
	
	//php artisan pension:get_relaciones 10 0
}