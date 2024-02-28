-- Название и продолжительность самого длительного трека
SELECT track_name, track_duration FROM Track
WHERE track_duration = (SELECT MAX (track_duration) FROM Track)
;
-- Название треков, продолжительность которых не менее 3,5 минут
SELECT track_name, track_duration FROM Track
WHERE track_duration >= 3.5
ORDER BY track_duration DESC
;
-- Названия сборников, вышедших в период с 2018 по 2020 год включительно
SELECT collection_name FROM Collection
WHERE EXTRACT (YEAR FROM collection_release) BETWEEN 2018 AND 2020;
;
-- Исполнители, чье имя состоит из одного слова
SELECT actor_name FROM Actor
WHERE actor_name NOT LIKE '% %'
;
-- Название треков, которые содержат слово «мой» или «my»
SELECT track_name FROM Track
WHERE track_name LIKE '%мой%' OR track_name LIKE '%my%'
;
-- Количество исполнителей в каждом жанре
SELECT genre_name, COUNT(actor_id) AS actor_count FROM Genre_actor AS ga
JOIN Genre AS g ON ga.genre_id = g.genre_id
GROUP BY g.genre_name
ORDER BY actor_count DESC
;
-- Количество треков, вошедших в альбомы 2019-2020 годов
SELECT album_name, release_year, COUNT(track_id) FROM Track
JOIN Album ON Track.album_id = Album.album_id
GROUP BY album_name, release_year
HAVING EXTRACT (YEAR FROM release_year) BETWEEN 2019 AND 2020
; 
-- Средняя продолжительность треков по каждому альбому
SELECT album_name, AVG (track_duration) FROM Track
JOIN Album ON Track.album_id = Album.album_id
GROUP BY album_name
ORDER BY AVG (track_duration) DESC
; 
-- Все исполнители, которые НЕ выпустили альбомы в 2020 году
SELECT DISTINCT actor_name FROM Actor
JOIN Actor_album ON Actor.actor_id = Actor_album.actor_id
JOIN Album ON Actor_album.album_id = Album.album_id
WHERE EXTRACT (YEAR FROM release_year) <> 2020
;
-- Названия сборников, в которых присутствует конкретный исполнитель (пример - "Кино")
SELECT collection_name, actor_name FROM Collection
JOIN Collection_track ON Collection.collection_id = Collection_track. collection_id
JOIN Track ON Collection_track. track_id = Track.track_id
JOIN Album ON Track.album_id = Album.album_id
JOIN Actor_album ON Album.album_id = Actor_album.album_id
JOIN Actor ON Actor_album.actor_id = Actor.actor_id
WHERE actor_name LIKE 'Кино'
;