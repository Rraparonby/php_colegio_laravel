#!/usr/bin/env bash

#------------------- DATA BASE (Create/Execute) ----------------------

create_migrations(self) {
	#Path: database/migrations
#DB Config: .env

	php artisan make:migration Estructura/create_alumno_table
	php artisan make:migration Estructura/create_alumno_materia_table
	php artisan make:migration Financiero/create_contrato_table
	php artisan make:migration Estructura/create_docente_table
	php artisan make:migration Estructura/create_docente_materia_table
	php artisan make:migration Estructura/create_materia_table
	php artisan make:migration Proceso/create_matricula_table
	php artisan make:migration Proceso/create_nota_table
	php artisan make:migration Financiero/create_pension_table
	php artisan make:migration Financiero/create_sueldo_table


}

execute_migrations() {
	#Path: database/migrations
#DB Config: .env
#-- Todos --
#php artisan migrate
#php artisan migrate:rollback
#php artisan migrate:reset
#php artisan migrate:refresh
#php artisan migrate:refresh --seed

	php artisan migrate --path=database/migrations/Estructura/create_alumno_table.php
	php artisan migrate --path=database/migrations/Estructura/create_alumno_materia_table.php
	php artisan migrate --path=database/migrations/Financiero/create_contrato_table.php
	php artisan migrate --path=database/migrations/Estructura/create_docente_table.php
	php artisan migrate --path=database/migrations/Estructura/create_docente_materia_table.php
	php artisan migrate --path=database/migrations/Estructura/create_materia_table.php
	php artisan migrate --path=database/migrations/Proceso/create_matricula_table.php
	php artisan migrate --path=database/migrations/Proceso/create_nota_table.php
	php artisan migrate --path=database/migrations/Financiero/create_pension_table.php
	php artisan migrate --path=database/migrations/Financiero/create_sueldo_table.php


}

create_seeders() {
	#Path: database/seeders
#DB Config: .env

	php artisan make:seeder Estructura/AlumnoSeeder
	php artisan make:seeder Estructura/AlumnoMateriaSeeder
	php artisan make:seeder Financiero/ContratoSeeder
	php artisan make:seeder Estructura/DocenteSeeder
	php artisan make:seeder Estructura/DocenteMateriaSeeder
	php artisan make:seeder Estructura/MateriaSeeder
	php artisan make:seeder Proceso/MatriculaSeeder
	php artisan make:seeder Proceso/NotaSeeder
	php artisan make:seeder Financiero/PensionSeeder
	php artisan make:seeder Financiero/SueldoSeeder


}

execute_seeders() {
	#Path: database/seeders
#DB Config: .env
#-- Todos --
# DatabaseSeeder.php
#php artisan db:seed
#php artisan migrate:fresh --seed

	php artisan db:seed --class=Estructura/AlumnoSeeder
	php artisan db:seed --class=Estructura/AlumnoMateriaSeeder
	php artisan db:seed --class=Financiero/ContratoSeeder
	php artisan db:seed --class=Estructura/DocenteSeeder
	php artisan db:seed --class=Estructura/DocenteMateriaSeeder
	php artisan db:seed --class=Estructura/MateriaSeeder
	php artisan db:seed --class=Proceso/MatriculaSeeder
	php artisan db:seed --class=Proceso/NotaSeeder
	php artisan db:seed --class=Financiero/PensionSeeder
	php artisan db:seed --class=Financiero/SueldoSeeder


}

create_factories() {
	#Path: database/factories
#DB Config: .env
#-- Todos --
#php artisan db:seed

	php artisan make:factory Estructura/AlumnoFactory
	php artisan make:factory Estructura/AlumnoMateriaFactory
	php artisan make:factory Financiero/ContratoFactory
	php artisan make:factory Estructura/DocenteFactory
	php artisan make:factory Estructura/DocenteMateriaFactory
	php artisan make:factory Estructura/MateriaFactory
	php artisan make:factory Proceso/MatriculaFactory
	php artisan make:factory Proceso/NotaFactory
	php artisan make:factory Financiero/PensionFactory
	php artisan make:factory Financiero/SueldoFactory
	

}

#------------------- MVC (Create Model/Controller) ----------------------

create_models() {
	#Path: app/Models/
#DB Config: .env
	
	php artisan make:model Estructura/Alumno
	php artisan make:model Estructura/AlumnoMateria
	php artisan make:model Financiero/Contrato
	php artisan make:model Estructura/Docente
	php artisan make:model Estructura/DocenteMateria
	php artisan make:model Estructura/Materia
	php artisan make:model Proceso/Matricula
	php artisan make:model Proceso/Nota
	php artisan make:model Financiero/Pension
	php artisan make:model Financiero/Sueldo
	

}

create_controllers() {
	#Path: app/Http/Controllers/
	
	php artisan make:controller Api/Estructura/AlumnoApiController --api
	php artisan make:controller Api/Estructura/AlumnoMateriaApiController --api
	php artisan make:controller Api/Financiero/ContratoApiController --api
	php artisan make:controller Api/Estructura/DocenteApiController --api
	php artisan make:controller Api/Estructura/DocenteMateriaApiController --api
	php artisan make:controller Api/Estructura/MateriaApiController --api
	php artisan make:controller Api/Proceso/MatriculaApiController --api
	php artisan make:controller Api/Proceso/NotaApiController --api
	php artisan make:controller Api/Financiero/PensionApiController --api
	php artisan make:controller Api/Financiero/SueldoApiController --api
	

}		


#------------------- UTIL (Create) ----------------------

create_commands() {
	#Path: app/Console/Command/
#DB Config: .env

	php artisan make:command Api/Estructura/Alumno/AlumnoGetTodos
	php artisan make:command Api/Estructura/AlumnoMateria/AlumnoMateriaGetTodos
	php artisan make:command Api/Financiero/Contrato/ContratoGetTodos
	php artisan make:command Api/Estructura/Docente/DocenteGetTodos
	php artisan make:command Api/Estructura/DocenteMateria/DocenteMateriaGetTodos
	php artisan make:command Api/Estructura/Materia/MateriaGetTodos
	php artisan make:command Api/Proceso/Matricula/MatriculaGetTodos
	php artisan make:command Api/Proceso/Nota/NotaGetTodos
	php artisan make:command Api/Financiero/Pension/PensionGetTodos
	php artisan make:command Api/Financiero/Sueldo/SueldoGetTodos
	

}



#------------------- DATA BASE ----------------------

#create_migrations()
#execute_migrations()

#create_seeders()
#execute_seeders()

#create_factories()

#------------------- MVC ----------------------

#create_models()
#create_controllers()

#------------------- UTIL ----------------------

#create_commands()

#------------------- LINUX FORMAT ----------------------

#dos2unix ./file_name1.sh, (dos2unix *.sh)

#------------------- WEB WERVER ----------------------

#php -S localhost:3000 -t public