
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
TRUNCATE TABLE [Estructura].[alumno]

DBCC CHECKIDENT ('[Estructura].[alumno]', RESEED, 1)

SET IDENTITY_INSERT [Estructura].[alumno] ON

INSERT INTO [Estructura].[alumno] (
	[id],
	[insert_at],
	[update_at],
	[nombre],
	[apellido],
	[fecha_nacimiento]
)

SET IDENTITY_INSERT [Estructura].[alumno] OFF
