<?php

namespace Database\Seeders\Proceso;

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

use App\Models\Proceso\Matricula;
use Database\Factories\Proceso\MatriculaFactory;

class MatriculaSeeder extends Seeder {
	
	public $matriculaFactory;
	public $tipo = 'I'; //I,U,D,F
	
	function __construct() {
		$this->matriculaFactory = new MatriculaFactory();
	}
	
    /* Run the database seeds.
     * @return void */
    public function run() {
		
		if($this->tipo=='I') {
			
			//INSERT
			DB::table('matricula')->insert(
				[			
					
					'created_at' => date('Y-m-d H:i:s'),
					'updated_at' => date('Y-m-d H:i:s'),
					'anio'=>0,
					'costo'=>0.0,
					'fecha'=>date('Y-m-d'),
					'pagado'=>false,
				]
			);
			
		} else if($this->tipo=='U') {
		
			//UPDATE
			DB::table('matricula')->where('id',1)
								->update(
				[			
				
					'created_at' => date('Y-m-d H:i:s'),
					'updated_at' => date('Y-m-d H:i:s'),
					'anio'=>0,
					'costo'=>0.0,
					'fecha'=>date('Y-m-d'),
					'pagado'=>false,
				]
			);
			
		} else if($this->tipo=='D') {
		
			//DELETE
			DB::table('matricula')->where('id',1)
								->delete();
								
		} else if($this->tipo=='F') {
		
			//FACTORY
			
			$this->matriculaFactory->count(3)
									->create();
			
			//FALTA: Modificar Model con Factory
			//Matricula::factory()->count(3)
			//						->create();
			
			
		}
    }
	
	//------------------ GENERATE TODOS ------------
	
	//(DatabaseSeeder.php --> run())
	//php artisan db:seed
	
	//Path: DatabaseSeeder.php
	/*
	use Database\Seeders\Proceso\MatriculaSeeder;
	$this->call([
    	MatriculaSeeder::class
    ]);
	*/
	
	//------------------ GENERATE POR TABLA ------------
	
	//NO-VALE
	//php artisan db:seed --class=Proceso/MatriculaSeeder				
}