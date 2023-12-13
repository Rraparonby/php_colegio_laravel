
/*------------------------ INSERT --------------------------*/
INSERT INTO 2015_colegio_relaciones.pension(
	
		insert_at
	,	update_at
	,	id_alumno
	,	anio
	,	mes
	,	valor
	,	cobrado
	
) VALUES (
	
	CURRENT_TIMESTAMP,
	CURRENT_TIMESTAMP,
	0,
	0,
	0,
	0.0,
	0
);

/*------------------------ UPDATE --------------------------*/
UPDATE 2015_colegio_relaciones.pension SET 
	
	insert_at=CURRENT_TIMESTAMP,
	update_at=CURRENT_TIMESTAMP,
	id_alumno=0,
	anio=0,
	mes=0,
	valor=0.0,
	cobrado=0

WHERE id=0 
	  AND update_at='';

/*------------------------ DELETE --------------------------*/
DELETE FROM 2015_colegio_relaciones.pension 
	   WHERE id = 0;

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


/*----- Foreign Key -----*/
SELECT id,
	 FROM 2015_colegio_relaciones.pension;

/*----- Count -----*/
SELECT COUNT(*) AS value 
	FROM 2015_colegio_relaciones.pension;
	