
/*------------------------ INSERT --------------------------*/
INSERT INTO 2015_colegio_relaciones.contrato(
	id,
		insert_at
	,	update_at
	,	anio
	,	valor
	,	fecha
	,	firmado
	
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
UPDATE 2015_colegio_relaciones.contrato SET 
	
	insert_at=CURRENT_TIMESTAMP,
	update_at=CURRENT_TIMESTAMP,
	anio=0,
	valor=0.0,
	fecha='',
	firmado=0

WHERE id=0 
	  AND update_at='';

/*------------------------ DELETE --------------------------*/
DELETE FROM 2015_colegio_relaciones.contrato 
	   WHERE id = 0;

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


/*----- Foreign Key -----*/
SELECT id,
	 FROM 2015_colegio_relaciones.contrato;

/*----- Count -----*/
SELECT COUNT(*) AS value 
	FROM 2015_colegio_relaciones.contrato;
	