<?php

namespace Database\Seeders\Estructura;

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

use App\Models\Estructura\Alumno;
use Database\Factories\Estructura\AlumnoFactory;

class AlumnoSeeder extends Seeder {
	
	public $alumnoFactory;
	public $tipo = 'I'; //I,U,D,F
	
	function __construct() {
		$this->alumnoFactory = new AlumnoFactory();
	}
	
    /* Run the database seeds.
     * @return void */
    public function run() {
		
		if($this->tipo=='I') {
			
			//INSERT
			DB::table('alumno')->insert(
				[			
					
					'created_at' => date('Y-m-d H:i:s'),
					'updated_at' => date('Y-m-d H:i:s'),
					'nombre'=>'Luis',
					'apellido'=>'Perez',
					'fecha_nacimiento'=>'1980-01-01',
				]
			);

			DB::table('alumno')->insert(
				[			
					
					'created_at' => date('Y-m-d H:i:s'),
					'updated_at' => date('Y-m-d H:i:s'),
					'nombre'=>'Carlos',
					'apellido'=>'Sanchez',
					'fecha_nacimiento'=>'1980-02-02',
				]
			);

			DB::table('alumno')->insert(
				[			
					
					'created_at' => date('Y-m-d H:i:s'),
					'updated_at' => date('Y-m-d H:i:s'),
					'nombre'=>'Roberto',
					'apellido'=>'Avila',
					'fecha_nacimiento'=>'1983-03-03',
				]
			);
			
		} else if($this->tipo=='U') {
		
			//UPDATE
			DB::table('alumno')->where('id',1)
								->update(
				[			
				
					'created_at' => date('Y-m-d H:i:s'),
					'updated_at' => date('Y-m-d H:i:s'),
					'nombre'=>Str::random(25),
					'apellido'=>Str::random(25),
					'fecha_nacimiento'=>date('Y-m-d'),
				]
			);
			
		} else if($this->tipo=='D') {
		
			//DELETE
			DB::table('alumno')->where('id',1)
								->delete();
								
		} else if($this->tipo=='F') {
		
			//FACTORY
			
			$this->alumnoFactory->count(3)
									->create();
			
			//FALTA: Modificar Model con Factory
			//Alumno::factory()->count(3)
			//						->create();
			
			
		}
    }
	
	//------------------ GENERATE TODOS ------------
	
	//(DatabaseSeeder.php --> run())
	//php artisan db:seed
	
	//Path: DatabaseSeeder.php
	/*
	use Database\Seeders\Estructura\AlumnoSeeder;
	$this->call([
    	AlumnoSeeder::class
    ]);
	*/
	
	//------------------ GENERATE POR TABLA ------------
	
	//NO-VALE
	//php artisan db:seed --class=Estructura/AlumnoSeeder				
}