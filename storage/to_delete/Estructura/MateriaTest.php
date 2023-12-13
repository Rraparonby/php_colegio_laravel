<?php

namespace Tests\Unit\Estructura;

//use PHPUnit\Framework\TestCase;

use Tests\TestCase;

use Illuminate\Database\Eloquent\Collection;

use App\Lib\Base\Business\Logic\Pagination;
use App\Lib\Base\Util\Constantes;
use App\Lib\Base\Util\TipoAccionEnum;
use App\Models\Estructura\Materia;
use App\Lib\Entities\Estructura\MateriaReturnView;

class MateriaTest extends TestCase {
	
    public Pagination $pagination1;
	
	public Materia $materia1;
	public Collection $materias;
	
	public array $headers_materias;
	public array $data_materias;  

    public function test_that_true_is_true2() {        

		//Limit,Skip Parameter		
		$this->pagination1 = new Pagination();
		$this->pagination1->skip = intval(0);
		$this->pagination1->limit = intval(10);
		
		//Data
		$this->headers_materias = [];		
		
		//$this->materias = Materia::all();
		
		$this->materias = Materia::skip($this->pagination1->skip)
			 						->take($this->pagination1->limit)
			 						->get();
		//LOG
		if(Constantes::$CON_LOG) {
			$sql_query = Materia::toSql();
			
		}
		
		$this->data_materias = $this->materias->toArray();

        
        $this->assertTrue(count($this->data_materias)==7);


    }


	//php artisan test
}