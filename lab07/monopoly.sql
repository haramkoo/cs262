﻿--
-- This SQL script builds a monopoly database, deleting any pre-existing version.
--
-- @author kvlinden
-- @version Summer, 2015
--

-- Drop previous versions of the tables if they they exist, in reverse order of foreign keys.
DROP TABLE IF EXISTS PlayerGame;
DROP TABLE IF EXISTS Property;
DROP TABLE IF EXISTS Player;
DROP TABLE IF EXISTS Game;



-- Create the schema.
CREATE TABLE Game (
	ID integer PRIMARY KEY, 
	time timestamp
	);

CREATE TABLE Player (
	ID integer PRIMARY KEY, 
	emailAddress varchar(50) NOT NULL,
	name varchar(50)
	);

CREATE TABLE PlayerGame (
	gameID integer REFERENCES Game(ID), 
	playerID integer REFERENCES Player(ID),
	pieceLocation integer,
	cash integer,
	score integer
	);

CREATE TABLE Property (
	PRIMARY KEY (propertyName, gameID, playerID),
	gameID integer REFERENCES Game(ID),
	playerID integer REFERENCES player(ID),
	propertyName varchar(50),
	hotelNum integer,
	houseNum integer
);

-- Allow users to select data from the tables.
GRANT SELECT ON Game TO PUBLIC;
GRANT SELECT ON Player TO PUBLIC;
GRANT SELECT ON PlayerGame TO PUBLIC;
GRANT SELECT ON Property TO PUBLIC;


-- Add sample records.
INSERT INTO Game VALUES (1, '2006-06-27 08:00:00');
INSERT INTO Game VALUES (2, '2006-06-28 13:20:00');
INSERT INTO Game VALUES (3, '2006-06-29 18:41:00');

INSERT INTO Player(ID, emailAddress) VALUES (1, 'me@calvin.edu');
INSERT INTO Player VALUES (2, 'king@gmail.edu', 'The King');
INSERT INTO Player VALUES (3, 'dog@gmail.edu', 'Dogbreath');

INSERT INTO PlayerGame VALUES (1, 1, 1, 0, NULL);
INSERT INTO PlayerGame VALUES (1, 2, 2, 0, NULL);
INSERT INTO PlayerGame VALUES (1, 3, 3, 2350, NULL);
INSERT INTO PlayerGame VALUES (2, 1, 4, 1000, NULL);
INSERT INTO PlayerGame VALUES (2, 2, 5, 0, NULL);
INSERT INTO PlayerGame VALUES (2, 3, 6, 500, NULL);
INSERT INTO PlayerGame VALUES (3, 2, 7, 0, NULL);
INSERT INTO PlayerGame VALUES (3, 3, 8, 5500, NULL);

INSERT INTO Property VALUES (1, 1, 'Mediterranean Avenue', 1, 0);
INSERT INTO Property VALUES (1, 2, 'Baltic Avenue', 0, 1);
INSERT INTO Property VALUES (2, 1, 'Oriental Avenue', 0, 2);
INSERT INTO Property VALUES (2, 2, 'Vermont Avenue', 2, 0);
INSERT INTO Property VALUES (3, 1, 'St James Place', 1, 1);
INSERT INTO Property VALUES (3, 2, 'Indiana Avenue', 2, 3);
