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
tabla="prueba"
where=""
db_nombre="metricas_auto"
query=""

get_menu_opciones() {
    clear
    echo
    echo -e "\t\t\tMARIADB\n"	
    echo -e "\n\t----------- GENERAL -----------"
    echo -e "\t\t1. Datos Global (DBs, Tablas)"
    echo -e "\t\t2. Datos General por Tabla"
    echo -e "\t\t3. Datos General por Tabla Generado"
	echo -e "\t\t4. Datos General por Tabla Exportar"
    
    echo -e "\n\tAYUDA"
    echo -e "\n\t0. Salir\n\n"

    read -p "Escoja una Opcion: " opcion
}

get_global_menu() {
    clear   
    echo -e "----------- 1. Datos Global -------------"
    echo -e "\t\t1. Ver Base Datos (show databases)"
    echo -e "\t\t2. Ver Tablas (show tables)"
    echo -e "\n\t\t0. Salir\n\n"

    read -p "Escoja una Opcion: " opcion

    case $opcion in
        0)  ;;
        1)  mysql -h $server -u $usuario -p$clave -e "show databases"; ;;
        2)  mysql -h $server -u $usuario -p$clave -D $db -e "show tables"; ;;        
        *)  echo -e "Seleccion Incorrecta"; ;;
    esac
}

get_datos_menu() {
    
    while [ 1 ]
    do	
	    clear
	    echo -e "----------- 2. Datos General por Tabla -------------"	   
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

get_datos_generado_menu() {
    
    while [ 1 ]
    do  
        clear
        echo -e "----------- 3. Datos General por Tabla Generado -------------"     
		echo -e "\t\t1. Ver Datos Tabla (select * from alumno)"
		echo -e "\t\t2. Ver Datos Tabla (select * from alumno_materia)"
		echo -e "\t\t3. Ver Datos Tabla (select * from contrato)"
		echo -e "\t\t4. Ver Datos Tabla (select * from docente)"
		echo -e "\t\t5. Ver Datos Tabla (select * from docente_materia)"
		echo -e "\t\t6. Ver Datos Tabla (select * from materia)"
		echo -e "\t\t7. Ver Datos Tabla (select * from matricula)"
		echo -e "\t\t8. Ver Datos Tabla (select * from nota)"
		echo -e "\t\t9. Ver Datos Tabla (select * from pension)"
		echo -e "\t\t10. Ver Datos Tabla (select * from sueldo)"
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
			4)  
                read -p "Ingrese Where: " where;
				if [ -z $where ]; then
					where="1=1";
				fi
                mysql -h $server -u $usuario -p$clave -D $db -e "SELECT * FROM docente WHERE $where"; ;;
			5)  
                read -p "Ingrese Where: " where;
				if [ -z $where ]; then
					where="1=1";
				fi
                mysql -h $server -u $usuario -p$clave -D $db -e "SELECT * FROM docente_materia WHERE $where"; ;;
			6)  
                read -p "Ingrese Where: " where;
				if [ -z $where ]; then
					where="1=1";
				fi
                mysql -h $server -u $usuario -p$clave -D $db -e "SELECT * FROM materia WHERE $where"; ;;
			7)  
                read -p "Ingrese Where: " where;
				if [ -z $where ]; then
					where="1=1";
				fi
                mysql -h $server -u $usuario -p$clave -D $db -e "SELECT * FROM matricula WHERE $where"; ;;
			8)  
                read -p "Ingrese Where: " where;
				if [ -z $where ]; then
					where="1=1";
				fi
                mysql -h $server -u $usuario -p$clave -D $db -e "SELECT * FROM nota WHERE $where"; ;;
			9)  
                read -p "Ingrese Where: " where;
				if [ -z $where ]; then
					where="1=1";
				fi
                mysql -h $server -u $usuario -p$clave -D $db -e "SELECT * FROM pension WHERE $where"; ;;
			10)  
                read -p "Ingrese Where: " where;
				if [ -z $where ]; then
					where="1=1";
				fi
                mysql -h $server -u $usuario -p$clave -D $db -e "SELECT * FROM sueldo WHERE $where"; ;;
            
            *)  
                echo -e "Seleccion Incorrecta"; ;;
        esac

    echo -e "\nPresione la tecla Enter para continuar"    
    read linea
    done
}

get_datos_exportar_menu() {
    
    while [ 1 ]
    do  
        clear
        echo -e "----------- 4. Datos General por Tabla Exportar -------------"     
        echo -e "\t\t1. Ver Datos Tabla a archivo texto (select * from tabla into outfile)"
        echo -e "\t\t2. Ver Datos Tabla a archivo cvs/excel (select * from tabla into outfile)"
        echo -e "\t\t3. Ver Datos Query a archivo cvs/excel (select * from tabla into outfile)"
        echo -e "\n\t\t0. Salir\n\n"

        read -p "Escoja una Opcion: " opcion

        case $opcion in
            0)  salir; break; ;;

            1)
                read -p "Ingrese nombre de tabla(prueba): " tabla;
                mysql -h $server -u $usuario -p$clave -D $db -e "SELECT * FROM $tabla INTO OUTFILE '/tmp/$tabla.txt' "; ;;
            2)
                read -p "Ingrese nombre de tabla(prueba): " tabla;
                mysql -h $server -u $usuario -p$clave -D $db -e "SELECT * FROM $tabla INTO OUTFILE '/tmp/$tabla.csv' FIELDS TERMINATED BY ',' ENCLOSED BY '\"' LINES TERMINATED BY '\n'"; ;;
            3)
                read -p "Ingrese Query: " query;
                mysql -h $server -u $usuario -p$clave -D $db -e "$query INTO OUTFILE '/tmp/query.csv' FIELDS TERMINATED BY ',' ENCLOSED BY '\"' LINES TERMINATED BY '\n'"; ;;
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
        1)  get_global_menu; ;;         
	    2)  get_datos_menu; ;;        
        3)  get_datos_generado_menu; ;;
		4)  get_datos_exportar_menu; ;;
        *)  echo -e "Seleccion Incorrecta"; ;;
    esac

    echo -e "\nPresione la tecla Enter para continuar"
    read linea
done