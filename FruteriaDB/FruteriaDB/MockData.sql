/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

SET IDENTITY_INSERT [dbo].[Frutas] ON
INSERT INTO [dbo].[Frutas] ([Id], [Nombre], [Precio], [Comentarios]) VALUES (1, N'Manzana', CAST(1.0000 AS Money), N'Roja')
INSERT INTO [dbo].[Frutas] ([Id], [Nombre], [Precio], [Comentarios]) VALUES (2, N'Pera', CAST(2.0000 AS Money), N'Verde')
INSERT INTO [dbo].[Frutas] ([Id], [Nombre], [Precio], [Comentarios]) VALUES (3, N'Limon', CAST(1.5000 AS Money), N'Acido')
SET IDENTITY_INSERT [dbo].[Frutas] OFF
