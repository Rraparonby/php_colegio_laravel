let opcion=0;
let linea='';
let path='';
let archivo='';
let variable='';

let tabla='prueba';
let where='';
let query='';

function get_menu_opciones() {
    document.body.innerHTML = '';
	
    document.write('<pre>			<b>MARIADB</b></pre>');	
    document.write('<pre>	----------- <b>GENERAL</b> -----------</pre>');
    
	document.write('<pre>		1. Browser/JavaScript Datos GETs/CRUD (alumno)</pre>');
	document.write('<pre>		2. Browser/JavaScript Datos GETs/CRUD (alumno_materia)</pre>');
	document.write('<pre>		3. Browser/JavaScript Datos GETs/CRUD (contrato)</pre>');
	document.write('<pre>		4. Browser/JavaScript Datos GETs/CRUD (docente)</pre>');
	document.write('<pre>		5. Browser/JavaScript Datos GETs/CRUD (docente_materia)</pre>');
	document.write('<pre>		6. Browser/JavaScript Datos GETs/CRUD (materia)</pre>');
	document.write('<pre>		7. Browser/JavaScript Datos GETs/CRUD (matricula)</pre>');
	document.write('<pre>		8. Browser/JavaScript Datos GETs/CRUD (nota)</pre>');
	document.write('<pre>		9. Browser/JavaScript Datos GETs/CRUD (pension)</pre>');
	document.write('<pre>		10. Browser/JavaScript Datos GETs/CRUD (sueldo)</pre>');
    
    document.write('<pre><b>AYUDA</b></pre>');
	document.write('<pre>	0. Salir</pre>');
	
	document.write('<table><tr>');
	document.write('<td><input type="text" id="opcion" name="opcion" value="" onkeypress="procesar_opcion(event);"></input></td>');
    //document.write('<td><input type="button" id="btnProcesar" Value="Procesar" onclick="procesar_menu_opciones();" /></td>');
	document.write('</tr></table>');
	
	document.write('<script>');
	document.write('set_focus_opcion_input();');
	document.write('</script>');
	
    //read -p 'Escoja una Opcion: ' opcion
}

function set_focus_opcion_input() {
	let opcion_input = document.getElementById("opcion");
	opcion_input.focus();
	
	//alert('Ingrese Codigo de Accion');
}

function procesar_opcion(event1) {
	
	event1 = event1 || window.event;
	
	if(event1.keyCode == 13) {
		procesar_menu_opciones();
	}
	
	let opcion_input = document.getElementById("opcion");
	/*opcion_input.value = '';*/
}

function procesar_menu_opciones() {
    let opcion_input = document.getElementById("opcion");
    opcion = parseInt(opcion_input.value);
    
    switch(opcion) {

        case 0:
            salir();
            break;
			        
		case 1:
			get_curl_datos_gets_crud_alumno();
			break;
		case 2:
			get_curl_datos_gets_crud_alumno_materia();
			break;
		case 3:
			get_curl_datos_gets_crud_contrato();
			break;
		case 4:
			get_curl_datos_gets_crud_docente();
			break;
		case 5:
			get_curl_datos_gets_crud_docente_materia();
			break;
		case 6:
			get_curl_datos_gets_crud_materia();
			break;
		case 7:
			get_curl_datos_gets_crud_matricula();
			break;
		case 8:
			get_curl_datos_gets_crud_nota();
			break;
		case 9:
			get_curl_datos_gets_crud_pension();
			break;
		case 10:
			get_curl_datos_gets_crud_sueldo();
			break;
		
		default:
            console.log("Seleccion Incorrecta");
    }
}


function get_curl_datos_gets_crud_alumno() {    
        document.body.innerHTML='';
		
        document.write('----------- <b>GETs/CRUD Datos Tabla alumno</b> -------------');
		document.write('<pre>		1. Get Default Datos Alumno</pre>');
		document.write('<pre>		2. Get Index Datos Alumno</pre>');
		document.write('<pre>		3. Get Todos Datos Alumno</pre>');
		document.write('<pre>		4. Get Seleccionar Datos Alumno</pre>');
		document.write('<pre>		5. Set Nuevo Alumno</pre>');
		document.write('<pre>		6. Set Actualizar Alumno</pre>');
		document.write('<pre>		7. Set Eliminar Alumno</pre></br>');
		
		
		document.write('<pre>		12. Get Todos Datos Relaciones Alumno</pre>');
		document.write('<pre>		13. Get Seleccionar Datos Relaciones Alumno</pre>');
		
		//document.write('\n\t\t99. TODOS</br></br>');
        document.write('<pre>		0. Salir</pre>');
		
		document.write('<table><tr>');
		document.write('<td><input type="text" id="opcion" name="opcion" value="" onkeypress="procesar_opcion_alumno(event);"></input></td>');
    	//document.write('<td><input type="button" id="btnProcesar" Value="Procesar" onclick="procesar_curl_datos_gets_crud_alumno();" /></td>');
		document.write('</tr></table>');
		
		document.write('<script>');
		document.write('set_focus_opcion_input();');
		document.write('</script>');
	
        //read -p 'Escoja una Opcion: ' opcion
		
}

function procesar_opcion_alumno(event1) {
	
	event1 = event1 || window.event;
	
	if(event1.keyCode == 13) {
		procesar_curl_datos_gets_crud_alumno();
	}
	
	let opcion_input = document.getElementById("opcion");
	/*opcion_input.value = '';*/
}

function procesar_curl_datos_gets_crud_alumno() {
	
	let opcion_input = document.getElementById("opcion");
    opcion = parseInt(opcion_input.value);
	
	let request_options ={};
	let url_controller = '';
	let data_json = {};
	
    switch(opcion) {
		
        case 0:
            get_menu_opciones();
            break;
								
		case 1:  
			
			data_json = {
				pagination: {
					skip:'0',
					limit:'10'
				}
			};
			
			request_options = get_request_options(data_json,'POST');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/estructura/alumno_api/';
			
			call_request(url_controller,request_options);
			
			break;	
			
		case 2:  
            
			data_json = {
				pagination: {
					skip:'0',
					limit:'10'
				}
			};
			
			request_options = get_request_options(data_json,'POST');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/estructura/alumno_api/index/';
			
			call_request(url_controller,request_options);
			
			break;
			
		case 3:  
            
			data_json = {
				pagination: {
					skip:'0',
					limit:'10'
				}
			};
			
			request_options = get_request_options(data_json,'POST');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/estructura/alumno_api/todos/';
			
			call_request(url_controller,request_options);
			
			break;
			
		case 4:  
            
			data_json = {
				id: '1'
			};
			
			request_options = get_request_options(data_json,'POST');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/estructura/alumno_api/seleccionar/';
			
			call_request(url_controller,request_options);
			
			break;				
		
		case 5:  
            
			data_json = {
				alumno: {
					updated_at : '2000-01-01 01:01:01',
					nombre : '',
					apellido : '',
					fecha_nacimiento : '2000-01-01 01:01:01'
				}
			};
			
			request_options = get_request_options(data_json,'POST');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/estructura/alumno_api/nuevo/';
			
			call_request(url_controller,request_options);
			
			break;
			
		case 6:            	
			
			data_json = {
				alumno: {
					id : '0',
					updated_at : '2000-01-01 01:01:01',
					nombre : '',
					apellido : '',
					fecha_nacimiento : '2000-01-01 01:01:01'
				}
			};
			
			request_options = get_request_options(data_json,'PUT');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/estructura/alumno_api/actualizar/';
			
			call_request(url_controller,request_options);
			
			break;
			
		case 7:
		
			data_json = {
				id: '1'
			};
			
			request_options = get_request_options(data_json,'DELETE');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/estructura/alumno_api/eliminar/';
			
			call_request(url_controller,request_options);
			
            break;
		case 12:  
            
			data_json = {
				pagination: {
					skip:'0',
					limit:'10'
				}
			};
			
			request_options = get_request_options(data_json,'POST');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/estructura/alumno_api/todos_relaciones/';
			
			call_request(url_controller,request_options);
			
			break;
			
		case 13:  
            
			data_json = {
				id: '1'
			};
			
			request_options = get_request_options(data_json,'POST');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/estructura/alumno_api/seleccionar_relaciones/';
			
			call_request(url_controller,request_options);
			
			break;
		default:
            console.log("Seleccion Incorrecta");
			break;
    }

	//document.write('\nPresione la tecla Enter para continuar');
	//read linea
}

function get_curl_datos_gets_crud_alumno_materia() {    
        document.body.innerHTML='';
		
        document.write('----------- <b>GETs/CRUD Datos Tabla alumno_materia</b> -------------');
		document.write('<pre>		1. Get Default Datos AlumnoMateria</pre>');
		document.write('<pre>		2. Get Index Datos AlumnoMateria</pre>');
		document.write('<pre>		3. Get Todos Datos AlumnoMateria</pre>');
		document.write('<pre>		4. Get Seleccionar Datos AlumnoMateria</pre>');
		document.write('<pre>		5. Set Nuevo AlumnoMateria</pre>');
		document.write('<pre>		6. Set Actualizar AlumnoMateria</pre>');
		document.write('<pre>		7. Set Eliminar AlumnoMateria</pre></br>');
		
		document.write('<pre>		11. Get FKs Datos de AlumnoMateria</pre></br>');
		
		
		//document.write('\n\t\t99. TODOS</br></br>');
        document.write('<pre>		0. Salir</pre>');
		
		document.write('<table><tr>');
		document.write('<td><input type="text" id="opcion" name="opcion" value="" onkeypress="procesar_opcion_alumno_materia(event);"></input></td>');
    	//document.write('<td><input type="button" id="btnProcesar" Value="Procesar" onclick="procesar_curl_datos_gets_crud_alumno_materia();" /></td>');
		document.write('</tr></table>');
		
		document.write('<script>');
		document.write('set_focus_opcion_input();');
		document.write('</script>');
	
        //read -p 'Escoja una Opcion: ' opcion
		
}

function procesar_opcion_alumno_materia(event1) {
	
	event1 = event1 || window.event;
	
	if(event1.keyCode == 13) {
		procesar_curl_datos_gets_crud_alumno_materia();
	}
	
	let opcion_input = document.getElementById("opcion");
	/*opcion_input.value = '';*/
}

function procesar_curl_datos_gets_crud_alumno_materia() {
	
	let opcion_input = document.getElementById("opcion");
    opcion = parseInt(opcion_input.value);
	
	let request_options ={};
	let url_controller = '';
	let data_json = {};
	
    switch(opcion) {
		
        case 0:
            get_menu_opciones();
            break;
								
		case 1:  
			
			data_json = {
				pagination: {
					skip:'0',
					limit:'10'
				}
			};
			
			request_options = get_request_options(data_json,'POST');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/estructura/alumno_materia_api/';
			
			call_request(url_controller,request_options);
			
			break;	
			
		case 2:  
            
			data_json = {
				pagination: {
					skip:'0',
					limit:'10'
				}
			};
			
			request_options = get_request_options(data_json,'POST');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/estructura/alumno_materia_api/index/';
			
			call_request(url_controller,request_options);
			
			break;
			
		case 3:  
            
			data_json = {
				pagination: {
					skip:'0',
					limit:'10'
				}
			};
			
			request_options = get_request_options(data_json,'POST');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/estructura/alumno_materia_api/todos/';
			
			call_request(url_controller,request_options);
			
			break;
			
		case 4:  
            
			data_json = {
				id: '1'
			};
			
			request_options = get_request_options(data_json,'POST');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/estructura/alumno_materia_api/seleccionar/';
			
			call_request(url_controller,request_options);
			
			break;				
		
		case 5:  
            
			data_json = {
				alumno_materia: {
					updated_at : '2000-01-01 01:01:01',
					id_alumno : '1',
					id_materia : '1'
				}
			};
			
			request_options = get_request_options(data_json,'POST');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/estructura/alumno_materia_api/nuevo/';
			
			call_request(url_controller,request_options);
			
			break;
			
		case 6:            	
			
			data_json = {
				alumno_materia: {
					id : '0',
					updated_at : '2000-01-01 01:01:01',
					id_alumno : '1',
					id_materia : '1'
				}
			};
			
			request_options = get_request_options(data_json,'PUT');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/estructura/alumno_materia_api/actualizar/';
			
			call_request(url_controller,request_options);
			
			break;
			
		case 7:
		
			data_json = {
				id: '1'
			};
			
			request_options = get_request_options(data_json,'DELETE');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/estructura/alumno_materia_api/eliminar/';
			
			call_request(url_controller,request_options);
			
            break;
		case 11:  
			
			data_json = {};
			
			request_options = get_request_options(data_json,'POST');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/estructura/alumno_materia_api/get_fks/';
			
			call_request(url_controller,request_options);
			
			break;
		default:
            console.log("Seleccion Incorrecta");
			break;
    }

	//document.write('\nPresione la tecla Enter para continuar');
	//read linea
}

function get_curl_datos_gets_crud_contrato() {    
        document.body.innerHTML='';
		
        document.write('----------- <b>GETs/CRUD Datos Tabla contrato</b> -------------');
		document.write('<pre>		1. Get Default Datos Contrato</pre>');
		document.write('<pre>		2. Get Index Datos Contrato</pre>');
		document.write('<pre>		3. Get Todos Datos Contrato</pre>');
		document.write('<pre>		4. Get Seleccionar Datos Contrato</pre>');
		document.write('<pre>		5. Set Nuevo Contrato</pre>');
		document.write('<pre>		6. Set Actualizar Contrato</pre>');
		document.write('<pre>		7. Set Eliminar Contrato</pre></br>');
		
		document.write('<pre>		11. Get FKs Datos de Contrato</pre></br>');
		
		
		//document.write('\n\t\t99. TODOS</br></br>');
        document.write('<pre>		0. Salir</pre>');
		
		document.write('<table><tr>');
		document.write('<td><input type="text" id="opcion" name="opcion" value="" onkeypress="procesar_opcion_contrato(event);"></input></td>');
    	//document.write('<td><input type="button" id="btnProcesar" Value="Procesar" onclick="procesar_curl_datos_gets_crud_contrato();" /></td>');
		document.write('</tr></table>');
		
		document.write('<script>');
		document.write('set_focus_opcion_input();');
		document.write('</script>');
	
        //read -p 'Escoja una Opcion: ' opcion
		
}

function procesar_opcion_contrato(event1) {
	
	event1 = event1 || window.event;
	
	if(event1.keyCode == 13) {
		procesar_curl_datos_gets_crud_contrato();
	}
	
	let opcion_input = document.getElementById("opcion");
	/*opcion_input.value = '';*/
}

function procesar_curl_datos_gets_crud_contrato() {
	
	let opcion_input = document.getElementById("opcion");
    opcion = parseInt(opcion_input.value);
	
	let request_options ={};
	let url_controller = '';
	let data_json = {};
	
    switch(opcion) {
		
        case 0:
            get_menu_opciones();
            break;
								
		case 1:  
			
			data_json = {
				pagination: {
					skip:'0',
					limit:'10'
				}
			};
			
			request_options = get_request_options(data_json,'POST');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/financiero/contrato_api/';
			
			call_request(url_controller,request_options);
			
			break;	
			
		case 2:  
            
			data_json = {
				pagination: {
					skip:'0',
					limit:'10'
				}
			};
			
			request_options = get_request_options(data_json,'POST');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/financiero/contrato_api/index/';
			
			call_request(url_controller,request_options);
			
			break;
			
		case 3:  
            
			data_json = {
				pagination: {
					skip:'0',
					limit:'10'
				}
			};
			
			request_options = get_request_options(data_json,'POST');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/financiero/contrato_api/todos/';
			
			call_request(url_controller,request_options);
			
			break;
			
		case 4:  
            
			data_json = {
				id: '1'
			};
			
			request_options = get_request_options(data_json,'POST');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/financiero/contrato_api/seleccionar/';
			
			call_request(url_controller,request_options);
			
			break;				
		
		case 5:  
            
			data_json = {
				contrato: {
					updated_at : '2000-01-01 01:01:01',
					anio : '0',
					valor : '0.0',
					fecha : '2000-01-01 01:01:01',
					firmado : '0'
				}
			};
			
			request_options = get_request_options(data_json,'POST');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/financiero/contrato_api/nuevo/';
			
			call_request(url_controller,request_options);
			
			break;
			
		case 6:            	
			
			data_json = {
				contrato: {
					id : '1',
					updated_at : '2000-01-01 01:01:01',
					anio : '0',
					valor : '0.0',
					fecha : '2000-01-01 01:01:01',
					firmado : '0'
				}
			};
			
			request_options = get_request_options(data_json,'PUT');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/financiero/contrato_api/actualizar/';
			
			call_request(url_controller,request_options);
			
			break;
			
		case 7:
		
			data_json = {
				id: '1'
			};
			
			request_options = get_request_options(data_json,'DELETE');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/financiero/contrato_api/eliminar/';
			
			call_request(url_controller,request_options);
			
            break;
		case 11:  
			
			data_json = {};
			
			request_options = get_request_options(data_json,'POST');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/financiero/contrato_api/get_fks/';
			
			call_request(url_controller,request_options);
			
			break;
		default:
            console.log("Seleccion Incorrecta");
			break;
    }

	//document.write('\nPresione la tecla Enter para continuar');
	//read linea
}

function get_curl_datos_gets_crud_docente() {    
        document.body.innerHTML='';
		
        document.write('----------- <b>GETs/CRUD Datos Tabla docente</b> -------------');
		document.write('<pre>		1. Get Default Datos Docente</pre>');
		document.write('<pre>		2. Get Index Datos Docente</pre>');
		document.write('<pre>		3. Get Todos Datos Docente</pre>');
		document.write('<pre>		4. Get Seleccionar Datos Docente</pre>');
		document.write('<pre>		5. Set Nuevo Docente</pre>');
		document.write('<pre>		6. Set Actualizar Docente</pre>');
		document.write('<pre>		7. Set Eliminar Docente</pre></br>');
		
		
		document.write('<pre>		12. Get Todos Datos Relaciones Docente</pre>');
		document.write('<pre>		13. Get Seleccionar Datos Relaciones Docente</pre>');
		
		//document.write('\n\t\t99. TODOS</br></br>');
        document.write('<pre>		0. Salir</pre>');
		
		document.write('<table><tr>');
		document.write('<td><input type="text" id="opcion" name="opcion" value="" onkeypress="procesar_opcion_docente(event);"></input></td>');
    	//document.write('<td><input type="button" id="btnProcesar" Value="Procesar" onclick="procesar_curl_datos_gets_crud_docente();" /></td>');
		document.write('</tr></table>');
		
		document.write('<script>');
		document.write('set_focus_opcion_input();');
		document.write('</script>');
	
        //read -p 'Escoja una Opcion: ' opcion
		
}

function procesar_opcion_docente(event1) {
	
	event1 = event1 || window.event;
	
	if(event1.keyCode == 13) {
		procesar_curl_datos_gets_crud_docente();
	}
	
	let opcion_input = document.getElementById("opcion");
	/*opcion_input.value = '';*/
}

function procesar_curl_datos_gets_crud_docente() {
	
	let opcion_input = document.getElementById("opcion");
    opcion = parseInt(opcion_input.value);
	
	let request_options ={};
	let url_controller = '';
	let data_json = {};
	
    switch(opcion) {
		
        case 0:
            get_menu_opciones();
            break;
								
		case 1:  
			
			data_json = {
				pagination: {
					skip:'0',
					limit:'10'
				}
			};
			
			request_options = get_request_options(data_json,'POST');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/estructura/docente_api/';
			
			call_request(url_controller,request_options);
			
			break;	
			
		case 2:  
            
			data_json = {
				pagination: {
					skip:'0',
					limit:'10'
				}
			};
			
			request_options = get_request_options(data_json,'POST');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/estructura/docente_api/index/';
			
			call_request(url_controller,request_options);
			
			break;
			
		case 3:  
            
			data_json = {
				pagination: {
					skip:'0',
					limit:'10'
				}
			};
			
			request_options = get_request_options(data_json,'POST');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/estructura/docente_api/todos/';
			
			call_request(url_controller,request_options);
			
			break;
			
		case 4:  
            
			data_json = {
				id: '1'
			};
			
			request_options = get_request_options(data_json,'POST');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/estructura/docente_api/seleccionar/';
			
			call_request(url_controller,request_options);
			
			break;				
		
		case 5:  
            
			data_json = {
				docente: {
					updated_at : '2000-01-01 01:01:01',
					nombre : '',
					apellido : '',
					fecha_nacimiento : '2000-01-01 01:01:01',
					anios_experiencia : '0',
					nota_evaluacion : '0.0'
				}
			};
			
			request_options = get_request_options(data_json,'POST');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/estructura/docente_api/nuevo/';
			
			call_request(url_controller,request_options);
			
			break;
			
		case 6:            	
			
			data_json = {
				docente: {
					id : '0',
					updated_at : '2000-01-01 01:01:01',
					nombre : '',
					apellido : '',
					fecha_nacimiento : '2000-01-01 01:01:01',
					anios_experiencia : '0',
					nota_evaluacion : '0.0'
				}
			};
			
			request_options = get_request_options(data_json,'PUT');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/estructura/docente_api/actualizar/';
			
			call_request(url_controller,request_options);
			
			break;
			
		case 7:
		
			data_json = {
				id: '1'
			};
			
			request_options = get_request_options(data_json,'DELETE');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/estructura/docente_api/eliminar/';
			
			call_request(url_controller,request_options);
			
            break;
		case 12:  
            
			data_json = {
				pagination: {
					skip:'0',
					limit:'10'
				}
			};
			
			request_options = get_request_options(data_json,'POST');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/estructura/docente_api/todos_relaciones/';
			
			call_request(url_controller,request_options);
			
			break;
			
		case 13:  
            
			data_json = {
				id: '1'
			};
			
			request_options = get_request_options(data_json,'POST');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/estructura/docente_api/seleccionar_relaciones/';
			
			call_request(url_controller,request_options);
			
			break;
		default:
            console.log("Seleccion Incorrecta");
			break;
    }

	//document.write('\nPresione la tecla Enter para continuar');
	//read linea
}

function get_curl_datos_gets_crud_docente_materia() {    
        document.body.innerHTML='';
		
        document.write('----------- <b>GETs/CRUD Datos Tabla docente_materia</b> -------------');
		document.write('<pre>		1. Get Default Datos DocenteMateria</pre>');
		document.write('<pre>		2. Get Index Datos DocenteMateria</pre>');
		document.write('<pre>		3. Get Todos Datos DocenteMateria</pre>');
		document.write('<pre>		4. Get Seleccionar Datos DocenteMateria</pre>');
		document.write('<pre>		5. Set Nuevo DocenteMateria</pre>');
		document.write('<pre>		6. Set Actualizar DocenteMateria</pre>');
		document.write('<pre>		7. Set Eliminar DocenteMateria</pre></br>');
		
		document.write('<pre>		11. Get FKs Datos de DocenteMateria</pre></br>');
		
		
		//document.write('\n\t\t99. TODOS</br></br>');
        document.write('<pre>		0. Salir</pre>');
		
		document.write('<table><tr>');
		document.write('<td><input type="text" id="opcion" name="opcion" value="" onkeypress="procesar_opcion_docente_materia(event);"></input></td>');
    	//document.write('<td><input type="button" id="btnProcesar" Value="Procesar" onclick="procesar_curl_datos_gets_crud_docente_materia();" /></td>');
		document.write('</tr></table>');
		
		document.write('<script>');
		document.write('set_focus_opcion_input();');
		document.write('</script>');
	
        //read -p 'Escoja una Opcion: ' opcion
		
}

function procesar_opcion_docente_materia(event1) {
	
	event1 = event1 || window.event;
	
	if(event1.keyCode == 13) {
		procesar_curl_datos_gets_crud_docente_materia();
	}
	
	let opcion_input = document.getElementById("opcion");
	/*opcion_input.value = '';*/
}

function procesar_curl_datos_gets_crud_docente_materia() {
	
	let opcion_input = document.getElementById("opcion");
    opcion = parseInt(opcion_input.value);
	
	let request_options ={};
	let url_controller = '';
	let data_json = {};
	
    switch(opcion) {
		
        case 0:
            get_menu_opciones();
            break;
								
		case 1:  
			
			data_json = {
				pagination: {
					skip:'0',
					limit:'10'
				}
			};
			
			request_options = get_request_options(data_json,'POST');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/estructura/docente_materia_api/';
			
			call_request(url_controller,request_options);
			
			break;	
			
		case 2:  
            
			data_json = {
				pagination: {
					skip:'0',
					limit:'10'
				}
			};
			
			request_options = get_request_options(data_json,'POST');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/estructura/docente_materia_api/index/';
			
			call_request(url_controller,request_options);
			
			break;
			
		case 3:  
            
			data_json = {
				pagination: {
					skip:'0',
					limit:'10'
				}
			};
			
			request_options = get_request_options(data_json,'POST');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/estructura/docente_materia_api/todos/';
			
			call_request(url_controller,request_options);
			
			break;
			
		case 4:  
            
			data_json = {
				id: '1'
			};
			
			request_options = get_request_options(data_json,'POST');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/estructura/docente_materia_api/seleccionar/';
			
			call_request(url_controller,request_options);
			
			break;				
		
		case 5:  
            
			data_json = {
				docente_materia: {
					updated_at : '2000-01-01 01:01:01',
					id_docente : '1',
					id_materia : '1'
				}
			};
			
			request_options = get_request_options(data_json,'POST');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/estructura/docente_materia_api/nuevo/';
			
			call_request(url_controller,request_options);
			
			break;
			
		case 6:            	
			
			data_json = {
				docente_materia: {
					id : '0',
					updated_at : '2000-01-01 01:01:01',
					id_docente : '1',
					id_materia : '1'
				}
			};
			
			request_options = get_request_options(data_json,'PUT');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/estructura/docente_materia_api/actualizar/';
			
			call_request(url_controller,request_options);
			
			break;
			
		case 7:
		
			data_json = {
				id: '1'
			};
			
			request_options = get_request_options(data_json,'DELETE');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/estructura/docente_materia_api/eliminar/';
			
			call_request(url_controller,request_options);
			
            break;
		case 11:  
			
			data_json = {};
			
			request_options = get_request_options(data_json,'POST');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/estructura/docente_materia_api/get_fks/';
			
			call_request(url_controller,request_options);
			
			break;
		default:
            console.log("Seleccion Incorrecta");
			break;
    }

	//document.write('\nPresione la tecla Enter para continuar');
	//read linea
}

function get_curl_datos_gets_crud_materia() {    
        document.body.innerHTML='';
		
        document.write('----------- <b>GETs/CRUD Datos Tabla materia</b> -------------');
		document.write('<pre>		1. Get Default Datos Materia</pre>');
		document.write('<pre>		2. Get Index Datos Materia</pre>');
		document.write('<pre>		3. Get Todos Datos Materia</pre>');
		document.write('<pre>		4. Get Seleccionar Datos Materia</pre>');
		document.write('<pre>		5. Set Nuevo Materia</pre>');
		document.write('<pre>		6. Set Actualizar Materia</pre>');
		document.write('<pre>		7. Set Eliminar Materia</pre></br>');
		
		
		document.write('<pre>		12. Get Todos Datos Relaciones Materia</pre>');
		document.write('<pre>		13. Get Seleccionar Datos Relaciones Materia</pre>');
		
		//document.write('\n\t\t99. TODOS</br></br>');
        document.write('<pre>		0. Salir</pre>');
		
		document.write('<table><tr>');
		document.write('<td><input type="text" id="opcion" name="opcion" value="" onkeypress="procesar_opcion_materia(event);"></input></td>');
    	//document.write('<td><input type="button" id="btnProcesar" Value="Procesar" onclick="procesar_curl_datos_gets_crud_materia();" /></td>');
		document.write('</tr></table>');
		
		document.write('<script>');
		document.write('set_focus_opcion_input();');
		document.write('</script>');
	
        //read -p 'Escoja una Opcion: ' opcion
		
}

function procesar_opcion_materia(event1) {
	
	event1 = event1 || window.event;
	
	if(event1.keyCode == 13) {
		procesar_curl_datos_gets_crud_materia();
	}
	
	let opcion_input = document.getElementById("opcion");
	/*opcion_input.value = '';*/
}

function procesar_curl_datos_gets_crud_materia() {
	
	let opcion_input = document.getElementById("opcion");
    opcion = parseInt(opcion_input.value);
	
	let request_options ={};
	let url_controller = '';
	let data_json = {};
	
    switch(opcion) {
		
        case 0:
            get_menu_opciones();
            break;
								
		case 1:  
			
			data_json = {
				pagination: {
					skip:'0',
					limit:'10'
				}
			};
			
			request_options = get_request_options(data_json,'POST');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/estructura/materia_api/';
			
			call_request(url_controller,request_options);
			
			break;	
			
		case 2:  
            
			data_json = {
				pagination: {
					skip:'0',
					limit:'10'
				}
			};
			
			request_options = get_request_options(data_json,'POST');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/estructura/materia_api/index/';
			
			call_request(url_controller,request_options);
			
			break;
			
		case 3:  
            
			data_json = {
				pagination: {
					skip:'0',
					limit:'10'
				}
			};
			
			request_options = get_request_options(data_json,'POST');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/estructura/materia_api/todos/';
			
			call_request(url_controller,request_options);
			
			break;
			
		case 4:  
            
			data_json = {
				id: '1'
			};
			
			request_options = get_request_options(data_json,'POST');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/estructura/materia_api/seleccionar/';
			
			call_request(url_controller,request_options);
			
			break;				
		
		case 5:  
            
			data_json = {
				materia: {
					updated_at : '2000-01-01 01:01:01',
					codigo : '',
					nombre : '',
					activo : '0'
				}
			};
			
			request_options = get_request_options(data_json,'POST');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/estructura/materia_api/nuevo/';
			
			call_request(url_controller,request_options);
			
			break;
			
		case 6:            	
			
			data_json = {
				materia: {
					id : '0',
					updated_at : '2000-01-01 01:01:01',
					codigo : '',
					nombre : '',
					activo : '0'
				}
			};
			
			request_options = get_request_options(data_json,'PUT');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/estructura/materia_api/actualizar/';
			
			call_request(url_controller,request_options);
			
			break;
			
		case 7:
		
			data_json = {
				id: '1'
			};
			
			request_options = get_request_options(data_json,'DELETE');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/estructura/materia_api/eliminar/';
			
			call_request(url_controller,request_options);
			
            break;
		case 12:  
            
			data_json = {
				pagination: {
					skip:'0',
					limit:'10'
				}
			};
			
			request_options = get_request_options(data_json,'POST');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/estructura/materia_api/todos_relaciones/';
			
			call_request(url_controller,request_options);
			
			break;
			
		case 13:  
            
			data_json = {
				id: '1'
			};
			
			request_options = get_request_options(data_json,'POST');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/estructura/materia_api/seleccionar_relaciones/';
			
			call_request(url_controller,request_options);
			
			break;
		default:
            console.log("Seleccion Incorrecta");
			break;
    }

	//document.write('\nPresione la tecla Enter para continuar');
	//read linea
}

function get_curl_datos_gets_crud_matricula() {    
        document.body.innerHTML='';
		
        document.write('----------- <b>GETs/CRUD Datos Tabla matricula</b> -------------');
		document.write('<pre>		1. Get Default Datos Matricula</pre>');
		document.write('<pre>		2. Get Index Datos Matricula</pre>');
		document.write('<pre>		3. Get Todos Datos Matricula</pre>');
		document.write('<pre>		4. Get Seleccionar Datos Matricula</pre>');
		document.write('<pre>		5. Set Nuevo Matricula</pre>');
		document.write('<pre>		6. Set Actualizar Matricula</pre>');
		document.write('<pre>		7. Set Eliminar Matricula</pre></br>');
		
		document.write('<pre>		11. Get FKs Datos de Matricula</pre></br>');
		
		
		//document.write('\n\t\t99. TODOS</br></br>');
        document.write('<pre>		0. Salir</pre>');
		
		document.write('<table><tr>');
		document.write('<td><input type="text" id="opcion" name="opcion" value="" onkeypress="procesar_opcion_matricula(event);"></input></td>');
    	//document.write('<td><input type="button" id="btnProcesar" Value="Procesar" onclick="procesar_curl_datos_gets_crud_matricula();" /></td>');
		document.write('</tr></table>');
		
		document.write('<script>');
		document.write('set_focus_opcion_input();');
		document.write('</script>');
	
        //read -p 'Escoja una Opcion: ' opcion
		
}

function procesar_opcion_matricula(event1) {
	
	event1 = event1 || window.event;
	
	if(event1.keyCode == 13) {
		procesar_curl_datos_gets_crud_matricula();
	}
	
	let opcion_input = document.getElementById("opcion");
	/*opcion_input.value = '';*/
}

function procesar_curl_datos_gets_crud_matricula() {
	
	let opcion_input = document.getElementById("opcion");
    opcion = parseInt(opcion_input.value);
	
	let request_options ={};
	let url_controller = '';
	let data_json = {};
	
    switch(opcion) {
		
        case 0:
            get_menu_opciones();
            break;
								
		case 1:  
			
			data_json = {
				pagination: {
					skip:'0',
					limit:'10'
				}
			};
			
			request_options = get_request_options(data_json,'POST');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/proceso/matricula_api/';
			
			call_request(url_controller,request_options);
			
			break;	
			
		case 2:  
            
			data_json = {
				pagination: {
					skip:'0',
					limit:'10'
				}
			};
			
			request_options = get_request_options(data_json,'POST');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/proceso/matricula_api/index/';
			
			call_request(url_controller,request_options);
			
			break;
			
		case 3:  
            
			data_json = {
				pagination: {
					skip:'0',
					limit:'10'
				}
			};
			
			request_options = get_request_options(data_json,'POST');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/proceso/matricula_api/todos/';
			
			call_request(url_controller,request_options);
			
			break;
			
		case 4:  
            
			data_json = {
				id: '1'
			};
			
			request_options = get_request_options(data_json,'POST');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/proceso/matricula_api/seleccionar/';
			
			call_request(url_controller,request_options);
			
			break;				
		
		case 5:  
            
			data_json = {
				matricula: {
					updated_at : '2000-01-01 01:01:01',
					anio : '0',
					costo : '0.0',
					fecha : '2000-01-01 01:01:01',
					pagado : '0'
				}
			};
			
			request_options = get_request_options(data_json,'POST');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/proceso/matricula_api/nuevo/';
			
			call_request(url_controller,request_options);
			
			break;
			
		case 6:            	
			
			data_json = {
				matricula: {
					id : '1',
					updated_at : '2000-01-01 01:01:01',
					anio : '0',
					costo : '0.0',
					fecha : '2000-01-01 01:01:01',
					pagado : '0'
				}
			};
			
			request_options = get_request_options(data_json,'PUT');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/proceso/matricula_api/actualizar/';
			
			call_request(url_controller,request_options);
			
			break;
			
		case 7:
		
			data_json = {
				id: '1'
			};
			
			request_options = get_request_options(data_json,'DELETE');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/proceso/matricula_api/eliminar/';
			
			call_request(url_controller,request_options);
			
            break;
		case 11:  
			
			data_json = {};
			
			request_options = get_request_options(data_json,'POST');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/proceso/matricula_api/get_fks/';
			
			call_request(url_controller,request_options);
			
			break;
		default:
            console.log("Seleccion Incorrecta");
			break;
    }

	//document.write('\nPresione la tecla Enter para continuar');
	//read linea
}

function get_curl_datos_gets_crud_nota() {    
        document.body.innerHTML='';
		
        document.write('----------- <b>GETs/CRUD Datos Tabla nota</b> -------------');
		document.write('<pre>		1. Get Default Datos Nota</pre>');
		document.write('<pre>		2. Get Index Datos Nota</pre>');
		document.write('<pre>		3. Get Todos Datos Nota</pre>');
		document.write('<pre>		4. Get Seleccionar Datos Nota</pre>');
		document.write('<pre>		5. Set Nuevo Nota</pre>');
		document.write('<pre>		6. Set Actualizar Nota</pre>');
		document.write('<pre>		7. Set Eliminar Nota</pre></br>');
		
		document.write('<pre>		11. Get FKs Datos de Nota</pre></br>');
		
		
		//document.write('\n\t\t99. TODOS</br></br>');
        document.write('<pre>		0. Salir</pre>');
		
		document.write('<table><tr>');
		document.write('<td><input type="text" id="opcion" name="opcion" value="" onkeypress="procesar_opcion_nota(event);"></input></td>');
    	//document.write('<td><input type="button" id="btnProcesar" Value="Procesar" onclick="procesar_curl_datos_gets_crud_nota();" /></td>');
		document.write('</tr></table>');
		
		document.write('<script>');
		document.write('set_focus_opcion_input();');
		document.write('</script>');
	
        //read -p 'Escoja una Opcion: ' opcion
		
}

function procesar_opcion_nota(event1) {
	
	event1 = event1 || window.event;
	
	if(event1.keyCode == 13) {
		procesar_curl_datos_gets_crud_nota();
	}
	
	let opcion_input = document.getElementById("opcion");
	/*opcion_input.value = '';*/
}

function procesar_curl_datos_gets_crud_nota() {
	
	let opcion_input = document.getElementById("opcion");
    opcion = parseInt(opcion_input.value);
	
	let request_options ={};
	let url_controller = '';
	let data_json = {};
	
    switch(opcion) {
		
        case 0:
            get_menu_opciones();
            break;
								
		case 1:  
			
			data_json = {
				pagination: {
					skip:'0',
					limit:'10'
				}
			};
			
			request_options = get_request_options(data_json,'POST');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/proceso/nota_api/';
			
			call_request(url_controller,request_options);
			
			break;	
			
		case 2:  
            
			data_json = {
				pagination: {
					skip:'0',
					limit:'10'
				}
			};
			
			request_options = get_request_options(data_json,'POST');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/proceso/nota_api/index/';
			
			call_request(url_controller,request_options);
			
			break;
			
		case 3:  
            
			data_json = {
				pagination: {
					skip:'0',
					limit:'10'
				}
			};
			
			request_options = get_request_options(data_json,'POST');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/proceso/nota_api/todos/';
			
			call_request(url_controller,request_options);
			
			break;
			
		case 4:  
            
			data_json = {
				id: '1'
			};
			
			request_options = get_request_options(data_json,'POST');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/proceso/nota_api/seleccionar/';
			
			call_request(url_controller,request_options);
			
			break;				
		
		case 5:  
            
			data_json = {
				nota: {
					updated_at : '2000-01-01 01:01:01',
					id_alumno : '1',
					id_materia : '1',
					id_docente : '1',
					nota_prueba : '0.0',
					nota_trabajo : '0.0',
					nota_examen : '0.0',
					nota_final : '0.0'
				}
			};
			
			request_options = get_request_options(data_json,'POST');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/proceso/nota_api/nuevo/';
			
			call_request(url_controller,request_options);
			
			break;
			
		case 6:            	
			
			data_json = {
				nota: {
					id : '0',
					updated_at : '2000-01-01 01:01:01',
					id_alumno : '1',
					id_materia : '1',
					id_docente : '1',
					nota_prueba : '0.0',
					nota_trabajo : '0.0',
					nota_examen : '0.0',
					nota_final : '0.0'
				}
			};
			
			request_options = get_request_options(data_json,'PUT');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/proceso/nota_api/actualizar/';
			
			call_request(url_controller,request_options);
			
			break;
			
		case 7:
		
			data_json = {
				id: '1'
			};
			
			request_options = get_request_options(data_json,'DELETE');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/proceso/nota_api/eliminar/';
			
			call_request(url_controller,request_options);
			
            break;
		case 11:  
			
			data_json = {};
			
			request_options = get_request_options(data_json,'POST');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/proceso/nota_api/get_fks/';
			
			call_request(url_controller,request_options);
			
			break;
		default:
            console.log("Seleccion Incorrecta");
			break;
    }

	//document.write('\nPresione la tecla Enter para continuar');
	//read linea
}

function get_curl_datos_gets_crud_pension() {    
        document.body.innerHTML='';
		
        document.write('----------- <b>GETs/CRUD Datos Tabla pension</b> -------------');
		document.write('<pre>		1. Get Default Datos Pension</pre>');
		document.write('<pre>		2. Get Index Datos Pension</pre>');
		document.write('<pre>		3. Get Todos Datos Pension</pre>');
		document.write('<pre>		4. Get Seleccionar Datos Pension</pre>');
		document.write('<pre>		5. Set Nuevo Pension</pre>');
		document.write('<pre>		6. Set Actualizar Pension</pre>');
		document.write('<pre>		7. Set Eliminar Pension</pre></br>');
		
		document.write('<pre>		11. Get FKs Datos de Pension</pre></br>');
		
		
		//document.write('\n\t\t99. TODOS</br></br>');
        document.write('<pre>		0. Salir</pre>');
		
		document.write('<table><tr>');
		document.write('<td><input type="text" id="opcion" name="opcion" value="" onkeypress="procesar_opcion_pension(event);"></input></td>');
    	//document.write('<td><input type="button" id="btnProcesar" Value="Procesar" onclick="procesar_curl_datos_gets_crud_pension();" /></td>');
		document.write('</tr></table>');
		
		document.write('<script>');
		document.write('set_focus_opcion_input();');
		document.write('</script>');
	
        //read -p 'Escoja una Opcion: ' opcion
		
}

function procesar_opcion_pension(event1) {
	
	event1 = event1 || window.event;
	
	if(event1.keyCode == 13) {
		procesar_curl_datos_gets_crud_pension();
	}
	
	let opcion_input = document.getElementById("opcion");
	/*opcion_input.value = '';*/
}

function procesar_curl_datos_gets_crud_pension() {
	
	let opcion_input = document.getElementById("opcion");
    opcion = parseInt(opcion_input.value);
	
	let request_options ={};
	let url_controller = '';
	let data_json = {};
	
    switch(opcion) {
		
        case 0:
            get_menu_opciones();
            break;
								
		case 1:  
			
			data_json = {
				pagination: {
					skip:'0',
					limit:'10'
				}
			};
			
			request_options = get_request_options(data_json,'POST');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/financiero/pension_api/';
			
			call_request(url_controller,request_options);
			
			break;	
			
		case 2:  
            
			data_json = {
				pagination: {
					skip:'0',
					limit:'10'
				}
			};
			
			request_options = get_request_options(data_json,'POST');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/financiero/pension_api/index/';
			
			call_request(url_controller,request_options);
			
			break;
			
		case 3:  
            
			data_json = {
				pagination: {
					skip:'0',
					limit:'10'
				}
			};
			
			request_options = get_request_options(data_json,'POST');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/financiero/pension_api/todos/';
			
			call_request(url_controller,request_options);
			
			break;
			
		case 4:  
            
			data_json = {
				id: '1'
			};
			
			request_options = get_request_options(data_json,'POST');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/financiero/pension_api/seleccionar/';
			
			call_request(url_controller,request_options);
			
			break;				
		
		case 5:  
            
			data_json = {
				pension: {
					updated_at : '2000-01-01 01:01:01',
					id_alumno : '1',
					anio : '0',
					mes : '0',
					valor : '0.0',
					cobrado : '0'
				}
			};
			
			request_options = get_request_options(data_json,'POST');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/financiero/pension_api/nuevo/';
			
			call_request(url_controller,request_options);
			
			break;
			
		case 6:            	
			
			data_json = {
				pension: {
					id : '0',
					updated_at : '2000-01-01 01:01:01',
					id_alumno : '1',
					anio : '0',
					mes : '0',
					valor : '0.0',
					cobrado : '0'
				}
			};
			
			request_options = get_request_options(data_json,'PUT');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/financiero/pension_api/actualizar/';
			
			call_request(url_controller,request_options);
			
			break;
			
		case 7:
		
			data_json = {
				id: '1'
			};
			
			request_options = get_request_options(data_json,'DELETE');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/financiero/pension_api/eliminar/';
			
			call_request(url_controller,request_options);
			
            break;
		case 11:  
			
			data_json = {};
			
			request_options = get_request_options(data_json,'POST');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/financiero/pension_api/get_fks/';
			
			call_request(url_controller,request_options);
			
			break;
		default:
            console.log("Seleccion Incorrecta");
			break;
    }

	//document.write('\nPresione la tecla Enter para continuar');
	//read linea
}

function get_curl_datos_gets_crud_sueldo() {    
        document.body.innerHTML='';
		
        document.write('----------- <b>GETs/CRUD Datos Tabla sueldo</b> -------------');
		document.write('<pre>		1. Get Default Datos Sueldo</pre>');
		document.write('<pre>		2. Get Index Datos Sueldo</pre>');
		document.write('<pre>		3. Get Todos Datos Sueldo</pre>');
		document.write('<pre>		4. Get Seleccionar Datos Sueldo</pre>');
		document.write('<pre>		5. Set Nuevo Sueldo</pre>');
		document.write('<pre>		6. Set Actualizar Sueldo</pre>');
		document.write('<pre>		7. Set Eliminar Sueldo</pre></br>');
		
		document.write('<pre>		11. Get FKs Datos de Sueldo</pre></br>');
		
		
		//document.write('\n\t\t99. TODOS</br></br>');
        document.write('<pre>		0. Salir</pre>');
		
		document.write('<table><tr>');
		document.write('<td><input type="text" id="opcion" name="opcion" value="" onkeypress="procesar_opcion_sueldo(event);"></input></td>');
    	//document.write('<td><input type="button" id="btnProcesar" Value="Procesar" onclick="procesar_curl_datos_gets_crud_sueldo();" /></td>');
		document.write('</tr></table>');
		
		document.write('<script>');
		document.write('set_focus_opcion_input();');
		document.write('</script>');
	
        //read -p 'Escoja una Opcion: ' opcion
		
}

function procesar_opcion_sueldo(event1) {
	
	event1 = event1 || window.event;
	
	if(event1.keyCode == 13) {
		procesar_curl_datos_gets_crud_sueldo();
	}
	
	let opcion_input = document.getElementById("opcion");
	/*opcion_input.value = '';*/
}

function procesar_curl_datos_gets_crud_sueldo() {
	
	let opcion_input = document.getElementById("opcion");
    opcion = parseInt(opcion_input.value);
	
	let request_options ={};
	let url_controller = '';
	let data_json = {};
	
    switch(opcion) {
		
        case 0:
            get_menu_opciones();
            break;
								
		case 1:  
			
			data_json = {
				pagination: {
					skip:'0',
					limit:'10'
				}
			};
			
			request_options = get_request_options(data_json,'POST');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/financiero/sueldo_api/';
			
			call_request(url_controller,request_options);
			
			break;	
			
		case 2:  
            
			data_json = {
				pagination: {
					skip:'0',
					limit:'10'
				}
			};
			
			request_options = get_request_options(data_json,'POST');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/financiero/sueldo_api/index/';
			
			call_request(url_controller,request_options);
			
			break;
			
		case 3:  
            
			data_json = {
				pagination: {
					skip:'0',
					limit:'10'
				}
			};
			
			request_options = get_request_options(data_json,'POST');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/financiero/sueldo_api/todos/';
			
			call_request(url_controller,request_options);
			
			break;
			
		case 4:  
            
			data_json = {
				id: '1'
			};
			
			request_options = get_request_options(data_json,'POST');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/financiero/sueldo_api/seleccionar/';
			
			call_request(url_controller,request_options);
			
			break;				
		
		case 5:  
            
			data_json = {
				sueldo: {
					updated_at : '2000-01-01 01:01:01',
					id_docente : '1',
					anio : '0',
					mes : '0',
					valor : '0.0',
					cobrado : '0'
				}
			};
			
			request_options = get_request_options(data_json,'POST');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/financiero/sueldo_api/nuevo/';
			
			call_request(url_controller,request_options);
			
			break;
			
		case 6:            	
			
			data_json = {
				sueldo: {
					id : '0',
					updated_at : '2000-01-01 01:01:01',
					id_docente : '1',
					anio : '0',
					mes : '0',
					valor : '0.0',
					cobrado : '0'
				}
			};
			
			request_options = get_request_options(data_json,'PUT');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/financiero/sueldo_api/actualizar/';
			
			call_request(url_controller,request_options);
			
			break;
			
		case 7:
		
			data_json = {
				id: '1'
			};
			
			request_options = get_request_options(data_json,'DELETE');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/financiero/sueldo_api/eliminar/';
			
			call_request(url_controller,request_options);
			
            break;
		case 11:  
			
			data_json = {};
			
			request_options = get_request_options(data_json,'POST');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/financiero/sueldo_api/get_fks/';
			
			call_request(url_controller,request_options);
			
			break;
		default:
            console.log("Seleccion Incorrecta");
			break;
    }

	//document.write('\nPresione la tecla Enter para continuar');
	//read linea
}

function get_request_options(data_json,method) {
    let request_options ={};	
	
    request_options = {
        
        method: method,

        headers: {
            'Content-Type':'application/json'	
        },
		
        body: JSON.stringify(data_json)
    };

    return request_options;
}

async function call_request(url_controller,request_options) {
	let response_json = undefined;
	let response_data = undefined;

	response_json = await fetch(url_controller, request_options);                
    
	response_data = await response_json.json();
	
    console.log(response_data);
}

function salir() {
    document.body.innerHTML = '';
    console.log('PROCESO TERMINADO CORRECTAMENTE...');
}


get_menu_opciones();