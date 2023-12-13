

DELIMITER $$

DROP PROCEDURE IF EXISTS `Tame`.`SP_MATRICULA_INSERT` $$

CREATE PROCEDURE `Tame`.`SP_MATRICULA_INSERT`(IN inputParaminsert_at datetime,IN inputParamupdate_at binary(8),IN inputParamanio int(4),IN inputParamcosto decimal(9,18),IN inputParamfecha datetime,IN inputParampagado tinyint(4), OUT intEstadoProceso int(10))
BEGIN

   SET intEstadoProceso= 0;
 	
   SET inputParamCURRENT_TIMESTAMP=CURRENT_TIMESTAMP;

   INSERT INTO Tame.matricula SET insert_at=inputParaminsert_at,update_at=inputParamupdate_at,anio=inputParamanio,costo=inputParamcosto,fecha=inputParamfecha,pagado=inputParampagado;
	
   SET intEstadoProceso= 1;
    
END $$

DELIMITER ;


DELIMITER $$

DROP PROCEDURE IF EXISTS `Tame`.`SP_MATRICULA_UPDATE` $$

CREATE PROCEDURE `Tame`.`SP_MATRICULA_UPDATE`(IN inputParaminsert_at datetime,IN inputParamupdate_at binary(8),IN inputParamanio int(4),IN inputParamcosto decimal(9,18),IN inputParamfecha datetime,IN inputParampagado tinyint(4),IN inputParamId bigint(19),IN inputParamVersionRow timestamp, OUT intEstadoProceso int(10))
BEGIN

   SET intEstadoProceso= 0;
 	
   SET inputParamCURRENT_TIMESTAMP=CURRENT_TIMESTAMP;

   UPDATE Tame.matricula SET insert_at=inputParaminsert_at,update_at=inputParamupdate_at,anio=inputParamanio,costo=inputParamcosto,fecha=inputParamfecha,pagado=inputParampagado where id =inputParamId AND versionRow=inputParamVersionRow;
	
   SET intEstadoProceso= 1;
    
END $$

DELIMITER ;


DELIMITER $$

DROP PROCEDURE IF EXISTS `Tame`.`SP_MATRICULA_DELETE` $$

CREATE PROCEDURE `Tame`.`SP_MATRICULA_DELETE`(IN inputParamId bigint(19) , OUT intEstadoProceso int(10))
BEGIN

   SET intEstadoProceso= 0;
 	
   DELETE FROM Tame.matricula WHERE id =inputParamId;
	
   SET intEstadoProceso= 1;
    
END $$

DELIMITER ;

/*
DROP PROCEDURE IF EXISTS `Tame`.`SP_MATRICULA_SELECT` $$

CREATE PROCEDURE `Tame`.`SP_MATRICULA_SELECT`(IN strFinalQuerySelect varchar(500) , OUT intEstadoProceso int(10))
BEGIN

   SET intEstadoProceso= 0;
 	
   SELECT Tame.Proceso.matricula.id,Tame.matricula.insert_at,Tame.matricula.update_at,Tame.matricula.anio,Tame.matricula.costo,Tame.matricula.fecha,Tame.matricula.pagado FROM Tame.matricula + strFinalQuerySelect ;
	
   SET intEstadoProceso= 1;
    
END $$

DELIMITER ;
*/