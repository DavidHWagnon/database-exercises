Use codeup_test_db;

SELECT 'Pinky Floyd Albums' AS 'Pinky Floyd Albums';
SELECT * FROM albums  WHERE artist = 'Pink Floyd';

SELECT 'Release date for Sgt. Pepper''s Lonely Hearts Club Band' AS 'Sgt.Pepper\'s Lonely Hearts Club Band Release Date';
SELECT release_date FROM albums WHERE name = 'Sgt.Pepper\'s Lonely Hearts Club Band';

SELECT 'Nevermind Genre' AS 'Nevermind Genre'
SELECT genre FROM albums WHERE name = 'Nevermind';

SELECT 'Albums released in the 90s' AS '90s albums';
SELECT * FROM albums WHERE release_date BETWEEN '1990' AND '1999';

SELECT 'Albums with less than 20m in sales' AS 'Albums with less than 20m in sales';
SELECT * FROM albums WHERE sales < 20;

SELECT 'Rock Albums' AS 'Rock Albums';
SELECT * FROM albums WHERE genre = 'rock';