INSERT INTO Genre (genre_id, genre_name)
VALUES (1, 'Рок'), 
       (2, 'Поп'), 
       (3, 'Шансон')
       ;
INSERT INTO Actor (actor_id, actor_name)
VALUES (1, 'Пикник'), (2, 'Король и Шут'), (3,'Кино'), 
       (4, 'Полина Гагарина'), (5, 'Максим'), 
       (6, 'Григорий Лепс'), (7, 'Афина')
       ;
INSERT INTO Album (album_id, album_name, release_year)
VALUES (1, 'Королевство кривых', '2005-01-01'), 
       (2, 'В руках великана', '2019-01-01'), 
       (3, 'Веселый и злой', '2022-01-01'),
       (4, 'Камнем по голове', '1996-01-01'), 
       (5, 'Ели мясо мужики', '1999-01-01'), 
       (6, 'Как в старой сказке', '2001-01-01'), 
       (7, 'Группа крови', '1988-01-01'), 
       (8, 'Звезда по имени Солнце', '1989-01-01'), 
       (9, '12/22', '2022-01-01'),
       (10,'Попроси у облаков', '2007-01-01'),
       (11, 'Вдох', '2022-01-01'),
       (12, 'Трудный возраст', '2006-01-01'),
       (13, 'Мой рай', '2007-01-01'),
       (14, 'Водопад', '2009-01-01'),
       (15, 'Подмена понятий', '2022-01-01'),
       (16, 'Настоящая любовь', '2018-01-01'),
       (17, 'Хочу быть любимой', '2020-01-01')
       ;
INSERT INTO Track (track_id, album_id, track_name, track_duration)
VALUES (1, 1, 'У шамана 3 руки', 4.5), (2, 1, 'И всё', 3.4), 
       (3, 2, 'Счастливчик', 3.3), (4, 2, 'Душа самурая', 3.2), 
       (5, 3, 'Всё перевернется', 3.1), (6, 3, 'Утро', 4.2), 
       (7, 4, 'Верная жена', 3.2), (8, 4, 'Садовник', 4.1), 
       (9, 5, 'Лесник', 3.5), (10, 5, 'Прыгну со скалы', 3.4), 
       (11, 6, 'Гимн шута', 3.1), (12, 6, 'Воспоминания о былой любви', 5.0), 
       (13, 7, 'Спокойная ночь', 3.2), (14, 7, 'Легенда', 3.4), 
       (15, 8, 'Пачка сигарет', 4.1), (16, 8, 'Апрель', 4.3), 
       (17, 9, 'Нам с тобой', 4.1), (18, 9, 'Кукушка', 3.9),
       (19, 10, 'Ветер', 3.37), (20, 10, 'Ты мой', 3.18),
       (21, 11, 'Бабочки', 3.08), (22, 11, 'Мировой океан', 3.2),
       (23, 12, 'Нежность', 3.18), (24, 12, 'Ветром стать', 3.12),
       (25, 13, 'Мой рай', 3.36), (26, 13, 'Не отдам', 3.0),
       (27, 14, 'Беги по небу', 4.31), (28, 14, 'Она не твоя', 3.40),
       (29, 15, 'Всех благ', 4.4), (30, 15, 'Она меня балует', 3.09),
       (31, 16, 'Осень', 3.00), (32, 16, 'Пой, душа', 3.05),
       (33, 17, 'Танцуй, красивая', 3.3), (34, 17, 'Сестра', 3.5)
       ;
-- Наименования сборников являются вымышленными
INSERT INTO Collection (collection_name, collection_release)
VALUES ('Золотые рок-хиты', '2019-01-01'), 
       ('Звезды эстрады', '2020-01-01'), 
       ('Шлягеры шансона', '2021-01-01'), 
       ('Песни на все времена', '2022-01-01')
       ;
INSERT INTO Genre_actor
VALUES (1, 1), (1, 2), (1,3), 
       (2, 4), (2, 5), 
       (3, 6), (3, 7)
       ;
INSERT INTO Actor_album
VALUES (1, 1), (1, 2), (1,3), 
       (2, 4), (2, 5), (2, 6), 
       (3, 7), (3, 8), (3, 9),
       (4, 10), (4, 11),
       (5, 12), (5, 13),
       (6, 14), (6, 15),
       (7, 16), (7,17)
       ;
INSERT INTO Collection_track
VALUES (1, 1), (1, 9), (1, 15),
       (2, 19), (2, 24),
       (3, 28), (3, 34),
       (4, 2), (4, 18), (4, 25), (4, 30)
       ;