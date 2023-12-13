
		
	
		
	
		
	
		
	

/*---------------------------- TABLA: alumno ------------------------------ */	
	
		/*------------------------ SELECT --------------------------*/
/*----- General -----*/
SELECT 
	id,
	insert_at,
	update_at,
	nombre,
	apellido,
	fecha_nacimiento
	FROM 2015_colegio_relaciones.alumno;


		/*----- Foreign Key -----*/
SELECT id,
	nombre,
	 FROM 2015_colegio_relaciones.alumno;
	
		
	

/*---------------------------- TABLA: materia ------------------------------ */	
	
		/*------------------------ SELECT --------------------------*/
/*----- General -----*/
SELECT 
	id,
	insert_at,
	update_at,
	codigo,
	nombre,
	activo
	FROM 2015_colegio_relaciones.materia;


		/*----- Foreign Key -----*/
SELECT id,
	codigo,
	 FROM 2015_colegio_relaciones.materia;
	
