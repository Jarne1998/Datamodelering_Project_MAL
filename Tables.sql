IF OBJECT_ID('[Project_MAL].[User]', 'U') IS NOT NULL
	DROP TABLE [Project_MAL].[User];

IF OBJECT_ID('[Project_MAL].[Collection]', 'U') IS NOT NULL
	DROP TABLE [Project_MAL].[Collection];

IF OBJECT_ID('[Project_Pokemon].[Move]', 'U') IS NOT NULL
	DROP TABLE [Project_Pokemon].[Move];

IF OBJECT_ID('[Project_MAL].[Studio]', 'U') IS NOT NULL
	DROP TABLE [Project_MAL].[Studio];

IF OBJECT_ID('[Project_MAL].[Anime]', 'U') IS NOT NULL
	DROP TABLE [Project_MAL].[Anime];

IF OBJECT_ID('[Project_MAL].[Genre]', 'U') IS NOT NULL
	DROP TABLE [Project_MAL].[Genre];

IF OBJECT_ID('[Project_MAL].[AnimeCollection]', 'U') IS NOT NULL
	DROP TABLE [Project_MAL].[AnimeCollection];

IF OBJECT_ID('[Project_MAL].[AnimeGenre]', 'U') IS NOT NULL
	DROP TABLE [Project_MAL].[AnimeGenre];

DROP SCHEMA [Project_MAL];
GO

CREATE SCHEMA [Project_MAL];
GO

CREATE TABLE [Project_MAL].[User]
(
	[userId] int IDENTITY(1,1) NOT NULL,
	[name] varchar(20) NOT NULL,
	[email] varchar(40) NOT NULL,
	[birthday] date NOT NULL,
	[location] varchar(40) NULL,
	[joined] date NOT NULL,
	[familyName] varchar(40) NOT NULL,
	[userName] varchar(40) NOT NULL,
	CONSTRAINT [PK_User]
		PRIMARY KEY ([userId])
);

CREATE TABLE [Project_MAL].[Collection]
(
	[collectionId] int IDENTITY(1,1) NOT NULL,
	[userId] int NULL,
	[name] varchar(50),
	CONSTRAINT [PK_Collection]
		PRIMARY KEY ([collectionId]),
	CONSTRAINT [FK_Gebruiker]
		FOREIGN KEY ([userId])
		REFERENCES [Project_MAL].[User](userId)
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
	[type] varchar(20) NOT NULL,
	CONSTRAINT [PK_Anime]
		PRIMARY KEY ([animeId]),
	CONSTRAINT [FK_Studio]
		FOREIGN KEY ([studioId])
		REFERENCES [Project_MAL].[Studio](studioId)
);

CREATE TABLE [Project_MAL].[Genre]
(
	[genreId] int IDENTITY(1,1) NOT NULL,
	[nameGenre] varchar(100) NOT NULL,
	CONSTRAINT [PK_Genre]
		PRIMARY KEY ([genreId]),
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

CREATE TABLE [Project_MAL].[AnimeGenre]
(
	[animeGenreId] int IDENTITY(1,1) NOT NULL,
	[animeId] int NOT NULL,
	[genreId] int NULL,
	CONSTRAINT [PK_AnimeGenre]
		PRIMARY KEY ([animeGenreId]),
	CONSTRAINT [FK_GenreAnime]
		FOREIGN KEY ([animeId])
		REFERENCES [Project_MAL].[Anime](animeId),
	CONSTRAINT [FK_GenreGenre]
		FOREIGN KEY ([genreId])
		REFERENCES [Project_MAL].[Genre](genreId)
);