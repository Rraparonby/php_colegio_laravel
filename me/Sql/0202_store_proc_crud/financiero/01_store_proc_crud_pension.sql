/*--------------------------- INSERT ---------------------*/
DELIMITER $$
		
DROP PROCEDURE IF EXISTS `bydan`.`SP_PENSION_INSERT` $$

CREATE PROCEDURE `bydan`.`SP_PENSION_INSERT`(
		
	IN inputParaminsert_at datetime	,
	IN inputParamupdate_at binary(8)	,
	IN inputParamid_alumno bigint(8)	,
	IN inputParamanio int(4)	,
	IN inputParammes int(2)	,
	IN inputParamvalor decimal(9,18)	,
	IN inputParamcobrado tinyint(4)	
, OUT intEstadoProceso int(10))

BEGIN

DECLARE inputParamCURRENT_TIMESTAMP timestamp;

SET intEstadoProceso= 0;

SET inputParamCURRENT_TIMESTAMP=CURRENT_TIMESTAMP;

INSERT INTO bydan.pension SET 
	
	insert_at=inputParaminsert_at,
	update_at=inputParamupdate_at,
	id_alumno=inputParamid_alumno,
	anio=inputParamanio,
	mes=inputParammes,
	valor=inputParamvalor,
	cobrado=inputParamcobrado

/*SELECT intOidUltimo=LAST_INSERT_ID();*/
	
SET intEstadoProceso= 1;
	
END $$

DELIMITER ;

/*------------------------- UPDATE --------------------------*/
DELIMITER $$
		
DROP PROCEDURE IF EXISTS `bydan`.`SP_PENSION_UPDATE` $$

CREATE PROCEDURE `bydan`.`SP_PENSION_UPDATE`(
	  
	IN inputParaminsert_at datetime,  
	IN inputParamupdate_at binary(8),  
	IN inputParamid_alumno bigint(8),  
	IN inputParamanio int(4),  
	IN inputParammes int(2),  
	IN inputParamvalor decimal(9,18),  
	IN inputParamcobrado tinyint(4)  
,IN inputParamId bigint(19),IN inputParamVersionRow timestamp, OUT intEstadoProceso int(10))
BEGIN

DECLARE inputParamCURRENT_TIMESTAMP timestamp;

SET intEstadoProceso= 0;

SET inputParamCURRENT_TIMESTAMP = CURRENT_TIMESTAMP;

UPDATE bydan.pension SET 
	
	insert_at=inputParaminsert_at,
	update_at=inputParamupdate_at,
	id_alumno=inputParamid_alumno,
	anio=inputParamanio,
	mes=inputParammes,
	valor=inputParamvalor,
	cobrado=inputParamcobrado
 where id=inputParamId AND versionRow=inputParamVersionRow;
	
SET intEstadoProceso= 1;
	
END $$

DELIMITER ;

/*------------------------- DELETE --------------------------*/

DELIMITER $$
		
DROP PROCEDURE IF EXISTS `bydan`.`SP_PENSION_DELETE` $$

CREATE PROCEDURE `bydan`.`SP_PENSION_DELETE`(IN inputParamId bigint(19) , OUT intEstadoProceso int(10))
BEGIN

SET intEstadoProceso= 0;
	
DELETE FROM bydan.pension WHERE id=inputParamId
	
SET intEstadoProceso= 1;
	
END $$

DELIMITER ;

/*------------------------- SELECT --------------------------*/


DELIMITER $$
		
DROP PROCEDURE IF EXISTS `bydan`.`SP_PENSIONSELECT` $$

CREATE PROCEDURE `bydan`.`SP_PENSION_SELECT`(IN strFinalQuerySelect varchar(500) , OUT intEstadoProceso int(10))
BEGIN

SET intEstadoProceso= 0;
	
SELECT 

	bydan.Financiero.pension.id,
	bydan.pension.insert_at,
	bydan.pension.update_at,
	bydan.pension.id_alumno,
	bydan.pension.anio,
	bydan.pension.mes,
	bydan.pension.valor,
	bydan.pension.cobrado

FROM bydan.pension + strFinalQuerySelect ;
	
SET intEstadoProceso= 1;
	
END $$

DELIMITER ;