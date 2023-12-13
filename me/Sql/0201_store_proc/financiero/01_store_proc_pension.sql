

DELIMITER $$

DROP PROCEDURE IF EXISTS `Tame`.`SP_PENSION_INSERT` $$

CREATE PROCEDURE `Tame`.`SP_PENSION_INSERT`(IN inputParaminsert_at datetime,IN inputParamupdate_at binary(8),IN inputParamid_alumno bigint(8),IN inputParamanio int(4),IN inputParammes int(2),IN inputParamvalor decimal(9,18),IN inputParamcobrado tinyint(4), OUT intEstadoProceso int(10))
BEGIN

   SET intEstadoProceso= 0;
 	
   SET inputParamCURRENT_TIMESTAMP=CURRENT_TIMESTAMP;

   INSERT INTO Tame.pension SET insert_at=inputParaminsert_at,update_at=inputParamupdate_at,id_alumno=inputParamid_alumno,anio=inputParamanio,mes=inputParammes,valor=inputParamvalor,cobrado=inputParamcobrado;
	
   SET intEstadoProceso= 1;
    
END $$

DELIMITER ;


DELIMITER $$

DROP PROCEDURE IF EXISTS `Tame`.`SP_PENSION_UPDATE` $$

CREATE PROCEDURE `Tame`.`SP_PENSION_UPDATE`(IN inputParaminsert_at datetime,IN inputParamupdate_at binary(8),IN inputParamid_alumno bigint(8),IN inputParamanio int(4),IN inputParammes int(2),IN inputParamvalor decimal(9,18),IN inputParamcobrado tinyint(4),IN inputParamId bigint(19),IN inputParamVersionRow timestamp, OUT intEstadoProceso int(10))
BEGIN

   SET intEstadoProceso= 0;
 	
   SET inputParamCURRENT_TIMESTAMP=CURRENT_TIMESTAMP;

   UPDATE Tame.pension SET insert_at=inputParaminsert_at,update_at=inputParamupdate_at,id_alumno=inputParamid_alumno,anio=inputParamanio,mes=inputParammes,valor=inputParamvalor,cobrado=inputParamcobrado where id =inputParamId AND versionRow=inputParamVersionRow;
	
   SET intEstadoProceso= 1;
    
END $$

DELIMITER ;


DELIMITER $$

DROP PROCEDURE IF EXISTS `Tame`.`SP_PENSION_DELETE` $$

CREATE PROCEDURE `Tame`.`SP_PENSION_DELETE`(IN inputParamId bigint(19) , OUT intEstadoProceso int(10))
BEGIN

   SET intEstadoProceso= 0;
 	
   DELETE FROM Tame.pension WHERE id =inputParamId;
	
   SET intEstadoProceso= 1;
    
END $$

DELIMITER ;

/*
DROP PROCEDURE IF EXISTS `Tame`.`SP_PENSION_SELECT` $$

CREATE PROCEDURE `Tame`.`SP_PENSION_SELECT`(IN strFinalQuerySelect varchar(500) , OUT intEstadoProceso int(10))
BEGIN

   SET intEstadoProceso= 0;
 	
   SELECT Tame.Financiero.pension.id,Tame.pension.insert_at,Tame.pension.update_at,Tame.pension.id_alumno,Tame.pension.anio,Tame.pension.mes,Tame.pension.valor,Tame.pension.cobrado FROM Tame.pension + strFinalQuerySelect ;
	
   SET intEstadoProceso= 1;
    
END $$

DELIMITER ;
*/