<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
	
	/* Run the migrations.
     * @return void */	
    public function up() {
        			
		Schema::create('docente', function (Blueprint $table) {
			
			//GENERAL
			$table->engine = 'InnoDB';
			$table->charset = 'utf8mb4';
			$table->collation = 'utf8mb4_unicode_ci'; //unicode,general
			
			//COLUMNS
			$table->id();
			
			$table->timestamps(); //created_at,updated_at
			
			$table->string('nombre',25)
					  ->default('');
			
			$table->string('apellido',25)
					  ->default('');
			
			$table->date('fecha_nacimiento')
					  ->default(date('Y-m-d'));
			
			$table->integer('anios_experiencia')
					  ->default(0);
			
			$table->decimal('nota_evaluacion',18,2)
					  ->default(0.0);
			
						
		});					
		
    }

    /* Reverse the migrations.
     * @return void */
    public function down() {
		
        Schema::dropIfExists('docente');
    }
	
	//------------ CREATE ---------------
	//php artisan make:migration Estructura/create_docente_table
	
	//------------ GENERATE ---------------	
	//php artisan migrate --path=database/migrations/Estructura/create_docente_table.php
	//php artisan migrate:rollback --path=database/migrations/Estructura/create_docente_table.php
	//php artisan migrate (Todos Create)
	//php artisan migrate:reset (Todos Drop)
};
