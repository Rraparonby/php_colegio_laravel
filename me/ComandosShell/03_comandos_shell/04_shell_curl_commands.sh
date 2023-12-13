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
    
	echo -e "\t\t1. Curl Datos GETs/CRUD (alumno)"
	echo -e "\t\t2. Curl Datos GETs/CRUD (alumno_materia)"
	echo -e "\t\t3. Curl Datos GETs/CRUD (contrato)"
	echo -e "\t\t4. Curl Datos GETs/CRUD (docente)"
	echo -e "\t\t5. Curl Datos GETs/CRUD (docente_materia)"
	echo -e "\t\t6. Curl Datos GETs/CRUD (materia)"
	echo -e "\t\t7. Curl Datos GETs/CRUD (matricula)"
	echo -e "\t\t8. Curl Datos GETs/CRUD (nota)"
	echo -e "\t\t9. Curl Datos GETs/CRUD (pension)"
	echo -e "\t\t10. Curl Datos GETs/CRUD (sueldo)"
    
    echo -e "\n\tAYUDA"
	echo -e "\n\t99. Start Web Server\n\n"
    echo -e "\n\t0. Salir\n\n"

    read -p "Escoja una Opcion: " opcion
}


get_curl_datos_gets_crud_alumno() {    
    while [ 1 ]
    do  
        clear
        echo -e "----------- 1. GETs/CRUD Datos Tabla alumno -------------"
		echo -e "\t\t1. Get Default Datos Alumno"
		echo -e "\t\t2. Get Index Datos Alumno"
		echo -e "\t\t3. Get Todos Datos Alumno"
		echo -e "\t\t4. Get Seleccionar Datos Alumno"
		echo -e "\t\t5. Set Nuevo Alumno"
		echo -e "\t\t6. Set Actualizar Alumno"
		echo -e "\t\t7. Set Eliminar Alumno"
		
		
		echo -e "\t\t12 Get Todos Datos Relaciones Alumno"
		echo -e "\t\t13. Get Seleccionar Datos Relaciones Alumno"
		
		#echo -e "\n\t\t99. TODOS\n\n"
        echo -e "\n\t\t0. Salir\n\n"

        read -p "Escoja una Opcion: " opcion
        case $opcion in
            0)  salir; break; 
				;;								
			1)  
                curl -X POST -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/estructura/alumno_api/' -d '{
					"pagination":{
									"skip":"0",
									"limit":"10"
								}
				}' ; 
				;;				
			2)  
                curl -X POST -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/estructura/alumno_api/index/' -d ' {
					"pagination":{
									"skip":"0",
									"limit":"10"
								}
				}' ;				
				;;				
			3)  
                curl -X POST -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/estructura/alumno_api/todos/' -d ' {
					"pagination":{
									"skip":"0",
									"limit":"10"
								}
				}' ;				
				;;				
			4)  
                curl -X POST -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/estructura/alumno_api/seleccionar/' -d '{"id":"1"}' ;
				;;				
			5)  
                curl -X POST -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/estructura/alumno_api/nuevo/' -d ' {
					"alumno":{
									"updated_at" : "2000-01-01 01:01:01",
									"nombre" : "",
									"apellido" : "",
									"fecha_nacimiento" : "2000-01-01 01:01:01"
								}
				}' ;				
				;;
			6)  
                curl -X PUT -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/estructura/alumno_api/actualizar/' -d ' {
					"alumno":{
									"id" : "0",
									"updated_at" : "2000-01-01 01:01:01",
									"nombre" : "",
									"apellido" : "",
									"fecha_nacimiento" : "2000-01-01 01:01:01"
								}
				}' ;				
				;;
			7)  
                curl -X DELETE -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/estructura/alumno_api/eliminar/' -d '{"id":"1"}' ;
				;;
			12)  
                curl -X POST -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/estructura/alumno_api/todos_relaciones/' -d ' {
					"pagination":{
									"skip":"0",
									"limit":"10"
								}
				}' ;				
				;;				
			13)  
                curl -X POST -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/estructura/alumno_api/seleccionar_relaciones/' -d '{"id":"1"}' ;
            *)  
                echo -e "Seleccion Incorrecta"; ;;
        esac

    echo -e "\nPresione la tecla Enter para continuar"    
    read linea
    done
}

get_curl_datos_gets_crud_alumno_materia() {    
    while [ 1 ]
    do  
        clear
        echo -e "----------- 1. GETs/CRUD Datos Tabla alumno_materia -------------"
		echo -e "\t\t1. Get Default Datos AlumnoMateria"
		echo -e "\t\t2. Get Index Datos AlumnoMateria"
		echo -e "\t\t3. Get Todos Datos AlumnoMateria"
		echo -e "\t\t4. Get Seleccionar Datos AlumnoMateria"
		echo -e "\t\t5. Set Nuevo AlumnoMateria"
		echo -e "\t\t6. Set Actualizar AlumnoMateria"
		echo -e "\t\t7. Set Eliminar AlumnoMateria"
		
		echo -e "\t\t11. Get FKs Datos de AlumnoMateria"
		
		
		#echo -e "\n\t\t99. TODOS\n\n"
        echo -e "\n\t\t0. Salir\n\n"

        read -p "Escoja una Opcion: " opcion
        case $opcion in
            0)  salir; break; 
				;;								
			1)  
                curl -X POST -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/estructura/alumno_materia_api/' -d '{
					"pagination":{
									"skip":"0",
									"limit":"10"
								}
				}' ; 
				;;				
			2)  
                curl -X POST -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/estructura/alumno_materia_api/index/' -d ' {
					"pagination":{
									"skip":"0",
									"limit":"10"
								}
				}' ;				
				;;				
			3)  
                curl -X POST -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/estructura/alumno_materia_api/todos/' -d ' {
					"pagination":{
									"skip":"0",
									"limit":"10"
								}
				}' ;				
				;;				
			4)  
                curl -X POST -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/estructura/alumno_materia_api/seleccionar/' -d '{"id":"1"}' ;
				;;				
			5)  
                curl -X POST -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/estructura/alumno_materia_api/nuevo/' -d ' {
					"alumno_materia":{
									"updated_at" : "2000-01-01 01:01:01",
									"id_alumno" : "1",
									"id_materia" : "1"
								}
				}' ;				
				;;
			6)  
                curl -X PUT -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/estructura/alumno_materia_api/actualizar/' -d ' {
					"alumno_materia":{
									"id" : "0",
									"updated_at" : "2000-01-01 01:01:01",
									"id_alumno" : "1",
									"id_materia" : "1"
								}
				}' ;				
				;;
			7)  
                curl -X DELETE -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/estructura/alumno_materia_api/eliminar/' -d '{"id":"1"}' ;
				;;
			11)  
                curl -X POST -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/estructura/alumno_materia_api/get_fks/' -d ' {}' ;
				;;
            *)  
                echo -e "Seleccion Incorrecta"; ;;
        esac

    echo -e "\nPresione la tecla Enter para continuar"    
    read linea
    done
}

get_curl_datos_gets_crud_contrato() {    
    while [ 1 ]
    do  
        clear
        echo -e "----------- 1. GETs/CRUD Datos Tabla contrato -------------"
		echo -e "\t\t1. Get Default Datos Contrato"
		echo -e "\t\t2. Get Index Datos Contrato"
		echo -e "\t\t3. Get Todos Datos Contrato"
		echo -e "\t\t4. Get Seleccionar Datos Contrato"
		echo -e "\t\t5. Set Nuevo Contrato"
		echo -e "\t\t6. Set Actualizar Contrato"
		echo -e "\t\t7. Set Eliminar Contrato"
		
		echo -e "\t\t11. Get FKs Datos de Contrato"
		
		
		#echo -e "\n\t\t99. TODOS\n\n"
        echo -e "\n\t\t0. Salir\n\n"

        read -p "Escoja una Opcion: " opcion
        case $opcion in
            0)  salir; break; 
				;;								
			1)  
                curl -X POST -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/financiero/contrato_api/' -d '{
					"pagination":{
									"skip":"0",
									"limit":"10"
								}
				}' ; 
				;;				
			2)  
                curl -X POST -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/financiero/contrato_api/index/' -d ' {
					"pagination":{
									"skip":"0",
									"limit":"10"
								}
				}' ;				
				;;				
			3)  
                curl -X POST -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/financiero/contrato_api/todos/' -d ' {
					"pagination":{
									"skip":"0",
									"limit":"10"
								}
				}' ;				
				;;				
			4)  
                curl -X POST -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/financiero/contrato_api/seleccionar/' -d '{"id":"1"}' ;
				;;				
			5)  
                curl -X POST -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/financiero/contrato_api/nuevo/' -d ' {
					"contrato":{
									"updated_at" : "2000-01-01 01:01:01",
									"anio" : "0",
									"valor" : "0.0",
									"fecha" : "2000-01-01 01:01:01",
									"firmado" : "0"
								}
				}' ;				
				;;
			6)  
                curl -X PUT -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/financiero/contrato_api/actualizar/' -d ' {
					"contrato":{
									"id" : "1",
									"updated_at" : "2000-01-01 01:01:01",
									"anio" : "0",
									"valor" : "0.0",
									"fecha" : "2000-01-01 01:01:01",
									"firmado" : "0"
								}
				}' ;				
				;;
			7)  
                curl -X DELETE -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/financiero/contrato_api/eliminar/' -d '{"id":"1"}' ;
				;;
			11)  
                curl -X POST -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/financiero/contrato_api/get_fks/' -d ' {}' ;
				;;
            *)  
                echo -e "Seleccion Incorrecta"; ;;
        esac

    echo -e "\nPresione la tecla Enter para continuar"    
    read linea
    done
}

get_curl_datos_gets_crud_docente() {    
    while [ 1 ]
    do  
        clear
        echo -e "----------- 1. GETs/CRUD Datos Tabla docente -------------"
		echo -e "\t\t1. Get Default Datos Docente"
		echo -e "\t\t2. Get Index Datos Docente"
		echo -e "\t\t3. Get Todos Datos Docente"
		echo -e "\t\t4. Get Seleccionar Datos Docente"
		echo -e "\t\t5. Set Nuevo Docente"
		echo -e "\t\t6. Set Actualizar Docente"
		echo -e "\t\t7. Set Eliminar Docente"
		
		
		echo -e "\t\t12 Get Todos Datos Relaciones Docente"
		echo -e "\t\t13. Get Seleccionar Datos Relaciones Docente"
		
		#echo -e "\n\t\t99. TODOS\n\n"
        echo -e "\n\t\t0. Salir\n\n"

        read -p "Escoja una Opcion: " opcion
        case $opcion in
            0)  salir; break; 
				;;								
			1)  
                curl -X POST -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/estructura/docente_api/' -d '{
					"pagination":{
									"skip":"0",
									"limit":"10"
								}
				}' ; 
				;;				
			2)  
                curl -X POST -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/estructura/docente_api/index/' -d ' {
					"pagination":{
									"skip":"0",
									"limit":"10"
								}
				}' ;				
				;;				
			3)  
                curl -X POST -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/estructura/docente_api/todos/' -d ' {
					"pagination":{
									"skip":"0",
									"limit":"10"
								}
				}' ;				
				;;				
			4)  
                curl -X POST -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/estructura/docente_api/seleccionar/' -d '{"id":"1"}' ;
				;;				
			5)  
                curl -X POST -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/estructura/docente_api/nuevo/' -d ' {
					"docente":{
									"updated_at" : "2000-01-01 01:01:01",
									"nombre" : "",
									"apellido" : "",
									"fecha_nacimiento" : "2000-01-01 01:01:01",
									"anios_experiencia" : "0",
									"nota_evaluacion" : "0.0"
								}
				}' ;				
				;;
			6)  
                curl -X PUT -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/estructura/docente_api/actualizar/' -d ' {
					"docente":{
									"id" : "0",
									"updated_at" : "2000-01-01 01:01:01",
									"nombre" : "",
									"apellido" : "",
									"fecha_nacimiento" : "2000-01-01 01:01:01",
									"anios_experiencia" : "0",
									"nota_evaluacion" : "0.0"
								}
				}' ;				
				;;
			7)  
                curl -X DELETE -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/estructura/docente_api/eliminar/' -d '{"id":"1"}' ;
				;;
			12)  
                curl -X POST -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/estructura/docente_api/todos_relaciones/' -d ' {
					"pagination":{
									"skip":"0",
									"limit":"10"
								}
				}' ;				
				;;				
			13)  
                curl -X POST -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/estructura/docente_api/seleccionar_relaciones/' -d '{"id":"1"}' ;
            *)  
                echo -e "Seleccion Incorrecta"; ;;
        esac

    echo -e "\nPresione la tecla Enter para continuar"    
    read linea
    done
}

get_curl_datos_gets_crud_docente_materia() {    
    while [ 1 ]
    do  
        clear
        echo -e "----------- 1. GETs/CRUD Datos Tabla docente_materia -------------"
		echo -e "\t\t1. Get Default Datos DocenteMateria"
		echo -e "\t\t2. Get Index Datos DocenteMateria"
		echo -e "\t\t3. Get Todos Datos DocenteMateria"
		echo -e "\t\t4. Get Seleccionar Datos DocenteMateria"
		echo -e "\t\t5. Set Nuevo DocenteMateria"
		echo -e "\t\t6. Set Actualizar DocenteMateria"
		echo -e "\t\t7. Set Eliminar DocenteMateria"
		
		echo -e "\t\t11. Get FKs Datos de DocenteMateria"
		
		
		#echo -e "\n\t\t99. TODOS\n\n"
        echo -e "\n\t\t0. Salir\n\n"

        read -p "Escoja una Opcion: " opcion
        case $opcion in
            0)  salir; break; 
				;;								
			1)  
                curl -X POST -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/estructura/docente_materia_api/' -d '{
					"pagination":{
									"skip":"0",
									"limit":"10"
								}
				}' ; 
				;;				
			2)  
                curl -X POST -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/estructura/docente_materia_api/index/' -d ' {
					"pagination":{
									"skip":"0",
									"limit":"10"
								}
				}' ;				
				;;				
			3)  
                curl -X POST -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/estructura/docente_materia_api/todos/' -d ' {
					"pagination":{
									"skip":"0",
									"limit":"10"
								}
				}' ;				
				;;				
			4)  
                curl -X POST -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/estructura/docente_materia_api/seleccionar/' -d '{"id":"1"}' ;
				;;				
			5)  
                curl -X POST -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/estructura/docente_materia_api/nuevo/' -d ' {
					"docente_materia":{
									"updated_at" : "2000-01-01 01:01:01",
									"id_docente" : "1",
									"id_materia" : "1"
								}
				}' ;				
				;;
			6)  
                curl -X PUT -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/estructura/docente_materia_api/actualizar/' -d ' {
					"docente_materia":{
									"id" : "0",
									"updated_at" : "2000-01-01 01:01:01",
									"id_docente" : "1",
									"id_materia" : "1"
								}
				}' ;				
				;;
			7)  
                curl -X DELETE -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/estructura/docente_materia_api/eliminar/' -d '{"id":"1"}' ;
				;;
			11)  
                curl -X POST -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/estructura/docente_materia_api/get_fks/' -d ' {}' ;
				;;
            *)  
                echo -e "Seleccion Incorrecta"; ;;
        esac

    echo -e "\nPresione la tecla Enter para continuar"    
    read linea
    done
}

get_curl_datos_gets_crud_materia() {    
    while [ 1 ]
    do  
        clear
        echo -e "----------- 1. GETs/CRUD Datos Tabla materia -------------"
		echo -e "\t\t1. Get Default Datos Materia"
		echo -e "\t\t2. Get Index Datos Materia"
		echo -e "\t\t3. Get Todos Datos Materia"
		echo -e "\t\t4. Get Seleccionar Datos Materia"
		echo -e "\t\t5. Set Nuevo Materia"
		echo -e "\t\t6. Set Actualizar Materia"
		echo -e "\t\t7. Set Eliminar Materia"
		
		
		echo -e "\t\t12 Get Todos Datos Relaciones Materia"
		echo -e "\t\t13. Get Seleccionar Datos Relaciones Materia"
		
		#echo -e "\n\t\t99. TODOS\n\n"
        echo -e "\n\t\t0. Salir\n\n"

        read -p "Escoja una Opcion: " opcion
        case $opcion in
            0)  salir; break; 
				;;								
			1)  
                curl -X POST -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/estructura/materia_api/' -d '{
					"pagination":{
									"skip":"0",
									"limit":"10"
								}
				}' ; 
				;;				
			2)  
                curl -X POST -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/estructura/materia_api/index/' -d ' {
					"pagination":{
									"skip":"0",
									"limit":"10"
								}
				}' ;				
				;;				
			3)  
                curl -X POST -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/estructura/materia_api/todos/' -d ' {
					"pagination":{
									"skip":"0",
									"limit":"10"
								}
				}' ;				
				;;				
			4)  
                curl -X POST -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/estructura/materia_api/seleccionar/' -d '{"id":"1"}' ;
				;;				
			5)  
                curl -X POST -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/estructura/materia_api/nuevo/' -d ' {
					"materia":{
									"updated_at" : "2000-01-01 01:01:01",
									"codigo" : "",
									"nombre" : "",
									"activo" : "0"
								}
				}' ;				
				;;
			6)  
                curl -X PUT -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/estructura/materia_api/actualizar/' -d ' {
					"materia":{
									"id" : "0",
									"updated_at" : "2000-01-01 01:01:01",
									"codigo" : "",
									"nombre" : "",
									"activo" : "0"
								}
				}' ;				
				;;
			7)  
                curl -X DELETE -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/estructura/materia_api/eliminar/' -d '{"id":"1"}' ;
				;;
			12)  
                curl -X POST -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/estructura/materia_api/todos_relaciones/' -d ' {
					"pagination":{
									"skip":"0",
									"limit":"10"
								}
				}' ;				
				;;				
			13)  
                curl -X POST -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/estructura/materia_api/seleccionar_relaciones/' -d '{"id":"1"}' ;
            *)  
                echo -e "Seleccion Incorrecta"; ;;
        esac

    echo -e "\nPresione la tecla Enter para continuar"    
    read linea
    done
}

get_curl_datos_gets_crud_matricula() {    
    while [ 1 ]
    do  
        clear
        echo -e "----------- 1. GETs/CRUD Datos Tabla matricula -------------"
		echo -e "\t\t1. Get Default Datos Matricula"
		echo -e "\t\t2. Get Index Datos Matricula"
		echo -e "\t\t3. Get Todos Datos Matricula"
		echo -e "\t\t4. Get Seleccionar Datos Matricula"
		echo -e "\t\t5. Set Nuevo Matricula"
		echo -e "\t\t6. Set Actualizar Matricula"
		echo -e "\t\t7. Set Eliminar Matricula"
		
		echo -e "\t\t11. Get FKs Datos de Matricula"
		
		
		#echo -e "\n\t\t99. TODOS\n\n"
        echo -e "\n\t\t0. Salir\n\n"

        read -p "Escoja una Opcion: " opcion
        case $opcion in
            0)  salir; break; 
				;;								
			1)  
                curl -X POST -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/proceso/matricula_api/' -d '{
					"pagination":{
									"skip":"0",
									"limit":"10"
								}
				}' ; 
				;;				
			2)  
                curl -X POST -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/proceso/matricula_api/index/' -d ' {
					"pagination":{
									"skip":"0",
									"limit":"10"
								}
				}' ;				
				;;				
			3)  
                curl -X POST -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/proceso/matricula_api/todos/' -d ' {
					"pagination":{
									"skip":"0",
									"limit":"10"
								}
				}' ;				
				;;				
			4)  
                curl -X POST -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/proceso/matricula_api/seleccionar/' -d '{"id":"1"}' ;
				;;				
			5)  
                curl -X POST -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/proceso/matricula_api/nuevo/' -d ' {
					"matricula":{
									"updated_at" : "2000-01-01 01:01:01",
									"anio" : "0",
									"costo" : "0.0",
									"fecha" : "2000-01-01 01:01:01",
									"pagado" : "0"
								}
				}' ;				
				;;
			6)  
                curl -X PUT -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/proceso/matricula_api/actualizar/' -d ' {
					"matricula":{
									"id" : "1",
									"updated_at" : "2000-01-01 01:01:01",
									"anio" : "0",
									"costo" : "0.0",
									"fecha" : "2000-01-01 01:01:01",
									"pagado" : "0"
								}
				}' ;				
				;;
			7)  
                curl -X DELETE -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/proceso/matricula_api/eliminar/' -d '{"id":"1"}' ;
				;;
			11)  
                curl -X POST -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/proceso/matricula_api/get_fks/' -d ' {}' ;
				;;
            *)  
                echo -e "Seleccion Incorrecta"; ;;
        esac

    echo -e "\nPresione la tecla Enter para continuar"    
    read linea
    done
}

get_curl_datos_gets_crud_nota() {    
    while [ 1 ]
    do  
        clear
        echo -e "----------- 1. GETs/CRUD Datos Tabla nota -------------"
		echo -e "\t\t1. Get Default Datos Nota"
		echo -e "\t\t2. Get Index Datos Nota"
		echo -e "\t\t3. Get Todos Datos Nota"
		echo -e "\t\t4. Get Seleccionar Datos Nota"
		echo -e "\t\t5. Set Nuevo Nota"
		echo -e "\t\t6. Set Actualizar Nota"
		echo -e "\t\t7. Set Eliminar Nota"
		
		echo -e "\t\t11. Get FKs Datos de Nota"
		
		
		#echo -e "\n\t\t99. TODOS\n\n"
        echo -e "\n\t\t0. Salir\n\n"

        read -p "Escoja una Opcion: " opcion
        case $opcion in
            0)  salir; break; 
				;;								
			1)  
                curl -X POST -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/proceso/nota_api/' -d '{
					"pagination":{
									"skip":"0",
									"limit":"10"
								}
				}' ; 
				;;				
			2)  
                curl -X POST -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/proceso/nota_api/index/' -d ' {
					"pagination":{
									"skip":"0",
									"limit":"10"
								}
				}' ;				
				;;				
			3)  
                curl -X POST -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/proceso/nota_api/todos/' -d ' {
					"pagination":{
									"skip":"0",
									"limit":"10"
								}
				}' ;				
				;;				
			4)  
                curl -X POST -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/proceso/nota_api/seleccionar/' -d '{"id":"1"}' ;
				;;				
			5)  
                curl -X POST -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/proceso/nota_api/nuevo/' -d ' {
					"nota":{
									"updated_at" : "2000-01-01 01:01:01",
									"id_alumno" : "1",
									"id_materia" : "1",
									"id_docente" : "1",
									"nota_prueba" : "0.0",
									"nota_trabajo" : "0.0",
									"nota_examen" : "0.0",
									"nota_final" : "0.0"
								}
				}' ;				
				;;
			6)  
                curl -X PUT -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/proceso/nota_api/actualizar/' -d ' {
					"nota":{
									"id" : "0",
									"updated_at" : "2000-01-01 01:01:01",
									"id_alumno" : "1",
									"id_materia" : "1",
									"id_docente" : "1",
									"nota_prueba" : "0.0",
									"nota_trabajo" : "0.0",
									"nota_examen" : "0.0",
									"nota_final" : "0.0"
								}
				}' ;				
				;;
			7)  
                curl -X DELETE -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/proceso/nota_api/eliminar/' -d '{"id":"1"}' ;
				;;
			11)  
                curl -X POST -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/proceso/nota_api/get_fks/' -d ' {}' ;
				;;
            *)  
                echo -e "Seleccion Incorrecta"; ;;
        esac

    echo -e "\nPresione la tecla Enter para continuar"    
    read linea
    done
}

get_curl_datos_gets_crud_pension() {    
    while [ 1 ]
    do  
        clear
        echo -e "----------- 1. GETs/CRUD Datos Tabla pension -------------"
		echo -e "\t\t1. Get Default Datos Pension"
		echo -e "\t\t2. Get Index Datos Pension"
		echo -e "\t\t3. Get Todos Datos Pension"
		echo -e "\t\t4. Get Seleccionar Datos Pension"
		echo -e "\t\t5. Set Nuevo Pension"
		echo -e "\t\t6. Set Actualizar Pension"
		echo -e "\t\t7. Set Eliminar Pension"
		
		echo -e "\t\t11. Get FKs Datos de Pension"
		
		
		#echo -e "\n\t\t99. TODOS\n\n"
        echo -e "\n\t\t0. Salir\n\n"

        read -p "Escoja una Opcion: " opcion
        case $opcion in
            0)  salir; break; 
				;;								
			1)  
                curl -X POST -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/financiero/pension_api/' -d '{
					"pagination":{
									"skip":"0",
									"limit":"10"
								}
				}' ; 
				;;				
			2)  
                curl -X POST -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/financiero/pension_api/index/' -d ' {
					"pagination":{
									"skip":"0",
									"limit":"10"
								}
				}' ;				
				;;				
			3)  
                curl -X POST -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/financiero/pension_api/todos/' -d ' {
					"pagination":{
									"skip":"0",
									"limit":"10"
								}
				}' ;				
				;;				
			4)  
                curl -X POST -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/financiero/pension_api/seleccionar/' -d '{"id":"1"}' ;
				;;				
			5)  
                curl -X POST -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/financiero/pension_api/nuevo/' -d ' {
					"pension":{
									"updated_at" : "2000-01-01 01:01:01",
									"id_alumno" : "1",
									"anio" : "0",
									"mes" : "0",
									"valor" : "0.0",
									"cobrado" : "0"
								}
				}' ;				
				;;
			6)  
                curl -X PUT -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/financiero/pension_api/actualizar/' -d ' {
					"pension":{
									"id" : "0",
									"updated_at" : "2000-01-01 01:01:01",
									"id_alumno" : "1",
									"anio" : "0",
									"mes" : "0",
									"valor" : "0.0",
									"cobrado" : "0"
								}
				}' ;				
				;;
			7)  
                curl -X DELETE -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/financiero/pension_api/eliminar/' -d '{"id":"1"}' ;
				;;
			11)  
                curl -X POST -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/financiero/pension_api/get_fks/' -d ' {}' ;
				;;
            *)  
                echo -e "Seleccion Incorrecta"; ;;
        esac

    echo -e "\nPresione la tecla Enter para continuar"    
    read linea
    done
}

get_curl_datos_gets_crud_sueldo() {    
    while [ 1 ]
    do  
        clear
        echo -e "----------- 1. GETs/CRUD Datos Tabla sueldo -------------"
		echo -e "\t\t1. Get Default Datos Sueldo"
		echo -e "\t\t2. Get Index Datos Sueldo"
		echo -e "\t\t3. Get Todos Datos Sueldo"
		echo -e "\t\t4. Get Seleccionar Datos Sueldo"
		echo -e "\t\t5. Set Nuevo Sueldo"
		echo -e "\t\t6. Set Actualizar Sueldo"
		echo -e "\t\t7. Set Eliminar Sueldo"
		
		echo -e "\t\t11. Get FKs Datos de Sueldo"
		
		
		#echo -e "\n\t\t99. TODOS\n\n"
        echo -e "\n\t\t0. Salir\n\n"

        read -p "Escoja una Opcion: " opcion
        case $opcion in
            0)  salir; break; 
				;;								
			1)  
                curl -X POST -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/financiero/sueldo_api/' -d '{
					"pagination":{
									"skip":"0",
									"limit":"10"
								}
				}' ; 
				;;				
			2)  
                curl -X POST -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/financiero/sueldo_api/index/' -d ' {
					"pagination":{
									"skip":"0",
									"limit":"10"
								}
				}' ;				
				;;				
			3)  
                curl -X POST -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/financiero/sueldo_api/todos/' -d ' {
					"pagination":{
									"skip":"0",
									"limit":"10"
								}
				}' ;				
				;;				
			4)  
                curl -X POST -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/financiero/sueldo_api/seleccionar/' -d '{"id":"1"}' ;
				;;				
			5)  
                curl -X POST -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/financiero/sueldo_api/nuevo/' -d ' {
					"sueldo":{
									"updated_at" : "2000-01-01 01:01:01",
									"id_docente" : "1",
									"anio" : "0",
									"mes" : "0",
									"valor" : "0.0",
									"cobrado" : "0"
								}
				}' ;				
				;;
			6)  
                curl -X PUT -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/financiero/sueldo_api/actualizar/' -d ' {
					"sueldo":{
									"id" : "0",
									"updated_at" : "2000-01-01 01:01:01",
									"id_docente" : "1",
									"anio" : "0",
									"mes" : "0",
									"valor" : "0.0",
									"cobrado" : "0"
								}
				}' ;				
				;;
			7)  
                curl -X DELETE -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/financiero/sueldo_api/eliminar/' -d '{"id":"1"}' ;
				;;
			11)  
                curl -X POST -H 'Content-Type: application/json' 'http://localhost:3000/api/colegio_relaciones/financiero/sueldo_api/get_fks/' -d ' {}' ;
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
		1)  get_curl_datos_gets_crud_alumno ; ;;
		2)  get_curl_datos_gets_crud_alumno_materia ; ;;
		3)  get_curl_datos_gets_crud_contrato ; ;;
		4)  get_curl_datos_gets_crud_docente ; ;;
		5)  get_curl_datos_gets_crud_docente_materia ; ;;
		6)  get_curl_datos_gets_crud_materia ; ;;
		7)  get_curl_datos_gets_crud_matricula ; ;;
		8)  get_curl_datos_gets_crud_nota ; ;;
		9)  get_curl_datos_gets_crud_pension ; ;;
		10)  get_curl_datos_gets_crud_sueldo ; ;;
		99) start_web_server; ;;
        *)  echo -e "Seleccion Incorrecta"; ;;
    esac
	
	#dos2unix ./file_name1.sh, (dos2unix *.sh)
    echo -e "\nPresione la tecla Enter para continuar"
    read linea
done