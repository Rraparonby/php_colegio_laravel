
/*------------------------ INSERT --------------------------*/
INSERT INTO 2015_colegio_relaciones.alumno_materia(
	
		insert_at
	,	update_at
	,	id_alumno
	,	id_materia
	
) VALUES (
	
	CURRENT_TIMESTAMP,
	CURRENT_TIMESTAMP,
	0,
	0
);

/*------------------------ UPDATE --------------------------*/
UPDATE 2015_colegio_relaciones.alumno_materia SET 
	
	insert_at=CURRENT_TIMESTAMP,
	update_at=CURRENT_TIMESTAMP,
	id_alumno=0,
	id_materia=0

WHERE id=0 
	  AND update_at='';

/*------------------------ DELETE --------------------------*/
DELETE FROM 2015_colegio_relaciones.alumno_materia 
	   WHERE id = 0;

/*------------------------ SELECT --------------------------*/
/*----- General -----*/
SELECT 
	id,
	insert_at,
	update_at,
	id_alumno,
	id_materia
	FROM 2015_colegio_relaciones.alumno_materia;


/*----- Foreign Key -----*/
SELECT id,
	 FROM 2015_colegio_relaciones.alumno_materia;

/*----- Count -----*/
SELECT COUNT(*) AS value 
	FROM 2015_colegio_relaciones.alumno_materia;
	