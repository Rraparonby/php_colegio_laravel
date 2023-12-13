<?php

namespace App\Console\Commands\Financiero\Sueldo;

use Illuminate\Console\Command;
use Illuminate\Database\Eloquent\Collection;

use App\Lib\Base\Business\Logic\Pagination;
use App\Lib\Base\Util\Constantes;
use App\Lib\Base\Util\TipoAccionEnum;
use App\Models\Financiero\Sueldo;
use App\Lib\Entities\Financiero\SueldoReturnView;

class SueldoGetTodos extends Command {
	
    /* The name and signature of the console command.
     * @var string */
    protected $signature = 'sueldo:get_todos {limit} {skip}';

    /* The console command description.
     * @var string */
    protected $description = 'Command description';
	
	public Pagination $pagination1;
	
	public Sueldo $sueldo1;
	public Collection $sueldos;
	
	public array $headers_sueldos;
	public array $data_sueldos;
	
	public function __construct() {
        parent::__construct();
    }

    /* Execute the console command.
     * @return int */
    public function handle() {
		$sql_query = '';
		$this->info('---------- Procesado sueldo:get_todos ----------');
		
		//Limit,Skip Parameter		
		$this->pagination1 = new Pagination();
		$this->pagination1->skip = intval($this->argument('skip'));
		$this->pagination1->limit = intval($this->argument('limit'));
		
		//Data
		$this->info('----- Sueldos -----');				
		$this->headers_sueldos = [];		
		
		//$this->sueldos = Sueldo::all();
		
		$this->sueldos = Sueldo::skip($this->pagination1->skip)
			 						->take($this->pagination1->limit)
			 						->get();
		//LOG
		if(Constantes::$CON_LOG) {
			$sql_query = Sueldo::toSql();
			$this->info($sql_query);
		}
		
		$this->data_sueldos = $this->sueldos->toArray();
									
		$this->table($this->headers_sueldos,$this->data_sueldos);
    }
	
	//php artisan sueldo:get_todos 10 0
}