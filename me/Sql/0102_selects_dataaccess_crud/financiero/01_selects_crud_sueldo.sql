
/*------------------------ INSERT --------------------------*/
INSERT INTO 2015_colegio_relaciones.sueldo(
	
		insert_at
	,	update_at
	,	id_docente
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
UPDATE 2015_colegio_relaciones.sueldo SET 
	
	insert_at=CURRENT_TIMESTAMP,
	update_at=CURRENT_TIMESTAMP,
	id_docente=0,
	anio=0,
	mes=0,
	valor=0.0,
	cobrado=0

WHERE id=0 
	  AND update_at='';

/*------------------------ DELETE --------------------------*/
DELETE FROM 2015_colegio_relaciones.sueldo 
	   WHERE id = 0;

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


/*----- Foreign Key -----*/
SELECT id,
	 FROM 2015_colegio_relaciones.sueldo;

/*----- Count -----*/
SELECT COUNT(*) AS value 
	FROM 2015_colegio_relaciones.sueldo;
	