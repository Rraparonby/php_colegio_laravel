

DELIMITER $$

DROP PROCEDURE IF EXISTS `Tame`.`SP_CONTRATO_INSERT` $$

CREATE PROCEDURE `Tame`.`SP_CONTRATO_INSERT`(IN inputParaminsert_at datetime,IN inputParamupdate_at binary(8),IN inputParamanio int(4),IN inputParamvalor decimal(9,18),IN inputParamfecha datetime,IN inputParamfirmado tinyint(4), OUT intEstadoProceso int(10))
BEGIN

   SET intEstadoProceso= 0;
 	
   SET inputParamCURRENT_TIMESTAMP=CURRENT_TIMESTAMP;

   INSERT INTO Tame.contrato SET insert_at=inputParaminsert_at,update_at=inputParamupdate_at,anio=inputParamanio,valor=inputParamvalor,fecha=inputParamfecha,firmado=inputParamfirmado;
	
   SET intEstadoProceso= 1;
    
END $$

DELIMITER ;


DELIMITER $$

DROP PROCEDURE IF EXISTS `Tame`.`SP_CONTRATO_UPDATE` $$

CREATE PROCEDURE `Tame`.`SP_CONTRATO_UPDATE`(IN inputParaminsert_at datetime,IN inputParamupdate_at binary(8),IN inputParamanio int(4),IN inputParamvalor decimal(9,18),IN inputParamfecha datetime,IN inputParamfirmado tinyint(4),IN inputParamId bigint(19),IN inputParamVersionRow timestamp, OUT intEstadoProceso int(10))
BEGIN

   SET intEstadoProceso= 0;
 	
   SET inputParamCURRENT_TIMESTAMP=CURRENT_TIMESTAMP;

   UPDATE Tame.contrato SET insert_at=inputParaminsert_at,update_at=inputParamupdate_at,anio=inputParamanio,valor=inputParamvalor,fecha=inputParamfecha,firmado=inputParamfirmado where id =inputParamId AND versionRow=inputParamVersionRow;
	
   SET intEstadoProceso= 1;
    
END $$

DELIMITER ;


DELIMITER $$

DROP PROCEDURE IF EXISTS `Tame`.`SP_CONTRATO_DELETE` $$

CREATE PROCEDURE `Tame`.`SP_CONTRATO_DELETE`(IN inputParamId bigint(19) , OUT intEstadoProceso int(10))
BEGIN

   SET intEstadoProceso= 0;
 	
   DELETE FROM Tame.contrato WHERE id =inputParamId;
	
   SET intEstadoProceso= 1;
    
END $$

DELIMITER ;

/*
DROP PROCEDURE IF EXISTS `Tame`.`SP_CONTRATO_SELECT` $$

CREATE PROCEDURE `Tame`.`SP_CONTRATO_SELECT`(IN strFinalQuerySelect varchar(500) , OUT intEstadoProceso int(10))
BEGIN

   SET intEstadoProceso= 0;
 	
   SELECT Tame.Financiero.contrato.id,Tame.contrato.insert_at,Tame.contrato.update_at,Tame.contrato.anio,Tame.contrato.valor,Tame.contrato.fecha,Tame.contrato.firmado FROM Tame.contrato + strFinalQuerySelect ;
	
   SET intEstadoProceso= 1;
    
END $$

DELIMITER ;
*/