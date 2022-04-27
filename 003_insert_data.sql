INSERT INTO color (name, hex)
VALUES ('red', 'FF0000');

INSERT INTO color (name, hex)
VALUES ('green', '00FF00');

INSERT INTO color (name, hex)
VALUES ('blue', '0000FF');

INSERT INTO color (name, hex)
VALUES ('magenta', 'FF00FF');

INSERT INTO user (firstname, lastname, email)
VALUES ('Adam', 'Malysz', 'adas@wp.pl'),
       ('Robert', 'Kubica', 'kubica@gmail.com'),
       ('Mariusz', 'Pudzianowski', 'pudzio@wp.pl');

INSERT INTO product (price, name, color_id)
VALUES (10, 'konewka', (SELECT id FROM color WHERE name = 'green')),
       (400, 'felga aluminiowa', (SELECT id FROM color WHERE name = 'magenta')),
       (2, 'kubek', (SELECT id FROM color WHERE name = 'blue'))