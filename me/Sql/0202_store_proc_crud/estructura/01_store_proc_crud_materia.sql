/*--------------------------- INSERT ---------------------*/
DELIMITER $$
		
DROP PROCEDURE IF EXISTS `bydan`.`SP_MATERIA_INSERT` $$

CREATE PROCEDURE `bydan`.`SP_MATERIA_INSERT`(
		
	IN inputParaminsert_at datetime	,
	IN inputParamupdate_at binary(8)	,
	IN inputParamcodigo varchar(15)	,
	IN inputParamnombre varchar(25)	,
	IN inputParamactivo tinyint(4)	
, OUT intEstadoProceso int(10))

BEGIN

DECLARE inputParamCURRENT_TIMESTAMP timestamp;

SET intEstadoProceso= 0;

SET inputParamCURRENT_TIMESTAMP=CURRENT_TIMESTAMP;

INSERT INTO bydan.materia SET 
	
	insert_at=inputParaminsert_at,
	update_at=inputParamupdate_at,
	codigo=inputParamcodigo,
	nombre=inputParamnombre,
	activo=inputParamactivo

/*SELECT intOidUltimo=LAST_INSERT_ID();*/
	
SET intEstadoProceso= 1;
	
END $$

DELIMITER ;

/*------------------------- UPDATE --------------------------*/
DELIMITER $$
		
DROP PROCEDURE IF EXISTS `bydan`.`SP_MATERIA_UPDATE` $$

CREATE PROCEDURE `bydan`.`SP_MATERIA_UPDATE`(
	  
	IN inputParaminsert_at datetime,  
	IN inputParamupdate_at binary(8),  
	IN inputParamcodigo varchar(15),  
	IN inputParamnombre varchar(25),  
	IN inputParamactivo tinyint(4)  
,IN inputParamId bigint(19),IN inputParamVersionRow timestamp, OUT intEstadoProceso int(10))
BEGIN

DECLARE inputParamCURRENT_TIMESTAMP timestamp;

SET intEstadoProceso= 0;

SET inputParamCURRENT_TIMESTAMP = CURRENT_TIMESTAMP;

UPDATE bydan.materia SET 
	
	insert_at=inputParaminsert_at,
	update_at=inputParamupdate_at,
	codigo=inputParamcodigo,
	nombre=inputParamnombre,
	activo=inputParamactivo
 where id=inputParamId AND versionRow=inputParamVersionRow;
	
SET intEstadoProceso= 1;
	
END $$

DELIMITER ;

/*------------------------- DELETE --------------------------*/

DELIMITER $$
		
DROP PROCEDURE IF EXISTS `bydan`.`SP_MATERIA_DELETE` $$

CREATE PROCEDURE `bydan`.`SP_MATERIA_DELETE`(IN inputParamId bigint(19) , OUT intEstadoProceso int(10))
BEGIN

SET intEstadoProceso= 0;
	
DELETE FROM bydan.materia WHERE id=inputParamId
	
SET intEstadoProceso= 1;
	
END $$

DELIMITER ;

/*------------------------- SELECT --------------------------*/


DELIMITER $$
		
DROP PROCEDURE IF EXISTS `bydan`.`SP_MATERIASELECT` $$

CREATE PROCEDURE `bydan`.`SP_MATERIA_SELECT`(IN strFinalQuerySelect varchar(500) , OUT intEstadoProceso int(10))
BEGIN

SET intEstadoProceso= 0;
	
SELECT 

	bydan.Estructura.materia.id,
	bydan.materia.insert_at,
	bydan.materia.update_at,
	bydan.materia.codigo,
	bydan.materia.nombre,
	bydan.materia.activo

FROM bydan.materia + strFinalQuerySelect ;
	
SET intEstadoProceso= 1;
	
END $$

DELIMITER ;