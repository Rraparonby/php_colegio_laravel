/*--------------------------- INSERT ---------------------*/
DELIMITER $$
		
DROP PROCEDURE IF EXISTS `bydan`.`SP_ALUMNO_MATERIA_INSERT` $$

CREATE PROCEDURE `bydan`.`SP_ALUMNO_MATERIA_INSERT`(
		
	IN inputParaminsert_at datetime	,
	IN inputParamupdate_at binary(8)	,
	IN inputParamid_alumno bigint(8)	,
	IN inputParamid_materia bigint(8)	
, OUT intEstadoProceso int(10))

BEGIN

DECLARE inputParamCURRENT_TIMESTAMP timestamp;

SET intEstadoProceso= 0;

SET inputParamCURRENT_TIMESTAMP=CURRENT_TIMESTAMP;

INSERT INTO bydan.alumno_materia SET 
	
	insert_at=inputParaminsert_at,
	update_at=inputParamupdate_at,
	id_alumno=inputParamid_alumno,
	id_materia=inputParamid_materia

/*SELECT intOidUltimo=LAST_INSERT_ID();*/
	
SET intEstadoProceso= 1;
	
END $$

DELIMITER ;

/*------------------------- UPDATE --------------------------*/
DELIMITER $$
		
DROP PROCEDURE IF EXISTS `bydan`.`SP_ALUMNO_MATERIA_UPDATE` $$

CREATE PROCEDURE `bydan`.`SP_ALUMNO_MATERIA_UPDATE`(
	  
	IN inputParaminsert_at datetime,  
	IN inputParamupdate_at binary(8),  
	IN inputParamid_alumno bigint(8),  
	IN inputParamid_materia bigint(8)  
,IN inputParamId bigint(19),IN inputParamVersionRow timestamp, OUT intEstadoProceso int(10))
BEGIN

DECLARE inputParamCURRENT_TIMESTAMP timestamp;

SET intEstadoProceso= 0;

SET inputParamCURRENT_TIMESTAMP = CURRENT_TIMESTAMP;

UPDATE bydan.alumno_materia SET 
	
	insert_at=inputParaminsert_at,
	update_at=inputParamupdate_at,
	id_alumno=inputParamid_alumno,
	id_materia=inputParamid_materia
 where id=inputParamId AND versionRow=inputParamVersionRow;
	
SET intEstadoProceso= 1;
	
END $$

DELIMITER ;

/*------------------------- DELETE --------------------------*/

DELIMITER $$
		
DROP PROCEDURE IF EXISTS `bydan`.`SP_ALUMNO_MATERIA_DELETE` $$

CREATE PROCEDURE `bydan`.`SP_ALUMNO_MATERIA_DELETE`(IN inputParamId bigint(19) , OUT intEstadoProceso int(10))
BEGIN

SET intEstadoProceso= 0;
	
DELETE FROM bydan.alumno_materia WHERE id=inputParamId
	
SET intEstadoProceso= 1;
	
END $$

DELIMITER ;

/*------------------------- SELECT --------------------------*/


DELIMITER $$
		
DROP PROCEDURE IF EXISTS `bydan`.`SP_ALUMNO_MATERIASELECT` $$

CREATE PROCEDURE `bydan`.`SP_ALUMNO_MATERIA_SELECT`(IN strFinalQuerySelect varchar(500) , OUT intEstadoProceso int(10))
BEGIN

SET intEstadoProceso= 0;
	
SELECT 

	bydan.Estructura.alumno_materia.id,
	bydan.alumno_materia.insert_at,
	bydan.alumno_materia.update_at,
	bydan.alumno_materia.id_alumno,
	bydan.alumno_materia.id_materia

FROM bydan.alumno_materia + strFinalQuerySelect ;
	
SET intEstadoProceso= 1;
	
END $$

DELIMITER ;