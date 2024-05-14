
USE alors;

CREATE TABLE users (
                       user_id INT AUTO_INCREMENT PRIMARY KEY,
                       first_name VARCHAR(15),
                       last_name VARCHAR(15),
                       `user` VARCHAR(15),
                       password VARCHAR(32),
                       avatar VARCHAR(70),
                       last_login DATETIME,
                       failed_login INT
);

INSERT INTO users (first_name, last_name, `user`, password, avatar, last_login, failed_login)
VALUES
    ('admin', 'admin', 'admin', MD5('admin'), 'admin.jpg', NOW(), 0),
    ('Los', 'Fortune', 'losfortune', MD5('qwerty'), 'losfortune.jpg', NOW(), 0),
    ('Easter', 'Egg', 'red', MD5('lolita'), 'eggsareforeaster.jpg', NOW(), 0),
    ('Head', 'Crack', 'crackheady', MD5('lospollos'), 'iknock.jpg', NOW(), 0),
    ('Notre', 'Dame', 'deparis', MD5('fate'), 'bells.jpg', NOW(), 0);

CREATE TABLE guestbook (
                           comment_id INT AUTO_INCREMENT PRIMARY KEY,
                           comment VARCHAR(300),
                           name VARCHAR(100)
);

INSERT INTO guestbook (comment, name) VALUES ('This is not only a comment', 'god');
