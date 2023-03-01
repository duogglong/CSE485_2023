create table users
(
    id       int auto_increment
        primary key,
    username varchar(20) not null,
    password varchar(30) not null
);

INSERT INTO btth01_cse485.users (id, username, password) VALUES (1, 'admin', '123456');