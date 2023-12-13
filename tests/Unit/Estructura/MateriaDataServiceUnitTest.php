<?php

namespace Tests\Unit\Estructura;

use Tests\TestCase;
/*use PHPUnit\Framework\TestCase;*/

use Illuminate\Database\Eloquent\Collection;
use Illuminate\Support\Facades\Log;

use App\Lib\Base\Business\Logic\Pagination;
use App\Lib\Base\Util\TipoAccionEnum;

use App\Lib\Data\Estructura\MateriaService;
use App\Models\Estructura\Materia;

class MateriaDataServiceUnitTest extends TestCase {
	
	public Pagination $pagination1;
	
	public Materia $materia1;
	public Collection $materias;	
	public MateriaService $materia_service1;
	
	public function initialize() {
		$this->pagination1 = new Pagination();
		
        $this->materia1 = new Materia();		
		$this->materias = new Collection();		
					
		$this->materia_service1 = new MateriaService();
	}
	
	public function test_gettodos_true() {        		
		
		$this->initialize();
		
        $this->pagination1->skip = intval(0);
        $this->pagination1->limit = intval(10);
        
        $this->materia_service1->getTodos($this->pagination1);			
                
		Log::channel('stderr')->info('Testing-Data Service: Get Todos Executed');
		
        $this->assertTrue(count($this->materia_service1->materias)>3);
    }
	
	/*
    public function test_is_true() {
        $this->assertTrue(true);
    }
	*/
	
	/*
	php artisan test --testsuite=Unit
	php artisan test --testsuite=Feature
	php artisan test
	*/
}