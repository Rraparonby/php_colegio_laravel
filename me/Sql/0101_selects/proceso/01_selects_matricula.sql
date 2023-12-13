
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
TRUNCATE TABLE [Proceso].[matricula]

DBCC CHECKIDENT ('[Proceso].[matricula]', RESEED, 1)

SET IDENTITY_INSERT [Proceso].[matricula] ON

INSERT INTO [Proceso].[matricula] (
	[id],
	[insert_at],
	[update_at],
	[anio],
	[costo],
	[fecha],
	[pagado]
)

SET IDENTITY_INSERT [Proceso].[matricula] OFF
