-- Создание таблицы «Genre»:
CREATe TABLE IF NOT EXISTS Genre (
    genre_id SERIAL PRIMARY KEY,
    genre_name VARCHAR (50) NOT NULL
    );
-- Создание таблицы «Actor»:
CREATe TABLE IF NOT EXISTS Actor (
    actor_id SERIAL PRIMARY KEY,
    actor_name VARCHAR (100) NOT NULL
    );
-- Создание таблицы «Album»:
CREATe TABLE IF NOT EXISTS Album (
    album_id SERIAL PRIMARY KEY,
    album_name VARCHAR (100) NOT NULL,
    release_year DATE NOT NULL
    );
-- Создание таблицы «Track»:
CREATe TABLE IF NOT EXISTS Track (
    track_id SERIAL PRIMARY KEY,
    album_id INTEGER NOT NULL REFERENCES Album (album_id),
    track_name VARCHAR (100) NOT NULL,
    track_duration NUMERIC (4, 2) NOT NULL
    );
-- Создание таблицы «Collection»:
CREATe TABLE IF NOT EXISTS Collection (
    collection_id SERIAL PRIMARY KEY,
    collection_name VARCHAR (50) NOT NULL,
    collection_release DATE NOT null
    );
-- Создание таблицы «Genre_actor»:
CREATe TABLE IF NOT EXISTS Genre_actor (
    genre_id INTEGER REFERENCES Genre (genre_id),
    actor_id INTEGER REFERENCES Actor (actor_id),
    CONSTRAINT pk1 PRIMARY KEY (genre_id, actor_id)
    );
-- Создание таблицы «Actor_album»:
CREATe TABLE IF NOT EXISTS Actor_album (
    actor_id INTEGER REFERENCES Actor (actor_id),
    album_id INTEGER REFERENCES Album (album_id),
    CONSTRAINT pk2 PRIMARY KEY (actor_id, album_id)
    );
-- Создание таблицы «Collection_track»:
create TABLE IF NOT EXISTS Collection_track (
    collection_id INTEGER REFERENCES Collection (collection_id),
    track_id INTEGER REFERENCES Track (track_id),
    CONSTRAINT pk3 PRIMARY KEY (collection_id, track_id)
    );