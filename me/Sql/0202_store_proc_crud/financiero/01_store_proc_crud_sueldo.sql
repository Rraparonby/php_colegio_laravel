/*--------------------------- INSERT ---------------------*/
DELIMITER $$
		
DROP PROCEDURE IF EXISTS `bydan`.`SP_SUELDO_INSERT` $$

CREATE PROCEDURE `bydan`.`SP_SUELDO_INSERT`(
		
	IN inputParaminsert_at datetime	,
	IN inputParamupdate_at binary(8)	,
	IN inputParamid_docente bigint(8)	,
	IN inputParamanio int(4)	,
	IN inputParammes int(2)	,
	IN inputParamvalor decimal(9,18)	,
	IN inputParamcobrado tinyint(4)	
, OUT intEstadoProceso int(10))

BEGIN

DECLARE inputParamCURRENT_TIMESTAMP timestamp;

SET intEstadoProceso= 0;

SET inputParamCURRENT_TIMESTAMP=CURRENT_TIMESTAMP;

INSERT INTO bydan.sueldo SET 
	
	insert_at=inputParaminsert_at,
	update_at=inputParamupdate_at,
	id_docente=inputParamid_docente,
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
		
DROP PROCEDURE IF EXISTS `bydan`.`SP_SUELDO_UPDATE` $$

CREATE PROCEDURE `bydan`.`SP_SUELDO_UPDATE`(
	  
	IN inputParaminsert_at datetime,  
	IN inputParamupdate_at binary(8),  
	IN inputParamid_docente bigint(8),  
	IN inputParamanio int(4),  
	IN inputParammes int(2),  
	IN inputParamvalor decimal(9,18),  
	IN inputParamcobrado tinyint(4)  
,IN inputParamId bigint(19),IN inputParamVersionRow timestamp, OUT intEstadoProceso int(10))
BEGIN

DECLARE inputParamCURRENT_TIMESTAMP timestamp;

SET intEstadoProceso= 0;

SET inputParamCURRENT_TIMESTAMP = CURRENT_TIMESTAMP;

UPDATE bydan.sueldo SET 
	
	insert_at=inputParaminsert_at,
	update_at=inputParamupdate_at,
	id_docente=inputParamid_docente,
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
		
DROP PROCEDURE IF EXISTS `bydan`.`SP_SUELDO_DELETE` $$

CREATE PROCEDURE `bydan`.`SP_SUELDO_DELETE`(IN inputParamId bigint(19) , OUT intEstadoProceso int(10))
BEGIN

SET intEstadoProceso= 0;
	
DELETE FROM bydan.sueldo WHERE id=inputParamId
	
SET intEstadoProceso= 1;
	
END $$

DELIMITER ;

/*------------------------- SELECT --------------------------*/


DELIMITER $$
		
DROP PROCEDURE IF EXISTS `bydan`.`SP_SUELDOSELECT` $$

CREATE PROCEDURE `bydan`.`SP_SUELDO_SELECT`(IN strFinalQuerySelect varchar(500) , OUT intEstadoProceso int(10))
BEGIN

SET intEstadoProceso= 0;
	
SELECT 

	bydan.Financiero.sueldo.id,
	bydan.sueldo.insert_at,
	bydan.sueldo.update_at,
	bydan.sueldo.id_docente,
	bydan.sueldo.anio,
	bydan.sueldo.mes,
	bydan.sueldo.valor,
	bydan.sueldo.cobrado

FROM bydan.sueldo + strFinalQuerySelect ;
	
SET intEstadoProceso= 1;
	
END $$

DELIMITER ;