


/*---------------------------- REL: (One - Many), TABLA: docente_materia ------------------------------ */
		/*------------------------ SELECT --------------------------*/
/*----- General -----*/
SELECT 
	id,
	insert_at,
	update_at,
	id_docente,
	id_materia
	FROM 2015_colegio_relaciones.docente_materia;

	


/*---------------------------- REL: (Many - Many), TABLA: docente ------------------------------ */
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

	


/*---------------------------- REL: (Many - Many), TABLA: alumno ------------------------------ */
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

	


/*---------------------------- REL: (One - Many), TABLA: nota ------------------------------ */
		/*------------------------ SELECT --------------------------*/
/*----- General -----*/
SELECT 
	id,
	insert_at,
	update_at,
	id_alumno,
	id_materia,
	id_docente,
	nota_prueba,
	nota_trabajo,
	nota_examen,
	nota_final
	FROM 2015_colegio_relaciones.nota;

	


/*---------------------------- REL: (One - Many), TABLA: alumno_materia ------------------------------ */
		/*------------------------ SELECT --------------------------*/
/*----- General -----*/
SELECT 
	id,
	insert_at,
	update_at,
	id_alumno,
	id_materia
	FROM 2015_colegio_relaciones.alumno_materia;

	

