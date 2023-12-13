
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
TRUNCATE TABLE [Proceso].[nota]

DBCC CHECKIDENT ('[Proceso].[nota]', RESEED, 1)

SET IDENTITY_INSERT [Proceso].[nota] ON

INSERT INTO [Proceso].[nota] (
	[id],
	[insert_at],
	[update_at],
	[id_alumno],
	[id_materia],
	[id_docente],
	[nota_prueba],
	[nota_trabajo],
	[nota_examen],
	[nota_final]
)

SET IDENTITY_INSERT [Proceso].[nota] OFF
