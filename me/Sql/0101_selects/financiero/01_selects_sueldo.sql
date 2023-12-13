
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
TRUNCATE TABLE [Financiero].[sueldo]

DBCC CHECKIDENT ('[Financiero].[sueldo]', RESEED, 1)

SET IDENTITY_INSERT [Financiero].[sueldo] ON

INSERT INTO [Financiero].[sueldo] (
	[id],
	[insert_at],
	[update_at],
	[id_docente],
	[anio],
	[mes],
	[valor],
	[cobrado]
)

SET IDENTITY_INSERT [Financiero].[sueldo] OFF
