/*--------------------------- INSERT ---------------------*/
DELIMITER $$
		
DROP PROCEDURE IF EXISTS `bydan`.`SP_DOCENTE_INSERT` $$

CREATE PROCEDURE `bydan`.`SP_DOCENTE_INSERT`(
		
	IN inputParaminsert_at datetime	,
	IN inputParamupdate_at binary(8)	,
	IN inputParamnombre varchar(25)	,
	IN inputParamapellido varchar(25)	,
	IN inputParamfecha_nacimiento datetime	,
	IN inputParamanios_experiencia int(4)	,
	IN inputParamnota_evaluacion decimal(9,18)	
, OUT intEstadoProceso int(10))

BEGIN

DECLARE inputParamCURRENT_TIMESTAMP timestamp;

SET intEstadoProceso= 0;

SET inputParamCURRENT_TIMESTAMP=CURRENT_TIMESTAMP;

INSERT INTO bydan.docente SET 
	
	insert_at=inputParaminsert_at,
	update_at=inputParamupdate_at,
	nombre=inputParamnombre,
	apellido=inputParamapellido,
	fecha_nacimiento=inputParamfecha_nacimiento,
	anios_experiencia=inputParamanios_experiencia,
	nota_evaluacion=inputParamnota_evaluacion

/*SELECT intOidUltimo=LAST_INSERT_ID();*/
	
SET intEstadoProceso= 1;
	
END $$

DELIMITER ;

/*------------------------- UPDATE --------------------------*/
DELIMITER $$
		
DROP PROCEDURE IF EXISTS `bydan`.`SP_DOCENTE_UPDATE` $$

CREATE PROCEDURE `bydan`.`SP_DOCENTE_UPDATE`(
	  
	IN inputParaminsert_at datetime,  
	IN inputParamupdate_at binary(8),  
	IN inputParamnombre varchar(25),  
	IN inputParamapellido varchar(25),  
	IN inputParamfecha_nacimiento datetime,  
	IN inputParamanios_experiencia int(4),  
	IN inputParamnota_evaluacion decimal(9,18)  
,IN inputParamId bigint(19),IN inputParamVersionRow timestamp, OUT intEstadoProceso int(10))
BEGIN

DECLARE inputParamCURRENT_TIMESTAMP timestamp;

SET intEstadoProceso= 0;

SET inputParamCURRENT_TIMESTAMP = CURRENT_TIMESTAMP;

UPDATE bydan.docente SET 
	
	insert_at=inputParaminsert_at,
	update_at=inputParamupdate_at,
	nombre=inputParamnombre,
	apellido=inputParamapellido,
	fecha_nacimiento=inputParamfecha_nacimiento,
	anios_experiencia=inputParamanios_experiencia,
	nota_evaluacion=inputParamnota_evaluacion
 where id=inputParamId AND versionRow=inputParamVersionRow;
	
SET intEstadoProceso= 1;
	
END $$

DELIMITER ;

/*------------------------- DELETE --------------------------*/

DELIMITER $$
		
DROP PROCEDURE IF EXISTS `bydan`.`SP_DOCENTE_DELETE` $$

CREATE PROCEDURE `bydan`.`SP_DOCENTE_DELETE`(IN inputParamId bigint(19) , OUT intEstadoProceso int(10))
BEGIN

SET intEstadoProceso= 0;
	
DELETE FROM bydan.docente WHERE id=inputParamId
	
SET intEstadoProceso= 1;
	
END $$

DELIMITER ;

/*------------------------- SELECT --------------------------*/


DELIMITER $$
		
DROP PROCEDURE IF EXISTS `bydan`.`SP_DOCENTESELECT` $$

CREATE PROCEDURE `bydan`.`SP_DOCENTE_SELECT`(IN strFinalQuerySelect varchar(500) , OUT intEstadoProceso int(10))
BEGIN

SET intEstadoProceso= 0;
	
SELECT 

	bydan.Estructura.docente.id,
	bydan.docente.insert_at,
	bydan.docente.update_at,
	bydan.docente.nombre,
	bydan.docente.apellido,
	bydan.docente.fecha_nacimiento,
	bydan.docente.anios_experiencia,
	bydan.docente.nota_evaluacion

FROM bydan.docente + strFinalQuerySelect ;
	
SET intEstadoProceso= 1;
	
END $$

DELIMITER ;