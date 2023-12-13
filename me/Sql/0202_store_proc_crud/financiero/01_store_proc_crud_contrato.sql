/*--------------------------- INSERT ---------------------*/
DELIMITER $$
		
DROP PROCEDURE IF EXISTS `bydan`.`SP_CONTRATO_INSERT` $$

CREATE PROCEDURE `bydan`.`SP_CONTRATO_INSERT`(
		
	IN inputParaminsert_at datetime	,
	IN inputParamupdate_at binary(8)	,
	IN inputParamanio int(4)	,
	IN inputParamvalor decimal(9,18)	,
	IN inputParamfecha datetime	,
	IN inputParamfirmado tinyint(4)	
, OUT intEstadoProceso int(10))

BEGIN

DECLARE inputParamCURRENT_TIMESTAMP timestamp;

SET intEstadoProceso= 0;

SET inputParamCURRENT_TIMESTAMP=CURRENT_TIMESTAMP;

INSERT INTO bydan.contrato SET 
	
	insert_at=inputParaminsert_at,
	update_at=inputParamupdate_at,
	anio=inputParamanio,
	valor=inputParamvalor,
	fecha=inputParamfecha,
	firmado=inputParamfirmado

/*SELECT intOidUltimo=LAST_INSERT_ID();*/
	
SET intEstadoProceso= 1;
	
END $$

DELIMITER ;

/*------------------------- UPDATE --------------------------*/
DELIMITER $$
		
DROP PROCEDURE IF EXISTS `bydan`.`SP_CONTRATO_UPDATE` $$

CREATE PROCEDURE `bydan`.`SP_CONTRATO_UPDATE`(
	  
	IN inputParaminsert_at datetime,  
	IN inputParamupdate_at binary(8),  
	IN inputParamanio int(4),  
	IN inputParamvalor decimal(9,18),  
	IN inputParamfecha datetime,  
	IN inputParamfirmado tinyint(4)  
,IN inputParamId bigint(19),IN inputParamVersionRow timestamp, OUT intEstadoProceso int(10))
BEGIN

DECLARE inputParamCURRENT_TIMESTAMP timestamp;

SET intEstadoProceso= 0;

SET inputParamCURRENT_TIMESTAMP = CURRENT_TIMESTAMP;

UPDATE bydan.contrato SET 
	
	insert_at=inputParaminsert_at,
	update_at=inputParamupdate_at,
	anio=inputParamanio,
	valor=inputParamvalor,
	fecha=inputParamfecha,
	firmado=inputParamfirmado
 where id=inputParamId AND versionRow=inputParamVersionRow;
	
SET intEstadoProceso= 1;
	
END $$

DELIMITER ;

/*------------------------- DELETE --------------------------*/

DELIMITER $$
		
DROP PROCEDURE IF EXISTS `bydan`.`SP_CONTRATO_DELETE` $$

CREATE PROCEDURE `bydan`.`SP_CONTRATO_DELETE`(IN inputParamId bigint(19) , OUT intEstadoProceso int(10))
BEGIN

SET intEstadoProceso= 0;
	
DELETE FROM bydan.contrato WHERE id=inputParamId
	
SET intEstadoProceso= 1;
	
END $$

DELIMITER ;

/*------------------------- SELECT --------------------------*/


DELIMITER $$
		
DROP PROCEDURE IF EXISTS `bydan`.`SP_CONTRATOSELECT` $$

CREATE PROCEDURE `bydan`.`SP_CONTRATO_SELECT`(IN strFinalQuerySelect varchar(500) , OUT intEstadoProceso int(10))
BEGIN

SET intEstadoProceso= 0;
	
SELECT 

	bydan.Financiero.contrato.id,
	bydan.contrato.insert_at,
	bydan.contrato.update_at,
	bydan.contrato.anio,
	bydan.contrato.valor,
	bydan.contrato.fecha,
	bydan.contrato.firmado

FROM bydan.contrato + strFinalQuerySelect ;
	
SET intEstadoProceso= 1;
	
END $$

DELIMITER ;