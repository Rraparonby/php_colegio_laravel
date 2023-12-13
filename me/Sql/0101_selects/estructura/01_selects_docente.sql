
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
TRUNCATE TABLE [Estructura].[docente]

DBCC CHECKIDENT ('[Estructura].[docente]', RESEED, 1)

SET IDENTITY_INSERT [Estructura].[docente] ON

INSERT INTO [Estructura].[docente] (
	[id],
	[insert_at],
	[update_at],
	[nombre],
	[apellido],
	[fecha_nacimiento],
	[anios_experiencia],
	[nota_evaluacion]
)

SET IDENTITY_INSERT [Estructura].[docente] OFF
