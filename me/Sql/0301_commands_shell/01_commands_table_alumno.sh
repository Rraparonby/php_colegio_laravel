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
    echo -e "\t\t1. Datos Selects, Crud Alumno"
    echo -e "\t\t2. Datos Foreign Keys Alumno"
    echo -e "\t\t3. Datos Relaciones Alumno"
	#echo -e "\t\t4. Datos General por Tabla Exportar"
    
    echo -e "\n\tAYUDA"
    echo -e "\n\t0. Salir\n\n"

    read -p "Escoja una Opcion: " opcion
}

get_selects_crud_menu() {
    clear   
    echo -e "----------- 1. Datos Selects, Crud Alumno -------------"
    echo -e "\t\t1. Insert Alumno "
    echo -e "\t\t2. Update Alumno"
    echo -e "\t\t3. Delete Alumno"
    echo -e "\t\t4. Select Alumno"
    echo -e "\t\t5. Select FK Alumno"
    echo -e "\t\t6. Select Count Alumno"
    echo -e "\n\t\t0. Salir\n\n"

    read -p "Escoja una Opcion: " opcion

    case $opcion in
        0)  
            ;;
        1)  
            mysql -h $server -u $usuario -p$clave -D $db -e "$query"; ;;
        2)  
            mysql -h $server -u $usuario -p$clave -D $db -e "$query"; ;;
        3)  
            mysql -h $server -u $usuario -p$clave -D $db -e "$query"; ;;
        4)  
            query="SELECT 
                        id,
                        insert_at,
                        update_at,
                        nombre,
                        apellido,
                        fecha_nacimiento
                        FROM 2015_colegio_relaciones.alumno;";

            mysql -h $server -u $usuario -p$clave -D $db -e "$query"; ;;
        5)  
            query="SELECT id,
                            nombre
                            FROM 2015_colegio_relaciones.alumno;";

            mysql -h $server -u $usuario -p$clave -D $db -e "$query"; ;;
        6)  
            query="SELECT COUNT(*) AS value 
	                    FROM 2015_colegio_relaciones.alumno;";

            mysql -h $server -u $usuario -p$clave -D $db -e "$query"; ;;

        *)  echo -e "Seleccion Incorrecta"; ;;
    esac
}

get_selects_fk_menu() {
    
    while [ 1 ]
    do	
	    clear
	    echo -e "----------- 2. Datos Foreign Keys Alumno -------------"	   
	    echo -e "\t\t1. Ver Datos Tabla (select * from tabla)"
        echo -e "\t\t2. Ver Datos Tabla (select * from tabla WHERE)"
        echo -e "\t\t3. Ver Datos Query (select * from x)"
        echo -e "\n\t\t0. Salir\n\n"

	    read -p "Escoja una Opcion: " opcion

	    case $opcion in
    		0)  salir; break; ;;

    		1)  
                read -p "Ingrese nombre de tabla(prueba): " tabla;
    		    mysql -h $server -u $usuario -p$clave -D $db -e "SELECT * FROM $tabla"; ;;
    		2)
                read -p "Ingrese nombre de tabla(prueba): " tabla;
                read -p "Ingrese Where: " where;
				
				if [ -z $where ]; then
					where="1=1";
				fi
				
    		    mysql -h $server -u $usuario -p$clave -D $db -e "SELECT * FROM $tabla WHERE $where "; ;;
            3)  
                read -p "Ingrese Query: " query;
                mysql -h $server -u $usuario -p$clave -D $db -e "$query"; ;;          
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
        echo -e "----------- 3. Datos Relaciones Alumno -------------"     
		echo -e "\t\t1. Ver Datos Tabla (select * from alumno)"
		echo -e "\t\t2. Ver Datos Tabla (select * from alumno_materia)"
		echo -e "\t\t3. Ver Datos Tabla (select * from contrato)"
		echo -e "\n\t\t0. Salir\n\n"

        read -p "Escoja una Opcion: " opcion

        case $opcion in
            0)  salir; break; ;;
			1)  
                read -p "Ingrese Where: " where;
				if [ -z $where ]; then
					where="1=1";
				fi
                mysql -h $server -u $usuario -p$clave -D $db -e "SELECT * FROM alumno WHERE $where"; ;;
			2)  
                read -p "Ingrese Where: " where;
				if [ -z $where ]; then
					where="1=1";
				fi
                mysql -h $server -u $usuario -p$clave -D $db -e "SELECT * FROM alumno_materia WHERE $where"; ;;
			3)  
                read -p "Ingrese Where: " where;
				if [ -z $where ]; then
					where="1=1";
				fi
                mysql -h $server -u $usuario -p$clave -D $db -e "SELECT * FROM contrato WHERE $where"; ;;
			            
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
        1)  get_selects_crud_menu; ;;         
	    2)  get_selects_fk_menu; ;;        
        3)  get_selects_relaciones_menu; ;;
		#4)  get_datos_exportar_menu; ;;
        *)  echo -e "Seleccion Incorrecta"; ;;
    esac

    echo -e "\nPresione la tecla Enter para continuar"
    read linea
done