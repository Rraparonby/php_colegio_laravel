<?php

namespace Tests\Unit\Estructura;

use Illuminate\Support\Facades\Log;

use App\Lib\Base\Util\Constantes;

use Tests\TestCase;
/*use PHPUnit\Framework\TestCase;*/

class MateriaControllerUnitTest extends TestCase {
	
	public array $pagination;
	public string $url_base;
	
	public function initialize() {
		
		$this->set_pagination();
		
		$this->set_url_base();
	}
	
	public function set_pagination() {
		$pagination_values = [	'skip' => 0,
								'limit' => 10 ];
		
        $this->pagination = [ 'pagination' => $pagination_values ];
	}
	
	public function set_url_base() {
		$this->url_base = Constantes::$PROTOCOL.'://'.Constantes::$IP_SERVIDOR.':'.Constantes::$PUERTO_SERVIDOR.'/';
		$this->url_base .= Constantes::$CONTEXTO_APLICACION.'/estructura/materia_api/';		
	}
	
	public function test_gettodos_true() {        		
				        
        $this->initialize();
		
		$url = $this->url_base;
		
		$url .= 'todos/';
		
        $response = $this->postJson($url, $this->pagination);
        		
		Log::channel('stderr')->info('Testing-Controller: Get Todos Executed');
		
        $response->assertStatus(200);
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