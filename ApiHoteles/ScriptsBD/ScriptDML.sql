USE [Hospedaje]
GO

INSERT INTO [dbo].[Hotel]
           ([NameHotel]
           ,[Categoria]
           ,[Precio]
           ,[General]
           ,[Habitacion]
           ,[Cama]
           ,[Calificacion])
     VALUES
           (<NameHotel, varchar(50),>
           ,<Categoria, char(1),>
           ,<Precio, numeric(18,0),>
           ,<General, varchar(max),>
           ,<Habitacion, varchar(max),>
           ,<Cama, varchar(max),>
           ,<Calificacion, varchar(50),>)
GO