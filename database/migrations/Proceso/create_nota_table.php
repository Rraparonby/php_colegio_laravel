<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
	
	/* Run the migrations.
     * @return void */	
    public function up() {
        			
		Schema::create('nota', function (Blueprint $table) {
			
			//GENERAL
			$table->engine = 'InnoDB';
			$table->charset = 'utf8mb4';
			$table->collation = 'utf8mb4_unicode_ci'; //unicode,general
			
			//COLUMNS
			$table->id();
			
			$table->timestamps(); //created_at,updated_at
			
			$table->unsignedBigInteger('id_alumno');
			
			$table->unsignedBigInteger('id_materia');
			
			$table->unsignedBigInteger('id_docente');
			
			$table->decimal('nota_prueba',18,2)
					  ->default(0.0);
			
			$table->decimal('nota_trabajo',18,2)
					  ->default(0.0);
			
			$table->decimal('nota_examen',18,2)
					  ->default(0.0);
			
			$table->decimal('nota_final',18,2)
					  ->default(0.0);
			
						
		});					
		
    }

    /* Reverse the migrations.
     * @return void */
    public function down() {
		
        Schema::dropIfExists('nota');
    }
	
	//------------ CREATE ---------------
	//php artisan make:migration Proceso/create_nota_table
	
	//------------ GENERATE ---------------	
	//php artisan migrate --path=database/migrations/Proceso/create_nota_table.php
	//php artisan migrate:rollback --path=database/migrations/Proceso/create_nota_table.php
	//php artisan migrate (Todos Create)
	//php artisan migrate:reset (Todos Drop)
};
