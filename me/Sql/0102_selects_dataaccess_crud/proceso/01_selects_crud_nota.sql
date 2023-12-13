
/*------------------------ INSERT --------------------------*/
INSERT INTO 2015_colegio_relaciones.nota(
	
		insert_at
	,	update_at
	,	id_alumno
	,	id_materia
	,	id_docente
	,	nota_prueba
	,	nota_trabajo
	,	nota_examen
	,	nota_final
	
) VALUES (
	
	CURRENT_TIMESTAMP,
	CURRENT_TIMESTAMP,
	0,
	0,
	0,
	0.0,
	0.0,
	0.0,
	0.0
);

/*------------------------ UPDATE --------------------------*/
UPDATE 2015_colegio_relaciones.nota SET 
	
	insert_at=CURRENT_TIMESTAMP,
	update_at=CURRENT_TIMESTAMP,
	id_alumno=0,
	id_materia=0,
	id_docente=0,
	nota_prueba=0.0,
	nota_trabajo=0.0,
	nota_examen=0.0,
	nota_final=0.0

WHERE id=0 
	  AND update_at='';

/*------------------------ DELETE --------------------------*/
DELETE FROM 2015_colegio_relaciones.nota 
	   WHERE id = 0;

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


/*----- Foreign Key -----*/
SELECT id,
	 FROM 2015_colegio_relaciones.nota;

/*----- Count -----*/
SELECT COUNT(*) AS value 
	FROM 2015_colegio_relaciones.nota;
	