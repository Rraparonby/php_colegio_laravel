

DELIMITER $$

DROP PROCEDURE IF EXISTS `Tame`.`SP_NOTA_INSERT` $$

CREATE PROCEDURE `Tame`.`SP_NOTA_INSERT`(IN inputParaminsert_at datetime,IN inputParamupdate_at binary(8),IN inputParamid_alumno bigint(8),IN inputParamid_materia bigint(8),IN inputParamid_docente bigint(8),IN inputParamnota_prueba decimal(9,18),IN inputParamnota_trabajo decimal(9,18),IN inputParamnota_examen decimal(9,18),IN inputParamnota_final decimal(9,18), OUT intEstadoProceso int(10))
BEGIN

   SET intEstadoProceso= 0;
 	
   SET inputParamCURRENT_TIMESTAMP=CURRENT_TIMESTAMP;

   INSERT INTO Tame.nota SET insert_at=inputParaminsert_at,update_at=inputParamupdate_at,id_alumno=inputParamid_alumno,id_materia=inputParamid_materia,id_docente=inputParamid_docente,nota_prueba=inputParamnota_prueba,nota_trabajo=inputParamnota_trabajo,nota_examen=inputParamnota_examen,nota_final=inputParamnota_final;
	
   SET intEstadoProceso= 1;
    
END $$

DELIMITER ;


DELIMITER $$

DROP PROCEDURE IF EXISTS `Tame`.`SP_NOTA_UPDATE` $$

CREATE PROCEDURE `Tame`.`SP_NOTA_UPDATE`(IN inputParaminsert_at datetime,IN inputParamupdate_at binary(8),IN inputParamid_alumno bigint(8),IN inputParamid_materia bigint(8),IN inputParamid_docente bigint(8),IN inputParamnota_prueba decimal(9,18),IN inputParamnota_trabajo decimal(9,18),IN inputParamnota_examen decimal(9,18),IN inputParamnota_final decimal(9,18),IN inputParamId bigint(19),IN inputParamVersionRow timestamp, OUT intEstadoProceso int(10))
BEGIN

   SET intEstadoProceso= 0;
 	
   SET inputParamCURRENT_TIMESTAMP=CURRENT_TIMESTAMP;

   UPDATE Tame.nota SET insert_at=inputParaminsert_at,update_at=inputParamupdate_at,id_alumno=inputParamid_alumno,id_materia=inputParamid_materia,id_docente=inputParamid_docente,nota_prueba=inputParamnota_prueba,nota_trabajo=inputParamnota_trabajo,nota_examen=inputParamnota_examen,nota_final=inputParamnota_final where id =inputParamId AND versionRow=inputParamVersionRow;
	
   SET intEstadoProceso= 1;
    
END $$

DELIMITER ;


DELIMITER $$

DROP PROCEDURE IF EXISTS `Tame`.`SP_NOTA_DELETE` $$

CREATE PROCEDURE `Tame`.`SP_NOTA_DELETE`(IN inputParamId bigint(19) , OUT intEstadoProceso int(10))
BEGIN

   SET intEstadoProceso= 0;
 	
   DELETE FROM Tame.nota WHERE id =inputParamId;
	
   SET intEstadoProceso= 1;
    
END $$

DELIMITER ;

/*
DROP PROCEDURE IF EXISTS `Tame`.`SP_NOTA_SELECT` $$

CREATE PROCEDURE `Tame`.`SP_NOTA_SELECT`(IN strFinalQuerySelect varchar(500) , OUT intEstadoProceso int(10))
BEGIN

   SET intEstadoProceso= 0;
 	
   SELECT Tame.Proceso.nota.id,Tame.nota.insert_at,Tame.nota.update_at,Tame.nota.id_alumno,Tame.nota.id_materia,Tame.nota.id_docente,Tame.nota.nota_prueba,Tame.nota.nota_trabajo,Tame.nota.nota_examen,Tame.nota.nota_final FROM Tame.nota + strFinalQuerySelect ;
	
   SET intEstadoProceso= 1;
    
END $$

DELIMITER ;
*/