<?php

namespace Tests\Unit\Estructura;

use Tests\TestCase;

use Illuminate\Database\Eloquent\Collection;

use App\Lib\Data\Estructura\MateriaService;

use App\Lib\Base\Business\Logic\Pagination;
use App\Lib\Base\Util\TipoAccionEnum;

use App\Models\Estructura\Materia;

class DocenteTest extends TestCase {
	
    public Materia $materia1;
	public Collection $materias;
	
	public Pagination $pagination1;
	
	public MateriaService $materia_service1;

    public function test_that_true_is_true() {
        
        $this->materia1 = new Materia();
		
		$this->materias = new Collection();		
		
		$this->pagination1 = new Pagination();		
		$this->materia_service1 = new MateriaService();


        $this->pagination1 = new Pagination();
        $this->pagination1->skip = intval(0);
        $this->pagination1->limit = intval(10);
        
        $this->materia_service1->getTodos($this->pagination1);			
        
        
        $this->assertTrue(count($this->materia_service1->materias)==7);
    }
	//php artisan test
}