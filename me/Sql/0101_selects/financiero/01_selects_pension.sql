
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
TRUNCATE TABLE [Financiero].[pension]

DBCC CHECKIDENT ('[Financiero].[pension]', RESEED, 1)

SET IDENTITY_INSERT [Financiero].[pension] ON

INSERT INTO [Financiero].[pension] (
	[id],
	[insert_at],
	[update_at],
	[id_alumno],
	[anio],
	[mes],
	[valor],
	[cobrado]
)

SET IDENTITY_INSERT [Financiero].[pension] OFF
