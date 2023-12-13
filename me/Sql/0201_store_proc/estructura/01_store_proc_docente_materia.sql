

DELIMITER $$

DROP PROCEDURE IF EXISTS `Tame`.`SP_DOCENTE_MATERIA_INSERT` $$

CREATE PROCEDURE `Tame`.`SP_DOCENTE_MATERIA_INSERT`(IN inputParaminsert_at datetime,IN inputParamupdate_at binary(8),IN inputParamid_docente bigint(8),IN inputParamid_materia bigint(8), OUT intEstadoProceso int(10))
BEGIN

   SET intEstadoProceso= 0;
 	
   SET inputParamCURRENT_TIMESTAMP=CURRENT_TIMESTAMP;

   INSERT INTO Tame.docente_materia SET insert_at=inputParaminsert_at,update_at=inputParamupdate_at,id_docente=inputParamid_docente,id_materia=inputParamid_materia;
	
   SET intEstadoProceso= 1;
    
END $$

DELIMITER ;


DELIMITER $$

DROP PROCEDURE IF EXISTS `Tame`.`SP_DOCENTE_MATERIA_UPDATE` $$

CREATE PROCEDURE `Tame`.`SP_DOCENTE_MATERIA_UPDATE`(IN inputParaminsert_at datetime,IN inputParamupdate_at binary(8),IN inputParamid_docente bigint(8),IN inputParamid_materia bigint(8),IN inputParamId bigint(19),IN inputParamVersionRow timestamp, OUT intEstadoProceso int(10))
BEGIN

   SET intEstadoProceso= 0;
 	
   SET inputParamCURRENT_TIMESTAMP=CURRENT_TIMESTAMP;

   UPDATE Tame.docente_materia SET insert_at=inputParaminsert_at,update_at=inputParamupdate_at,id_docente=inputParamid_docente,id_materia=inputParamid_materia where id =inputParamId AND versionRow=inputParamVersionRow;
	
   SET intEstadoProceso= 1;
    
END $$

DELIMITER ;


DELIMITER $$

DROP PROCEDURE IF EXISTS `Tame`.`SP_DOCENTE_MATERIA_DELETE` $$

CREATE PROCEDURE `Tame`.`SP_DOCENTE_MATERIA_DELETE`(IN inputParamId bigint(19) , OUT intEstadoProceso int(10))
BEGIN

   SET intEstadoProceso= 0;
 	
   DELETE FROM Tame.docente_materia WHERE id =inputParamId;
	
   SET intEstadoProceso= 1;
    
END $$

DELIMITER ;

/*
DROP PROCEDURE IF EXISTS `Tame`.`SP_DOCENTE_MATERIA_SELECT` $$

CREATE PROCEDURE `Tame`.`SP_DOCENTE_MATERIA_SELECT`(IN strFinalQuerySelect varchar(500) , OUT intEstadoProceso int(10))
BEGIN

   SET intEstadoProceso= 0;
 	
   SELECT Tame.Estructura.docente_materia.id,Tame.docente_materia.insert_at,Tame.docente_materia.update_at,Tame.docente_materia.id_docente,Tame.docente_materia.id_materia FROM Tame.docente_materia + strFinalQuerySelect ;
	
   SET intEstadoProceso= 1;
    
END $$

DELIMITER ;
*/