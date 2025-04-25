-- Заполнение таблицы жанров
INSERT INTO genre_of_music (name) VALUES
('Rock'),
('Pop'),
('Jazz');

-- Заполнение таблицы исполнителей
INSERT INTO artists (name) VALUES
('Nirvana'),  -- Rock
('Adele'),    -- Pop
('Miles Davis'),  -- Jazz
('The Beatles');  -- Rock

-- Заполнение таблицы альбомов
INSERT INTO album (title, year_release) VALUES
('Nevermind', '1991-09-24'),  -- Nirvana
('25', '2015-11-20'),         -- Adele
('Kind of Blue', '1959-08-17'), -- Miles Davis
('Abbey Road', '1969-09-26');  -- The Beatles

-- Заполнение таблицы треков
INSERT INTO tracks (title, duration, album_id) VALUES
('Smells Like Teen Spirit', '00:04:38', 1),  -- Nevermind
('Someone Like You', '00:04:45', 2),         -- 25
('So What', '00:09:22', 3),                   -- Kind of Blue
('Come Together', '00:04:20', 4),             -- Abbey Road
('All Apologies', '00:03:50', 1),             -- Nevermind
('Rolling in the Deep', '00:03:48', 2);       -- 25


-- Заполнение таблицы сборников
INSERT INTO compilations (title, year_release) VALUES
('Greatest Hits', '2010-11-01'),   -- Various Artists
('The Best of Jazz', '2018-07-15'), -- Various Artists
('Rock Classics', '2020-05-10'),   -- Various Artists
('Pop Hits of the 2010s', '2021-03-05'); -- Various Artists

-- Заполнение таблицы связей исполнителей с жанрами
INSERT INTO list_of_perfomers (artist_id, gender_id) VALUES
(1, 1),  -- Nirvana, Rock
(2, 2),  -- Adele, Pop
(3, 3),  -- Miles Davis, Jazz
(4, 1);  -- The Beatles, Rock

-- Заполнение таблицы связей исполнителей с альбомами
INSERT INTO artist_album (artist_id, album_id) VALUES
(1, 1),  -- Nirvana, Nevermind
(2, 2),  -- Adele, 25
(3, 3),  -- Miles Davis, Kind of Blue
(4, 4);  -- The Beatles, Abbey Road

-- Заполнение таблицы связей сборников с треками
INSERT INTO compilations_track (compilations_id, track_id) VALUES
(1, 1),  -- Greatest Hits, Smells Like Teen Spirit
(1, 4),  -- Greatest Hits, Come Together
(2, 3),  -- The Best of Jazz, So What
(2, 5),  -- The Best of Jazz, All Apologies
(3, 1),  -- Rock Classics, Smells Like Teen Spirit
(3, 6);  -- Rock Classics, Rolling in the Deep
