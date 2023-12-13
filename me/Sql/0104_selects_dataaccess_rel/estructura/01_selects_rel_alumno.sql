


/*---------------------------- REL: (One - One), TABLA: matricula ------------------------------ */
		/*------------------------ SELECT --------------------------*/
/*----- General -----*/
SELECT 
	id,
	insert_at,
	update_at,
	anio,
	costo,
	fecha,
	pagado
	FROM 2015_colegio_relaciones.matricula;

	


/*---------------------------- REL: (Many - Many), TABLA: materia ------------------------------ */
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

	


/*---------------------------- REL: (One - Many), TABLA: pension ------------------------------ */
		/*------------------------ SELECT --------------------------*/
/*----- General -----*/
SELECT 
	id,
	insert_at,
	update_at,
	id_alumno,
	anio,
	mes,
	valor,
	cobrado
	FROM 2015_colegio_relaciones.pension;

	


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

	

