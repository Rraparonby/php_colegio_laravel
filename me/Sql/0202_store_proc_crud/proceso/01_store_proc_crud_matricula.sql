/*--------------------------- INSERT ---------------------*/
DELIMITER $$
		
DROP PROCEDURE IF EXISTS `bydan`.`SP_MATRICULA_INSERT` $$

CREATE PROCEDURE `bydan`.`SP_MATRICULA_INSERT`(
		
	IN inputParaminsert_at datetime	,
	IN inputParamupdate_at binary(8)	,
	IN inputParamanio int(4)	,
	IN inputParamcosto decimal(9,18)	,
	IN inputParamfecha datetime	,
	IN inputParampagado tinyint(4)	
, OUT intEstadoProceso int(10))

BEGIN

DECLARE inputParamCURRENT_TIMESTAMP timestamp;

SET intEstadoProceso= 0;

SET inputParamCURRENT_TIMESTAMP=CURRENT_TIMESTAMP;

INSERT INTO bydan.matricula SET 
	
	insert_at=inputParaminsert_at,
	update_at=inputParamupdate_at,
	anio=inputParamanio,
	costo=inputParamcosto,
	fecha=inputParamfecha,
	pagado=inputParampagado

/*SELECT intOidUltimo=LAST_INSERT_ID();*/
	
SET intEstadoProceso= 1;
	
END $$

DELIMITER ;

/*------------------------- UPDATE --------------------------*/
DELIMITER $$
		
DROP PROCEDURE IF EXISTS `bydan`.`SP_MATRICULA_UPDATE` $$

CREATE PROCEDURE `bydan`.`SP_MATRICULA_UPDATE`(
	  
	IN inputParaminsert_at datetime,  
	IN inputParamupdate_at binary(8),  
	IN inputParamanio int(4),  
	IN inputParamcosto decimal(9,18),  
	IN inputParamfecha datetime,  
	IN inputParampagado tinyint(4)  
,IN inputParamId bigint(19),IN inputParamVersionRow timestamp, OUT intEstadoProceso int(10))
BEGIN

DECLARE inputParamCURRENT_TIMESTAMP timestamp;

SET intEstadoProceso= 0;

SET inputParamCURRENT_TIMESTAMP = CURRENT_TIMESTAMP;

UPDATE bydan.matricula SET 
	
	insert_at=inputParaminsert_at,
	update_at=inputParamupdate_at,
	anio=inputParamanio,
	costo=inputParamcosto,
	fecha=inputParamfecha,
	pagado=inputParampagado
 where id=inputParamId AND versionRow=inputParamVersionRow;
	
SET intEstadoProceso= 1;
	
END $$

DELIMITER ;

/*------------------------- DELETE --------------------------*/

DELIMITER $$
		
DROP PROCEDURE IF EXISTS `bydan`.`SP_MATRICULA_DELETE` $$

CREATE PROCEDURE `bydan`.`SP_MATRICULA_DELETE`(IN inputParamId bigint(19) , OUT intEstadoProceso int(10))
BEGIN

SET intEstadoProceso= 0;
	
DELETE FROM bydan.matricula WHERE id=inputParamId
	
SET intEstadoProceso= 1;
	
END $$

DELIMITER ;

/*------------------------- SELECT --------------------------*/


DELIMITER $$
		
DROP PROCEDURE IF EXISTS `bydan`.`SP_MATRICULASELECT` $$

CREATE PROCEDURE `bydan`.`SP_MATRICULA_SELECT`(IN strFinalQuerySelect varchar(500) , OUT intEstadoProceso int(10))
BEGIN

SET intEstadoProceso= 0;
	
SELECT 

	bydan.Proceso.matricula.id,
	bydan.matricula.insert_at,
	bydan.matricula.update_at,
	bydan.matricula.anio,
	bydan.matricula.costo,
	bydan.matricula.fecha,
	bydan.matricula.pagado

FROM bydan.matricula + strFinalQuerySelect ;
	
SET intEstadoProceso= 1;
	
END $$

DELIMITER ;