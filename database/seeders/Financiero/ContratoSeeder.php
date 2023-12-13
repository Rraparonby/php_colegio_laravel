<?php

namespace Database\Seeders\Financiero;

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

use App\Models\Financiero\Contrato;
use Database\Factories\Financiero\ContratoFactory;

class ContratoSeeder extends Seeder {
	
	public $contratoFactory;
	public $tipo = 'I'; //I,U,D,F
	
	function __construct() {
		$this->contratoFactory = new ContratoFactory();
	}
	
    /* Run the database seeds.
     * @return void */
    public function run() {
		
		if($this->tipo=='I') {
			
			//INSERT
			DB::table('contrato')->insert(
				[			
					
					'created_at' => date('Y-m-d H:i:s'),
					'updated_at' => date('Y-m-d H:i:s'),
					'anio'=>0,
					'valor'=>0.0,
					'fecha'=>date('Y-m-d'),
					'firmado'=>false,
				]
			);
			
		} else if($this->tipo=='U') {
		
			//UPDATE
			DB::table('contrato')->where('id',1)
								->update(
				[			
				
					'created_at' => date('Y-m-d H:i:s'),
					'updated_at' => date('Y-m-d H:i:s'),
					'anio'=>0,
					'valor'=>0.0,
					'fecha'=>date('Y-m-d'),
					'firmado'=>false,
				]
			);
			
		} else if($this->tipo=='D') {
		
			//DELETE
			DB::table('contrato')->where('id',1)
								->delete();
								
		} else if($this->tipo=='F') {
		
			//FACTORY
			
			$this->contratoFactory->count(3)
									->create();
			
			//FALTA: Modificar Model con Factory
			//Contrato::factory()->count(3)
			//						->create();
			
			
		}
    }
	
	//------------------ GENERATE TODOS ------------
	
	//(DatabaseSeeder.php --> run())
	//php artisan db:seed
	
	//Path: DatabaseSeeder.php
	/*
	use Database\Seeders\Financiero\ContratoSeeder;
	$this->call([
    	ContratoSeeder::class
    ]);
	*/
	
	//------------------ GENERATE POR TABLA ------------
	
	//NO-VALE
	//php artisan db:seed --class=Financiero/ContratoSeeder				
}