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
    echo -e "\t\t1. Datos Selects alumno"
	echo -e "\t\t2. Datos Crud alumno"
    #echo -e "\t\t4. Datos General por Tabla Exportar"
    
    echo -e "\n\tAYUDA"
    echo -e "\n\t0. Salir\n\n"

    read -p "Escoja una Opcion: " opcion
}

get_selects_menu() {
    clear   
    echo -e "----------- 1. Datos Selects alumno -------------"
    echo -e "\t\t1. Select alumno"
    echo -e "\t\t2. Select FK alumno"
    echo -e "\t\t3. Select Count alumno"
    echo -e "\n\t\t0. Salir\n\n"

    read -p "Escoja una Opcion: " opcion

    case $opcion in
        0)  
            ;;        
        1)  
            query="SELECT 
	id,
	insert_at,
	update_at,
	nombre,
	apellido,
	fecha_nacimiento
	FROM 2015_colegio_relaciones.alumno;";

            mysql -h $server -u $usuario -p$clave -D $db -e "$query"; ;;
        2)  
            query="SELECT id,
	nombre FROM 2015_colegio_relaciones.alumno;";

            mysql -h $server -u $usuario -p$clave -D $db -e "$query"; ;;
        3)  
            query="SELECT COUNT(*) AS value 
	FROM 2015_colegio_relaciones.alumno;
";

            mysql -h $server -u $usuario -p$clave -D $db -e "$query"; ;;

        *)  echo -e "Seleccion Incorrecta"; ;;
    esac
}

get_crud_menu() {
    clear   
    echo -e "----------- 2. Datos Crud alumno -------------"
    echo -e "\t\t1. Insert alumno "
    echo -e "\t\t2. Update alumno"
    echo -e "\t\t3. Delete alumno"
    echo -e "\n\t\t0. Salir\n\n"

    read -p "Escoja una Opcion: " opcion

    case $opcion in
        0)  
            ;;
        1)  
			query="INSERT INTO 2015_colegio_relaciones.alumno(
	
		insert_at
	,	update_at
	,	nombre
	,	apellido
	,	fecha_nacimiento
	
) VALUES (
	
	CURRENT_TIMESTAMP,
	CURRENT_TIMESTAMP,
	'',
	'',
	''
);";
            
			mysql -h $server -u $usuario -p$clave -D $db -e "$query"; ;;
        2)  
			query="UPDATE 2015_colegio_relaciones.alumno SET 
	
	insert_at=CURRENT_TIMESTAMP,
	update_at=CURRENT_TIMESTAMP,
	nombre='',
	apellido='',
	fecha_nacimiento=''

WHERE id=0 
	  AND update_at='';";
            
			mysql -h $server -u $usuario -p$clave -D $db -e "$query"; ;;
        3)  
			query="DELETE FROM 2015_colegio_relaciones.alumno 
	   WHERE id = 0;";
            
			mysql -h $server -u $usuario -p$clave -D $db -e "$query"; ;;        

        *)  echo -e "Seleccion Incorrecta"; ;;
    esac
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
        1)  get_selects_menu; ;;
		2)  get_crud_menu; ;;         	    
		#3)  get_datos_exportar_menu; ;;
        *)  echo -e "Seleccion Incorrecta"; ;;
    esac

    echo -e "\nPresione la tecla Enter para continuar"
    read linea
done