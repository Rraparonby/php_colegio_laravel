
		
	
		
	
		
	
		
	

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
	
		
	

/*---------------------------- TABLA: docente ------------------------------ */	
	
		/*------------------------ SELECT --------------------------*/
/*----- General -----*/
SELECT 
	id,
	insert_at,
	update_at,
	nombre,
	apellido,
	fecha_nacimiento,
	anios_experiencia,
	nota_evaluacion
	FROM 2015_colegio_relaciones.docente;


		/*----- Foreign Key -----*/
SELECT id,
	nombre,
	 FROM 2015_colegio_relaciones.docente;
	
		
	
		
	
		
	
		
	
