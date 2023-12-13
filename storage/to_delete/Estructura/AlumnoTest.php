<?php

namespace Tests\Unit\Estructura;

use Tests\TestCase;

class AlumnoTest extends TestCase {
	
    
    public function test_that_true_is_true() {
        //$this->assertTrue(true);

        ///colegio_relaciones/estructura/materia_api

        $pagination = ['skip' => 0,'limit' => 10];
        $data=['pagination' => $pagination];

        $response = $this->postJson('http://localhost:3000/api/colegio_relaciones/estructura/materia_api/todos/', $data);
                                     
        $response->assertStatus(200);
    }
	//php artisan test
}