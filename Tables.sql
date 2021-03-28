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

CREATE TABLE [Project_MAL].[Collection]
(
	[collectionId] int IDENTITY(1,1) NOT NULL,
	[gebruikerId] int NULL,
	CONSTRAINT [PK_Collection]
		PRIMARY KEY ([collectionId]),
	CONSTRAINT [FK_Gebruiker]
		FOREIGN KEY ([gebruikerId])
		REFERENCES [Project_MAL].[Gebruiker](gebruikerId)
);

CREATE TABLE [Project_MAL].[Studio]
(
	[studioId] int IDENTITY(1,1) NOT NULL,
	[name] varchar(40) NOT NULL,
	[producer] varchar(40) NOT NULL,
	[location] varchar(40) NOT NULL,
	CONSTRAINT [PK_Studio]
		PRIMARY KEY ([studioId])
);

CREATE TABLE [Project_MAL].[Anime]
(
	[animeId] int IDENTITY(1,1) NOT NULL,
	[studioId] int NULL,
	[name] varchar(40) NOT NULL,
	[episodes] int NOT NULL,
	[aired] date NOT NULL,
	[status] varchar(20) NOT NULL,
	[duration] int NOT NULL,
	[rating] int NULL,
	[licensers] varchar(40) NULL,
	CONSTRAINT [PK_Anime]
		PRIMARY KEY ([animeId]),
	CONSTRAINT [FK_Stduio]
		FOREIGN KEY ([studioId])
		REFERENCES [Project_MAL].[Studio](studioId)
);

CREATE TABLE [Project_MAL].[AnimeCollection]
(
	[animeCollectionId] int IDENTITY(1,1) NOT NULL,
	[animeId] int NULL,
	[collectionId] int NULL,
	CONSTRAINT [PK_AnimeCollection]
		PRIMARY KEY ([animeCollectionId]),
	CONSTRAINT [FK_Anime]
		FOREIGN KEY ([animeId])
		REFERENCES [Project_MAL].[Anime](animeId),
	CONSTRAINT [FK_Collection]
		FOREIGN KEY ([collectionId])
		REFERENCES [Project_MAL].[Collection](collectionId)
);

CREATE TABLE [Project_MAL].[Genre]
(
	[genreId] int IDENTITY(1,1) NOT NULL,
	[mangaId] int NULL,
	[animeId] int NULL,
	[type] varchar(40) NOT NULL,
	CONSTRAINT [PK_Genre]
		PRIMARY KEY ([genreId]),
--	CONSTRAINT [FK_Manga]
--		FOREIGN KEY ([mangaId])
--		REFERENCES [Project_MAL].[Manga](mangaId),
	CONSTRAINT [FK_Anime]
		FOREIGN KEY ([animeId])
		REFERENCES [Project_MAL].[Anime](animeId)
);