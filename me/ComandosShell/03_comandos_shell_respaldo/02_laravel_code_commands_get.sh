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
    echo -e "\t\t1. Get Datos Todos"
    echo -e "\t\t2. Get Datos Relaciones"
    
    echo -e "\n\tAYUDA"
	echo -e "\n\t99. Start Web Server\n\n"
    echo -e "\n\t0. Salir\n\n"

    read -p "Escoja una Opcion: " opcion
}

get_datos_todos_menu() {
    
    while [ 1 ]
    do  
        clear
        echo -e "----------- 1. Get Datos Todos por Tabla -------------"     
        
		echo -e "\t\t1. Get Datos Todos (select * from alumno)"
		echo -e "\t\t2. Get Datos Todos (select * from alumno_materia)"
		echo -e "\t\t3. Get Datos Todos (select * from contrato)"
		echo -e "\t\t4. Get Datos Todos (select * from docente)"
		echo -e "\t\t5. Get Datos Todos (select * from docente_materia)"
		echo -e "\t\t6. Get Datos Todos (select * from materia)"
		echo -e "\t\t7. Get Datos Todos (select * from matricula)"
		echo -e "\t\t8. Get Datos Todos (select * from nota)"
		echo -e "\t\t9. Get Datos Todos (select * from pension)"
		echo -e "\t\t10. Get Datos Todos (select * from sueldo)"
		
		echo -e "\n\t\t99. TODOS\n\n"
        echo -e "\n\t\t0. Salir\n\n"

        read -p "Escoja una Opcion: " opcion

        case $opcion in
            0)  salir; break; 
				;;						
		
			1)  
                php artisan alumno:get_todos 10 0 ;
				;;
			2)  
                php artisan alumno_materia:get_todos 10 0 ;
				;;
			3)  
                php artisan contrato:get_todos 10 0 ;
				;;
			4)  
                php artisan docente:get_todos 10 0 ;
				;;
			5)  
                php artisan docente_materia:get_todos 10 0 ;
				;;
			6)  
                php artisan materia:get_todos 10 0 ;
				;;
			7)  
                php artisan matricula:get_todos 10 0 ;
				;;
			8)  
                php artisan nota:get_todos 10 0 ;
				;;
			9)  
                php artisan pension:get_todos 10 0 ;
				;;
			10)  
                php artisan sueldo:get_todos 10 0 ;
				;;
            
			99)
			    php artisan alumno:get_todos 10 0 ;
			    php artisan alumno_materia:get_todos 10 0 ;
			    php artisan contrato:get_todos 10 0 ;
			    php artisan docente:get_todos 10 0 ;
			    php artisan docente_materia:get_todos 10 0 ;
			    php artisan materia:get_todos 10 0 ;
			    php artisan matricula:get_todos 10 0 ;
			    php artisan nota:get_todos 10 0 ;
			    php artisan pension:get_todos 10 0 ;
			    php artisan sueldo:get_todos 10 0 ;
				;;
            *)  
                echo -e "Seleccion Incorrecta"; ;;
        esac

    echo -e "\nPresione la tecla Enter para continuar"    
    read linea
    done
}

get_datos_relaciones_menu() {
    
    while [ 1 ]
    do  
        clear
        echo -e "----------- 2. Get Datos Relaciones por Tabla -------------"     
        
		echo -e "\t\t1. Get Datos Relaciones (select * from alumno)"
		echo -e "\t\t2. Get Datos Relaciones (select * from alumno_materia)"
		echo -e "\t\t3. Get Datos Relaciones (select * from contrato)"
		echo -e "\t\t4. Get Datos Relaciones (select * from docente)"
		echo -e "\t\t5. Get Datos Relaciones (select * from docente_materia)"
		echo -e "\t\t6. Get Datos Relaciones (select * from materia)"
		echo -e "\t\t7. Get Datos Relaciones (select * from matricula)"
		echo -e "\t\t8. Get Datos Relaciones (select * from nota)"
		echo -e "\t\t9. Get Datos Relaciones (select * from pension)"
		echo -e "\t\t10. Get Datos Relaciones (select * from sueldo)"
		
		echo -e "\n\t\t99. TODOS\n\n"
        echo -e "\n\t\t0. Salir\n\n"

        read -p "Escoja una Opcion: " opcion

        case $opcion in
            0)  salir; break; ;;

			1)  
                php artisan alumno:get_relaciones 10 0 ;
				;;
			2)  
                php artisan alumno_materia:get_relaciones 10 0 ;
				;;
			3)  
                php artisan contrato:get_relaciones 10 0 ;
				;;
			4)  
                php artisan docente:get_relaciones 10 0 ;
				;;
			5)  
                php artisan docente_materia:get_relaciones 10 0 ;
				;;
			6)  
                php artisan materia:get_relaciones 10 0 ;
				;;
			7)  
                php artisan matricula:get_relaciones 10 0 ;
				;;
			8)  
                php artisan nota:get_relaciones 10 0 ;
				;;
			9)  
                php artisan pension:get_relaciones 10 0 ;
				;;
			10)  
                php artisan sueldo:get_relaciones 10 0 ;
				;;
			
			99)
			    php artisan alumno:get_relaciones 10 0 ;
			    php artisan alumno_materia:get_relaciones 10 0 ;
			    php artisan contrato:get_relaciones 10 0 ;
			    php artisan docente:get_relaciones 10 0 ;
			    php artisan docente_materia:get_relaciones 10 0 ;
			    php artisan materia:get_relaciones 10 0 ;
			    php artisan matricula:get_relaciones 10 0 ;
			    php artisan nota:get_relaciones 10 0 ;
			    php artisan pension:get_relaciones 10 0 ;
			    php artisan sueldo:get_relaciones 10 0 ;
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
        1)  get_datos_todos_menu; ;;         
	    2)  get_datos_relaciones_menu; ;;                
		99) start_web_server; ;;
        *)  echo -e "Seleccion Incorrecta"; ;;
    esac

	#dos2unix ./file_name1.sh, (dos2unix *.sh)
    echo -e "\nPresione la tecla Enter para continuar"
    read linea
done