
/*
 * VSS Header, do not delete!
 *
 * $Revision: 1.1 $
 * $Date: 2003/10/05 22:16:53 $
 * $Author: Administrator $
 *
 */

USE 2015_Colegio_Relaciones
GO

 
/*
 * Purpose:
 *
 * Change History:
 *
 */

--VSS $Revision: 1.1 $
TRUNCATE TABLE [Estructura].[materia]

DBCC CHECKIDENT ('[Estructura].[materia]', RESEED, 1)

SET IDENTITY_INSERT [Estructura].[materia] ON

INSERT INTO [Estructura].[materia] (
	[id],
	[insert_at],
	[update_at],
	[codigo],
	[nombre],
	[activo]
)

SET IDENTITY_INSERT [Estructura].[materia] OFF
