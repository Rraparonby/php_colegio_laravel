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
    
	echo -e "\t\t1. Curl CRUD Lote y Relaciones (alumno)"
	echo -e "\t\t2. Curl CRUD Lote y Relaciones (alumno_materia)"
	echo -e "\t\t3. Curl CRUD Lote y Relaciones (contrato)"
	echo -e "\t\t4. Curl CRUD Lote y Relaciones (docente)"
	echo -e "\t\t5. Curl CRUD Lote y Relaciones (docente_materia)"
	echo -e "\t\t6. Curl CRUD Lote y Relaciones (materia)"
	echo -e "\t\t7. Curl CRUD Lote y Relaciones (matricula)"
	echo -e "\t\t8. Curl CRUD Lote y Relaciones (nota)"
	echo -e "\t\t9. Curl CRUD Lote y Relaciones (pension)"
	echo -e "\t\t10. Curl CRUD Lote y Relaciones (sueldo)"
    
    echo -e "\n\tAYUDA"
	#echo -e "\n\t99. Start Web Server\n\n"
    echo -e "\n\t0. Salir\n\n"

    read -p "Escoja una Opcion: " opcion
}


get_curl_crud_lote_relaciones_alumno() {    
    while [ 1 ]
    do  
        clear
        echo -e "----------- 1. LOTE/RELACIONES Datos Tabla  alumno -------------"
		echo -e "\t\t1. Set Nuevos LOTES Alumno"
		echo -e "\t\t2. Set Actualizars LOTES Alumno"
		echo -e "\t\t3. Set Eliminars LOTES Alumno"
		echo -e "\t\t4. Set Guardar Cambios LOTES Alumno"
		
		
		
		#echo -e "\n\t\t99. TODOS\n\n"
        echo -e "\n\t\t0. Salir\n\n"

        read -p "Escoja una Opcion: " opcion
        case $opcion in
            0)  salir; break; 
				;;								
			1)  
                curl -X POST -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/estructura/alumno_api/nuevos/' -d '{
					"news_alumnos":[					
					{
						"created_at" : "2000-01-01 01:01:01",
						"updated_at" : "2000-01-01 01:01:01",
						"nombre" : "",
						"apellido" : "",
						"fecha_nacimiento" : "2000-01-01 01:01:01"
					},
					{
						"created_at" : "2000-01-01 01:01:01",
						"updated_at" : "2000-01-01 01:01:01",
						"nombre" : "",
						"apellido" : "",
						"fecha_nacimiento" : "2000-01-01 01:01:01"
					},
					{
						"created_at" : "2000-01-01 01:01:01",
						"updated_at" : "2000-01-01 01:01:01",
						"nombre" : "",
						"apellido" : "",
						"fecha_nacimiento" : "2000-01-01 01:01:01"
					},
					]
				}' ; 
				;;				
			2)  
                curl -X PUT -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/estructura/alumno_api/actualizars/' -d ' {
					"updates_alumnos":[
					{
						"id" : 0,
						"updated_at" : "2000-01-01 01:01:01",
						"nombre" : "",
						"apellido" : "",
						"fecha_nacimiento" : "2000-01-01 01:01:01"
					},
					{
						"id" : 0,
						"updated_at" : "2000-01-01 01:01:01",
						"nombre" : "",
						"apellido" : "",
						"fecha_nacimiento" : "2000-01-01 01:01:01"
					},
					{
						"id" : 0,
						"updated_at" : "2000-01-01 01:01:01",
						"nombre" : "",
						"apellido" : "",
						"fecha_nacimiento" : "2000-01-01 01:01:01"
					},
					],
					"updates_columnas":["nombre","apellido","fecha_nacimiento"]
				}' ;				
				;;				
			3)  
                curl -X DELETE -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/estructura/alumno_api/eliminars/' -d ' {
					"ids_deletes_alumnos": [
						1,
						2,
						3,
					]
				}' ;				
				;;				
			4)  
                curl -X POST -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/estructura/alumno_api/guardar_cambios/' -d '{
					"news_alumnos":[					
					{
						"created_at" : "2000-01-01 01:01:01",
						"updated_at" : "2000-01-01 01:01:01",
						"nombre" : "",
						"apellido" : "",
						"fecha_nacimiento" : "2000-01-01 01:01:01"
					},
					{
						"created_at" : "2000-01-01 01:01:01",
						"updated_at" : "2000-01-01 01:01:01",
						"nombre" : "",
						"apellido" : "",
						"fecha_nacimiento" : "2000-01-01 01:01:01"
					},
					{
						"created_at" : "2000-01-01 01:01:01",
						"updated_at" : "2000-01-01 01:01:01",
						"nombre" : "",
						"apellido" : "",
						"fecha_nacimiento" : "2000-01-01 01:01:01"
					},
					],
					
					"updates_alumnos":[
					{
						"id" : 0,
						"updated_at" : "2000-01-01 01:01:01",
						"nombre" : "",
						"apellido" : "",
						"fecha_nacimiento" : "2000-01-01 01:01:01"
					},
					{
						"id" : 0,
						"updated_at" : "2000-01-01 01:01:01",
						"nombre" : "",
						"apellido" : "",
						"fecha_nacimiento" : "2000-01-01 01:01:01"
					},
					{
						"id" : 0,
						"updated_at" : "2000-01-01 01:01:01",
						"nombre" : "",
						"apellido" : "",
						"fecha_nacimiento" : "2000-01-01 01:01:01"
					},
					],					
					"updates_columnas":["nombre","apellido","fecha_nacimiento"],
					"ids_deletes_alumnos":[
						1,
						2,
						3,
					]
					}
				' ;
				;;				
						
            *)  
                echo -e "Seleccion Incorrecta"; ;;
        esac

    echo -e "\nPresione la tecla Enter para continuar"    
    read linea
    done
}

get_curl_crud_lote_relaciones_alumno_materia() {    
    while [ 1 ]
    do  
        clear
        echo -e "----------- 1. LOTE/RELACIONES Datos Tabla  alumno_materia -------------"
		echo -e "\t\t1. Set Nuevos LOTES AlumnoMateria"
		echo -e "\t\t2. Set Actualizars LOTES AlumnoMateria"
		echo -e "\t\t3. Set Eliminars LOTES AlumnoMateria"
		echo -e "\t\t4. Set Guardar Cambios LOTES AlumnoMateria"
		
		
		
		#echo -e "\n\t\t99. TODOS\n\n"
        echo -e "\n\t\t0. Salir\n\n"

        read -p "Escoja una Opcion: " opcion
        case $opcion in
            0)  salir; break; 
				;;								
			1)  
                curl -X POST -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/estructura/alumno_materia_api/nuevos/' -d '{
					"news_alumno_materias":[					
					{
						"created_at" : "2000-01-01 01:01:01",
						"updated_at" : "2000-01-01 01:01:01",
						"id_alumno" : 1,
						"id_materia" : 1
					},
					{
						"created_at" : "2000-01-01 01:01:01",
						"updated_at" : "2000-01-01 01:01:01",
						"id_alumno" : 1,
						"id_materia" : 1
					},
					{
						"created_at" : "2000-01-01 01:01:01",
						"updated_at" : "2000-01-01 01:01:01",
						"id_alumno" : 1,
						"id_materia" : 1
					},
					]
				}' ; 
				;;				
			2)  
                curl -X PUT -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/estructura/alumno_materia_api/actualizars/' -d ' {
					"updates_alumno_materias":[
					{
						"id" : 0,
						"updated_at" : "2000-01-01 01:01:01",
						"id_alumno" : 1,
						"id_materia" : 1
					},
					{
						"id" : 0,
						"updated_at" : "2000-01-01 01:01:01",
						"id_alumno" : 1,
						"id_materia" : 1
					},
					{
						"id" : 0,
						"updated_at" : "2000-01-01 01:01:01",
						"id_alumno" : 1,
						"id_materia" : 1
					},
					],
					"updates_columnas":["id_alumno","id_materia"]
				}' ;				
				;;				
			3)  
                curl -X DELETE -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/estructura/alumno_materia_api/eliminars/' -d ' {
					"ids_deletes_alumno_materias": [
						1,
						2,
						3,
					]
				}' ;				
				;;				
			4)  
                curl -X POST -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/estructura/alumno_materia_api/guardar_cambios/' -d '{
					"news_alumno_materias":[					
					{
						"created_at" : "2000-01-01 01:01:01",
						"updated_at" : "2000-01-01 01:01:01",
						"id_alumno" : 1,
						"id_materia" : 1
					},
					{
						"created_at" : "2000-01-01 01:01:01",
						"updated_at" : "2000-01-01 01:01:01",
						"id_alumno" : 1,
						"id_materia" : 1
					},
					{
						"created_at" : "2000-01-01 01:01:01",
						"updated_at" : "2000-01-01 01:01:01",
						"id_alumno" : 1,
						"id_materia" : 1
					},
					],
					
					"updates_alumno_materias":[
					{
						"id" : 0,
						"updated_at" : "2000-01-01 01:01:01",
						"id_alumno" : 1,
						"id_materia" : 1
					},
					{
						"id" : 0,
						"updated_at" : "2000-01-01 01:01:01",
						"id_alumno" : 1,
						"id_materia" : 1
					},
					{
						"id" : 0,
						"updated_at" : "2000-01-01 01:01:01",
						"id_alumno" : 1,
						"id_materia" : 1
					},
					],					
					"updates_columnas":["id_alumno","id_materia"],
					"ids_deletes_alumno_materias":[
						1,
						2,
						3,
					]
					}
				' ;
				;;				
			
            *)  
                echo -e "Seleccion Incorrecta"; ;;
        esac

    echo -e "\nPresione la tecla Enter para continuar"    
    read linea
    done
}

get_curl_crud_lote_relaciones_contrato() {    
    while [ 1 ]
    do  
        clear
        echo -e "----------- 1. LOTE/RELACIONES Datos Tabla  contrato -------------"
		echo -e "\t\t1. Set Nuevos LOTES Contrato"
		echo -e "\t\t2. Set Actualizars LOTES Contrato"
		echo -e "\t\t3. Set Eliminars LOTES Contrato"
		echo -e "\t\t4. Set Guardar Cambios LOTES Contrato"
		
		
		
		#echo -e "\n\t\t99. TODOS\n\n"
        echo -e "\n\t\t0. Salir\n\n"

        read -p "Escoja una Opcion: " opcion
        case $opcion in
            0)  salir; break; 
				;;								
			1)  
                curl -X POST -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/financiero/contrato_api/nuevos/' -d '{
					"news_contratos":[					
					{
						"created_at" : "2000-01-01 01:01:01",
						"updated_at" : "2000-01-01 01:01:01",
						"anio" : 0,
						"valor" : 0.0,
						"fecha" : "2000-01-01 01:01:01",
						"firmado" : false
					},
					{
						"created_at" : "2000-01-01 01:01:01",
						"updated_at" : "2000-01-01 01:01:01",
						"anio" : 0,
						"valor" : 0.0,
						"fecha" : "2000-01-01 01:01:01",
						"firmado" : false
					},
					{
						"created_at" : "2000-01-01 01:01:01",
						"updated_at" : "2000-01-01 01:01:01",
						"anio" : 0,
						"valor" : 0.0,
						"fecha" : "2000-01-01 01:01:01",
						"firmado" : false
					},
					]
				}' ; 
				;;				
			2)  
                curl -X PUT -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/financiero/contrato_api/actualizars/' -d ' {
					"updates_contratos":[
					{
						"id" : 1,
						"updated_at" : "2000-01-01 01:01:01",
						"anio" : 0,
						"valor" : 0.0,
						"fecha" : "2000-01-01 01:01:01",
						"firmado" : false
					},
					{
						"id" : 1,
						"updated_at" : "2000-01-01 01:01:01",
						"anio" : 0,
						"valor" : 0.0,
						"fecha" : "2000-01-01 01:01:01",
						"firmado" : false
					},
					{
						"id" : 1,
						"updated_at" : "2000-01-01 01:01:01",
						"anio" : 0,
						"valor" : 0.0,
						"fecha" : "2000-01-01 01:01:01",
						"firmado" : false
					},
					],
					"updates_columnas":["anio","valor","fecha","firmado"]
				}' ;				
				;;				
			3)  
                curl -X DELETE -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/financiero/contrato_api/eliminars/' -d ' {
					"ids_deletes_contratos": [
						1,
						2,
						3,
					]
				}' ;				
				;;				
			4)  
                curl -X POST -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/financiero/contrato_api/guardar_cambios/' -d '{
					"news_contratos":[					
					{
						"created_at" : "2000-01-01 01:01:01",
						"updated_at" : "2000-01-01 01:01:01",
						"anio" : 0,
						"valor" : 0.0,
						"fecha" : "2000-01-01 01:01:01",
						"firmado" : false
					},
					{
						"created_at" : "2000-01-01 01:01:01",
						"updated_at" : "2000-01-01 01:01:01",
						"anio" : 0,
						"valor" : 0.0,
						"fecha" : "2000-01-01 01:01:01",
						"firmado" : false
					},
					{
						"created_at" : "2000-01-01 01:01:01",
						"updated_at" : "2000-01-01 01:01:01",
						"anio" : 0,
						"valor" : 0.0,
						"fecha" : "2000-01-01 01:01:01",
						"firmado" : false
					},
					],
					
					"updates_contratos":[
					{
						"id" : 1,
						"updated_at" : "2000-01-01 01:01:01",
						"anio" : 0,
						"valor" : 0.0,
						"fecha" : "2000-01-01 01:01:01",
						"firmado" : false
					},
					{
						"id" : 1,
						"updated_at" : "2000-01-01 01:01:01",
						"anio" : 0,
						"valor" : 0.0,
						"fecha" : "2000-01-01 01:01:01",
						"firmado" : false
					},
					{
						"id" : 1,
						"updated_at" : "2000-01-01 01:01:01",
						"anio" : 0,
						"valor" : 0.0,
						"fecha" : "2000-01-01 01:01:01",
						"firmado" : false
					},
					],					
					"updates_columnas":["anio","valor","fecha","firmado"],
					"ids_deletes_contratos":[
						1,
						2,
						3,
					]
					}
				' ;
				;;				
			
            *)  
                echo -e "Seleccion Incorrecta"; ;;
        esac

    echo -e "\nPresione la tecla Enter para continuar"    
    read linea
    done
}

get_curl_crud_lote_relaciones_docente() {    
    while [ 1 ]
    do  
        clear
        echo -e "----------- 1. LOTE/RELACIONES Datos Tabla  docente -------------"
		echo -e "\t\t1. Set Nuevos LOTES Docente"
		echo -e "\t\t2. Set Actualizars LOTES Docente"
		echo -e "\t\t3. Set Eliminars LOTES Docente"
		echo -e "\t\t4. Set Guardar Cambios LOTES Docente"
		
		
		
		#echo -e "\n\t\t99. TODOS\n\n"
        echo -e "\n\t\t0. Salir\n\n"

        read -p "Escoja una Opcion: " opcion
        case $opcion in
            0)  salir; break; 
				;;								
			1)  
                curl -X POST -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/estructura/docente_api/nuevos/' -d '{
					"news_docentes":[					
					{
						"created_at" : "2000-01-01 01:01:01",
						"updated_at" : "2000-01-01 01:01:01",
						"nombre" : "",
						"apellido" : "",
						"fecha_nacimiento" : "2000-01-01 01:01:01",
						"anios_experiencia" : 0,
						"nota_evaluacion" : 0.0
					},
					{
						"created_at" : "2000-01-01 01:01:01",
						"updated_at" : "2000-01-01 01:01:01",
						"nombre" : "",
						"apellido" : "",
						"fecha_nacimiento" : "2000-01-01 01:01:01",
						"anios_experiencia" : 0,
						"nota_evaluacion" : 0.0
					},
					{
						"created_at" : "2000-01-01 01:01:01",
						"updated_at" : "2000-01-01 01:01:01",
						"nombre" : "",
						"apellido" : "",
						"fecha_nacimiento" : "2000-01-01 01:01:01",
						"anios_experiencia" : 0,
						"nota_evaluacion" : 0.0
					},
					]
				}' ; 
				;;				
			2)  
                curl -X PUT -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/estructura/docente_api/actualizars/' -d ' {
					"updates_docentes":[
					{
						"id" : 0,
						"updated_at" : "2000-01-01 01:01:01",
						"nombre" : "",
						"apellido" : "",
						"fecha_nacimiento" : "2000-01-01 01:01:01",
						"anios_experiencia" : 0,
						"nota_evaluacion" : 0.0
					},
					{
						"id" : 0,
						"updated_at" : "2000-01-01 01:01:01",
						"nombre" : "",
						"apellido" : "",
						"fecha_nacimiento" : "2000-01-01 01:01:01",
						"anios_experiencia" : 0,
						"nota_evaluacion" : 0.0
					},
					{
						"id" : 0,
						"updated_at" : "2000-01-01 01:01:01",
						"nombre" : "",
						"apellido" : "",
						"fecha_nacimiento" : "2000-01-01 01:01:01",
						"anios_experiencia" : 0,
						"nota_evaluacion" : 0.0
					},
					],
					"updates_columnas":["nombre","apellido","fecha_nacimiento","anios_experiencia","nota_evaluacion"]
				}' ;				
				;;				
			3)  
                curl -X DELETE -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/estructura/docente_api/eliminars/' -d ' {
					"ids_deletes_docentes": [
						1,
						2,
						3,
					]
				}' ;				
				;;				
			4)  
                curl -X POST -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/estructura/docente_api/guardar_cambios/' -d '{
					"news_docentes":[					
					{
						"created_at" : "2000-01-01 01:01:01",
						"updated_at" : "2000-01-01 01:01:01",
						"nombre" : "",
						"apellido" : "",
						"fecha_nacimiento" : "2000-01-01 01:01:01",
						"anios_experiencia" : 0,
						"nota_evaluacion" : 0.0
					},
					{
						"created_at" : "2000-01-01 01:01:01",
						"updated_at" : "2000-01-01 01:01:01",
						"nombre" : "",
						"apellido" : "",
						"fecha_nacimiento" : "2000-01-01 01:01:01",
						"anios_experiencia" : 0,
						"nota_evaluacion" : 0.0
					},
					{
						"created_at" : "2000-01-01 01:01:01",
						"updated_at" : "2000-01-01 01:01:01",
						"nombre" : "",
						"apellido" : "",
						"fecha_nacimiento" : "2000-01-01 01:01:01",
						"anios_experiencia" : 0,
						"nota_evaluacion" : 0.0
					},
					],
					
					"updates_docentes":[
					{
						"id" : 0,
						"updated_at" : "2000-01-01 01:01:01",
						"nombre" : "",
						"apellido" : "",
						"fecha_nacimiento" : "2000-01-01 01:01:01",
						"anios_experiencia" : 0,
						"nota_evaluacion" : 0.0
					},
					{
						"id" : 0,
						"updated_at" : "2000-01-01 01:01:01",
						"nombre" : "",
						"apellido" : "",
						"fecha_nacimiento" : "2000-01-01 01:01:01",
						"anios_experiencia" : 0,
						"nota_evaluacion" : 0.0
					},
					{
						"id" : 0,
						"updated_at" : "2000-01-01 01:01:01",
						"nombre" : "",
						"apellido" : "",
						"fecha_nacimiento" : "2000-01-01 01:01:01",
						"anios_experiencia" : 0,
						"nota_evaluacion" : 0.0
					},
					],					
					"updates_columnas":["nombre","apellido","fecha_nacimiento","anios_experiencia","nota_evaluacion"],
					"ids_deletes_docentes":[
						1,
						2,
						3,
					]
					}
				' ;
				;;				
						
            *)  
                echo -e "Seleccion Incorrecta"; ;;
        esac

    echo -e "\nPresione la tecla Enter para continuar"    
    read linea
    done
}

get_curl_crud_lote_relaciones_docente_materia() {    
    while [ 1 ]
    do  
        clear
        echo -e "----------- 1. LOTE/RELACIONES Datos Tabla  docente_materia -------------"
		echo -e "\t\t1. Set Nuevos LOTES DocenteMateria"
		echo -e "\t\t2. Set Actualizars LOTES DocenteMateria"
		echo -e "\t\t3. Set Eliminars LOTES DocenteMateria"
		echo -e "\t\t4. Set Guardar Cambios LOTES DocenteMateria"
		
		
		
		#echo -e "\n\t\t99. TODOS\n\n"
        echo -e "\n\t\t0. Salir\n\n"

        read -p "Escoja una Opcion: " opcion
        case $opcion in
            0)  salir; break; 
				;;								
			1)  
                curl -X POST -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/estructura/docente_materia_api/nuevos/' -d '{
					"news_docente_materias":[					
					{
						"created_at" : "2000-01-01 01:01:01",
						"updated_at" : "2000-01-01 01:01:01",
						"id_docente" : 1,
						"id_materia" : 1
					},
					{
						"created_at" : "2000-01-01 01:01:01",
						"updated_at" : "2000-01-01 01:01:01",
						"id_docente" : 1,
						"id_materia" : 1
					},
					{
						"created_at" : "2000-01-01 01:01:01",
						"updated_at" : "2000-01-01 01:01:01",
						"id_docente" : 1,
						"id_materia" : 1
					},
					]
				}' ; 
				;;				
			2)  
                curl -X PUT -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/estructura/docente_materia_api/actualizars/' -d ' {
					"updates_docente_materias":[
					{
						"id" : 0,
						"updated_at" : "2000-01-01 01:01:01",
						"id_docente" : 1,
						"id_materia" : 1
					},
					{
						"id" : 0,
						"updated_at" : "2000-01-01 01:01:01",
						"id_docente" : 1,
						"id_materia" : 1
					},
					{
						"id" : 0,
						"updated_at" : "2000-01-01 01:01:01",
						"id_docente" : 1,
						"id_materia" : 1
					},
					],
					"updates_columnas":["id_docente","id_materia"]
				}' ;				
				;;				
			3)  
                curl -X DELETE -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/estructura/docente_materia_api/eliminars/' -d ' {
					"ids_deletes_docente_materias": [
						1,
						2,
						3,
					]
				}' ;				
				;;				
			4)  
                curl -X POST -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/estructura/docente_materia_api/guardar_cambios/' -d '{
					"news_docente_materias":[					
					{
						"created_at" : "2000-01-01 01:01:01",
						"updated_at" : "2000-01-01 01:01:01",
						"id_docente" : 1,
						"id_materia" : 1
					},
					{
						"created_at" : "2000-01-01 01:01:01",
						"updated_at" : "2000-01-01 01:01:01",
						"id_docente" : 1,
						"id_materia" : 1
					},
					{
						"created_at" : "2000-01-01 01:01:01",
						"updated_at" : "2000-01-01 01:01:01",
						"id_docente" : 1,
						"id_materia" : 1
					},
					],
					
					"updates_docente_materias":[
					{
						"id" : 0,
						"updated_at" : "2000-01-01 01:01:01",
						"id_docente" : 1,
						"id_materia" : 1
					},
					{
						"id" : 0,
						"updated_at" : "2000-01-01 01:01:01",
						"id_docente" : 1,
						"id_materia" : 1
					},
					{
						"id" : 0,
						"updated_at" : "2000-01-01 01:01:01",
						"id_docente" : 1,
						"id_materia" : 1
					},
					],					
					"updates_columnas":["id_docente","id_materia"],
					"ids_deletes_docente_materias":[
						1,
						2,
						3,
					]
					}
				' ;
				;;				
			
            *)  
                echo -e "Seleccion Incorrecta"; ;;
        esac

    echo -e "\nPresione la tecla Enter para continuar"    
    read linea
    done
}

get_curl_crud_lote_relaciones_materia() {    
    while [ 1 ]
    do  
        clear
        echo -e "----------- 1. LOTE/RELACIONES Datos Tabla  materia -------------"
		echo -e "\t\t1. Set Nuevos LOTES Materia"
		echo -e "\t\t2. Set Actualizars LOTES Materia"
		echo -e "\t\t3. Set Eliminars LOTES Materia"
		echo -e "\t\t4. Set Guardar Cambios LOTES Materia"
		
		
		
		#echo -e "\n\t\t99. TODOS\n\n"
        echo -e "\n\t\t0. Salir\n\n"

        read -p "Escoja una Opcion: " opcion
        case $opcion in
            0)  salir; break; 
				;;								
			1)  
                curl -X POST -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/estructura/materia_api/nuevos/' -d '{
					"news_materias":[					
					{
						"created_at" : "2000-01-01 01:01:01",
						"updated_at" : "2000-01-01 01:01:01",
						"codigo" : "C3",
						"nombre" : "N3",
						"activo" : true
					},
					{
						"created_at" : "2000-01-01 01:01:01",
						"updated_at" : "2000-01-01 01:01:01",
						"codigo" : "C4",
						"nombre" : "N4",
						"activo" : false
					}
					]
				}' ; 
				;;				
			2)  
                curl -X PUT -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/estructura/materia_api/actualizars/' -d ' {
					"updates_materias":[
					{
						"id" : 0,
						"updated_at" : "2000-01-01 01:01:01",
						"codigo" : "",
						"nombre" : "",
						"activo" : false
					},
					{
						"id" : 0,
						"updated_at" : "2000-01-01 01:01:01",
						"codigo" : "",
						"nombre" : "",
						"activo" : false
					},
					{
						"id" : 0,
						"updated_at" : "2000-01-01 01:01:01",
						"codigo" : "",
						"nombre" : "",
						"activo" : false
					},
					],
					"updates_columnas":["codigo","nombre","activo"]
				}' ;				
				;;				
			3)  
                curl -X DELETE -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/estructura/materia_api/eliminars/' -d ' {
					"ids_deletes_materias": [
						54,
						55						
					]
				}' ;				
				;;				
			4)  
                curl -X POST -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/estructura/materia_api/guardar_cambios/' -d '{
					"news_materias":[					
					{
						"created_at" : "2000-01-01 01:01:01",
						"updated_at" : "2000-01-01 01:01:01",
						"codigo" : "",
						"nombre" : "",
						"activo" : false
					},
					{
						"created_at" : "2000-01-01 01:01:01",
						"updated_at" : "2000-01-01 01:01:01",
						"codigo" : "",
						"nombre" : "",
						"activo" : false
					},
					{
						"created_at" : "2000-01-01 01:01:01",
						"updated_at" : "2000-01-01 01:01:01",
						"codigo" : "",
						"nombre" : "",
						"activo" : false
					},
					],
					
					"updates_materias":[
					{
						"id" : 0,
						"updated_at" : "2000-01-01 01:01:01",
						"codigo" : "",
						"nombre" : "",
						"activo" : false
					},
					{
						"id" : 0,
						"updated_at" : "2000-01-01 01:01:01",
						"codigo" : "",
						"nombre" : "",
						"activo" : false
					},
					{
						"id" : 0,
						"updated_at" : "2000-01-01 01:01:01",
						"codigo" : "",
						"nombre" : "",
						"activo" : false
					},
					],					
					"updates_columnas":["codigo","nombre","activo"],
					"ids_deletes_materias":[
						1,
						2,
						3,
					]
					}
				' ;
				;;				
						
            *)  
                echo -e "Seleccion Incorrecta"; ;;
        esac

    echo -e "\nPresione la tecla Enter para continuar"    
    read linea
    done
}

get_curl_crud_lote_relaciones_matricula() {    
    while [ 1 ]
    do  
        clear
        echo -e "----------- 1. LOTE/RELACIONES Datos Tabla  matricula -------------"
		echo -e "\t\t1. Set Nuevos LOTES Matricula"
		echo -e "\t\t2. Set Actualizars LOTES Matricula"
		echo -e "\t\t3. Set Eliminars LOTES Matricula"
		echo -e "\t\t4. Set Guardar Cambios LOTES Matricula"
		
		
		
		#echo -e "\n\t\t99. TODOS\n\n"
        echo -e "\n\t\t0. Salir\n\n"

        read -p "Escoja una Opcion: " opcion
        case $opcion in
            0)  salir; break; 
				;;								
			1)  
                curl -X POST -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/proceso/matricula_api/nuevos/' -d '{
					"news_matriculas":[					
					{
						"created_at" : "2000-01-01 01:01:01",
						"updated_at" : "2000-01-01 01:01:01",
						"anio" : 0,
						"costo" : 0.0,
						"fecha" : "2000-01-01 01:01:01",
						"pagado" : false
					},
					{
						"created_at" : "2000-01-01 01:01:01",
						"updated_at" : "2000-01-01 01:01:01",
						"anio" : 0,
						"costo" : 0.0,
						"fecha" : "2000-01-01 01:01:01",
						"pagado" : false
					},
					{
						"created_at" : "2000-01-01 01:01:01",
						"updated_at" : "2000-01-01 01:01:01",
						"anio" : 0,
						"costo" : 0.0,
						"fecha" : "2000-01-01 01:01:01",
						"pagado" : false
					},
					]
				}' ; 
				;;				
			2)  
                curl -X PUT -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/proceso/matricula_api/actualizars/' -d ' {
					"updates_matriculas":[
					{
						"id" : 1,
						"updated_at" : "2000-01-01 01:01:01",
						"anio" : 0,
						"costo" : 0.0,
						"fecha" : "2000-01-01 01:01:01",
						"pagado" : false
					},
					{
						"id" : 1,
						"updated_at" : "2000-01-01 01:01:01",
						"anio" : 0,
						"costo" : 0.0,
						"fecha" : "2000-01-01 01:01:01",
						"pagado" : false
					},
					{
						"id" : 1,
						"updated_at" : "2000-01-01 01:01:01",
						"anio" : 0,
						"costo" : 0.0,
						"fecha" : "2000-01-01 01:01:01",
						"pagado" : false
					},
					],
					"updates_columnas":["anio","costo","fecha","pagado"]
				}' ;				
				;;				
			3)  
                curl -X DELETE -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/proceso/matricula_api/eliminars/' -d ' {
					"ids_deletes_matriculas": [
						1,
						2,
						3,
					]
				}' ;				
				;;				
			4)  
                curl -X POST -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/proceso/matricula_api/guardar_cambios/' -d '{
					"news_matriculas":[					
					{
						"created_at" : "2000-01-01 01:01:01",
						"updated_at" : "2000-01-01 01:01:01",
						"anio" : 0,
						"costo" : 0.0,
						"fecha" : "2000-01-01 01:01:01",
						"pagado" : false
					},
					{
						"created_at" : "2000-01-01 01:01:01",
						"updated_at" : "2000-01-01 01:01:01",
						"anio" : 0,
						"costo" : 0.0,
						"fecha" : "2000-01-01 01:01:01",
						"pagado" : false
					},
					{
						"created_at" : "2000-01-01 01:01:01",
						"updated_at" : "2000-01-01 01:01:01",
						"anio" : 0,
						"costo" : 0.0,
						"fecha" : "2000-01-01 01:01:01",
						"pagado" : false
					},
					],
					
					"updates_matriculas":[
					{
						"id" : 1,
						"updated_at" : "2000-01-01 01:01:01",
						"anio" : 0,
						"costo" : 0.0,
						"fecha" : "2000-01-01 01:01:01",
						"pagado" : false
					},
					{
						"id" : 1,
						"updated_at" : "2000-01-01 01:01:01",
						"anio" : 0,
						"costo" : 0.0,
						"fecha" : "2000-01-01 01:01:01",
						"pagado" : false
					},
					{
						"id" : 1,
						"updated_at" : "2000-01-01 01:01:01",
						"anio" : 0,
						"costo" : 0.0,
						"fecha" : "2000-01-01 01:01:01",
						"pagado" : false
					},
					],					
					"updates_columnas":["anio","costo","fecha","pagado"],
					"ids_deletes_matriculas":[
						1,
						2,
						3,
					]
					}
				' ;
				;;				
			
            *)  
                echo -e "Seleccion Incorrecta"; ;;
        esac

    echo -e "\nPresione la tecla Enter para continuar"    
    read linea
    done
}

get_curl_crud_lote_relaciones_nota() {    
    while [ 1 ]
    do  
        clear
        echo -e "----------- 1. LOTE/RELACIONES Datos Tabla  nota -------------"
		echo -e "\t\t1. Set Nuevos LOTES Nota"
		echo -e "\t\t2. Set Actualizars LOTES Nota"
		echo -e "\t\t3. Set Eliminars LOTES Nota"
		echo -e "\t\t4. Set Guardar Cambios LOTES Nota"
		
		
		
		#echo -e "\n\t\t99. TODOS\n\n"
        echo -e "\n\t\t0. Salir\n\n"

        read -p "Escoja una Opcion: " opcion
        case $opcion in
            0)  salir; break; 
				;;								
			1)  
                curl -X POST -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/proceso/nota_api/nuevos/' -d '{
					"news_notas":[					
					{
						"created_at" : "2000-01-01 01:01:01",
						"updated_at" : "2000-01-01 01:01:01",
						"id_alumno" : 1,
						"id_materia" : 1,
						"id_docente" : 1,
						"nota_prueba" : 0.0,
						"nota_trabajo" : 0.0,
						"nota_examen" : 0.0,
						"nota_final" : 0.0
					},
					{
						"created_at" : "2000-01-01 01:01:01",
						"updated_at" : "2000-01-01 01:01:01",
						"id_alumno" : 1,
						"id_materia" : 1,
						"id_docente" : 1,
						"nota_prueba" : 0.0,
						"nota_trabajo" : 0.0,
						"nota_examen" : 0.0,
						"nota_final" : 0.0
					},
					{
						"created_at" : "2000-01-01 01:01:01",
						"updated_at" : "2000-01-01 01:01:01",
						"id_alumno" : 1,
						"id_materia" : 1,
						"id_docente" : 1,
						"nota_prueba" : 0.0,
						"nota_trabajo" : 0.0,
						"nota_examen" : 0.0,
						"nota_final" : 0.0
					},
					]
				}' ; 
				;;				
			2)  
                curl -X PUT -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/proceso/nota_api/actualizars/' -d ' {
					"updates_notas":[
					{
						"id" : 0,
						"updated_at" : "2000-01-01 01:01:01",
						"id_alumno" : 1,
						"id_materia" : 1,
						"id_docente" : 1,
						"nota_prueba" : 0.0,
						"nota_trabajo" : 0.0,
						"nota_examen" : 0.0,
						"nota_final" : 0.0
					},
					{
						"id" : 0,
						"updated_at" : "2000-01-01 01:01:01",
						"id_alumno" : 1,
						"id_materia" : 1,
						"id_docente" : 1,
						"nota_prueba" : 0.0,
						"nota_trabajo" : 0.0,
						"nota_examen" : 0.0,
						"nota_final" : 0.0
					},
					{
						"id" : 0,
						"updated_at" : "2000-01-01 01:01:01",
						"id_alumno" : 1,
						"id_materia" : 1,
						"id_docente" : 1,
						"nota_prueba" : 0.0,
						"nota_trabajo" : 0.0,
						"nota_examen" : 0.0,
						"nota_final" : 0.0
					},
					],
					"updates_columnas":["id_alumno","id_materia","id_docente","nota_prueba","nota_trabajo","nota_examen","nota_final"]
				}' ;				
				;;				
			3)  
                curl -X DELETE -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/proceso/nota_api/eliminars/' -d ' {
					"ids_deletes_notas": [
						1,
						2,
						3,
					]
				}' ;				
				;;				
			4)  
                curl -X POST -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/proceso/nota_api/guardar_cambios/' -d '{
					"news_notas":[					
					{
						"created_at" : "2000-01-01 01:01:01",
						"updated_at" : "2000-01-01 01:01:01",
						"id_alumno" : 1,
						"id_materia" : 1,
						"id_docente" : 1,
						"nota_prueba" : 0.0,
						"nota_trabajo" : 0.0,
						"nota_examen" : 0.0,
						"nota_final" : 0.0
					},
					{
						"created_at" : "2000-01-01 01:01:01",
						"updated_at" : "2000-01-01 01:01:01",
						"id_alumno" : 1,
						"id_materia" : 1,
						"id_docente" : 1,
						"nota_prueba" : 0.0,
						"nota_trabajo" : 0.0,
						"nota_examen" : 0.0,
						"nota_final" : 0.0
					},
					{
						"created_at" : "2000-01-01 01:01:01",
						"updated_at" : "2000-01-01 01:01:01",
						"id_alumno" : 1,
						"id_materia" : 1,
						"id_docente" : 1,
						"nota_prueba" : 0.0,
						"nota_trabajo" : 0.0,
						"nota_examen" : 0.0,
						"nota_final" : 0.0
					},
					],
					
					"updates_notas":[
					{
						"id" : 0,
						"updated_at" : "2000-01-01 01:01:01",
						"id_alumno" : 1,
						"id_materia" : 1,
						"id_docente" : 1,
						"nota_prueba" : 0.0,
						"nota_trabajo" : 0.0,
						"nota_examen" : 0.0,
						"nota_final" : 0.0
					},
					{
						"id" : 0,
						"updated_at" : "2000-01-01 01:01:01",
						"id_alumno" : 1,
						"id_materia" : 1,
						"id_docente" : 1,
						"nota_prueba" : 0.0,
						"nota_trabajo" : 0.0,
						"nota_examen" : 0.0,
						"nota_final" : 0.0
					},
					{
						"id" : 0,
						"updated_at" : "2000-01-01 01:01:01",
						"id_alumno" : 1,
						"id_materia" : 1,
						"id_docente" : 1,
						"nota_prueba" : 0.0,
						"nota_trabajo" : 0.0,
						"nota_examen" : 0.0,
						"nota_final" : 0.0
					},
					],					
					"updates_columnas":["id_alumno","id_materia","id_docente","nota_prueba","nota_trabajo","nota_examen","nota_final"],
					"ids_deletes_notas":[
						1,
						2,
						3,
					]
					}
				' ;
				;;				
			
            *)  
                echo -e "Seleccion Incorrecta"; ;;
        esac

    echo -e "\nPresione la tecla Enter para continuar"    
    read linea
    done
}

get_curl_crud_lote_relaciones_pension() {    
    while [ 1 ]
    do  
        clear
        echo -e "----------- 1. LOTE/RELACIONES Datos Tabla  pension -------------"
		echo -e "\t\t1. Set Nuevos LOTES Pension"
		echo -e "\t\t2. Set Actualizars LOTES Pension"
		echo -e "\t\t3. Set Eliminars LOTES Pension"
		echo -e "\t\t4. Set Guardar Cambios LOTES Pension"
		
		
		
		#echo -e "\n\t\t99. TODOS\n\n"
        echo -e "\n\t\t0. Salir\n\n"

        read -p "Escoja una Opcion: " opcion
        case $opcion in
            0)  salir; break; 
				;;								
			1)  
                curl -X POST -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/financiero/pension_api/nuevos/' -d '{
					"news_pensions":[					
					{
						"created_at" : "2000-01-01 01:01:01",
						"updated_at" : "2000-01-01 01:01:01",
						"id_alumno" : 1,
						"anio" : 0,
						"mes" : 0,
						"valor" : 0.0,
						"cobrado" : false
					},
					{
						"created_at" : "2000-01-01 01:01:01",
						"updated_at" : "2000-01-01 01:01:01",
						"id_alumno" : 1,
						"anio" : 0,
						"mes" : 0,
						"valor" : 0.0,
						"cobrado" : false
					},
					{
						"created_at" : "2000-01-01 01:01:01",
						"updated_at" : "2000-01-01 01:01:01",
						"id_alumno" : 1,
						"anio" : 0,
						"mes" : 0,
						"valor" : 0.0,
						"cobrado" : false
					},
					]
				}' ; 
				;;				
			2)  
                curl -X PUT -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/financiero/pension_api/actualizars/' -d ' {
					"updates_pensions":[
					{
						"id" : 0,
						"updated_at" : "2000-01-01 01:01:01",
						"id_alumno" : 1,
						"anio" : 0,
						"mes" : 0,
						"valor" : 0.0,
						"cobrado" : false
					},
					{
						"id" : 0,
						"updated_at" : "2000-01-01 01:01:01",
						"id_alumno" : 1,
						"anio" : 0,
						"mes" : 0,
						"valor" : 0.0,
						"cobrado" : false
					},
					{
						"id" : 0,
						"updated_at" : "2000-01-01 01:01:01",
						"id_alumno" : 1,
						"anio" : 0,
						"mes" : 0,
						"valor" : 0.0,
						"cobrado" : false
					},
					],
					"updates_columnas":["id_alumno","anio","mes","valor","cobrado"]
				}' ;				
				;;				
			3)  
                curl -X DELETE -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/financiero/pension_api/eliminars/' -d ' {
					"ids_deletes_pensions": [
						1,
						2,
						3,
					]
				}' ;				
				;;				
			4)  
                curl -X POST -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/financiero/pension_api/guardar_cambios/' -d '{
					"news_pensions":[					
					{
						"created_at" : "2000-01-01 01:01:01",
						"updated_at" : "2000-01-01 01:01:01",
						"id_alumno" : 1,
						"anio" : 0,
						"mes" : 0,
						"valor" : 0.0,
						"cobrado" : false
					},
					{
						"created_at" : "2000-01-01 01:01:01",
						"updated_at" : "2000-01-01 01:01:01",
						"id_alumno" : 1,
						"anio" : 0,
						"mes" : 0,
						"valor" : 0.0,
						"cobrado" : false
					},
					{
						"created_at" : "2000-01-01 01:01:01",
						"updated_at" : "2000-01-01 01:01:01",
						"id_alumno" : 1,
						"anio" : 0,
						"mes" : 0,
						"valor" : 0.0,
						"cobrado" : false
					},
					],
					
					"updates_pensions":[
					{
						"id" : 0,
						"updated_at" : "2000-01-01 01:01:01",
						"id_alumno" : 1,
						"anio" : 0,
						"mes" : 0,
						"valor" : 0.0,
						"cobrado" : false
					},
					{
						"id" : 0,
						"updated_at" : "2000-01-01 01:01:01",
						"id_alumno" : 1,
						"anio" : 0,
						"mes" : 0,
						"valor" : 0.0,
						"cobrado" : false
					},
					{
						"id" : 0,
						"updated_at" : "2000-01-01 01:01:01",
						"id_alumno" : 1,
						"anio" : 0,
						"mes" : 0,
						"valor" : 0.0,
						"cobrado" : false
					},
					],					
					"updates_columnas":["id_alumno","anio","mes","valor","cobrado"],
					"ids_deletes_pensions":[
						1,
						2,
						3,
					]
					}
				' ;
				;;				
			
            *)  
                echo -e "Seleccion Incorrecta"; ;;
        esac

    echo -e "\nPresione la tecla Enter para continuar"    
    read linea
    done
}

get_curl_crud_lote_relaciones_sueldo() {    
    while [ 1 ]
    do  
        clear
        echo -e "----------- 1. LOTE/RELACIONES Datos Tabla  sueldo -------------"
		echo -e "\t\t1. Set Nuevos LOTES Sueldo"
		echo -e "\t\t2. Set Actualizars LOTES Sueldo"
		echo -e "\t\t3. Set Eliminars LOTES Sueldo"
		echo -e "\t\t4. Set Guardar Cambios LOTES Sueldo"
		
		
		
		#echo -e "\n\t\t99. TODOS\n\n"
        echo -e "\n\t\t0. Salir\n\n"

        read -p "Escoja una Opcion: " opcion
        case $opcion in
            0)  salir; break; 
				;;								
			1)  
                curl -X POST -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/financiero/sueldo_api/nuevos/' -d '{
					"news_sueldos":[					
					{
						"created_at" : "2000-01-01 01:01:01",
						"updated_at" : "2000-01-01 01:01:01",
						"id_docente" : 1,
						"anio" : 0,
						"mes" : 0,
						"valor" : 0.0,
						"cobrado" : false
					},
					{
						"created_at" : "2000-01-01 01:01:01",
						"updated_at" : "2000-01-01 01:01:01",
						"id_docente" : 1,
						"anio" : 0,
						"mes" : 0,
						"valor" : 0.0,
						"cobrado" : false
					},
					{
						"created_at" : "2000-01-01 01:01:01",
						"updated_at" : "2000-01-01 01:01:01",
						"id_docente" : 1,
						"anio" : 0,
						"mes" : 0,
						"valor" : 0.0,
						"cobrado" : false
					},
					]
				}' ; 
				;;				
			2)  
                curl -X PUT -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/financiero/sueldo_api/actualizars/' -d ' {
					"updates_sueldos":[
					{
						"id" : 0,
						"updated_at" : "2000-01-01 01:01:01",
						"id_docente" : 1,
						"anio" : 0,
						"mes" : 0,
						"valor" : 0.0,
						"cobrado" : false
					},
					{
						"id" : 0,
						"updated_at" : "2000-01-01 01:01:01",
						"id_docente" : 1,
						"anio" : 0,
						"mes" : 0,
						"valor" : 0.0,
						"cobrado" : false
					},
					{
						"id" : 0,
						"updated_at" : "2000-01-01 01:01:01",
						"id_docente" : 1,
						"anio" : 0,
						"mes" : 0,
						"valor" : 0.0,
						"cobrado" : false
					},
					],
					"updates_columnas":["id_docente","anio","mes","valor","cobrado"]
				}' ;				
				;;				
			3)  
                curl -X DELETE -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/financiero/sueldo_api/eliminars/' -d ' {
					"ids_deletes_sueldos": [
						1,
						2,
						3,
					]
				}' ;				
				;;				
			4)  
                curl -X POST -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/financiero/sueldo_api/guardar_cambios/' -d '{
					"news_sueldos":[					
					{
						"created_at" : "2000-01-01 01:01:01",
						"updated_at" : "2000-01-01 01:01:01",
						"id_docente" : 1,
						"anio" : 0,
						"mes" : 0,
						"valor" : 0.0,
						"cobrado" : false
					},
					{
						"created_at" : "2000-01-01 01:01:01",
						"updated_at" : "2000-01-01 01:01:01",
						"id_docente" : 1,
						"anio" : 0,
						"mes" : 0,
						"valor" : 0.0,
						"cobrado" : false
					},
					{
						"created_at" : "2000-01-01 01:01:01",
						"updated_at" : "2000-01-01 01:01:01",
						"id_docente" : 1,
						"anio" : 0,
						"mes" : 0,
						"valor" : 0.0,
						"cobrado" : false
					},
					],
					
					"updates_sueldos":[
					{
						"id" : 0,
						"updated_at" : "2000-01-01 01:01:01",
						"id_docente" : 1,
						"anio" : 0,
						"mes" : 0,
						"valor" : 0.0,
						"cobrado" : false
					},
					{
						"id" : 0,
						"updated_at" : "2000-01-01 01:01:01",
						"id_docente" : 1,
						"anio" : 0,
						"mes" : 0,
						"valor" : 0.0,
						"cobrado" : false
					},
					{
						"id" : 0,
						"updated_at" : "2000-01-01 01:01:01",
						"id_docente" : 1,
						"anio" : 0,
						"mes" : 0,
						"valor" : 0.0,
						"cobrado" : false
					},
					],					
					"updates_columnas":["id_docente","anio","mes","valor","cobrado"],
					"ids_deletes_sueldos":[
						1,
						2,
						3,
					]
					}
				' ;
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
		1)  get_curl_crud_lote_relaciones_alumno ; ;;
		2)  get_curl_crud_lote_relaciones_alumno_materia ; ;;
		3)  get_curl_crud_lote_relaciones_contrato ; ;;
		4)  get_curl_crud_lote_relaciones_docente ; ;;
		5)  get_curl_crud_lote_relaciones_docente_materia ; ;;
		6)  get_curl_crud_lote_relaciones_materia ; ;;
		7)  get_curl_crud_lote_relaciones_matricula ; ;;
		8)  get_curl_crud_lote_relaciones_nota ; ;;
		9)  get_curl_crud_lote_relaciones_pension ; ;;
		10)  get_curl_crud_lote_relaciones_sueldo ; ;;
		99) start_web_server; ;;
        *)  echo -e "Seleccion Incorrecta"; ;;
    esac
	
	#dos2unix ./file_name1.sh, (dos2unix *.sh)
    echo -e "\nPresione la tecla Enter para continuar"
    read linea
done