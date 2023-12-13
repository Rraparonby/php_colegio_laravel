
/*------------------------ INSERT --------------------------*/
INSERT INTO 2015_colegio_relaciones.materia(
	
		insert_at
	,	update_at
	,	codigo
	,	nombre
	,	activo
	
) VALUES (
	
	CURRENT_TIMESTAMP,
	CURRENT_TIMESTAMP,
	'',
	'',
	0
);

/*------------------------ UPDATE --------------------------*/
UPDATE 2015_colegio_relaciones.materia SET 
	
	insert_at=CURRENT_TIMESTAMP,
	update_at=CURRENT_TIMESTAMP,
	codigo='',
	nombre='',
	activo=0

WHERE id=0 
	  AND update_at='';

/*------------------------ DELETE --------------------------*/
DELETE FROM 2015_colegio_relaciones.materia 
	   WHERE id = 0;

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

/*----- Count -----*/
SELECT COUNT(*) AS value 
	FROM 2015_colegio_relaciones.materia;
	