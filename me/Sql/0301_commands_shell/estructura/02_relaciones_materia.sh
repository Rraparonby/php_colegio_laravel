#!/bin/bash
opcion=0
linea=""
path="";
archivo=""
variable=""

server="localhost"
usuario="root"
clave="root"	#" "

db="metricas_auto"
tabla="alumno"
where=""
db_nombre="metricas_auto"
query=""

get_menu_opciones() {
    clear
    echo
    echo -e "\t\t\tMARIADB\n"	
    echo -e "\n\t----------- GENERAL -----------"
    echo -e "\t\t1. Datos Foreign Keys materia"
    echo -e "\t\t2. Datos Relaciones materia"
	#echo -e "\t\t3. Datos General por Tabla Exportar"
    
    echo -e "\n\tAYUDA"
    echo -e "\n\t0. Salir\n\n"

    read -p "Escoja una Opcion: " opcion
}

get_selects_fk_menu() {
    
    while [ 1 ]
    do	
	    clear
	    echo -e "----------- 1. Datos Foreign Keys materia -------------"
	    
        echo -e "\n\t\t0. Salir\n\n"

	    read -p "Escoja una Opcion: " opcion

	    case $opcion in
    		0)  salir; break; ;;
    		
    		*)  
    		    echo -e "Seleccion Incorrecta"; ;;
	    esac

    echo -e "\nPresione la tecla Enter para continuar"    
    read linea
    done
}

get_selects_relaciones_menu() {
    
    while [ 1 ]
    do  
        clear
        echo -e "----------- 2. Datos Relaciones materia -------------"     
		
		echo -e "\t\t1. Select One-Many docente_materia"
		echo -e "\t\t2. Select Many-Many docente"
		echo -e "\t\t3. Select Many-Many alumno"
		echo -e "\t\t4. Select One-Many nota"
		echo -e "\t\t5. Select One-Many alumno_materia"
		
		echo -e "\n\t\t0. Salir\n\n"

        read -p "Escoja una Opcion: " opcion

        case $opcion in
            0)  salir; break; ;;			
			
			1)  
            query="SELECT 
	id,
	insert_at,
	update_at,
	id_docente,
	id_materia
	FROM 2015_colegio_relaciones.docente_materia;";

            mysql -h $server -u $usuario -p$clave -D $db -e "$query"; ;;
			2)  
            query="SELECT 
	id,
	insert_at,
	update_at,
	nombre,
	apellido,
	fecha_nacimiento,
	anios_experiencia,
	nota_evaluacion
	FROM 2015_colegio_relaciones.docente;";

            mysql -h $server -u $usuario -p$clave -D $db -e "$query"; ;;
			3)  
            query="SELECT 
	id,
	insert_at,
	update_at,
	nombre,
	apellido,
	fecha_nacimiento
	FROM 2015_colegio_relaciones.alumno;";

            mysql -h $server -u $usuario -p$clave -D $db -e "$query"; ;;
			4)  
            query="SELECT 
	id,
	insert_at,
	update_at,
	id_alumno,
	id_materia,
	id_docente,
	nota_prueba,
	nota_trabajo,
	nota_examen,
	nota_final
	FROM 2015_colegio_relaciones.nota;";

            mysql -h $server -u $usuario -p$clave -D $db -e "$query"; ;;
			5)  
            query="SELECT 
	id,
	insert_at,
	update_at,
	id_alumno,
	id_materia
	FROM 2015_colegio_relaciones.alumno_materia;";

            mysql -h $server -u $usuario -p$clave -D $db -e "$query"; ;;
		
            *)  
                echo -e "Seleccion Incorrecta"; ;;
        esac

    echo -e "\nPresione la tecla Enter para continuar"    
    read linea
    done
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
        1)  get_selects_fk_menu; ;;        
        2)  get_selects_relaciones_menu; ;;
		#4)  get_datos_exportar_menu; ;;
        *)  echo -e "Seleccion Incorrecta"; ;;
    esac

    echo -e "\nPresione la tecla Enter para continuar"
    read linea
done