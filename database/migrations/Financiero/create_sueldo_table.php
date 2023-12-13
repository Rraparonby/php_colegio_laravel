<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
	
	/* Run the migrations.
     * @return void */	
    public function up() {
        			
		Schema::create('sueldo', function (Blueprint $table) {
			
			//GENERAL
			$table->engine = 'InnoDB';
			$table->charset = 'utf8mb4';
			$table->collation = 'utf8mb4_unicode_ci'; //unicode,general
			
			//COLUMNS
			$table->id();
			
			$table->timestamps(); //created_at,updated_at
			
			$table->unsignedBigInteger('id_docente');
			
			$table->integer('anio')
					  ->default(0);
			
			$table->smallInteger('mes')
					  ->default(0);
			
			$table->decimal('valor',18,2)
					  ->default(0.0);
			
			$table->boolean('cobrado')
					  ->default(false);
			
						
		});					
		
    }

    /* Reverse the migrations.
     * @return void */
    public function down() {
		
        Schema::dropIfExists('sueldo');
    }
	
	//------------ CREATE ---------------
	//php artisan make:migration Financiero/create_sueldo_table
	
	//------------ GENERATE ---------------	
	//php artisan migrate --path=database/migrations/Financiero/create_sueldo_table.php
	//php artisan migrate:rollback --path=database/migrations/Financiero/create_sueldo_table.php
	//php artisan migrate (Todos Create)
	//php artisan migrate:reset (Todos Drop)
};
