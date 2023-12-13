
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
TRUNCATE TABLE [Estructura].[docente_materia]

DBCC CHECKIDENT ('[Estructura].[docente_materia]', RESEED, 1)

SET IDENTITY_INSERT [Estructura].[docente_materia] ON

INSERT INTO [Estructura].[docente_materia] (
	[id],
	[insert_at],
	[update_at],
	[id_docente],
	[id_materia]
)

SET IDENTITY_INSERT [Estructura].[docente_materia] OFF
