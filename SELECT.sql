-- Запрос 1
SELECT t.title, t.duration
FROM tracks t
ORDER BY t.duration DESC
LIMIT 1;

-- Запрос 2
SELECT t.title
FROM tracks t
WHERE t.duration >= '00:03:30'; 

-- Запрос 3
SELECT c.title
FROM compilations c
WHERE c.year_release BETWEEN '2018-01-01' AND '2020-12-31';  

-- Запрос 4
SELECT a.name
FROM artists a
WHERE a.name NOT LIKE '% %';  

-- Запрос 5
SELECT t.title
FROM tracks t
WHERE string_to_array(lower(t.title), ' ') && ARRAY['my', 'мой'];
 


-- Запрос 1
SELECT g.name AS genre, COUNT(lop.gender_id) AS performer_count
FROM genre_of_music g
LEFT JOIN list_of_perfomers lop  ON lop.gender_id = g.id
GROUP BY g.name;




-- Запрос 2
SELECT COUNT(t.id) AS track_count
FROM tracks t
JOIN album a ON t.album_id = a.id
WHERE EXTRACT(YEAR FROM a.year_release) BETWEEN 2018 AND 2020;

-- Запрос 3
SELECT a.title AS album_title, AVG(EXTRACT(EPOCH FROM t.duration)) AS average_duration
FROM album a
JOIN tracks t ON a.id = t.album_id
GROUP BY a.title;

-- Запрос 4
SELECT DISTINCT ar.name
FROM artists ar
WHERE ar.id NOT IN (
    SELECT DISTINCT aa.artist_id
    FROM artist_album aa
    JOIN album al ON aa.album_id = al.id
    WHERE EXTRACT(YEAR FROM al.year_release) = 2020
);

-- Запрос 5
SELECT c.title AS compilation_title
FROM compilations c
JOIN compilations_track ct ON c.id = ct.compilations_id
JOIN tracks t ON ct.track_id = t.id
JOIN artist_album aa ON t.album_id = aa.album_id
JOIN artists ar ON aa.artist_id = ar.id
WHERE ar.name = 'Nirvana'; 
