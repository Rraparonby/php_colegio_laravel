
/*------------------------ INSERT --------------------------*/
INSERT INTO 2015_colegio_relaciones.alumno(
	
		insert_at
	,	update_at
	,	nombre
	,	apellido
	,	fecha_nacimiento
	
) VALUES (
	
	CURRENT_TIMESTAMP,
	CURRENT_TIMESTAMP,
	'',
	'',
	''
);

/*------------------------ UPDATE --------------------------*/
UPDATE 2015_colegio_relaciones.alumno SET 
	
	insert_at=CURRENT_TIMESTAMP,
	update_at=CURRENT_TIMESTAMP,
	nombre='',
	apellido='',
	fecha_nacimiento=''

WHERE id=0 
	  AND update_at='';

/*------------------------ DELETE --------------------------*/
DELETE FROM 2015_colegio_relaciones.alumno 
	   WHERE id = 0;

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

/*----- Count -----*/
SELECT COUNT(*) AS value 
	FROM 2015_colegio_relaciones.alumno;
	