-- GPR LTI d1.1 Jarne Bauwens & Dennis Luyten

-- Droppen van schema/table indien nodig
-- Verwijderen van bestaande tabellen binnen het schema

-- [Project_MAL]

CREATE SCHEMA [Project_MAL];
GO

CREATE TABLE [Project_MAL].[Gebruiker]
(
	[gebruikerId] int IDENTITY(1,1) NOT NULL,
	[name] varchar(20) NOT NULL,
	[age] int NOT NULL,
	[email] varchar(20) NOT NULL,
	[sex] varchar(20) NULL,
	[birthday] date NOT NULL,
	[location] varchar NULL,
	[joined] date NOT NULL,

	CONSTRAINT [PK_Gebruiker]
		PRIMARY KEY ([gebruikerId])
);