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
	
    document.write('<pre>			<b>MARIA-DB</b></pre>');	
    document.write('<pre>	----------- <b>GENERAL</b> -----------</pre>');
    
	document.write('<pre>		1. JS Browser, CRUD LOTE Y RELACIONES (alumno)</pre>');
	document.write('<pre>		2. JS Browser, CRUD LOTE Y RELACIONES (alumno_materia)</pre>');
	document.write('<pre>		3. JS Browser, CRUD LOTE Y RELACIONES (contrato)</pre>');
	document.write('<pre>		4. JS Browser, CRUD LOTE Y RELACIONES (docente)</pre>');
	document.write('<pre>		5. JS Browser, CRUD LOTE Y RELACIONES (docente_materia)</pre>');
	document.write('<pre>		6. JS Browser, CRUD LOTE Y RELACIONES (materia)</pre>');
	document.write('<pre>		7. JS Browser, CRUD LOTE Y RELACIONES (matricula)</pre>');
	document.write('<pre>		8. JS Browser, CRUD LOTE Y RELACIONES (nota)</pre>');
	document.write('<pre>		9. JS Browser, CRUD LOTE Y RELACIONES (pension)</pre>');
	document.write('<pre>		10. JS Browser, CRUD LOTE Y RELACIONES (sueldo)</pre>');
    
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
			get_js_datos_lote_relaciones_alumno();
			break;
		case 2:
			get_js_datos_lote_relaciones_alumno_materia();
			break;
		case 3:
			get_js_datos_lote_relaciones_contrato();
			break;
		case 4:
			get_js_datos_lote_relaciones_docente();
			break;
		case 5:
			get_js_datos_lote_relaciones_docente_materia();
			break;
		case 6:
			get_js_datos_lote_relaciones_materia();
			break;
		case 7:
			get_js_datos_lote_relaciones_matricula();
			break;
		case 8:
			get_js_datos_lote_relaciones_nota();
			break;
		case 9:
			get_js_datos_lote_relaciones_pension();
			break;
		case 10:
			get_js_datos_lote_relaciones_sueldo();
			break;
		
		default:
            console.log("Seleccion Incorrecta");
    }
}


function get_js_datos_lote_relaciones_alumno() {    
        document.body.innerHTML='';
		
        document.write('----------- <b>LOTE/RELACIONES Datos Tabla alumno</b> -------------');
		document.write('<pre>		1. Set Nuevos LOTES Alumno</pre>');
		document.write('<pre>		2. Set Actualizars LOTES Alumno</pre>');
		document.write('<pre>		3. Set Eliminars LOTES Alumno</pre></br>');
		document.write('<pre>		4. Set Guardar Cambios LOTES Alumno</pre></br>');
		
		
		/*document.write('<pre>		12. Get Todos Datos Relaciones Alumno</pre>');*/
		
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
		procesar_js_datos_lote_relaciones_alumno();
	}
	
	let opcion_input = document.getElementById("opcion");
	/*opcion_input.value = '';*/
}

async function procesar_js_datos_lote_relaciones_alumno() {
	
	let opcion_input = document.getElementById("opcion");
    opcion = parseInt(opcion_input.value);
	
	let request_options ={};
	let url_controller = '';
	let data_json = {};
	let results_json = {};	
	
				
    switch(opcion) {
		
        case 0:
            get_menu_opciones();
            break;														
		
		case 1:  
            
			data_json = procesar_nuevos_alumno();
			
			request_options = get_request_options(data_json,'POST');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/estructura/alumno_api/nuevos/';
			
			call_request(url_controller,request_options);
			
			break;
			
		case 2:            	
			
			data_json = await procesar_actualizars_alumno();
			
			request_options = get_request_options(data_json,'PUT');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/estructura/alumno_api/actualizars/';
			
			call_request(url_controller,request_options);
			
			break;
			
		case 3:
		
			data_json = procesar_eliminars_alumno();
			
			request_options = get_request_options(data_json,'DELETE');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/estructura/alumno_api/eliminars/';
			
			call_request(url_controller,request_options);
			
            break;
        
		case 4:  
			
			data_json = await procesar_guardar_cambios_alumno();						
			
			request_options = get_request_options(data_json,'POST');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/estructura/alumno_api/guardar_cambios/';
			
			call_request(url_controller,request_options);
			
			break;
			
		
		default:
            console.log("Seleccion Incorrecta");
			break;
    }

	//document.write('\nPresione la tecla Enter para continuar');
	//read linea
}

function procesar_nuevos_alumno() {
	let data_json = {};
	
	/*NUEVOS*/
	let new_alumno = {};	
	let news_alumnos = [];				
	
	new_alumno = {};
	news_alumnos = [];
	
	for(let i=1; i<=3; i++) {
		new_alumno = {
			created_at : '2000-01-01 01:01:01',
			updated_at : '2000-01-01 01:01:01',
			nombre : '',
			apellido : '',
			fecha_nacimiento : '2000-01-01 01:01:01'
		};
					
		news_alumnos.push(new_alumno);
	}
	
	data_json = {
		news_alumnos : news_alumnos
	};
	
	return data_json;
}

async function procesar_actualizars_alumno() {
	let data_json = {};
	
	/*ACTUALIZARS*/
	let update_alumno = {};	
	let updates_alumnos = [];				
	let ids_updates = [];
	let updates_columnas =[];
	
	/*-------- TRAER TODOS -------------*/ 
			
	data_json = {
		pagination: {
			skip: 0,
			limit: 10
		}
	};
	
	request_options = get_request_options(data_json,'POST');			
	url_controller = 'http://localhost:3000/api/colegio_relaciones/estructura/alumno_api/todos/';
	
	results_json = await call_request_return(url_controller,request_options);
	
	/*-------- PREPARAR ACTUALIZARS -------------*/
	
	update_alumno = {};
	updates_alumnos = [];
	
	ids_updates = [1,2,3];
	
	for(result of results_json.alumnos) {
		
		for(id of ids_updates) {
			
			if(id == result.id) {
				
				update_alumno = {
					id : result.id,
					updated_at : '2000-01-01 01:01:01',	
					nombre : result.nombre + '',
					apellido : result.apellido + '',
					fecha_nacimiento : result.fecha_nacimiento
				};
							
				updates_alumnos.push(update_alumno);
			}
		}
	}
	
	updates_columnas = ['nombre','apellido','fecha_nacimiento'];

	data_json = {
		updates_alumnos : updates_alumnos,
		updates_columnas : updates_columnas
	};
			
	return data_json;
}

function procesar_eliminars_alumno() {
	let data_json = {};
	
	/*ELIMINARS*/
	let id_delete_alumno = {};
	let ids_deletes_alumnos = [];
	let ids_deletes = [];
	
	id_delete_alumno = {};
	ids_deletes_alumnos = [];
	
	ids_deletes = [1,2,3];
	
	for(id of ids_deletes) {
		id_delete_alumno = {
			id: id	
		};
		
		ids_deletes_alumnos.push(id_delete_alumno);
	}
	
	data_json = {
		ids_deletes_alumnos: ids_deletes_alumnos
	};
	
	return data_json;
}

async function procesar_guardar_cambios_alumno() {
	let data_json_final = {};
	
	let data_json_nuevos = {};
	let data_json_actualizars = {};
	let data_json_eliminars = {};
	
	data_json_nuevos = procesar_nuevos_alumno();	
	data_json_actualizars = await procesar_actualizars_alumno();	
	data_json_eliminars = procesar_eliminars_alumno();
	
	
	data_json_final = {
		news_alumnos : data_json_nuevos.news_alumnos,
		updates_alumnos : data_json_actualizars.updates_alumnos,
		updates_columnas : data_json_actualizars.updates_columnas,
		ids_deletes_alumnos: data_json_eliminars.ids_deletes_alumnos
	};
			
	return data_json_final;
}


function get_js_datos_lote_relaciones_alumno_materia() {    
        document.body.innerHTML='';
		
        document.write('----------- <b>LOTE/RELACIONES Datos Tabla alumno_materia</b> -------------');
		document.write('<pre>		1. Set Nuevos LOTES AlumnoMateria</pre>');
		document.write('<pre>		2. Set Actualizars LOTES AlumnoMateria</pre>');
		document.write('<pre>		3. Set Eliminars LOTES AlumnoMateria</pre></br>');
		document.write('<pre>		4. Set Guardar Cambios LOTES AlumnoMateria</pre></br>');
		
		
		
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
		procesar_js_datos_lote_relaciones_alumno_materia();
	}
	
	let opcion_input = document.getElementById("opcion");
	/*opcion_input.value = '';*/
}

async function procesar_js_datos_lote_relaciones_alumno_materia() {
	
	let opcion_input = document.getElementById("opcion");
    opcion = parseInt(opcion_input.value);
	
	let request_options ={};
	let url_controller = '';
	let data_json = {};
	let results_json = {};	
	
				
    switch(opcion) {
		
        case 0:
            get_menu_opciones();
            break;														
		
		case 1:  
            
			data_json = procesar_nuevos_alumno_materia();
			
			request_options = get_request_options(data_json,'POST');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/estructura/alumno_materia_api/nuevos/';
			
			call_request(url_controller,request_options);
			
			break;
			
		case 2:            	
			
			data_json = await procesar_actualizars_alumno_materia();
			
			request_options = get_request_options(data_json,'PUT');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/estructura/alumno_materia_api/actualizars/';
			
			call_request(url_controller,request_options);
			
			break;
			
		case 3:
		
			data_json = procesar_eliminars_alumno_materia();
			
			request_options = get_request_options(data_json,'DELETE');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/estructura/alumno_materia_api/eliminars/';
			
			call_request(url_controller,request_options);
			
            break;
        
		case 4:  
			
			data_json = await procesar_guardar_cambios_alumno_materia();						
			
			request_options = get_request_options(data_json,'POST');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/estructura/alumno_materia_api/guardar_cambios/';
			
			call_request(url_controller,request_options);
			
			break;
			
		default:
            console.log("Seleccion Incorrecta");
			break;
    }

	//document.write('\nPresione la tecla Enter para continuar');
	//read linea
}

function procesar_nuevos_alumno_materia() {
	let data_json = {};
	
	/*NUEVOS*/
	let new_alumno_materia = {};	
	let news_alumno_materias = [];				
	
	new_alumno_materia = {};
	news_alumno_materias = [];
	
	for(let i=1; i<=3; i++) {
		new_alumno_materia = {
			created_at : '2000-01-01 01:01:01',
			updated_at : '2000-01-01 01:01:01',
			id_alumno : 1,
			id_materia : 1
		};
					
		news_alumno_materias.push(new_alumno_materia);
	}
	
	data_json = {
		news_alumno_materias : news_alumno_materias
	};
	
	return data_json;
}

async function procesar_actualizars_alumno_materia() {
	let data_json = {};
	
	/*ACTUALIZARS*/
	let update_alumno_materia = {};	
	let updates_alumno_materias = [];				
	let ids_updates = [];
	let updates_columnas =[];
	
	/*-------- TRAER TODOS -------------*/ 
			
	data_json = {
		pagination: {
			skip: 0,
			limit: 10
		}
	};
	
	request_options = get_request_options(data_json,'POST');			
	url_controller = 'http://localhost:3000/api/colegio_relaciones/estructura/alumno_materia_api/todos/';
	
	results_json = await call_request_return(url_controller,request_options);
	
	/*-------- PREPARAR ACTUALIZARS -------------*/
	
	update_alumno_materia = {};
	updates_alumno_materias = [];
	
	ids_updates = [1,2,3];
	
	for(result of results_json.alumno_materias) {
		
		for(id of ids_updates) {
			
			if(id == result.id) {
				
				update_alumno_materia = {
					id : result.id,
					updated_at : '2000-01-01 01:01:01',	
					id_alumno : result.id_alumno + 1,
					id_materia : result.id_materia + 1
				};
							
				updates_alumno_materias.push(update_alumno_materia);
			}
		}
	}
	
	updates_columnas = ['id_alumno','id_materia'];

	data_json = {
		updates_alumno_materias : updates_alumno_materias,
		updates_columnas : updates_columnas
	};
			
	return data_json;
}

function procesar_eliminars_alumno_materia() {
	let data_json = {};
	
	/*ELIMINARS*/
	let id_delete_alumno_materia = {};
	let ids_deletes_alumno_materias = [];
	let ids_deletes = [];
	
	id_delete_alumno_materia = {};
	ids_deletes_alumno_materias = [];
	
	ids_deletes = [1,2,3];
	
	for(id of ids_deletes) {
		id_delete_alumno_materia = {
			id: id	
		};
		
		ids_deletes_alumno_materias.push(id_delete_alumno_materia);
	}
	
	data_json = {
		ids_deletes_alumno_materias: ids_deletes_alumno_materias
	};
	
	return data_json;
}

async function procesar_guardar_cambios_alumno_materia() {
	let data_json_final = {};
	
	let data_json_nuevos = {};
	let data_json_actualizars = {};
	let data_json_eliminars = {};
	
	data_json_nuevos = procesar_nuevos_alumno_materia();	
	data_json_actualizars = await procesar_actualizars_alumno_materia();	
	data_json_eliminars = procesar_eliminars_alumno_materia();
	
	
	data_json_final = {
		news_alumno_materias : data_json_nuevos.news_alumno_materias,
		updates_alumno_materias : data_json_actualizars.updates_alumno_materias,
		updates_columnas : data_json_actualizars.updates_columnas,
		ids_deletes_alumno_materias: data_json_eliminars.ids_deletes_alumno_materias
	};
			
	return data_json_final;
}


function get_js_datos_lote_relaciones_contrato() {    
        document.body.innerHTML='';
		
        document.write('----------- <b>LOTE/RELACIONES Datos Tabla contrato</b> -------------');
		document.write('<pre>		1. Set Nuevos LOTES Contrato</pre>');
		document.write('<pre>		2. Set Actualizars LOTES Contrato</pre>');
		document.write('<pre>		3. Set Eliminars LOTES Contrato</pre></br>');
		document.write('<pre>		4. Set Guardar Cambios LOTES Contrato</pre></br>');
		
		
		
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
		procesar_js_datos_lote_relaciones_contrato();
	}
	
	let opcion_input = document.getElementById("opcion");
	/*opcion_input.value = '';*/
}

async function procesar_js_datos_lote_relaciones_contrato() {
	
	let opcion_input = document.getElementById("opcion");
    opcion = parseInt(opcion_input.value);
	
	let request_options ={};
	let url_controller = '';
	let data_json = {};
	let results_json = {};	
	
				
    switch(opcion) {
		
        case 0:
            get_menu_opciones();
            break;														
		
		case 1:  
            
			data_json = procesar_nuevos_contrato();
			
			request_options = get_request_options(data_json,'POST');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/financiero/contrato_api/nuevos/';
			
			call_request(url_controller,request_options);
			
			break;
			
		case 2:            	
			
			data_json = await procesar_actualizars_contrato();
			
			request_options = get_request_options(data_json,'PUT');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/financiero/contrato_api/actualizars/';
			
			call_request(url_controller,request_options);
			
			break;
			
		case 3:
		
			data_json = procesar_eliminars_contrato();
			
			request_options = get_request_options(data_json,'DELETE');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/financiero/contrato_api/eliminars/';
			
			call_request(url_controller,request_options);
			
            break;
        
		case 4:  
			
			data_json = await procesar_guardar_cambios_contrato();						
			
			request_options = get_request_options(data_json,'POST');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/financiero/contrato_api/guardar_cambios/';
			
			call_request(url_controller,request_options);
			
			break;
			
		default:
            console.log("Seleccion Incorrecta");
			break;
    }

	//document.write('\nPresione la tecla Enter para continuar');
	//read linea
}

function procesar_nuevos_contrato() {
	let data_json = {};
	
	/*NUEVOS*/
	let new_contrato = {};	
	let news_contratos = [];				
	
	new_contrato = {};
	news_contratos = [];
	
	for(let i=1; i<=3; i++) {
		new_contrato = {
			created_at : '2000-01-01 01:01:01',
			updated_at : '2000-01-01 01:01:01',
			anio : 0,
			valor : 0.0,
			fecha : '2000-01-01 01:01:01',
			firmado : false
		};
					
		news_contratos.push(new_contrato);
	}
	
	data_json = {
		news_contratos : news_contratos
	};
	
	return data_json;
}

async function procesar_actualizars_contrato() {
	let data_json = {};
	
	/*ACTUALIZARS*/
	let update_contrato = {};	
	let updates_contratos = [];				
	let ids_updates = [];
	let updates_columnas =[];
	
	/*-------- TRAER TODOS -------------*/ 
			
	data_json = {
		pagination: {
			skip: 0,
			limit: 10
		}
	};
	
	request_options = get_request_options(data_json,'POST');			
	url_controller = 'http://localhost:3000/api/colegio_relaciones/financiero/contrato_api/todos/';
	
	results_json = await call_request_return(url_controller,request_options);
	
	/*-------- PREPARAR ACTUALIZARS -------------*/
	
	update_contrato = {};
	updates_contratos = [];
	
	ids_updates = [1,2,3];
	
	for(result of results_json.contratos) {
		
		for(id of ids_updates) {
			
			if(id == result.id) {
				
				update_contrato = {
					id : result.id,
					updated_at : '2000-01-01 01:01:01',	
					anio : result.anio + 0,
					valor : result.valor + 0.0,
					fecha : result.fecha,
					firmado : result.firmado
				};
							
				updates_contratos.push(update_contrato);
			}
		}
	}
	
	updates_columnas = ['anio','valor','fecha','firmado'];

	data_json = {
		updates_contratos : updates_contratos,
		updates_columnas : updates_columnas
	};
			
	return data_json;
}

function procesar_eliminars_contrato() {
	let data_json = {};
	
	/*ELIMINARS*/
	let id_delete_contrato = {};
	let ids_deletes_contratos = [];
	let ids_deletes = [];
	
	id_delete_contrato = {};
	ids_deletes_contratos = [];
	
	ids_deletes = [1,2,3];
	
	for(id of ids_deletes) {
		id_delete_contrato = {
			id: id	
		};
		
		ids_deletes_contratos.push(id_delete_contrato);
	}
	
	data_json = {
		ids_deletes_contratos: ids_deletes_contratos
	};
	
	return data_json;
}

async function procesar_guardar_cambios_contrato() {
	let data_json_final = {};
	
	let data_json_nuevos = {};
	let data_json_actualizars = {};
	let data_json_eliminars = {};
	
	data_json_nuevos = procesar_nuevos_contrato();	
	data_json_actualizars = await procesar_actualizars_contrato();	
	data_json_eliminars = procesar_eliminars_contrato();
	
	
	data_json_final = {
		news_contratos : data_json_nuevos.news_contratos,
		updates_contratos : data_json_actualizars.updates_contratos,
		updates_columnas : data_json_actualizars.updates_columnas,
		ids_deletes_contratos: data_json_eliminars.ids_deletes_contratos
	};
			
	return data_json_final;
}


function get_js_datos_lote_relaciones_docente() {    
        document.body.innerHTML='';
		
        document.write('----------- <b>LOTE/RELACIONES Datos Tabla docente</b> -------------');
		document.write('<pre>		1. Set Nuevos LOTES Docente</pre>');
		document.write('<pre>		2. Set Actualizars LOTES Docente</pre>');
		document.write('<pre>		3. Set Eliminars LOTES Docente</pre></br>');
		document.write('<pre>		4. Set Guardar Cambios LOTES Docente</pre></br>');
		
		
		/*document.write('<pre>		12. Get Todos Datos Relaciones Docente</pre>');*/
		
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
		procesar_js_datos_lote_relaciones_docente();
	}
	
	let opcion_input = document.getElementById("opcion");
	/*opcion_input.value = '';*/
}

async function procesar_js_datos_lote_relaciones_docente() {
	
	let opcion_input = document.getElementById("opcion");
    opcion = parseInt(opcion_input.value);
	
	let request_options ={};
	let url_controller = '';
	let data_json = {};
	let results_json = {};	
	
				
    switch(opcion) {
		
        case 0:
            get_menu_opciones();
            break;														
		
		case 1:  
            
			data_json = procesar_nuevos_docente();
			
			request_options = get_request_options(data_json,'POST');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/estructura/docente_api/nuevos/';
			
			call_request(url_controller,request_options);
			
			break;
			
		case 2:            	
			
			data_json = await procesar_actualizars_docente();
			
			request_options = get_request_options(data_json,'PUT');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/estructura/docente_api/actualizars/';
			
			call_request(url_controller,request_options);
			
			break;
			
		case 3:
		
			data_json = procesar_eliminars_docente();
			
			request_options = get_request_options(data_json,'DELETE');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/estructura/docente_api/eliminars/';
			
			call_request(url_controller,request_options);
			
            break;
        
		case 4:  
			
			data_json = await procesar_guardar_cambios_docente();						
			
			request_options = get_request_options(data_json,'POST');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/estructura/docente_api/guardar_cambios/';
			
			call_request(url_controller,request_options);
			
			break;
			
		
		default:
            console.log("Seleccion Incorrecta");
			break;
    }

	//document.write('\nPresione la tecla Enter para continuar');
	//read linea
}

function procesar_nuevos_docente() {
	let data_json = {};
	
	/*NUEVOS*/
	let new_docente = {};	
	let news_docentes = [];				
	
	new_docente = {};
	news_docentes = [];
	
	for(let i=1; i<=3; i++) {
		new_docente = {
			created_at : '2000-01-01 01:01:01',
			updated_at : '2000-01-01 01:01:01',
			nombre : '',
			apellido : '',
			fecha_nacimiento : '2000-01-01 01:01:01',
			anios_experiencia : 0,
			nota_evaluacion : 0.0
		};
					
		news_docentes.push(new_docente);
	}
	
	data_json = {
		news_docentes : news_docentes
	};
	
	return data_json;
}

async function procesar_actualizars_docente() {
	let data_json = {};
	
	/*ACTUALIZARS*/
	let update_docente = {};	
	let updates_docentes = [];				
	let ids_updates = [];
	let updates_columnas =[];
	
	/*-------- TRAER TODOS -------------*/ 
			
	data_json = {
		pagination: {
			skip: 0,
			limit: 10
		}
	};
	
	request_options = get_request_options(data_json,'POST');			
	url_controller = 'http://localhost:3000/api/colegio_relaciones/estructura/docente_api/todos/';
	
	results_json = await call_request_return(url_controller,request_options);
	
	/*-------- PREPARAR ACTUALIZARS -------------*/
	
	update_docente = {};
	updates_docentes = [];
	
	ids_updates = [1,2,3];
	
	for(result of results_json.docentes) {
		
		for(id of ids_updates) {
			
			if(id == result.id) {
				
				update_docente = {
					id : result.id,
					updated_at : '2000-01-01 01:01:01',	
					nombre : result.nombre + '',
					apellido : result.apellido + '',
					fecha_nacimiento : result.fecha_nacimiento,
					anios_experiencia : result.anios_experiencia + 0,
					nota_evaluacion : result.nota_evaluacion + 0.0
				};
							
				updates_docentes.push(update_docente);
			}
		}
	}
	
	updates_columnas = ['nombre','apellido','fecha_nacimiento','anios_experiencia','nota_evaluacion'];

	data_json = {
		updates_docentes : updates_docentes,
		updates_columnas : updates_columnas
	};
			
	return data_json;
}

function procesar_eliminars_docente() {
	let data_json = {};
	
	/*ELIMINARS*/
	let id_delete_docente = {};
	let ids_deletes_docentes = [];
	let ids_deletes = [];
	
	id_delete_docente = {};
	ids_deletes_docentes = [];
	
	ids_deletes = [1,2,3];
	
	for(id of ids_deletes) {
		id_delete_docente = {
			id: id	
		};
		
		ids_deletes_docentes.push(id_delete_docente);
	}
	
	data_json = {
		ids_deletes_docentes: ids_deletes_docentes
	};
	
	return data_json;
}

async function procesar_guardar_cambios_docente() {
	let data_json_final = {};
	
	let data_json_nuevos = {};
	let data_json_actualizars = {};
	let data_json_eliminars = {};
	
	data_json_nuevos = procesar_nuevos_docente();	
	data_json_actualizars = await procesar_actualizars_docente();	
	data_json_eliminars = procesar_eliminars_docente();
	
	
	data_json_final = {
		news_docentes : data_json_nuevos.news_docentes,
		updates_docentes : data_json_actualizars.updates_docentes,
		updates_columnas : data_json_actualizars.updates_columnas,
		ids_deletes_docentes: data_json_eliminars.ids_deletes_docentes
	};
			
	return data_json_final;
}


function get_js_datos_lote_relaciones_docente_materia() {    
        document.body.innerHTML='';
		
        document.write('----------- <b>LOTE/RELACIONES Datos Tabla docente_materia</b> -------------');
		document.write('<pre>		1. Set Nuevos LOTES DocenteMateria</pre>');
		document.write('<pre>		2. Set Actualizars LOTES DocenteMateria</pre>');
		document.write('<pre>		3. Set Eliminars LOTES DocenteMateria</pre></br>');
		document.write('<pre>		4. Set Guardar Cambios LOTES DocenteMateria</pre></br>');
		
		
		
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
		procesar_js_datos_lote_relaciones_docente_materia();
	}
	
	let opcion_input = document.getElementById("opcion");
	/*opcion_input.value = '';*/
}

async function procesar_js_datos_lote_relaciones_docente_materia() {
	
	let opcion_input = document.getElementById("opcion");
    opcion = parseInt(opcion_input.value);
	
	let request_options ={};
	let url_controller = '';
	let data_json = {};
	let results_json = {};	
	
				
    switch(opcion) {
		
        case 0:
            get_menu_opciones();
            break;														
		
		case 1:  
            
			data_json = procesar_nuevos_docente_materia();
			
			request_options = get_request_options(data_json,'POST');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/estructura/docente_materia_api/nuevos/';
			
			call_request(url_controller,request_options);
			
			break;
			
		case 2:            	
			
			data_json = await procesar_actualizars_docente_materia();
			
			request_options = get_request_options(data_json,'PUT');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/estructura/docente_materia_api/actualizars/';
			
			call_request(url_controller,request_options);
			
			break;
			
		case 3:
		
			data_json = procesar_eliminars_docente_materia();
			
			request_options = get_request_options(data_json,'DELETE');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/estructura/docente_materia_api/eliminars/';
			
			call_request(url_controller,request_options);
			
            break;
        
		case 4:  
			
			data_json = await procesar_guardar_cambios_docente_materia();						
			
			request_options = get_request_options(data_json,'POST');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/estructura/docente_materia_api/guardar_cambios/';
			
			call_request(url_controller,request_options);
			
			break;
			
		default:
            console.log("Seleccion Incorrecta");
			break;
    }

	//document.write('\nPresione la tecla Enter para continuar');
	//read linea
}

function procesar_nuevos_docente_materia() {
	let data_json = {};
	
	/*NUEVOS*/
	let new_docente_materia = {};	
	let news_docente_materias = [];				
	
	new_docente_materia = {};
	news_docente_materias = [];
	
	for(let i=1; i<=3; i++) {
		new_docente_materia = {
			created_at : '2000-01-01 01:01:01',
			updated_at : '2000-01-01 01:01:01',
			id_docente : 1,
			id_materia : 1
		};
					
		news_docente_materias.push(new_docente_materia);
	}
	
	data_json = {
		news_docente_materias : news_docente_materias
	};
	
	return data_json;
}

async function procesar_actualizars_docente_materia() {
	let data_json = {};
	
	/*ACTUALIZARS*/
	let update_docente_materia = {};	
	let updates_docente_materias = [];				
	let ids_updates = [];
	let updates_columnas =[];
	
	/*-------- TRAER TODOS -------------*/ 
			
	data_json = {
		pagination: {
			skip: 0,
			limit: 10
		}
	};
	
	request_options = get_request_options(data_json,'POST');			
	url_controller = 'http://localhost:3000/api/colegio_relaciones/estructura/docente_materia_api/todos/';
	
	results_json = await call_request_return(url_controller,request_options);
	
	/*-------- PREPARAR ACTUALIZARS -------------*/
	
	update_docente_materia = {};
	updates_docente_materias = [];
	
	ids_updates = [1,2,3];
	
	for(result of results_json.docente_materias) {
		
		for(id of ids_updates) {
			
			if(id == result.id) {
				
				update_docente_materia = {
					id : result.id,
					updated_at : '2000-01-01 01:01:01',	
					id_docente : result.id_docente + 1,
					id_materia : result.id_materia + 1
				};
							
				updates_docente_materias.push(update_docente_materia);
			}
		}
	}
	
	updates_columnas = ['id_docente','id_materia'];

	data_json = {
		updates_docente_materias : updates_docente_materias,
		updates_columnas : updates_columnas
	};
			
	return data_json;
}

function procesar_eliminars_docente_materia() {
	let data_json = {};
	
	/*ELIMINARS*/
	let id_delete_docente_materia = {};
	let ids_deletes_docente_materias = [];
	let ids_deletes = [];
	
	id_delete_docente_materia = {};
	ids_deletes_docente_materias = [];
	
	ids_deletes = [45,48,49,50];
	
	for(id of ids_deletes) {
		id_delete_docente_materia = {
			id: id	
		};
		
		ids_deletes_docente_materias.push(id_delete_docente_materia);
	}
	
	data_json = {
		ids_deletes_docente_materias: ids_deletes_docente_materias
	};
	
	return data_json;
}

async function procesar_guardar_cambios_docente_materia() {
	let data_json_final = {};
	
	let data_json_nuevos = {};
	let data_json_actualizars = {};
	let data_json_eliminars = {};
	
	data_json_nuevos = procesar_nuevos_docente_materia();	
	data_json_actualizars = await procesar_actualizars_docente_materia();	
	data_json_eliminars = procesar_eliminars_docente_materia();
	
	
	data_json_final = {
		news_docente_materias : data_json_nuevos.news_docente_materias,
		updates_docente_materias : data_json_actualizars.updates_docente_materias,
		updates_columnas : data_json_actualizars.updates_columnas,
		ids_deletes_docente_materias: data_json_eliminars.ids_deletes_docente_materias
	};
			
	return data_json_final;
}


function get_js_datos_lote_relaciones_materia() {    
        document.body.innerHTML='';
		
        document.write('----------- <b>LOTE/RELACIONES Datos Tabla materia</b> -------------');
		document.write('<pre>		1. Set Nuevos LOTES Materia</pre>');
		document.write('<pre>		2. Set Actualizars LOTES Materia</pre>');
		document.write('<pre>		3. Set Eliminars LOTES Materia</pre></br>');
		document.write('<pre>		4. Set Guardar Cambios LOTES Materia</pre></br>');
		
		
		/*document.write('<pre>		12. Get Todos Datos Relaciones Materia</pre>');*/
		
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
		procesar_js_datos_lote_relaciones_materia();
	}
	
	let opcion_input = document.getElementById("opcion");
	/*opcion_input.value = '';*/
}

async function procesar_js_datos_lote_relaciones_materia() {
	
	let opcion_input = document.getElementById("opcion");
    opcion = parseInt(opcion_input.value);
	
	let request_options ={};
	let url_controller = '';
	let data_json = {};
	let results_json = {};	
	
				
    switch(opcion) {
		
        case 0:
            get_menu_opciones();
            break;														
		
		case 1:  
            
			data_json = procesar_nuevos_materia();
			
			request_options = get_request_options(data_json,'POST');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/estructura/materia_api/nuevos/';
			
			call_request(url_controller,request_options);
			
			break;
			
		case 2:            	
			
			data_json = await procesar_actualizars_materia();
			
			request_options = get_request_options(data_json,'PUT');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/estructura/materia_api/actualizars/';
			
			call_request(url_controller,request_options);
			
			break;
			
		case 3:
		
			data_json = procesar_eliminars_materia();
			
			request_options = get_request_options(data_json,'DELETE');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/estructura/materia_api/eliminars/';
			
			call_request(url_controller,request_options);
			
            break;
        
		case 4:  
			
			data_json = await procesar_guardar_cambios_materia();						
			
			request_options = get_request_options(data_json,'POST');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/estructura/materia_api/guardar_cambios/';
			
			call_request(url_controller,request_options);
			
			break;
			
		
		default:
            console.log("Seleccion Incorrecta");
			break;
    }

	//document.write('\nPresione la tecla Enter para continuar');
	//read linea
}

function procesar_nuevos_materia() {
	let data_json = {};
	
	/*NUEVOS*/
	let new_materia = {};	
	let news_materias = [];				
	
	new_materia = {};
	news_materias = [];
	
	//for(let i=1; i<=3; i++) {
		new_materia = {
			created_at : '2000-01-01 01:01:01',
			updated_at : '2000-01-01 01:01:01',
			codigo : 'C1',
			nombre : 'N1',
			activo : true
		};
					
		news_materias.push(new_materia);

		new_materia = {
			created_at : '2000-01-01 01:01:01',
			updated_at : '2000-01-01 01:01:01',
			codigo : 'C2',
			nombre : 'N2',
			activo : false
		};
					
		news_materias.push(new_materia);
	//}
	
	data_json = {
		news_materias : news_materias
	};
	
	return data_json;
}

async function procesar_actualizars_materia() {
	let data_json = {};
	
	/*ACTUALIZARS*/
	let update_materia = {};	
	let updates_materias = [];				
	let ids_updates = [];
	let updates_columnas =[];
	
	/*-------- TRAER TODOS -------------*/ 
			
	data_json = {
		pagination: {
			skip: 0,
			limit: 10
		}
	};
	
	request_options = get_request_options(data_json,'POST');			
	url_controller = 'http://localhost:3000/api/colegio_relaciones/estructura/materia_api/todos/';
	
	results_json = await call_request_return(url_controller,request_options);
	
	/*-------- PREPARAR ACTUALIZARS -------------*/
	
	update_materia = {};
	updates_materias = [];
	
	ids_updates = [56,57];
	
	for(result of results_json.materias) {
		
		for(id of ids_updates) {
			
			if(id == result.id) {
				
				update_materia = {
					id : result.id,
					updated_at : '2000-01-01 01:01:01',	
					codigo : result.codigo + '_0',
					nombre : result.nombre + '_0',
					activo : true
				};
							
				updates_materias.push(update_materia);
			}
		}
	}
	
	updates_columnas = ['codigo','nombre'];

	data_json = {
		updates_materias : updates_materias,
		updates_columnas : updates_columnas
	};
			
	return data_json;
}

function procesar_eliminars_materia() {
	let data_json = {};
	
	/*ELIMINARS*/
	let id_delete_materia = {};
	let ids_deletes_materias = [];
	let ids_deletes = [];
	
	id_delete_materia = {};
	ids_deletes_materias = [];
	
	ids_deletes = [45,48,49,50];
	
	for(id of ids_deletes) {
		id_delete_materia = {
			id: id	
		};
		
		ids_deletes_materias.push(id_delete_materia);
	}
	
	data_json = {
		ids_deletes_materias: ids_deletes_materias
	};
	
	return data_json;
}

async function procesar_guardar_cambios_materia() {
	let data_json_final = {};
	
	let data_json_nuevos = {};
	let data_json_actualizars = {};
	let data_json_eliminars = {};
	
	data_json_nuevos = procesar_nuevos_materia();	
	data_json_actualizars = await procesar_actualizars_materia();	
	data_json_eliminars = procesar_eliminars_materia();
	
	
	data_json_final = {
		news_materias : data_json_nuevos.news_materias,
		updates_materias : data_json_actualizars.updates_materias,
		updates_columnas : data_json_actualizars.updates_columnas,
		ids_deletes_materias: data_json_eliminars.ids_deletes_materias
	};
			
	return data_json_final;
}


function get_js_datos_lote_relaciones_matricula() {    
        document.body.innerHTML='';
		
        document.write('----------- <b>LOTE/RELACIONES Datos Tabla matricula</b> -------------');
		document.write('<pre>		1. Set Nuevos LOTES Matricula</pre>');
		document.write('<pre>		2. Set Actualizars LOTES Matricula</pre>');
		document.write('<pre>		3. Set Eliminars LOTES Matricula</pre></br>');
		document.write('<pre>		4. Set Guardar Cambios LOTES Matricula</pre></br>');
		
		
		
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
		procesar_js_datos_lote_relaciones_matricula();
	}
	
	let opcion_input = document.getElementById("opcion");
	/*opcion_input.value = '';*/
}

async function procesar_js_datos_lote_relaciones_matricula() {
	
	let opcion_input = document.getElementById("opcion");
    opcion = parseInt(opcion_input.value);
	
	let request_options ={};
	let url_controller = '';
	let data_json = {};
	let results_json = {};	
	
				
    switch(opcion) {
		
        case 0:
            get_menu_opciones();
            break;														
		
		case 1:  
            
			data_json = procesar_nuevos_matricula();
			
			request_options = get_request_options(data_json,'POST');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/proceso/matricula_api/nuevos/';
			
			call_request(url_controller,request_options);
			
			break;
			
		case 2:            	
			
			data_json = await procesar_actualizars_matricula();
			
			request_options = get_request_options(data_json,'PUT');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/proceso/matricula_api/actualizars/';
			
			call_request(url_controller,request_options);
			
			break;
			
		case 3:
		
			data_json = procesar_eliminars_matricula();
			
			request_options = get_request_options(data_json,'DELETE');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/proceso/matricula_api/eliminars/';
			
			call_request(url_controller,request_options);
			
            break;
        
		case 4:  
			
			data_json = await procesar_guardar_cambios_matricula();						
			
			request_options = get_request_options(data_json,'POST');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/proceso/matricula_api/guardar_cambios/';
			
			call_request(url_controller,request_options);
			
			break;
			
		default:
            console.log("Seleccion Incorrecta");
			break;
    }

	//document.write('\nPresione la tecla Enter para continuar');
	//read linea
}

function procesar_nuevos_matricula() {
	let data_json = {};
	
	/*NUEVOS*/
	let new_matricula = {};	
	let news_matriculas = [];				
	
	new_matricula = {};
	news_matriculas = [];
	
	for(let i=1; i<=3; i++) {
		new_matricula = {
			created_at : '2000-01-01 01:01:01',
			updated_at : '2000-01-01 01:01:01',
			anio : 0,
			costo : 0.0,
			fecha : '2000-01-01 01:01:01',
			pagado : false
		};
					
		news_matriculas.push(new_matricula);
	}
	
	data_json = {
		news_matriculas : news_matriculas
	};
	
	return data_json;
}

async function procesar_actualizars_matricula() {
	let data_json = {};
	
	/*ACTUALIZARS*/
	let update_matricula = {};	
	let updates_matriculas = [];				
	let ids_updates = [];
	let updates_columnas =[];
	
	/*-------- TRAER TODOS -------------*/ 
			
	data_json = {
		pagination: {
			skip: 0,
			limit: 10
		}
	};
	
	request_options = get_request_options(data_json,'POST');			
	url_controller = 'http://localhost:3000/api/colegio_relaciones/proceso/matricula_api/todos/';
	
	results_json = await call_request_return(url_controller,request_options);
	
	/*-------- PREPARAR ACTUALIZARS -------------*/
	
	update_matricula = {};
	updates_matriculas = [];
	
	ids_updates = [1,2,3];
	
	for(result of results_json.matriculas) {
		
		for(id of ids_updates) {
			
			if(id == result.id) {
				
				update_matricula = {
					id : result.id,
					updated_at : '2000-01-01 01:01:01',	
					anio : result.anio + 0,
					costo : result.costo + 0.0,
					fecha : result.fecha,
					pagado : result.pagado
				};
							
				updates_matriculas.push(update_matricula);
			}
		}
	}
	
	updates_columnas = ['anio','costo','fecha','pagado'];

	data_json = {
		updates_matriculas : updates_matriculas,
		updates_columnas : updates_columnas
	};
			
	return data_json;
}

function procesar_eliminars_matricula() {
	let data_json = {};
	
	/*ELIMINARS*/
	let id_delete_matricula = {};
	let ids_deletes_matriculas = [];
	let ids_deletes = [];
	
	id_delete_matricula = {};
	ids_deletes_matriculas = [];
	
	ids_deletes = [1,2,3];
	
	for(id of ids_deletes) {
		id_delete_matricula = {
			id: id	
		};
		
		ids_deletes_matriculas.push(id_delete_matricula);
	}
	
	data_json = {
		ids_deletes_matriculas: ids_deletes_matriculas
	};
	
	return data_json;
}

async function procesar_guardar_cambios_matricula() {
	let data_json_final = {};
	
	let data_json_nuevos = {};
	let data_json_actualizars = {};
	let data_json_eliminars = {};
	
	data_json_nuevos = procesar_nuevos_matricula();	
	data_json_actualizars = await procesar_actualizars_matricula();	
	data_json_eliminars = procesar_eliminars_matricula();
	
	
	data_json_final = {
		news_matriculas : data_json_nuevos.news_matriculas,
		updates_matriculas : data_json_actualizars.updates_matriculas,
		updates_columnas : data_json_actualizars.updates_columnas,
		ids_deletes_matriculas: data_json_eliminars.ids_deletes_matriculas
	};
			
	return data_json_final;
}


function get_js_datos_lote_relaciones_nota() {    
        document.body.innerHTML='';
		
        document.write('----------- <b>LOTE/RELACIONES Datos Tabla nota</b> -------------');
		document.write('<pre>		1. Set Nuevos LOTES Nota</pre>');
		document.write('<pre>		2. Set Actualizars LOTES Nota</pre>');
		document.write('<pre>		3. Set Eliminars LOTES Nota</pre></br>');
		document.write('<pre>		4. Set Guardar Cambios LOTES Nota</pre></br>');
		
		
		
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
		procesar_js_datos_lote_relaciones_nota();
	}
	
	let opcion_input = document.getElementById("opcion");
	/*opcion_input.value = '';*/
}

async function procesar_js_datos_lote_relaciones_nota() {
	
	let opcion_input = document.getElementById("opcion");
    opcion = parseInt(opcion_input.value);
	
	let request_options ={};
	let url_controller = '';
	let data_json = {};
	let results_json = {};	
	
				
    switch(opcion) {
		
        case 0:
            get_menu_opciones();
            break;														
		
		case 1:  
            
			data_json = procesar_nuevos_nota();
			
			request_options = get_request_options(data_json,'POST');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/proceso/nota_api/nuevos/';
			
			call_request(url_controller,request_options);
			
			break;
			
		case 2:            	
			
			data_json = await procesar_actualizars_nota();
			
			request_options = get_request_options(data_json,'PUT');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/proceso/nota_api/actualizars/';
			
			call_request(url_controller,request_options);
			
			break;
			
		case 3:
		
			data_json = procesar_eliminars_nota();
			
			request_options = get_request_options(data_json,'DELETE');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/proceso/nota_api/eliminars/';
			
			call_request(url_controller,request_options);
			
            break;
        
		case 4:  
			
			data_json = await procesar_guardar_cambios_nota();						
			
			request_options = get_request_options(data_json,'POST');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/proceso/nota_api/guardar_cambios/';
			
			call_request(url_controller,request_options);
			
			break;
			
		default:
            console.log("Seleccion Incorrecta");
			break;
    }

	//document.write('\nPresione la tecla Enter para continuar');
	//read linea
}

function procesar_nuevos_nota() {
	let data_json = {};
	
	/*NUEVOS*/
	let new_nota = {};	
	let news_notas = [];				
	
	new_nota = {};
	news_notas = [];
	
	for(let i=1; i<=3; i++) {
		new_nota = {
			created_at : '2000-01-01 01:01:01',
			updated_at : '2000-01-01 01:01:01',
			id_alumno : 1,
			id_materia : 1,
			id_docente : 1,
			nota_prueba : 0.0,
			nota_trabajo : 0.0,
			nota_examen : 0.0,
			nota_final : 0.0
		};
					
		news_notas.push(new_nota);
	}
	
	data_json = {
		news_notas : news_notas
	};
	
	return data_json;
}

async function procesar_actualizars_nota() {
	let data_json = {};
	
	/*ACTUALIZARS*/
	let update_nota = {};	
	let updates_notas = [];				
	let ids_updates = [];
	let updates_columnas =[];
	
	/*-------- TRAER TODOS -------------*/ 
			
	data_json = {
		pagination: {
			skip: 0,
			limit: 10
		}
	};
	
	request_options = get_request_options(data_json,'POST');			
	url_controller = 'http://localhost:3000/api/colegio_relaciones/proceso/nota_api/todos/';
	
	results_json = await call_request_return(url_controller,request_options);
	
	/*-------- PREPARAR ACTUALIZARS -------------*/
	
	update_nota = {};
	updates_notas = [];
	
	ids_updates = [1,2,3];
	
	for(result of results_json.notas) {
		
		for(id of ids_updates) {
			
			if(id == result.id) {
				
				update_nota = {
					id : result.id,
					updated_at : '2000-01-01 01:01:01',	
					id_alumno : result.id_alumno + 1,
					id_materia : result.id_materia + 1,
					id_docente : result.id_docente + 1,
					nota_prueba : result.nota_prueba + 0.0,
					nota_trabajo : result.nota_trabajo + 0.0,
					nota_examen : result.nota_examen + 0.0,
					nota_final : result.nota_final + 0.0
				};
							
				updates_notas.push(update_nota);
			}
		}
	}
	
	updates_columnas = ['id_alumno','id_materia','id_docente','nota_prueba','nota_trabajo','nota_examen','nota_final'];

	data_json = {
		updates_notas : updates_notas,
		updates_columnas : updates_columnas
	};
			
	return data_json;
}

function procesar_eliminars_nota() {
	let data_json = {};
	
	/*ELIMINARS*/
	let id_delete_nota = {};
	let ids_deletes_notas = [];
	let ids_deletes = [];
	
	id_delete_nota = {};
	ids_deletes_notas = [];
	
	ids_deletes = [1,2,3];
	
	for(id of ids_deletes) {
		id_delete_nota = {
			id: id	
		};
		
		ids_deletes_notas.push(id_delete_nota);
	}
	
	data_json = {
		ids_deletes_notas: ids_deletes_notas
	};
	
	return data_json;
}

async function procesar_guardar_cambios_nota() {
	let data_json_final = {};
	
	let data_json_nuevos = {};
	let data_json_actualizars = {};
	let data_json_eliminars = {};
	
	data_json_nuevos = procesar_nuevos_nota();	
	data_json_actualizars = await procesar_actualizars_nota();	
	data_json_eliminars = procesar_eliminars_nota();
	
	
	data_json_final = {
		news_notas : data_json_nuevos.news_notas,
		updates_notas : data_json_actualizars.updates_notas,
		updates_columnas : data_json_actualizars.updates_columnas,
		ids_deletes_notas: data_json_eliminars.ids_deletes_notas
	};
			
	return data_json_final;
}


function get_js_datos_lote_relaciones_pension() {    
        document.body.innerHTML='';
		
        document.write('----------- <b>LOTE/RELACIONES Datos Tabla pension</b> -------------');
		document.write('<pre>		1. Set Nuevos LOTES Pension</pre>');
		document.write('<pre>		2. Set Actualizars LOTES Pension</pre>');
		document.write('<pre>		3. Set Eliminars LOTES Pension</pre></br>');
		document.write('<pre>		4. Set Guardar Cambios LOTES Pension</pre></br>');
		
		
		
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
		procesar_js_datos_lote_relaciones_pension();
	}
	
	let opcion_input = document.getElementById("opcion");
	/*opcion_input.value = '';*/
}

async function procesar_js_datos_lote_relaciones_pension() {
	
	let opcion_input = document.getElementById("opcion");
    opcion = parseInt(opcion_input.value);
	
	let request_options ={};
	let url_controller = '';
	let data_json = {};
	let results_json = {};	
	
				
    switch(opcion) {
		
        case 0:
            get_menu_opciones();
            break;														
		
		case 1:  
            
			data_json = procesar_nuevos_pension();
			
			request_options = get_request_options(data_json,'POST');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/financiero/pension_api/nuevos/';
			
			call_request(url_controller,request_options);
			
			break;
			
		case 2:            	
			
			data_json = await procesar_actualizars_pension();
			
			request_options = get_request_options(data_json,'PUT');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/financiero/pension_api/actualizars/';
			
			call_request(url_controller,request_options);
			
			break;
			
		case 3:
		
			data_json = procesar_eliminars_pension();
			
			request_options = get_request_options(data_json,'DELETE');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/financiero/pension_api/eliminars/';
			
			call_request(url_controller,request_options);
			
            break;
        
		case 4:  
			
			data_json = await procesar_guardar_cambios_pension();						
			
			request_options = get_request_options(data_json,'POST');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/financiero/pension_api/guardar_cambios/';
			
			call_request(url_controller,request_options);
			
			break;
			
		default:
            console.log("Seleccion Incorrecta");
			break;
    }

	//document.write('\nPresione la tecla Enter para continuar');
	//read linea
}

function procesar_nuevos_pension() {
	let data_json = {};
	
	/*NUEVOS*/
	let new_pension = {};	
	let news_pensions = [];				
	
	new_pension = {};
	news_pensions = [];
	
	for(let i=1; i<=3; i++) {
		new_pension = {
			created_at : '2000-01-01 01:01:01',
			updated_at : '2000-01-01 01:01:01',
			id_alumno : 1,
			anio : 0,
			mes : 0,
			valor : 0.0,
			cobrado : false
		};
					
		news_pensions.push(new_pension);
	}
	
	data_json = {
		news_pensions : news_pensions
	};
	
	return data_json;
}

async function procesar_actualizars_pension() {
	let data_json = {};
	
	/*ACTUALIZARS*/
	let update_pension = {};	
	let updates_pensions = [];				
	let ids_updates = [];
	let updates_columnas =[];
	
	/*-------- TRAER TODOS -------------*/ 
			
	data_json = {
		pagination: {
			skip: 0,
			limit: 10
		}
	};
	
	request_options = get_request_options(data_json,'POST');			
	url_controller = 'http://localhost:3000/api/colegio_relaciones/financiero/pension_api/todos/';
	
	results_json = await call_request_return(url_controller,request_options);
	
	/*-------- PREPARAR ACTUALIZARS -------------*/
	
	update_pension = {};
	updates_pensions = [];
	
	ids_updates = [1,2,3];
	
	for(result of results_json.pensions) {
		
		for(id of ids_updates) {
			
			if(id == result.id) {
				
				update_pension = {
					id : result.id,
					updated_at : '2000-01-01 01:01:01',	
					id_alumno : result.id_alumno + 1,
					anio : result.anio + 0,
					mes : result.mes + 0,
					valor : result.valor + 0.0,
					cobrado : result.cobrado
				};
							
				updates_pensions.push(update_pension);
			}
		}
	}
	
	updates_columnas = ['id_alumno','anio','mes','valor','cobrado'];

	data_json = {
		updates_pensions : updates_pensions,
		updates_columnas : updates_columnas
	};
			
	return data_json;
}

function procesar_eliminars_pension() {
	let data_json = {};
	
	/*ELIMINARS*/
	let id_delete_pension = {};
	let ids_deletes_pensions = [];
	let ids_deletes = [];
	
	id_delete_pension = {};
	ids_deletes_pensions = [];
	
	ids_deletes = [1,2,3];
	
	for(id of ids_deletes) {
		id_delete_pension = {
			id: id	
		};
		
		ids_deletes_pensions.push(id_delete_pension);
	}
	
	data_json = {
		ids_deletes_pensions: ids_deletes_pensions
	};
	
	return data_json;
}

async function procesar_guardar_cambios_pension() {
	let data_json_final = {};
	
	let data_json_nuevos = {};
	let data_json_actualizars = {};
	let data_json_eliminars = {};
	
	data_json_nuevos = procesar_nuevos_pension();	
	data_json_actualizars = await procesar_actualizars_pension();	
	data_json_eliminars = procesar_eliminars_pension();
	
	
	data_json_final = {
		news_pensions : data_json_nuevos.news_pensions,
		updates_pensions : data_json_actualizars.updates_pensions,
		updates_columnas : data_json_actualizars.updates_columnas,
		ids_deletes_pensions: data_json_eliminars.ids_deletes_pensions
	};
			
	return data_json_final;
}


function get_js_datos_lote_relaciones_sueldo() {    
        document.body.innerHTML='';
		
        document.write('----------- <b>LOTE/RELACIONES Datos Tabla sueldo</b> -------------');
		document.write('<pre>		1. Set Nuevos LOTES Sueldo</pre>');
		document.write('<pre>		2. Set Actualizars LOTES Sueldo</pre>');
		document.write('<pre>		3. Set Eliminars LOTES Sueldo</pre></br>');
		document.write('<pre>		4. Set Guardar Cambios LOTES Sueldo</pre></br>');
		
		
		
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
		procesar_js_datos_lote_relaciones_sueldo();
	}
	
	let opcion_input = document.getElementById("opcion");
	/*opcion_input.value = '';*/
}

async function procesar_js_datos_lote_relaciones_sueldo() {
	
	let opcion_input = document.getElementById("opcion");
    opcion = parseInt(opcion_input.value);
	
	let request_options ={};
	let url_controller = '';
	let data_json = {};
	let results_json = {};	
	
				
    switch(opcion) {
		
        case 0:
            get_menu_opciones();
            break;														
		
		case 1:  
            
			data_json = procesar_nuevos_sueldo();
			
			request_options = get_request_options(data_json,'POST');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/financiero/sueldo_api/nuevos/';
			
			call_request(url_controller,request_options);
			
			break;
			
		case 2:            	
			
			data_json = await procesar_actualizars_sueldo();
			
			request_options = get_request_options(data_json,'PUT');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/financiero/sueldo_api/actualizars/';
			
			call_request(url_controller,request_options);
			
			break;
			
		case 3:
		
			data_json = procesar_eliminars_sueldo();
			
			request_options = get_request_options(data_json,'DELETE');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/financiero/sueldo_api/eliminars/';
			
			call_request(url_controller,request_options);
			
            break;
        
		case 4:  
			
			data_json = await procesar_guardar_cambios_sueldo();						
			
			request_options = get_request_options(data_json,'POST');			
			url_controller = 'http://localhost:3000/api/colegio_relaciones/financiero/sueldo_api/guardar_cambios/';
			
			call_request(url_controller,request_options);
			
			break;
			
		default:
            console.log("Seleccion Incorrecta");
			break;
    }

	//document.write('\nPresione la tecla Enter para continuar');
	//read linea
}

function procesar_nuevos_sueldo() {
	let data_json = {};
	
	/*NUEVOS*/
	let new_sueldo = {};	
	let news_sueldos = [];				
	
	new_sueldo = {};
	news_sueldos = [];
	
	for(let i=1; i<=3; i++) {
		new_sueldo = {
			created_at : '2000-01-01 01:01:01',
			updated_at : '2000-01-01 01:01:01',
			id_docente : 1,
			anio : 0,
			mes : 0,
			valor : 0.0,
			cobrado : false
		};
					
		news_sueldos.push(new_sueldo);
	}
	
	data_json = {
		news_sueldos : news_sueldos
	};
	
	return data_json;
}

async function procesar_actualizars_sueldo() {
	let data_json = {};
	
	/*ACTUALIZARS*/
	let update_sueldo = {};	
	let updates_sueldos = [];				
	let ids_updates = [];
	let updates_columnas =[];
	
	/*-------- TRAER TODOS -------------*/ 
			
	data_json = {
		pagination: {
			skip: 0,
			limit: 10
		}
	};
	
	request_options = get_request_options(data_json,'POST');			
	url_controller = 'http://localhost:3000/api/colegio_relaciones/financiero/sueldo_api/todos/';
	
	results_json = await call_request_return(url_controller,request_options);
	
	/*-------- PREPARAR ACTUALIZARS -------------*/
	
	update_sueldo = {};
	updates_sueldos = [];
	
	ids_updates = [1,2,3];
	
	for(result of results_json.sueldos) {
		
		for(id of ids_updates) {
			
			if(id == result.id) {
				
				update_sueldo = {
					id : result.id,
					updated_at : '2000-01-01 01:01:01',	
					id_docente : result.id_docente + 1,
					anio : result.anio + 0,
					mes : result.mes + 0,
					valor : result.valor + 0.0,
					cobrado : result.cobrado
				};
							
				updates_sueldos.push(update_sueldo);
			}
		}
	}
	
	updates_columnas = ['id_docente','anio','mes','valor','cobrado'];

	data_json = {
		updates_sueldos : updates_sueldos,
		updates_columnas : updates_columnas
	};
			
	return data_json;
}

function procesar_eliminars_sueldo() {
	let data_json = {};
	
	/*ELIMINARS*/
	let id_delete_sueldo = {};
	let ids_deletes_sueldos = [];
	let ids_deletes = [];
	
	id_delete_sueldo = {};
	ids_deletes_sueldos = [];
	
	ids_deletes = [1,2,3];
	
	for(id of ids_deletes) {
		id_delete_sueldo = {
			id: id	
		};
		
		ids_deletes_sueldos.push(id_delete_sueldo);
	}
	
	data_json = {
		ids_deletes_sueldos: ids_deletes_sueldos
	};
	
	return data_json;
}

async function procesar_guardar_cambios_sueldo() {
	let data_json_final = {};
	
	let data_json_nuevos = {};
	let data_json_actualizars = {};
	let data_json_eliminars = {};
	
	data_json_nuevos = procesar_nuevos_sueldo();	
	data_json_actualizars = await procesar_actualizars_sueldo();	
	data_json_eliminars = procesar_eliminars_sueldo();
	
	
	data_json_final = {
		news_sueldos : data_json_nuevos.news_sueldos,
		updates_sueldos : data_json_actualizars.updates_sueldos,
		updates_columnas : data_json_actualizars.updates_columnas,
		ids_deletes_sueldos: data_json_eliminars.ids_deletes_sueldos
	};
			
	return data_json_final;
}


function get_request_options(data_json,method) {
    let request_options = {};	
	
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

async function call_request_return(url_controller,request_options) {
	let response_json = undefined;
	let response_data = undefined;

	response_json = await fetch(url_controller, request_options);                
    
	response_data = await response_json.json();
	
   return response_data;
}

function salir() {
    document.body.innerHTML='';
    console.log('PROCESO TERMINADO CORRECTAMENTE...');
}


get_menu_opciones();