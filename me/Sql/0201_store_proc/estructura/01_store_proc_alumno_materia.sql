

DELIMITER $$

DROP PROCEDURE IF EXISTS `Tame`.`SP_ALUMNO_MATERIA_INSERT` $$

CREATE PROCEDURE `Tame`.`SP_ALUMNO_MATERIA_INSERT`(IN inputParaminsert_at datetime,IN inputParamupdate_at binary(8),IN inputParamid_alumno bigint(8),IN inputParamid_materia bigint(8), OUT intEstadoProceso int(10))
BEGIN

   SET intEstadoProceso= 0;
 	
   SET inputParamCURRENT_TIMESTAMP=CURRENT_TIMESTAMP;

   INSERT INTO Tame.alumno_materia SET insert_at=inputParaminsert_at,update_at=inputParamupdate_at,id_alumno=inputParamid_alumno,id_materia=inputParamid_materia;
	
   SET intEstadoProceso= 1;
    
END $$

DELIMITER ;


DELIMITER $$

DROP PROCEDURE IF EXISTS `Tame`.`SP_ALUMNO_MATERIA_UPDATE` $$

CREATE PROCEDURE `Tame`.`SP_ALUMNO_MATERIA_UPDATE`(IN inputParaminsert_at datetime,IN inputParamupdate_at binary(8),IN inputParamid_alumno bigint(8),IN inputParamid_materia bigint(8),IN inputParamId bigint(19),IN inputParamVersionRow timestamp, OUT intEstadoProceso int(10))
BEGIN

   SET intEstadoProceso= 0;
 	
   SET inputParamCURRENT_TIMESTAMP=CURRENT_TIMESTAMP;

   UPDATE Tame.alumno_materia SET insert_at=inputParaminsert_at,update_at=inputParamupdate_at,id_alumno=inputParamid_alumno,id_materia=inputParamid_materia where id =inputParamId AND versionRow=inputParamVersionRow;
	
   SET intEstadoProceso= 1;
    
END $$

DELIMITER ;


DELIMITER $$

DROP PROCEDURE IF EXISTS `Tame`.`SP_ALUMNO_MATERIA_DELETE` $$

CREATE PROCEDURE `Tame`.`SP_ALUMNO_MATERIA_DELETE`(IN inputParamId bigint(19) , OUT intEstadoProceso int(10))
BEGIN

   SET intEstadoProceso= 0;
 	
   DELETE FROM Tame.alumno_materia WHERE id =inputParamId;
	
   SET intEstadoProceso= 1;
    
END $$

DELIMITER ;

/*
DROP PROCEDURE IF EXISTS `Tame`.`SP_ALUMNO_MATERIA_SELECT` $$

CREATE PROCEDURE `Tame`.`SP_ALUMNO_MATERIA_SELECT`(IN strFinalQuerySelect varchar(500) , OUT intEstadoProceso int(10))
BEGIN

   SET intEstadoProceso= 0;
 	
   SELECT Tame.Estructura.alumno_materia.id,Tame.alumno_materia.insert_at,Tame.alumno_materia.update_at,Tame.alumno_materia.id_alumno,Tame.alumno_materia.id_materia FROM Tame.alumno_materia + strFinalQuerySelect ;
	
   SET intEstadoProceso= 1;
    
END $$

DELIMITER ;
*/