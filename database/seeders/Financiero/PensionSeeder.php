<?php

namespace Database\Seeders\Financiero;

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

use App\Models\Financiero\Pension;
use Database\Factories\Financiero\PensionFactory;

class PensionSeeder extends Seeder {
	
	public $pensionFactory;
	public $tipo = 'I'; //I,U,D,F
	
	function __construct() {
		$this->pensionFactory = new PensionFactory();
	}
	
    /* Run the database seeds.
     * @return void */
    public function run() {
		
		if($this->tipo=='I') {
			
			//INSERT
			DB::table('pension')->insert(
				[			
					
					'created_at' => date('Y-m-d H:i:s'),
					'updated_at' => date('Y-m-d H:i:s'),
					'id_alumno'=>-1,
					'anio'=>0,
					'mes'=>0,
					'valor'=>0.0,
					'cobrado'=>false,
				]
			);
			
		} else if($this->tipo=='U') {
		
			//UPDATE
			DB::table('pension')->where('id',1)
								->update(
				[			
				
					'created_at' => date('Y-m-d H:i:s'),
					'updated_at' => date('Y-m-d H:i:s'),
					'id_alumno'=>-1,
					'anio'=>0,
					'mes'=>0,
					'valor'=>0.0,
					'cobrado'=>false,
				]
			);
			
		} else if($this->tipo=='D') {
		
			//DELETE
			DB::table('pension')->where('id',1)
								->delete();
								
		} else if($this->tipo=='F') {
		
			//FACTORY
			
			$this->pensionFactory->count(3)
									->create();
			
			//FALTA: Modificar Model con Factory
			//Pension::factory()->count(3)
			//						->create();
			
			
		}
    }
	
	//------------------ GENERATE TODOS ------------
	
	//(DatabaseSeeder.php --> run())
	//php artisan db:seed
	
	//Path: DatabaseSeeder.php
	/*
	use Database\Seeders\Financiero\PensionSeeder;
	$this->call([
    	PensionSeeder::class
    ]);
	*/
	
	//------------------ GENERATE POR TABLA ------------
	
	//NO-VALE
	//php artisan db:seed --class=Financiero/PensionSeeder				
}