SQL

Commands
 touch people.sql --> create sql file and table columns
 sqlite3 database.sqlite3 < people.sql --> stores information in binary format, can't be read
 people.sql no longer required, but useful to keep
 rm database.sqlite3 to delete database and start again
 sqlite3 database.sqlite3 ---> interact with database in command line

 .schema  --> shows table columns
 Insert data
INSERT INTO people (id, first_name, last_name, age) VALUES (1, 'John', 'Smith', 74);
INSERT INTO people VALUES (4, 'Tanny', 'Sour', 27); --> no need for (id, etc) if you add all columns

Select data
SELECT * FROM people;
SELECT first_name FROM people;
SELECT id, first_name, age FROM people;
SELECT last_name, first_name, id FROM people;

SELECT * FROM people WHERE id=2;

SELECT MAX(age) FROM people;
SELECT first_name, AVG(age) FROM people;

SELECT * FROM people WHERE first_name="Tanny";


Update data
UPDATE people SET age=28 WHERE id=4;


Delete data
DELETE FROM people WHERE id=2;


Open Database in ruby through Pry
1: db = SQLite3::Database.new 'database.sqlite3';
2: butterflies = db.execute 'SELECT * FROM butterflies'
3: butterflies
4: butterflies.first
5: butterflies["name"]
6: db.results_as_hash = true
7: butterflies = db.execute
8: butterflies = db.execute 'SELECT * FROM butterflies';
9: butterflies
