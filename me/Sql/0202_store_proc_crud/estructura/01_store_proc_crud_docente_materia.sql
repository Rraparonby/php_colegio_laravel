/*--------------------------- INSERT ---------------------*/
DELIMITER $$
		
DROP PROCEDURE IF EXISTS `bydan`.`SP_DOCENTE_MATERIA_INSERT` $$

CREATE PROCEDURE `bydan`.`SP_DOCENTE_MATERIA_INSERT`(
		
	IN inputParaminsert_at datetime	,
	IN inputParamupdate_at binary(8)	,
	IN inputParamid_docente bigint(8)	,
	IN inputParamid_materia bigint(8)	
, OUT intEstadoProceso int(10))

BEGIN

DECLARE inputParamCURRENT_TIMESTAMP timestamp;

SET intEstadoProceso= 0;

SET inputParamCURRENT_TIMESTAMP=CURRENT_TIMESTAMP;

INSERT INTO bydan.docente_materia SET 
	
	insert_at=inputParaminsert_at,
	update_at=inputParamupdate_at,
	id_docente=inputParamid_docente,
	id_materia=inputParamid_materia

/*SELECT intOidUltimo=LAST_INSERT_ID();*/
	
SET intEstadoProceso= 1;
	
END $$

DELIMITER ;

/*------------------------- UPDATE --------------------------*/
DELIMITER $$
		
DROP PROCEDURE IF EXISTS `bydan`.`SP_DOCENTE_MATERIA_UPDATE` $$

CREATE PROCEDURE `bydan`.`SP_DOCENTE_MATERIA_UPDATE`(
	  
	IN inputParaminsert_at datetime,  
	IN inputParamupdate_at binary(8),  
	IN inputParamid_docente bigint(8),  
	IN inputParamid_materia bigint(8)  
,IN inputParamId bigint(19),IN inputParamVersionRow timestamp, OUT intEstadoProceso int(10))
BEGIN

DECLARE inputParamCURRENT_TIMESTAMP timestamp;

SET intEstadoProceso= 0;

SET inputParamCURRENT_TIMESTAMP = CURRENT_TIMESTAMP;

UPDATE bydan.docente_materia SET 
	
	insert_at=inputParaminsert_at,
	update_at=inputParamupdate_at,
	id_docente=inputParamid_docente,
	id_materia=inputParamid_materia
 where id=inputParamId AND versionRow=inputParamVersionRow;
	
SET intEstadoProceso= 1;
	
END $$

DELIMITER ;

/*------------------------- DELETE --------------------------*/

DELIMITER $$
		
DROP PROCEDURE IF EXISTS `bydan`.`SP_DOCENTE_MATERIA_DELETE` $$

CREATE PROCEDURE `bydan`.`SP_DOCENTE_MATERIA_DELETE`(IN inputParamId bigint(19) , OUT intEstadoProceso int(10))
BEGIN

SET intEstadoProceso= 0;
	
DELETE FROM bydan.docente_materia WHERE id=inputParamId
	
SET intEstadoProceso= 1;
	
END $$

DELIMITER ;

/*------------------------- SELECT --------------------------*/


DELIMITER $$
		
DROP PROCEDURE IF EXISTS `bydan`.`SP_DOCENTE_MATERIASELECT` $$

CREATE PROCEDURE `bydan`.`SP_DOCENTE_MATERIA_SELECT`(IN strFinalQuerySelect varchar(500) , OUT intEstadoProceso int(10))
BEGIN

SET intEstadoProceso= 0;
	
SELECT 

	bydan.Estructura.docente_materia.id,
	bydan.docente_materia.insert_at,
	bydan.docente_materia.update_at,
	bydan.docente_materia.id_docente,
	bydan.docente_materia.id_materia

FROM bydan.docente_materia + strFinalQuerySelect ;
	
SET intEstadoProceso= 1;
	
END $$

DELIMITER ;