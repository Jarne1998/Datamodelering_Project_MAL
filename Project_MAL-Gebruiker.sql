-- GPR LTI d1.1 Jarne Bauwens & Dennis Luyten
-- Opvullen van Gebruiker table

SET IDENTITY_INSERT Project_MAL.Gebruiker ON
INSERT INTO Project_MAL.Gebruiker(gebruikerId, name, age, email, sex, birthday, location, joined)
VALUES(1, 'Jarne Bauwens', 23, 'jarne.bauwens@me.com', 'Male', 1998-08-18, 'Antwerpen', 2020-12-08);

SET IDENTITY_INSERT Project_MAL.Gebruiker ON
INSERT INTO Project_MAL.Gebruiker(gebruikerId, name, age, email, sex, birthday, location, joined)
VALUES(2, 'Dennis Luyten', 18, 'dennis.luyten@hotmail.be', 'Male', 2003-02-27, 'Mechelen', 2016-03-16);

SET IDENTITY_INSERT Project_MAL.Gebruiker ON
INSERT INTO Project_MAL.Gebruiker(gebruikerId, name, age, email, sex, birthday, location, joined)
VALUES(3, 'John Appleseed', 21, 'Appleseed32@gmail.com', 'Male', 2000-07-01, 'America', 2010-11-28);

SET IDENTITY_INSERT Project_MAL.Gebruiker ON
INSERT INTO Project_MAL.Gebruiker(gebruikerId, name, age, email, sex, birthday, location, joined)
VALUES(4, 'Caroline Gorgonzela', 29, 'CarolineGorgo@hotmail.com', 'Female', 1992-05-12, 'Spane', 2016-07-28);

SET IDENTITY_INSERT Project_MAL.Gebruiker ON
INSERT INTO Project_MAL.Gebruiker(gebruikerId, name, age, email, sex, birthday, location, joined)
VALUES(5, 'Johanna Grace', 19, 'Grace.Johanna@me.com.be', 'Male', 2003-02-27, 'United Kingdom', 2014-09-03);