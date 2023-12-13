<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
	
	/* Run the migrations.
     * @return void */	
    public function up() {
        			
		Schema::create('materia', function (Blueprint $table) {
			
			//GENERAL
			$table->engine = 'InnoDB';
			$table->charset = 'utf8mb4';
			$table->collation = 'utf8mb4_unicode_ci'; //unicode,general
			
			//COLUMNS
			$table->id();
			
			$table->timestamps(); //created_at,updated_at
			
			$table->string('codigo',15)
					  ->default('');
			
			$table->string('nombre',25)
					  ->default('');
			
			$table->boolean('activo')
					  ->default(false);
			
						
		});					
		
    }

    /* Reverse the migrations.
     * @return void */
    public function down() {
		
        Schema::dropIfExists('materia');
    }
	
	//------------ CREATE ---------------
	//php artisan make:migration Estructura/create_materia_table
	
	//------------ GENERATE ---------------	
	//php artisan migrate --path=database/migrations/Estructura/create_materia_table.php
	//php artisan migrate:rollback --path=database/migrations/Estructura/create_materia_table.php
	//php artisan migrate (Todos Create)
	//php artisan migrate:reset (Todos Drop)
};
