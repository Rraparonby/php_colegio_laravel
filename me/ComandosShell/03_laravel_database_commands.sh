#!/bin/bash

opcion=0
linea=""
path="";
archivo=""
variable=""

tabla="prueba"
where=""
query=""

get_menu_opciones() {
    clear
    echo
    echo -e "\t\t\tMARIADB\n"	
    echo -e "\n\t----------- GENERAL -----------"
    echo -e "\t\t1. Execute Migrations Create Tables DB"
	echo -e "\t\t2. Execute Migrations Alter Fk Tables DB"
	echo -e "\t\t3. Execute Migrations Alter Tables DB"
    echo -e "\t\t6. Execute Seeders Datos"
    
    echo -e "\n\tAYUDA"
	echo -e "\n\t99. Start Web Server\n\n"
    echo -e "\n\t0. Salir\n\n"

    read -p "Escoja una Opcion: " opcion
}

get_execute_migrations_create_tables_db_menu() {
    
    while [ 1 ]
    do  
        clear
        echo -e "----------- 1. Execute Migrations Create Tables DB -------------"     
        
		echo -e "\t\t1. Execute Migration Create Table alumno"
		echo -e "\t\t2. Execute Migration Create Table alumno_materia"
		echo -e "\t\t3. Execute Migration Create Table contrato"
		echo -e "\t\t4. Execute Migration Create Table docente"
		echo -e "\t\t5. Execute Migration Create Table docente_materia"
		echo -e "\t\t6. Execute Migration Create Table materia"
		echo -e "\t\t7. Execute Migration Create Table matricula"
		echo -e "\t\t8. Execute Migration Create Table nota"
		echo -e "\t\t9. Execute Migration Create Table pension"
		echo -e "\t\t10. Execute Migration Create Table sueldo"
		
		echo -e "\n\t\t99. TODOS\n\n"
        echo -e "\n\t\t0. Salir\n\n"

        read -p "Escoja una Opcion: " opcion

        case $opcion in
            0)  salir; break; 
				;;						
		
			1)  
				php artisan migrate --path=database/migrations/Estructura/create_alumno_table.php ;
				;;
			2)  
				php artisan migrate --path=database/migrations/Estructura/create_alumno_materia_table.php ;
				;;
			3)  
				php artisan migrate --path=database/migrations/Financiero/create_contrato_table.php ;
				;;
			4)  
				php artisan migrate --path=database/migrations/Estructura/create_docente_table.php ;
				;;
			5)  
				php artisan migrate --path=database/migrations/Estructura/create_docente_materia_table.php ;
				;;
			6)  
				php artisan migrate --path=database/migrations/Estructura/create_materia_table.php ;
				;;
			7)  
				php artisan migrate --path=database/migrations/Proceso/create_matricula_table.php ;
				;;
			8)  
				php artisan migrate --path=database/migrations/Proceso/create_nota_table.php ;
				;;
			9)  
				php artisan migrate --path=database/migrations/Financiero/create_pension_table.php ;
				;;
			10)  
				php artisan migrate --path=database/migrations/Financiero/create_sueldo_table.php ;
				;;
            	
			99)
				php artisan migrate --path=database/migrations/Estructura/create_alumno_table.php ;				
				php artisan migrate --path=database/migrations/Estructura/create_alumno_materia_table.php ;				
				php artisan migrate --path=database/migrations/Financiero/create_contrato_table.php ;				
				php artisan migrate --path=database/migrations/Estructura/create_docente_table.php ;				
				php artisan migrate --path=database/migrations/Estructura/create_docente_materia_table.php ;				
				php artisan migrate --path=database/migrations/Estructura/create_materia_table.php ;				
				php artisan migrate --path=database/migrations/Proceso/create_matricula_table.php ;				
				php artisan migrate --path=database/migrations/Proceso/create_nota_table.php ;				
				php artisan migrate --path=database/migrations/Financiero/create_pension_table.php ;				
				php artisan migrate --path=database/migrations/Financiero/create_sueldo_table.php ;				
				;;
				
            *)  
                echo -e "Seleccion Incorrecta"; ;;
        esac

    echo -e "\nPresione la tecla Enter para continuar"    
    read linea
    done
}

get_execute_migrations_alter_fk_tables_db_menu() {
    
    while [ 1 ]
    do  
        clear
        echo -e "----------- 2. Execute Migrations Alter Fk Tables DB -------------"     
        
		echo -e "\t\t1. Execute Migration Alter Fk Table alumno_materia"
		echo -e "\t\t2. Execute Migration Alter Fk Table contrato"
		echo -e "\t\t3. Execute Migration Alter Fk Table docente_materia"
		echo -e "\t\t4. Execute Migration Alter Fk Table matricula"
		echo -e "\t\t5. Execute Migration Alter Fk Table nota"
		echo -e "\t\t6. Execute Migration Alter Fk Table pension"
		echo -e "\t\t7. Execute Migration Alter Fk Table sueldo"
		
		echo -e "\n\t\t99. TODOS\n\n"
        echo -e "\n\t\t0. Salir\n\n"

        read -p "Escoja una Opcion: " opcion

        case $opcion in
            0)  salir; break; 
				;;						
		
			1)  
				php artisan migrate --path=database/migrations/Estructura/alter_alumno_materia_table_fk.php ;
				;;
			2)  
				php artisan migrate --path=database/migrations/Financiero/alter_contrato_table_fk.php ;
				;;
			3)  
				php artisan migrate --path=database/migrations/Estructura/alter_docente_materia_table_fk.php ;
				;;
			4)  
				php artisan migrate --path=database/migrations/Proceso/alter_matricula_table_fk.php ;
				;;
			5)  
				php artisan migrate --path=database/migrations/Proceso/alter_nota_table_fk.php ;
				;;
			6)  
				php artisan migrate --path=database/migrations/Financiero/alter_pension_table_fk.php ;
				;;
			7)  
				php artisan migrate --path=database/migrations/Financiero/alter_sueldo_table_fk.php ;
				;;
            	
			99)
			
				php artisan migrate --path=database/migrations/Estructura/alter_alumno_materia_table_fk.php ;				
				php artisan migrate --path=database/migrations/Financiero/alter_contrato_table_fk.php ;				
				php artisan migrate --path=database/migrations/Estructura/alter_docente_materia_table_fk.php ;				
				php artisan migrate --path=database/migrations/Proceso/alter_matricula_table_fk.php ;				
				php artisan migrate --path=database/migrations/Proceso/alter_nota_table_fk.php ;				
				php artisan migrate --path=database/migrations/Financiero/alter_pension_table_fk.php ;				
				php artisan migrate --path=database/migrations/Financiero/alter_sueldo_table_fk.php ;				
				;;
				
            *)  
                echo -e "Seleccion Incorrecta"; ;;
        esac

    echo -e "\nPresione la tecla Enter para continuar"    
    read linea
    done
}

get_execute_migrations_alter_tables_db_menu() {
    
    while [ 1 ]
    do  
        clear
        echo -e "----------- 3. Execute Migrations Alter Tables DB -------------"     
        
		echo -e "\t\t1. Execute Migration Alter Table alumno"
		echo -e "\t\t2. Execute Migration Alter Table alumno_materia"
		echo -e "\t\t3. Execute Migration Alter Table contrato"
		echo -e "\t\t4. Execute Migration Alter Table docente"
		echo -e "\t\t5. Execute Migration Alter Table docente_materia"
		echo -e "\t\t6. Execute Migration Alter Table materia"
		echo -e "\t\t7. Execute Migration Alter Table matricula"
		echo -e "\t\t8. Execute Migration Alter Table nota"
		echo -e "\t\t9. Execute Migration Alter Table pension"
		echo -e "\t\t10. Execute Migration Alter Table sueldo"
		
		echo -e "\n\t\t99. TODOS\n\n"
        echo -e "\n\t\t0. Salir\n\n"

        read -p "Escoja una Opcion: " opcion

        case $opcion in
            0)  salir; break; 
				;;						
		
			1)  
				php artisan migrate --path=database/migrations/Estructura/alter_alumno_table.php ;
				;;
			2)  
				php artisan migrate --path=database/migrations/Estructura/alter_alumno_materia_table.php ;
				;;
			3)  
				php artisan migrate --path=database/migrations/Financiero/alter_contrato_table.php ;
				;;
			4)  
				php artisan migrate --path=database/migrations/Estructura/alter_docente_table.php ;
				;;
			5)  
				php artisan migrate --path=database/migrations/Estructura/alter_docente_materia_table.php ;
				;;
			6)  
				php artisan migrate --path=database/migrations/Estructura/alter_materia_table.php ;
				;;
			7)  
				php artisan migrate --path=database/migrations/Proceso/alter_matricula_table.php ;
				;;
			8)  
				php artisan migrate --path=database/migrations/Proceso/alter_nota_table.php ;
				;;
			9)  
				php artisan migrate --path=database/migrations/Financiero/alter_pension_table.php ;
				;;
			10)  
				php artisan migrate --path=database/migrations/Financiero/alter_sueldo_table.php ;
				;;
            	
			99)
			
				php artisan migrate --path=database/migrations/Estructura/alter_alumno_table.php ;							
				php artisan migrate --path=database/migrations/Estructura/alter_alumno_materia_table.php ;							
				php artisan migrate --path=database/migrations/Financiero/alter_contrato_table.php ;							
				php artisan migrate --path=database/migrations/Estructura/alter_docente_table.php ;							
				php artisan migrate --path=database/migrations/Estructura/alter_docente_materia_table.php ;							
				php artisan migrate --path=database/migrations/Estructura/alter_materia_table.php ;							
				php artisan migrate --path=database/migrations/Proceso/alter_matricula_table.php ;							
				php artisan migrate --path=database/migrations/Proceso/alter_nota_table.php ;							
				php artisan migrate --path=database/migrations/Financiero/alter_pension_table.php ;							
				php artisan migrate --path=database/migrations/Financiero/alter_sueldo_table.php ;							
				;;
				
            *)  
                echo -e "Seleccion Incorrecta"; ;;
        esac

    echo -e "\nPresione la tecla Enter para continuar"    
    read linea
    done
}

get_execute_seeders_datos_menu() {
    
    while [ 1 ]
    do  
        clear
        echo -e "----------- 6. Execute Seeders Datos -------------"     
        
		echo -e "\t\t1. Execute Seeder Datos of alumno"
		echo -e "\t\t2. Execute Seeder Datos of alumno_materia"
		echo -e "\t\t3. Execute Seeder Datos of contrato"
		echo -e "\t\t4. Execute Seeder Datos of docente"
		echo -e "\t\t5. Execute Seeder Datos of docente_materia"
		echo -e "\t\t6. Execute Seeder Datos of materia"
		echo -e "\t\t7. Execute Seeder Datos of matricula"
		echo -e "\t\t8. Execute Seeder Datos of nota"
		echo -e "\t\t9. Execute Seeder Datos of pension"
		echo -e "\t\t10. Execute Seeder Datos of sueldo"
		
		#echo -e "\n\t\t99. TODOS\n\n"
        echo -e "\n\t\t0. Salir\n\n"

        read -p "Escoja una Opcion: " opcion

        case $opcion in
            0)  salir; break; ;;

			1)  
                php artisan db:seed --class=Database\\Seeders\\Estructura\\AlumnoSeeder ;
				;;
			2)  
                php artisan db:seed --class=Database\\Seeders\\Estructura\\AlumnoMateriaSeeder ;
				;;
			3)  
                php artisan db:seed --class=Database\\Seeders\\Financiero\\ContratoSeeder ;
				;;
			4)  
                php artisan db:seed --class=Database\\Seeders\\Estructura\\DocenteSeeder ;
				;;
			5)  
                php artisan db:seed --class=Database\\Seeders\\Estructura\\DocenteMateriaSeeder ;
				;;
			6)  
                php artisan db:seed --class=Database\\Seeders\\Estructura\\MateriaSeeder ;
				;;
			7)  
                php artisan db:seed --class=Database\\Seeders\\Proceso\\MatriculaSeeder ;
				;;
			8)  
                php artisan db:seed --class=Database\\Seeders\\Proceso\\NotaSeeder ;
				;;
			9)  
                php artisan db:seed --class=Database\\Seeders\\Financiero\\PensionSeeder ;
				;;
			10)  
                php artisan db:seed --class=Database\\Seeders\\Financiero\\SueldoSeeder ;
				;;
						
            *)  
                echo -e "Seleccion Incorrecta"; ;;
        esac

    echo -e "\nPresione la tecla Enter para continuar"    
    read linea
    done
}

start_web_server() {
    clear
    echo -e "Web Server Starting..."
	
	php -S localhost:3000 -t public
}

salir() {
    clear
    echo -e "Proceso terminado correctamente..."
}


while [ 1 ]
do
    get_menu_opciones

    case $opcion in
        0)  salir; break; ;;
        1)  get_execute_migrations_create_tables_db_menu; ;;
		2)  get_execute_migrations_alter_fk_tables_db_menu; ;;
		3)  get_execute_migrations_alter_tables_db_menu; ;;
	    6)  get_execute_seeders_datos_menu; ;;
		99) start_web_server; ;;
        *)  echo -e "Seleccion Incorrecta"; ;;
    esac
	
	#dos2unix ./file_name1.sh, (dos2unix *.sh)
    echo -e "\nPresione la tecla Enter para continuar"
    read linea
done