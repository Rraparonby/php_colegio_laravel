<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
	
	/* Run the migrations.
     * @return void */	
    public function up() {
        			
		Schema::create('matricula', function (Blueprint $table) {
			
			//GENERAL
			$table->engine = 'InnoDB';
			$table->charset = 'utf8mb4';
			$table->collation = 'utf8mb4_unicode_ci'; //unicode,general
			
			//COLUMNS
			$table->id();
			
			$table->timestamps(); //created_at,updated_at
			
			$table->integer('anio')
					  ->default(0);
			
			$table->decimal('costo',18,2)
					  ->default(0.0);
			
			$table->date('fecha')
					  ->default(date('Y-m-d'));
			
			$table->boolean('pagado')
					  ->default(false);
			
						
		});					
		
    }

    /* Reverse the migrations.
     * @return void */
    public function down() {
		
        Schema::dropIfExists('matricula');
    }
	
	//------------ CREATE ---------------
	//php artisan make:migration Proceso/create_matricula_table
	
	//------------ GENERATE ---------------	
	//php artisan migrate --path=database/migrations/Proceso/create_matricula_table.php
	//php artisan migrate:rollback --path=database/migrations/Proceso/create_matricula_table.php
	//php artisan migrate (Todos Create)
	//php artisan migrate:reset (Todos Drop)
};
