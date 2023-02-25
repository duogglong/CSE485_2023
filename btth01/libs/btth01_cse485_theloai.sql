create table theloai
(
    ma_tloai  int auto_increment
        primary key,
    ten_tloai varchar(50) charset utf8 not null
);

INSERT INTO btth01_cse485.theloai (ma_tloai, ten_tloai) VALUES (1, 'Nhạc trẻ');
INSERT INTO btth01_cse485.theloai (ma_tloai, ten_tloai) VALUES (2, 'Nhạc trữ tình');
INSERT INTO btth01_cse485.theloai (ma_tloai, ten_tloai) VALUES (3, 'Nhạc cách mạng');
INSERT INTO btth01_cse485.theloai (ma_tloai, ten_tloai) VALUES (4, 'Nhạc thiếu nhi');
INSERT INTO btth01_cse485.theloai (ma_tloai, ten_tloai) VALUES (5, 'Nhạc quê hương');
INSERT INTO btth01_cse485.theloai (ma_tloai, ten_tloai) VALUES (6, 'POP');
INSERT INTO btth01_cse485.theloai (ma_tloai, ten_tloai) VALUES (7, 'Rock');
INSERT INTO btth01_cse485.theloai (ma_tloai, ten_tloai) VALUES (8, 'R&B');