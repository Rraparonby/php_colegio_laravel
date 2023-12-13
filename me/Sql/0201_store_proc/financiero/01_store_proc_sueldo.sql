

DELIMITER $$

DROP PROCEDURE IF EXISTS `Tame`.`SP_SUELDO_INSERT` $$

CREATE PROCEDURE `Tame`.`SP_SUELDO_INSERT`(IN inputParaminsert_at datetime,IN inputParamupdate_at binary(8),IN inputParamid_docente bigint(8),IN inputParamanio int(4),IN inputParammes int(2),IN inputParamvalor decimal(9,18),IN inputParamcobrado tinyint(4), OUT intEstadoProceso int(10))
BEGIN

   SET intEstadoProceso= 0;
 	
   SET inputParamCURRENT_TIMESTAMP=CURRENT_TIMESTAMP;

   INSERT INTO Tame.sueldo SET insert_at=inputParaminsert_at,update_at=inputParamupdate_at,id_docente=inputParamid_docente,anio=inputParamanio,mes=inputParammes,valor=inputParamvalor,cobrado=inputParamcobrado;
	
   SET intEstadoProceso= 1;
    
END $$

DELIMITER ;


DELIMITER $$

DROP PROCEDURE IF EXISTS `Tame`.`SP_SUELDO_UPDATE` $$

CREATE PROCEDURE `Tame`.`SP_SUELDO_UPDATE`(IN inputParaminsert_at datetime,IN inputParamupdate_at binary(8),IN inputParamid_docente bigint(8),IN inputParamanio int(4),IN inputParammes int(2),IN inputParamvalor decimal(9,18),IN inputParamcobrado tinyint(4),IN inputParamId bigint(19),IN inputParamVersionRow timestamp, OUT intEstadoProceso int(10))
BEGIN

   SET intEstadoProceso= 0;
 	
   SET inputParamCURRENT_TIMESTAMP=CURRENT_TIMESTAMP;

   UPDATE Tame.sueldo SET insert_at=inputParaminsert_at,update_at=inputParamupdate_at,id_docente=inputParamid_docente,anio=inputParamanio,mes=inputParammes,valor=inputParamvalor,cobrado=inputParamcobrado where id =inputParamId AND versionRow=inputParamVersionRow;
	
   SET intEstadoProceso= 1;
    
END $$

DELIMITER ;


DELIMITER $$

DROP PROCEDURE IF EXISTS `Tame`.`SP_SUELDO_DELETE` $$

CREATE PROCEDURE `Tame`.`SP_SUELDO_DELETE`(IN inputParamId bigint(19) , OUT intEstadoProceso int(10))
BEGIN

   SET intEstadoProceso= 0;
 	
   DELETE FROM Tame.sueldo WHERE id =inputParamId;
	
   SET intEstadoProceso= 1;
    
END $$

DELIMITER ;

/*
DROP PROCEDURE IF EXISTS `Tame`.`SP_SUELDO_SELECT` $$

CREATE PROCEDURE `Tame`.`SP_SUELDO_SELECT`(IN strFinalQuerySelect varchar(500) , OUT intEstadoProceso int(10))
BEGIN

   SET intEstadoProceso= 0;
 	
   SELECT Tame.Financiero.sueldo.id,Tame.sueldo.insert_at,Tame.sueldo.update_at,Tame.sueldo.id_docente,Tame.sueldo.anio,Tame.sueldo.mes,Tame.sueldo.valor,Tame.sueldo.cobrado FROM Tame.sueldo + strFinalQuerySelect ;
	
   SET intEstadoProceso= 1;
    
END $$

DELIMITER ;
*/