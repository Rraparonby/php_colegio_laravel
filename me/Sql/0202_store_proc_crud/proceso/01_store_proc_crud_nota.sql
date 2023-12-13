/*--------------------------- INSERT ---------------------*/
DELIMITER $$
		
DROP PROCEDURE IF EXISTS `bydan`.`SP_NOTA_INSERT` $$

CREATE PROCEDURE `bydan`.`SP_NOTA_INSERT`(
		
	IN inputParaminsert_at datetime	,
	IN inputParamupdate_at binary(8)	,
	IN inputParamid_alumno bigint(8)	,
	IN inputParamid_materia bigint(8)	,
	IN inputParamid_docente bigint(8)	,
	IN inputParamnota_prueba decimal(9,18)	,
	IN inputParamnota_trabajo decimal(9,18)	,
	IN inputParamnota_examen decimal(9,18)	,
	IN inputParamnota_final decimal(9,18)	
, OUT intEstadoProceso int(10))

BEGIN

DECLARE inputParamCURRENT_TIMESTAMP timestamp;

SET intEstadoProceso= 0;

SET inputParamCURRENT_TIMESTAMP=CURRENT_TIMESTAMP;

INSERT INTO bydan.nota SET 
	
	insert_at=inputParaminsert_at,
	update_at=inputParamupdate_at,
	id_alumno=inputParamid_alumno,
	id_materia=inputParamid_materia,
	id_docente=inputParamid_docente,
	nota_prueba=inputParamnota_prueba,
	nota_trabajo=inputParamnota_trabajo,
	nota_examen=inputParamnota_examen,
	nota_final=inputParamnota_final

/*SELECT intOidUltimo=LAST_INSERT_ID();*/
	
SET intEstadoProceso= 1;
	
END $$

DELIMITER ;

/*------------------------- UPDATE --------------------------*/
DELIMITER $$
		
DROP PROCEDURE IF EXISTS `bydan`.`SP_NOTA_UPDATE` $$

CREATE PROCEDURE `bydan`.`SP_NOTA_UPDATE`(
	  
	IN inputParaminsert_at datetime,  
	IN inputParamupdate_at binary(8),  
	IN inputParamid_alumno bigint(8),  
	IN inputParamid_materia bigint(8),  
	IN inputParamid_docente bigint(8),  
	IN inputParamnota_prueba decimal(9,18),  
	IN inputParamnota_trabajo decimal(9,18),  
	IN inputParamnota_examen decimal(9,18),  
	IN inputParamnota_final decimal(9,18)  
,IN inputParamId bigint(19),IN inputParamVersionRow timestamp, OUT intEstadoProceso int(10))
BEGIN

DECLARE inputParamCURRENT_TIMESTAMP timestamp;

SET intEstadoProceso= 0;

SET inputParamCURRENT_TIMESTAMP = CURRENT_TIMESTAMP;

UPDATE bydan.nota SET 
	
	insert_at=inputParaminsert_at,
	update_at=inputParamupdate_at,
	id_alumno=inputParamid_alumno,
	id_materia=inputParamid_materia,
	id_docente=inputParamid_docente,
	nota_prueba=inputParamnota_prueba,
	nota_trabajo=inputParamnota_trabajo,
	nota_examen=inputParamnota_examen,
	nota_final=inputParamnota_final
 where id=inputParamId AND versionRow=inputParamVersionRow;
	
SET intEstadoProceso= 1;
	
END $$

DELIMITER ;

/*------------------------- DELETE --------------------------*/

DELIMITER $$
		
DROP PROCEDURE IF EXISTS `bydan`.`SP_NOTA_DELETE` $$

CREATE PROCEDURE `bydan`.`SP_NOTA_DELETE`(IN inputParamId bigint(19) , OUT intEstadoProceso int(10))
BEGIN

SET intEstadoProceso= 0;
	
DELETE FROM bydan.nota WHERE id=inputParamId
	
SET intEstadoProceso= 1;
	
END $$

DELIMITER ;

/*------------------------- SELECT --------------------------*/


DELIMITER $$
		
DROP PROCEDURE IF EXISTS `bydan`.`SP_NOTASELECT` $$

CREATE PROCEDURE `bydan`.`SP_NOTA_SELECT`(IN strFinalQuerySelect varchar(500) , OUT intEstadoProceso int(10))
BEGIN

SET intEstadoProceso= 0;
	
SELECT 

	bydan.Proceso.nota.id,
	bydan.nota.insert_at,
	bydan.nota.update_at,
	bydan.nota.id_alumno,
	bydan.nota.id_materia,
	bydan.nota.id_docente,
	bydan.nota.nota_prueba,
	bydan.nota.nota_trabajo,
	bydan.nota.nota_examen,
	bydan.nota.nota_final

FROM bydan.nota + strFinalQuerySelect ;
	
SET intEstadoProceso= 1;
	
END $$

DELIMITER ;