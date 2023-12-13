
/*------------------------ INSERT --------------------------*/
INSERT INTO 2015_colegio_relaciones.docente(
	
		insert_at
	,	update_at
	,	nombre
	,	apellido
	,	fecha_nacimiento
	,	anios_experiencia
	,	nota_evaluacion
	
) VALUES (
	
	CURRENT_TIMESTAMP,
	CURRENT_TIMESTAMP,
	'',
	'',
	'',
	0,
	0.0
);

/*------------------------ UPDATE --------------------------*/
UPDATE 2015_colegio_relaciones.docente SET 
	
	insert_at=CURRENT_TIMESTAMP,
	update_at=CURRENT_TIMESTAMP,
	nombre='',
	apellido='',
	fecha_nacimiento='',
	anios_experiencia=0,
	nota_evaluacion=0.0

WHERE id=0 
	  AND update_at='';

/*------------------------ DELETE --------------------------*/
DELETE FROM 2015_colegio_relaciones.docente 
	   WHERE id = 0;

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

/*----- Count -----*/
SELECT COUNT(*) AS value 
	FROM 2015_colegio_relaciones.docente;
	