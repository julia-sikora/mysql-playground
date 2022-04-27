USE playground;

CREATE TABLE user
(
    id        INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    firstname VARCHAR(30) NOT NULL,
    lastname  VARCHAR(30) NOT NULL,
    email     VARCHAR(50) NOT NULL
);

CREATE TABLE color
(
    id   INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    hex  VARCHAR(6)  NOT NULL
);

CREATE TABLE product
(
    id       INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name     VARCHAR(50) NOT NULL,
    price    INT         NOT NULL,
    color_id INT UNSIGNED,
    FOREIGN KEY (color_id) REFERENCES color (id)
);