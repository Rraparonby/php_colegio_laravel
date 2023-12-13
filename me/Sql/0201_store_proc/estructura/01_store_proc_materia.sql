

DELIMITER $$

DROP PROCEDURE IF EXISTS `Tame`.`SP_MATERIA_INSERT` $$

CREATE PROCEDURE `Tame`.`SP_MATERIA_INSERT`(IN inputParaminsert_at datetime,IN inputParamupdate_at binary(8),IN inputParamcodigo varchar(15),IN inputParamnombre varchar(25),IN inputParamactivo tinyint(4), OUT intEstadoProceso int(10))
BEGIN

   SET intEstadoProceso= 0;
 	
   SET inputParamCURRENT_TIMESTAMP=CURRENT_TIMESTAMP;

   INSERT INTO Tame.materia SET insert_at=inputParaminsert_at,update_at=inputParamupdate_at,codigo=inputParamcodigo,nombre=inputParamnombre,activo=inputParamactivo;
	
   SET intEstadoProceso= 1;
    
END $$

DELIMITER ;


DELIMITER $$

DROP PROCEDURE IF EXISTS `Tame`.`SP_MATERIA_UPDATE` $$

CREATE PROCEDURE `Tame`.`SP_MATERIA_UPDATE`(IN inputParaminsert_at datetime,IN inputParamupdate_at binary(8),IN inputParamcodigo varchar(15),IN inputParamnombre varchar(25),IN inputParamactivo tinyint(4),IN inputParamId bigint(19),IN inputParamVersionRow timestamp, OUT intEstadoProceso int(10))
BEGIN

   SET intEstadoProceso= 0;
 	
   SET inputParamCURRENT_TIMESTAMP=CURRENT_TIMESTAMP;

   UPDATE Tame.materia SET insert_at=inputParaminsert_at,update_at=inputParamupdate_at,codigo=inputParamcodigo,nombre=inputParamnombre,activo=inputParamactivo where id =inputParamId AND versionRow=inputParamVersionRow;
	
   SET intEstadoProceso= 1;
    
END $$

DELIMITER ;


DELIMITER $$

DROP PROCEDURE IF EXISTS `Tame`.`SP_MATERIA_DELETE` $$

CREATE PROCEDURE `Tame`.`SP_MATERIA_DELETE`(IN inputParamId bigint(19) , OUT intEstadoProceso int(10))
BEGIN

   SET intEstadoProceso= 0;
 	
   DELETE FROM Tame.materia WHERE id =inputParamId;
	
   SET intEstadoProceso= 1;
    
END $$

DELIMITER ;

/*
DROP PROCEDURE IF EXISTS `Tame`.`SP_MATERIA_SELECT` $$

CREATE PROCEDURE `Tame`.`SP_MATERIA_SELECT`(IN strFinalQuerySelect varchar(500) , OUT intEstadoProceso int(10))
BEGIN

   SET intEstadoProceso= 0;
 	
   SELECT Tame.Estructura.materia.id,Tame.materia.insert_at,Tame.materia.update_at,Tame.materia.codigo,Tame.materia.nombre,Tame.materia.activo FROM Tame.materia + strFinalQuerySelect ;
	
   SET intEstadoProceso= 1;
    
END $$

DELIMITER ;
*/