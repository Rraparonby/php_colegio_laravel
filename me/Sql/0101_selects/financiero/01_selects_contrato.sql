
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
TRUNCATE TABLE [Financiero].[contrato]

DBCC CHECKIDENT ('[Financiero].[contrato]', RESEED, 1)

SET IDENTITY_INSERT [Financiero].[contrato] ON

INSERT INTO [Financiero].[contrato] (
	[id],
	[insert_at],
	[update_at],
	[anio],
	[valor],
	[fecha],
	[firmado]
)

SET IDENTITY_INSERT [Financiero].[contrato] OFF
