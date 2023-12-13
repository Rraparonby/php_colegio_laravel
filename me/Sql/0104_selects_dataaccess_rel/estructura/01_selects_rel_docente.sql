


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

	


/*---------------------------- REL: (One - Many), TABLA: sueldo ------------------------------ */
		/*------------------------ SELECT --------------------------*/
/*----- General -----*/
SELECT 
	id,
	insert_at,
	update_at,
	id_docente,
	anio,
	mes,
	valor,
	cobrado
	FROM 2015_colegio_relaciones.sueldo;

	


/*---------------------------- REL: (One - One), TABLA: contrato ------------------------------ */
		/*------------------------ SELECT --------------------------*/
/*----- General -----*/
SELECT 
	id,
	insert_at,
	update_at,
	anio,
	valor,
	fecha,
	firmado
	FROM 2015_colegio_relaciones.contrato;

	


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

	

