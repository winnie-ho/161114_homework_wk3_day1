DROP TABLE "attendances";
DROP TABLE "movies";
DROP TABLE "people";

CREATE TABLE movies (
  id SERIAL8 PRIMARY KEY,
  title VARCHAR(255),
  year INT,
  show_time VARCHAR(255)
);


CREATE TABLE people (
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE attendances (
  id SERIAL8 PRIMARY KEY,
  person_id INT REFERENCES people(id) ON DELETE CASCADE,
  movie_id INT REFERENCES movies(id) ON DELETE CASCADE
);

INSERT INTO movies (title, year, show_time) VALUES ('Iron Man', 2008, '15:40');
INSERT INTO movies (title, year, show_time) VALUES ('The Incredible Hulk', 2008, '23:45');
INSERT INTO movies (title, year, show_time) VALUES ('Iron Man 2', 2010, '17:45');
INSERT INTO movies (title, year, show_time) VALUES ('Thor', 2011, '14:40');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: The First Avenger', 2011, '17:05');
INSERT INTO movies (title, year, show_time) VALUES ('Avengers Assemble', 2012, '12:30');
INSERT INTO movies (title, year, show_time) VALUES ('Iron Man 3', 2013, '18:00');
INSERT INTO movies (title, year, show_time) VALUES ('Thor: The Dark World', 2013, '18:55');
INSERT INTO movies (title, year, show_time) VALUES ('Batman Begins', 2005, '16:30');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: The Winter Soldier', 2014, '19:20');
INSERT INTO movies (title, year, show_time) VALUES ('Guardians of the Galaxy', 2014, '12:10');
INSERT INTO movies (title, year, show_time) VALUES ('Avengers: Age of Ultron', 2015, '23:40');
INSERT INTO movies (title, year, show_time) VALUES ('Ant-Man', 2015, '18:20');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: Civil War', 2016, '22:00');
INSERT INTO movies (title, year, show_time) VALUES ('Doctor Strange', 2016, '16:30');

INSERT INTO people (name) VALUES ('Chris Bacon');
INSERT INTO people (name) VALUES ('John Campbell');
INSERT INTO people (name) VALUES ('Jane Cargill');
INSERT INTO people (name) VALUES ('Patrick Collins');
INSERT INTO people (name) VALUES ('Stephanie Devine');
INSERT INTO people (name) VALUES ('Ben Faulkner');
INSERT INTO people (name) VALUES ('Cameron Fulton');
INSERT INTO people (name) VALUES ('Tegan Gallacher');
INSERT INTO people (name) VALUES ('Gregor Gilchrist');
INSERT INTO people (name) VALUES ('Claire Hilditch');
INSERT INTO people (name) VALUES ('Graeme Bell');
INSERT INTO people (name) VALUES ('Winnie Ho');
INSERT INTO people (name) VALUES ('Adam Leel');
INSERT INTO people (name) VALUES ('Lewis MacNee');
INSERT INTO people (name) VALUES ('Adam Nattrass');
INSERT INTO people (name) VALUES ('William Robertson');
INSERT INTO people (name) VALUES ('Jordan Said');
INSERT INTO people (name) VALUES ('Logan Smith');
INSERT INTO people (name) VALUES ('Frederico Zucca');


-- 1. Return ALL the data in the 'movies' table
-- SELECT * FROM movies;

-- 2. Return ONLY the name column from the 'people' table
-- SELECT (name) FROM people;

-- 3. Return ONLY your name from the 'people' table.
SELECT name FROM people WHERE name = 'Winnie Ho';


-- 4. The cinema is showing 'Batman Begins', but Batman is DC, not Marvel! Delete the entry from the 'movies' table.
-- DELETE FROM movies WHERE title = 'Batman Begins';
-- SELECT * FROM movies;

-- 5. Create a new entry in the 'people' table with the name of one of the instructors.
-- INSERT INTO people (name) VALUES ('Valerie Dryden');
-- SELECT * FROM people;

-- 6. Sadly, Graeme has hurt himself and wont be able to make it, Delete his entry from the 'people' table
-- DELETE FROM people WHERE name = 'Graeme Bell';
-- SELECT * FROM people;

-- 7. Somehow the list of people includes two people named 'Adam'. Change these entries to the proper names (Jeff 3, Jeff 3.2)
-- UPDATE people SET name = 'Jeff' WHERE name = 'Adam Leel';
-- UPDATE people SET name = 'Jeff 3.2' WHERE name = 'Adam Nattrass';
-- SELECT * FROM people;

-- 8. The cinema has just heard that they will be holding an exclusive midnight showing of 'Guardians of the Galaxy 2'!! Create a new entry in the 'movies' table to reflect this.
-- INSERT INTO movies (title, year, show_time) VALUES ('Guardians of the Galaxy 2', 2017, '19:30');
-- SELECT * FROM movies

-- 9. The cinema would also like to make the Guardian movies a back to back feature. Update the 'Guardians of the Galaxy' show time from 12:10 to 21:30
-- UPDATE movies SET show_time = '21:30' WHERE title = 'Guardians of the Galaxy';
-- SELECT * FROM movies

-- ## Extension

-- 1. Research how to delete multiple entries from your table in a single command.

-- DELETE FROM people WHERE id IN (3, 7);
-- SELECT * FROM people;
