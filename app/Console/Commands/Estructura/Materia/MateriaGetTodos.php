<?php

namespace App\Console\Commands\Estructura\Materia;

use Illuminate\Console\Command;
use Illuminate\Database\Eloquent\Collection;

use App\Lib\Base\Business\Logic\Pagination;
use App\Lib\Base\Util\Constantes;
use App\Lib\Base\Util\TipoAccionEnum;
use App\Models\Estructura\Materia;
use App\Lib\Entities\Estructura\MateriaReturnView;

class MateriaGetTodos extends Command {
	
    /* The name and signature of the console command.
     * @var string */
    protected $signature = 'materia:get_todos {limit} {skip}';

    /* The console command description.
     * @var string */
    protected $description = 'Command description';
	
	public Pagination $pagination1;
	
	public Materia $materia1;
	public Collection $materias;
	
	public array $headers_materias;
	public array $data_materias;
	
	public function __construct() {
        parent::__construct();
    }

    /* Execute the console command.
     * @return int */
    public function handle() {
		$sql_query = '';
		$this->info('---------- Procesado materia:get_todos ----------');
		
		//Limit,Skip Parameter		
		$this->pagination1 = new Pagination();
		$this->pagination1->skip = intval($this->argument('skip'));
		$this->pagination1->limit = intval($this->argument('limit'));
		
		//Data
		$this->info('----- Materias -----');				
		$this->headers_materias = [];		
		
		//$this->materias = Materia::all();
		
		$this->materias = Materia::skip($this->pagination1->skip)
			 						->take($this->pagination1->limit)
			 						->get();
		//LOG
		if(Constantes::$CON_LOG) {
			$sql_query = Materia::toSql();
			$this->info($sql_query);
		}
		
		$this->data_materias = $this->materias->toArray();
									
		$this->table($this->headers_materias,$this->data_materias);
    }
	
	//php artisan materia:get_todos 10 0
}