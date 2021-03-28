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
CREATE TABLE [Project_MAL].[Anime]
(
	[animeId] int IDENTITY(1,1) NOT NULL,
	[studioId] int,
	[name] varchar(80) NOT NULL,
	[episode] int NOT NULL,
	[aired] date NOT NULL,
	[status] int NOT NULL,
	[duration] int NOT NULL,
	[rating] int,
	[licensers] varchar(20) NOT NULL,

	CONSTRAINT [PK_Anime]
		PRIMARY KEY ([animeId]),
--	CONSTRAINT [FK_Project_MAL_Studio]
--		FOREIGN KEY ([studioId])
--		REFERENCES [Project_MAL].[Studio](studioId),

);
CREATE TABLE [Project_MAL].[Author]
(
	[authorId] int IDENTITY(1,1) NOT NULL,
	[name] varchar(20) NOT NULL,
	[lastname] varchar(20) NOT NULL,
	[birthday] date NOT NULL,

	CONSTRAINT [PK_author]
		PRIMARY KEY ([authorId])

);
CREATE TABLE [Project_MAL].[Manga]
(
	[mangaId] int IDENTITY(1,1) NOT NULL,
	[collectionId] int,
	[authorId] int,
	[name] varchar(20) NOT NULL,
	[chapters] date NOT NULL,

	CONSTRAINT [PK_author]
		PRIMARY KEY ([mangaId]),
	CONSTRAINT [FK_Project_MAL_Author]
		FOREIGN KEY ([authorId])
		REFERENCES [Project_MAL].[Author](authorId),
--	CONSTRAINT [FK_Project_MAL_Collection]
--		FOREIGN KEY ([collectionId])
--		REFERENCES [Project_MAL].[Collection](collectionId)

);
CREATE TABLE [Project_MAL].[Character]
(
	[characterId] int IDENTITY(1,1) NOT NULL,
	[animeId] int,
	[mangaId] int,
	[name] varchar(20) NOT NULL,
	[lastname] varchar(20) NULL,
	[appearance] varchar(20) NOT NULL,
	[age] int NOT NULL,
	[bloodtype] varchar(20),

	CONSTRAINT [PK_character]
		PRIMARY KEY ([characterId]),
	CONSTRAINT [FK_Project_MAL_Anime]
		FOREIGN KEY ([animeId])
		REFERENCES [Project_MAL].[Anime](animeId),
	CONSTRAINT [FK_Project_MAL_Manga]
		FOREIGN KEY ([mangaId])
		REFERENCES [Project_MAL].[Manga](mangaId)
);
CREATE TABLE [Project_MAL].[VoiceActor]
(
	[voiceActorId] int IDENTITY(1,1) NOT NULL,
	[name] varchar(20) NOT NULL,
	[lastname] varchar(20) NOT NULL,
	[birthday] date NOT NULL,
	[language] varchar(20) NOT NULL,

	CONSTRAINT [PK_voiceActor]
		PRIMARY KEY ([voiceActorId])
);
CREATE TABLE [Project_MAL].[VoiceActorAired]
(
	[voiceActorAiredId] int IDENTITY(1,1) NOT NULL,
	[characterId] int,
	[voiceActorId] int,
	[date] date NOT NULL,

	CONSTRAINT [PK_voiceActorAired]
		PRIMARY KEY ([voiceActorAiredId]),
	CONSTRAINT [FK_Project_MAL_Character]
		FOREIGN KEY ([characterId])
		REFERENCES [Project_MAL].[Character](characterId),
	CONSTRAINT [FK_Project_MAL_VoiceActor]
		FOREIGN KEY ([voiceActorId])
		REFERENCES [Project_MAL].[VoiceActor](VoiceActorId)
);


