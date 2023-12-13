
/*------------------------ INSERT --------------------------*/
INSERT INTO 2015_colegio_relaciones.matricula(
	id,
		insert_at
	,	update_at
	,	anio
	,	costo
	,	fecha
	,	pagado
	
) VALUES (
	0,
	CURRENT_TIMESTAMP,
	CURRENT_TIMESTAMP,
	0,
	0.0,
	'',
	0
);

/*------------------------ UPDATE --------------------------*/
UPDATE 2015_colegio_relaciones.matricula SET 
	
	insert_at=CURRENT_TIMESTAMP,
	update_at=CURRENT_TIMESTAMP,
	anio=0,
	costo=0.0,
	fecha='',
	pagado=0

WHERE id=0 
	  AND update_at='';

/*------------------------ DELETE --------------------------*/
DELETE FROM 2015_colegio_relaciones.matricula 
	   WHERE id = 0;

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


/*----- Foreign Key -----*/
SELECT id,
	 FROM 2015_colegio_relaciones.matricula;

/*----- Count -----*/
SELECT COUNT(*) AS value 
	FROM 2015_colegio_relaciones.matricula;
	