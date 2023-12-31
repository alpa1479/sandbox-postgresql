SET search_path TO relationships_many_to_many;

INSERT INTO authors(name)
VALUES ('Thomas Artis'),
       ('Rania Martinez'),
       ('Nathanial Snugg'),
       ('Kathryn Armatys'),
       ('Row Le Sarr'),
       ('Krystal Ryves'),
       ('Pat Cambridge');

INSERT INTO books(title)
VALUES ('The Oblong Box'),
       ('Skin Deep'),
       ('Summer Catch'),
       ('The Missionaries'),
       ('9 Star Hotel (Malon 9 Kochavim)'),
       ('Street Kings'),
       ('Squeeze'),
       ('Old San Francisco'),
       ('Pauly Shore Is Dead'),
       ('Wayward Bus'),
       ('Brimstone and Treacle'),
       ('The Walking Stick'),
       ('Eight Below'),
       ('Riders of the Purple Sage'),
       ('Harry and Tonto');

INSERT INTO books_authors(book_id, author_id)
VALUES ((select id from books where title = 'The Oblong Box'), (select id from authors where name = 'Thomas Artis')),
       ((select id from books where title = 'The Oblong Box'), (select id from authors where name = 'Rania Martinez')),
       ((select id from books where title = 'The Oblong Box'), (select id from authors where name = 'Nathanial Snugg')),
       ((select id from books where title = 'Skin Deep'), (select id from authors where name = 'Rania Martinez')),
       ((select id from books where title = 'Summer Catch'), (select id from authors where name = 'Nathanial Snugg')),
       ((select id from books where title = 'Summer Catch'), (select id from authors where name = 'Thomas Artis')),
       ((select id from books where title = 'The Missionaries'), (select id from authors where name = 'Pat Cambridge')),
       ((select id from books where title = 'Street Kings'), (select id from authors where name = 'Kathryn Armatys')),
       ((select id from books where title = 'Street Kings'), (select id from authors where name = 'Krystal Ryves')),
       ((select id from books where title = 'Squeeze'), (select id from authors where name = 'Pat Cambridge')),
       ((select id from books where title = 'Squeeze'), (select id from authors where name = 'Nathanial Snugg')),
       ((select id from books where title = 'Old San Francisco'), (select id from authors where name = 'Thomas Artis')),
       ((select id from books where title = 'Wayward Bus'), (select id from authors where name = 'Nathanial Snugg')),
       ((select id from books where title = 'Wayward Bus'), (select id from authors where name = 'Thomas Artis')),
       ((select id from books where title = 'The Walking Stick'), (select id from authors where name = 'Row Le Sarr')),
       ((select id from books where title = 'Eight Below'), (select id from authors where name = 'Kathryn Armatys')),
       ((select id from books where title = 'Eight Below'), (select id from authors where name = 'Krystal Ryves')),
       ((select id from books where title = 'Eight Below'), (select id from authors where name = 'Pat Cambridge')),
       ((select id from books where title = 'Harry and Tonto'), (select id from authors where name = 'Thomas Artis')),
       ((select id from books where title = 'Harry and Tonto'), (select id from authors where name = 'Rania Martinez')),
       ((select id from books where title = 'Harry and Tonto'), (select id from authors where name = 'Krystal Ryves'));
