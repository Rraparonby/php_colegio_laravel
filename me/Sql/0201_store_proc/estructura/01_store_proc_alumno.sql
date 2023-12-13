

DELIMITER $$

DROP PROCEDURE IF EXISTS `Tame`.`SP_ALUMNO_INSERT` $$

CREATE PROCEDURE `Tame`.`SP_ALUMNO_INSERT`(IN inputParaminsert_at datetime,IN inputParamupdate_at binary(8),IN inputParamnombre varchar(25),IN inputParamapellido varchar(25),IN inputParamfecha_nacimiento datetime, OUT intEstadoProceso int(10))
BEGIN

   SET intEstadoProceso= 0;
 	
   SET inputParamCURRENT_TIMESTAMP=CURRENT_TIMESTAMP;

   INSERT INTO Tame.alumno SET insert_at=inputParaminsert_at,update_at=inputParamupdate_at,nombre=inputParamnombre,apellido=inputParamapellido,fecha_nacimiento=inputParamfecha_nacimiento;
	
   SET intEstadoProceso= 1;
    
END $$

DELIMITER ;


DELIMITER $$

DROP PROCEDURE IF EXISTS `Tame`.`SP_ALUMNO_UPDATE` $$

CREATE PROCEDURE `Tame`.`SP_ALUMNO_UPDATE`(IN inputParaminsert_at datetime,IN inputParamupdate_at binary(8),IN inputParamnombre varchar(25),IN inputParamapellido varchar(25),IN inputParamfecha_nacimiento datetime,IN inputParamId bigint(19),IN inputParamVersionRow timestamp, OUT intEstadoProceso int(10))
BEGIN

   SET intEstadoProceso= 0;
 	
   SET inputParamCURRENT_TIMESTAMP=CURRENT_TIMESTAMP;

   UPDATE Tame.alumno SET insert_at=inputParaminsert_at,update_at=inputParamupdate_at,nombre=inputParamnombre,apellido=inputParamapellido,fecha_nacimiento=inputParamfecha_nacimiento where id =inputParamId AND versionRow=inputParamVersionRow;
	
   SET intEstadoProceso= 1;
    
END $$

DELIMITER ;


DELIMITER $$

DROP PROCEDURE IF EXISTS `Tame`.`SP_ALUMNO_DELETE` $$

CREATE PROCEDURE `Tame`.`SP_ALUMNO_DELETE`(IN inputParamId bigint(19) , OUT intEstadoProceso int(10))
BEGIN

   SET intEstadoProceso= 0;
 	
   DELETE FROM Tame.alumno WHERE id =inputParamId;
	
   SET intEstadoProceso= 1;
    
END $$

DELIMITER ;

/*
DROP PROCEDURE IF EXISTS `Tame`.`SP_ALUMNO_SELECT` $$

CREATE PROCEDURE `Tame`.`SP_ALUMNO_SELECT`(IN strFinalQuerySelect varchar(500) , OUT intEstadoProceso int(10))
BEGIN

   SET intEstadoProceso= 0;
 	
   SELECT Tame.Estructura.alumno.id,Tame.alumno.insert_at,Tame.alumno.update_at,Tame.alumno.nombre,Tame.alumno.apellido,Tame.alumno.fecha_nacimiento FROM Tame.alumno + strFinalQuerySelect ;
	
   SET intEstadoProceso= 1;
    
END $$

DELIMITER ;
*/