CREATE TABLE IF NOT EXISTS genre_of_music (
id SERIAL PRIMARY KEY,
name VARCHAR(40) NOT NULL
);

CREATE TABLE IF NOT EXISTS artists (
id SERIAL PRIMARY KEY,
name VARCHAR(40) NOT NULL
);

CREATE TABLE IF NOT EXISTS album (
id SERIAL PRIMARY KEY,
title VARCHAR(40) NOT NULL,
year_release DATE
);

CREATE TABLE IF NOT EXISTS tracks (
id SERIAL PRIMARY KEY,
title VARCHAR(40) NOT NULL,
duration INTERVAL, -- Или INTEGER, если хотите хранить в секундах
album_id INTEGER NOT NULL REFERENCES album(id)
);

CREATE TABLE IF NOT EXISTS compilations (
id SERIAL PRIMARY KEY,
title VARCHAR(40) NOT NULL,
year_release DATE
);

CREATE TABLE IF NOT EXISTS list_of_perfomers (
artist_id INTEGER REFERENCES artists(id),
gender_id INTEGER REFERENCES genre_of_music(id)
);

CREATE TABLE IF NOT EXISTS compilations_track (
compilations_id INTEGER REFERENCES compilations(id),
track_id INTEGER REFERENCES tracks(id)
);

CREATE TABLE IF NOT EXISTS artist_album (
artist_id INTEGER REFERENCES artists(id),
album_id INTEGER REFERENCES album(id)
);