create table theloai_baiviet
(
    ma_tloai int not null,
    ma_bviet int not null,
    primary key (ma_tloai, ma_bviet),
    constraint theloai_baiviet_ibfk_1
        foreign key (ma_tloai) references theloai (ma_tloai),
    constraint theloai_baiviet_ibfk_2
        foreign key (ma_bviet) references baiviet (ma_bviet)
);

create index ma_bviet
    on theloai_baiviet (ma_bviet);

INSERT INTO btth01_cse485.theloai_baiviet (ma_tloai, ma_bviet) VALUES (2, 1);
INSERT INTO btth01_cse485.theloai_baiviet (ma_tloai, ma_bviet) VALUES (2, 2);
INSERT INTO btth01_cse485.theloai_baiviet (ma_tloai, ma_bviet) VALUES (3, 2);
INSERT INTO btth01_cse485.theloai_baiviet (ma_tloai, ma_bviet) VALUES (2, 3);
INSERT INTO btth01_cse485.theloai_baiviet (ma_tloai, ma_bviet) VALUES (5, 4);
INSERT INTO btth01_cse485.theloai_baiviet (ma_tloai, ma_bviet) VALUES (5, 5);
INSERT INTO btth01_cse485.theloai_baiviet (ma_tloai, ma_bviet) VALUES (7, 6);
INSERT INTO btth01_cse485.theloai_baiviet (ma_tloai, ma_bviet) VALUES (7, 7);
INSERT INTO btth01_cse485.theloai_baiviet (ma_tloai, ma_bviet) VALUES (1, 8);
INSERT INTO btth01_cse485.theloai_baiviet (ma_tloai, ma_bviet) VALUES (8, 9);
INSERT INTO btth01_cse485.theloai_baiviet (ma_tloai, ma_bviet) VALUES (7, 10);
INSERT INTO btth01_cse485.theloai_baiviet (ma_tloai, ma_bviet) VALUES (2, 11);
INSERT INTO btth01_cse485.theloai_baiviet (ma_tloai, ma_bviet) VALUES (7, 12);
INSERT INTO btth01_cse485.theloai_baiviet (ma_tloai, ma_bviet) VALUES (8, 13);