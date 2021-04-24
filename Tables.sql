-- GPR LTI d1.1 Jarne Bauwens & Dennis Luyten

-- Droppen van schema/table indien nodig
-- Verwijderen van bestaande tabellen binnen het schema

-- [Project_MAL]

IF OBJECT_ID('[Project_MAL].[Gebruiker]', 'U') IS NOT NULL
    DROP TABLE [Project_MAL].[Gebruiker];

IF OBJECT_ID('[Project_MAL].[Author]', 'U') IS NOT NULL
    DROP TABLE [Project_MAL].[Author];

IF OBJECT_ID('[Project_MAL].[VoiceActor]', 'U') IS NOT NULL
    DROP TABLE [Project_MAL].[VoiceActor];

IF OBJECT_ID('[Project_MAL].[Collection]', 'U') IS NOT NULL
    DROP TABLE [Project_MAL].[Collection];

IF OBJECT_ID('[Project_MAL].[Manga]', 'U') IS NOT NULL
    DROP TABLE [Project_MAL].[Manga];

IF OBJECT_ID('[Project_MAL].[Studio]', 'U') IS NOT NULL
    DROP TABLE [Project_MAL].[Studio];

IF OBJECT_ID('[Project_MAL].[Anime]', 'U') IS NOT NULL
    DROP TABLE [Project_MAL].[Anime];

IF OBJECT_ID('[Project_MAL].[Character]', 'U') IS NOT NULL
    DROP TABLE [Project_MAL].[Character];

IF OBJECT_ID('[Project_MAL].[VoiceActorAired]', 'U') IS NOT NULL
    DROP TABLE [Project_MAL].[VoiceActorAired];

IF OBJECT_ID('[Project_MAL].[AnimeCollection]', 'U') IS NOT NULL
    DROP TABLE [Project_MAL].[AnimeCollection];

IF OBJECT_ID('[Project_MAL].[Genre]', 'U') IS NOT NULL
    DROP TABLE [Project_MAL].[Genre];

IF OBJECT_ID('[Project_MAL].[MangaCollection]', 'U') IS NOT NULL
    DROP TABLE [Project_MAL].[MangaCollection];

IF OBJECT_ID('[Project_MAL].[MangaGenre]', 'U') IS NOT NULL
    DROP TABLE [Project_MAL].[MangaGenre];

IF OBJECT_ID('[Project_MAL].[AnimeGenre]', 'U') IS NOT NULL 
    DROP TABLE [Project_MAL].[AnimeGenre]

IF OBJECT_ID('[Project_MAL].[NumberOfViews]', 'U') IS NOT NULL
    DROP TABLE [Project_MAL].[MangaGenre];

DROP SCHEMA [Project_MAL];
GO

CREATE SCHEMA [Project_MAL];
GO

CREATE TABLE [Project_MAL].[User]
(
	[userId] int IDENTITY(1,1) NOT NULL,
	[name] varchar(20) NOT NULL,
	[age] int NOT NULL,
	[email] varchar(40) NOT NULL,
	[sex] varchar(20) NULL,
	[birthday] date NOT NULL,
	[location] varchar(40) NULL,
	[joined] date NOT NULL,
	[familieName] varchar(40) NOT NULL,
	[userName] varchar(40) NOT NULL,

	CONSTRAINT [PK_Gebruiker]
		PRIMARY KEY ([userId])
);

CREATE TABLE [Project_MAL].[Author]
(
	[authorId] int IDENTITY(1,1) NOT NULL,
	[name] varchar(20) NOT NULL,
	[lastname] varchar(20) NOT NULL,
	[birthday] date NOT NULL,

	CONSTRAINT [PK_Author]
		PRIMARY KEY ([authorId])
);

CREATE TABLE [Project_MAL].[VoiceActor]
(
	[voiceActorId] int IDENTITY(1,1) NOT NULL,
	[name] varchar(20) NOT NULL,
	[lastname] varchar(20) NOT NULL,
	[birthday] date NOT NULL,
	[language] varchar(20) NOT NULL,

	CONSTRAINT [PK_VoiceActor]
		PRIMARY KEY ([voiceActorId])
);

CREATE TABLE [Project_MAL].[Collection]
(
	[collectionId] int IDENTITY(1,1) NOT NULL,
	[userId] int NULL,
	CONSTRAINT [PK_Collection]
		PRIMARY KEY ([collectionId]),
	CONSTRAINT [FK_Gebruiker]
		FOREIGN KEY ([userId])
		REFERENCES [Project_MAL].[User](userId)
);

CREATE TABLE [Project_MAL].[Manga]
(
	[mangaId] int IDENTITY(1,1) NOT NULL,
	[collectionId] int,
	[authorId] int,
	[name] varchar(40) NOT NULL,
	[chapters] int NOT NULL,
	[type] varchar(20) NOT NULL,
	CONSTRAINT [PK_Manga]
		PRIMARY KEY ([mangaId]),
	CONSTRAINT [FK_Project_MAL_Author]
		FOREIGN KEY ([authorId])
		REFERENCES [Project_MAL].[Author](authorId),
	CONSTRAINT [FK_Project_MAL_Collection]
		FOREIGN KEY ([collectionId])
		REFERENCES [Project_MAL].[Collection](collectionId)
);

CREATE TABLE [Project_MAL].[MangaCollection]
(
    [mangaCollectionId] int IDENTITY(1,1) NOT NULL,
    [mangaId] int NULL,
    [collectionId] int NULL,
    CONSTRAINT [PK_MangaCollection]
        PRIMARY KEY ([mangaCollectionId]),
    CONSTRAINT [FK_MangaCollection]
        FOREIGN KEY ([mangaId])
        REFERENCES [Project_MAL].[Manga](mangaId),
    CONSTRAINT [FK_CollectionManga]
        FOREIGN KEY ([collectionId])
        REFERENCES [Project_MAL].[Collection](collectionId)
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
	[rankingUpcoming] int NOT NULL,
	[rankingAiring] int NOT NULL,
	CONSTRAINT [PK_Anime]
		PRIMARY KEY ([animeId]),
	CONSTRAINT [FK_Studio]
		FOREIGN KEY ([studioId])
		REFERENCES [Project_MAL].[Studio](studioId),
);

CREATE TABLE [Project_MAL].[Genre]
(
	[genreId] int IDENTITY(1,1) NOT NULL,
	[naamGenre] varchar(100) NOT NULL,
	CONSTRAINT [PK_Genre]
		PRIMARY KEY ([genreId]),
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
	CONSTRAINT [PK_Character]
		PRIMARY KEY ([characterId]),
	CONSTRAINT [FK_Project_MAL_Anime]
		FOREIGN KEY ([animeId])
		REFERENCES [Project_MAL].[Anime](animeId),
	CONSTRAINT [FK_Project_MAL_Manga]
		FOREIGN KEY ([mangaId])
		REFERENCES [Project_MAL].[Manga](mangaId)
);

CREATE TABLE [Project_MAL].[VoiceActorAired]
(
	[voiceActorAiredId] int IDENTITY(1,1) NOT NULL,
	[characterId] int,
	[voiceActorId] int,
	[date] date NOT NULL,
	CONSTRAINT [PK_VoiceActorAired]
		PRIMARY KEY ([voiceActorAiredId]),
	CONSTRAINT [FK_Project_MAL_Character]
		FOREIGN KEY ([characterId])
		REFERENCES [Project_MAL].[Character](characterId),
	CONSTRAINT [FK_Project_MAL_VoiceActor]
		FOREIGN KEY ([voiceActorId])
		REFERENCES [Project_MAL].[VoiceActor](VoiceActorId)
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

CREATE TABLE [Project_MAL].[MangaGenre]
(

	[mangaGenreId] int IDENTITY(1,1) NOT NULL,
	[mangaId] int NOT NULL,
	[genreId] int NULL,
	CONSTRAINT [PK_MangaGenre]
		PRIMARY KEY ([mangaGenreId]),
	CONSTRAINT [FK_GenreManga]
		FOREIGN KEY ([mangaId])
		REFERENCES [Project_MAL].[Manga](mangaId),
	CONSTRAINT [FK_Genre]
		FOREIGN KEY ([genreId])
		REFERENCES [Project_MAL].[Genre](genreId)
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

CREATE TABLE [Project_MAL].[NumberOfViews]
(

	[numberOfViewsId] int IDENTITY(1,1) NOT NULL,
	[animeId] int NOT NULL,
	[views] date NOT NULL,
	CONSTRAINT [PK_NumberOfViews]
		PRIMARY KEY ([numberOfViewsId]),
	CONSTRAINT [FK_AnimeGenre]
		FOREIGN KEY ([animeId])
		REFERENCES [Project_MAL].[Anime](animeId),
);
