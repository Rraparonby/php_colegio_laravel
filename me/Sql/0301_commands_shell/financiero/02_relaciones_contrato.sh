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
    echo -e "\t\t1. Datos Foreign Keys contrato"
    echo -e "\t\t2. Datos Relaciones contrato"
	#echo -e "\t\t3. Datos General por Tabla Exportar"
    
    echo -e "\n\tAYUDA"
    echo -e "\n\t0. Salir\n\n"

    read -p "Escoja una Opcion: " opcion
}

get_selects_fk_menu() {
    
    while [ 1 ]
    do	
	    clear
	    echo -e "----------- 1. Datos Foreign Keys contrato -------------"
		echo -e "\t\t1. Select FK docente"
	    
        echo -e "\n\t\t0. Salir\n\n"

	    read -p "Escoja una Opcion: " opcion

	    case $opcion in
    		0)  salir; break; ;;
    		
			1)  
            query="SELECT id,
	nombre FROM 2015_colegio_relaciones.docente;";

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
        echo -e "----------- 2. Datos Relaciones contrato -------------"     
		
		
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