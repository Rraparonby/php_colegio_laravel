/*--------------------------- INSERT ---------------------*/
DELIMITER $$
		
DROP PROCEDURE IF EXISTS `bydan`.`SP_ALUMNO_INSERT` $$

CREATE PROCEDURE `bydan`.`SP_ALUMNO_INSERT`(
		
	IN inputParaminsert_at datetime	,
	IN inputParamupdate_at binary(8)	,
	IN inputParamnombre varchar(25)	,
	IN inputParamapellido varchar(25)	,
	IN inputParamfecha_nacimiento datetime	
, OUT intEstadoProceso int(10))

BEGIN

DECLARE inputParamCURRENT_TIMESTAMP timestamp;

SET intEstadoProceso= 0;

SET inputParamCURRENT_TIMESTAMP=CURRENT_TIMESTAMP;

INSERT INTO bydan.alumno SET 
	
	insert_at=inputParaminsert_at,
	update_at=inputParamupdate_at,
	nombre=inputParamnombre,
	apellido=inputParamapellido,
	fecha_nacimiento=inputParamfecha_nacimiento

/*SELECT intOidUltimo=LAST_INSERT_ID();*/
	
SET intEstadoProceso= 1;
	
END $$

DELIMITER ;

/*------------------------- UPDATE --------------------------*/
DELIMITER $$
		
DROP PROCEDURE IF EXISTS `bydan`.`SP_ALUMNO_UPDATE` $$

CREATE PROCEDURE `bydan`.`SP_ALUMNO_UPDATE`(
	  
	IN inputParaminsert_at datetime,  
	IN inputParamupdate_at binary(8),  
	IN inputParamnombre varchar(25),  
	IN inputParamapellido varchar(25),  
	IN inputParamfecha_nacimiento datetime  
,IN inputParamId bigint(19),IN inputParamVersionRow timestamp, OUT intEstadoProceso int(10))
BEGIN

DECLARE inputParamCURRENT_TIMESTAMP timestamp;

SET intEstadoProceso= 0;

SET inputParamCURRENT_TIMESTAMP = CURRENT_TIMESTAMP;

UPDATE bydan.alumno SET 
	
	insert_at=inputParaminsert_at,
	update_at=inputParamupdate_at,
	nombre=inputParamnombre,
	apellido=inputParamapellido,
	fecha_nacimiento=inputParamfecha_nacimiento
 where id=inputParamId AND versionRow=inputParamVersionRow;
	
SET intEstadoProceso= 1;
	
END $$

DELIMITER ;

/*------------------------- DELETE --------------------------*/

DELIMITER $$
		
DROP PROCEDURE IF EXISTS `bydan`.`SP_ALUMNO_DELETE` $$

CREATE PROCEDURE `bydan`.`SP_ALUMNO_DELETE`(IN inputParamId bigint(19) , OUT intEstadoProceso int(10))
BEGIN

SET intEstadoProceso= 0;
	
DELETE FROM bydan.alumno WHERE id=inputParamId
	
SET intEstadoProceso= 1;
	
END $$

DELIMITER ;

/*------------------------- SELECT --------------------------*/


DELIMITER $$
		
DROP PROCEDURE IF EXISTS `bydan`.`SP_ALUMNOSELECT` $$

CREATE PROCEDURE `bydan`.`SP_ALUMNO_SELECT`(IN strFinalQuerySelect varchar(500) , OUT intEstadoProceso int(10))
BEGIN

SET intEstadoProceso= 0;
	
SELECT 

	bydan.Estructura.alumno.id,
	bydan.alumno.insert_at,
	bydan.alumno.update_at,
	bydan.alumno.nombre,
	bydan.alumno.apellido,
	bydan.alumno.fecha_nacimiento

FROM bydan.alumno + strFinalQuerySelect ;
	
SET intEstadoProceso= 1;
	
END $$

DELIMITER ;