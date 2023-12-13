

DELIMITER $$

DROP PROCEDURE IF EXISTS `Tame`.`SP_DOCENTE_INSERT` $$

CREATE PROCEDURE `Tame`.`SP_DOCENTE_INSERT`(IN inputParaminsert_at datetime,IN inputParamupdate_at binary(8),IN inputParamnombre varchar(25),IN inputParamapellido varchar(25),IN inputParamfecha_nacimiento datetime,IN inputParamanios_experiencia int(4),IN inputParamnota_evaluacion decimal(9,18), OUT intEstadoProceso int(10))
BEGIN

   SET intEstadoProceso= 0;
 	
   SET inputParamCURRENT_TIMESTAMP=CURRENT_TIMESTAMP;

   INSERT INTO Tame.docente SET insert_at=inputParaminsert_at,update_at=inputParamupdate_at,nombre=inputParamnombre,apellido=inputParamapellido,fecha_nacimiento=inputParamfecha_nacimiento,anios_experiencia=inputParamanios_experiencia,nota_evaluacion=inputParamnota_evaluacion;
	
   SET intEstadoProceso= 1;
    
END $$

DELIMITER ;


DELIMITER $$

DROP PROCEDURE IF EXISTS `Tame`.`SP_DOCENTE_UPDATE` $$

CREATE PROCEDURE `Tame`.`SP_DOCENTE_UPDATE`(IN inputParaminsert_at datetime,IN inputParamupdate_at binary(8),IN inputParamnombre varchar(25),IN inputParamapellido varchar(25),IN inputParamfecha_nacimiento datetime,IN inputParamanios_experiencia int(4),IN inputParamnota_evaluacion decimal(9,18),IN inputParamId bigint(19),IN inputParamVersionRow timestamp, OUT intEstadoProceso int(10))
BEGIN

   SET intEstadoProceso= 0;
 	
   SET inputParamCURRENT_TIMESTAMP=CURRENT_TIMESTAMP;

   UPDATE Tame.docente SET insert_at=inputParaminsert_at,update_at=inputParamupdate_at,nombre=inputParamnombre,apellido=inputParamapellido,fecha_nacimiento=inputParamfecha_nacimiento,anios_experiencia=inputParamanios_experiencia,nota_evaluacion=inputParamnota_evaluacion where id =inputParamId AND versionRow=inputParamVersionRow;
	
   SET intEstadoProceso= 1;
    
END $$

DELIMITER ;


DELIMITER $$

DROP PROCEDURE IF EXISTS `Tame`.`SP_DOCENTE_DELETE` $$

CREATE PROCEDURE `Tame`.`SP_DOCENTE_DELETE`(IN inputParamId bigint(19) , OUT intEstadoProceso int(10))
BEGIN

   SET intEstadoProceso= 0;
 	
   DELETE FROM Tame.docente WHERE id =inputParamId;
	
   SET intEstadoProceso= 1;
    
END $$

DELIMITER ;

/*
DROP PROCEDURE IF EXISTS `Tame`.`SP_DOCENTE_SELECT` $$

CREATE PROCEDURE `Tame`.`SP_DOCENTE_SELECT`(IN strFinalQuerySelect varchar(500) , OUT intEstadoProceso int(10))
BEGIN

   SET intEstadoProceso= 0;
 	
   SELECT Tame.Estructura.docente.id,Tame.docente.insert_at,Tame.docente.update_at,Tame.docente.nombre,Tame.docente.apellido,Tame.docente.fecha_nacimiento,Tame.docente.anios_experiencia,Tame.docente.nota_evaluacion FROM Tame.docente + strFinalQuerySelect ;
	
   SET intEstadoProceso= 1;
    
END $$

DELIMITER ;
*/