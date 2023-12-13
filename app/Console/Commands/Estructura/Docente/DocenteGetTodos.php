<?php

namespace App\Console\Commands\Estructura\Docente;

use Illuminate\Console\Command;
use Illuminate\Database\Eloquent\Collection;

use App\Lib\Base\Business\Logic\Pagination;
use App\Lib\Base\Util\Constantes;
use App\Lib\Base\Util\TipoAccionEnum;
use App\Models\Estructura\Docente;
use App\Lib\Entities\Estructura\DocenteReturnView;

class DocenteGetTodos extends Command {
	
    /* The name and signature of the console command.
     * @var string */
    protected $signature = 'docente:get_todos {limit} {skip}';

    /* The console command description.
     * @var string */
    protected $description = 'Command description';
	
	public Pagination $pagination1;
	
	public Docente $docente1;
	public Collection $docentes;
	
	public array $headers_docentes;
	public array $data_docentes;
	
	public function __construct() {
        parent::__construct();
    }

    /* Execute the console command.
     * @return int */
    public function handle() {
		$sql_query = '';
		$this->info('---------- Procesado docente:get_todos ----------');
		
		//Limit,Skip Parameter		
		$this->pagination1 = new Pagination();
		$this->pagination1->skip = intval($this->argument('skip'));
		$this->pagination1->limit = intval($this->argument('limit'));
		
		//Data
		$this->info('----- Docentes -----');				
		$this->headers_docentes = [];		
		
		//$this->docentes = Docente::all();
		
		$this->docentes = Docente::skip($this->pagination1->skip)
			 						->take($this->pagination1->limit)
			 						->get();
		//LOG
		if(Constantes::$CON_LOG) {
			$sql_query = Docente::toSql();
			$this->info($sql_query);
		}
		
		$this->data_docentes = $this->docentes->toArray();
									
		$this->table($this->headers_docentes,$this->data_docentes);
    }
	
	//php artisan docente:get_todos 10 0
}