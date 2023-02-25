create table baiviet_tacgia
(
    ma_bviet int not null,
    ma_tgia  int not null,
    primary key (ma_bviet, ma_tgia),
    constraint baiviet_tacgia_ibfk_1
        foreign key (ma_bviet) references baiviet (ma_bviet),
    constraint baiviet_tacgia_ibfk_2
        foreign key (ma_tgia) references tacgia (ma_tgia)
);

create index ma_tgia
    on baiviet_tacgia (ma_tgia);

INSERT INTO btth01_cse485.baiviet_tacgia (ma_bviet, ma_tgia) VALUES (1, 1);
INSERT INTO btth01_cse485.baiviet_tacgia (ma_bviet, ma_tgia) VALUES (5, 1);
INSERT INTO btth01_cse485.baiviet_tacgia (ma_bviet, ma_tgia) VALUES (7, 1);
INSERT INTO btth01_cse485.baiviet_tacgia (ma_bviet, ma_tgia) VALUES (8, 1);
INSERT INTO btth01_cse485.baiviet_tacgia (ma_bviet, ma_tgia) VALUES (9, 1);
INSERT INTO btth01_cse485.baiviet_tacgia (ma_bviet, ma_tgia) VALUES (10, 2);
INSERT INTO btth01_cse485.baiviet_tacgia (ma_bviet, ma_tgia) VALUES (2, 3);
INSERT INTO btth01_cse485.baiviet_tacgia (ma_bviet, ma_tgia) VALUES (3, 4);
INSERT INTO btth01_cse485.baiviet_tacgia (ma_bviet, ma_tgia) VALUES (4, 5);
INSERT INTO btth01_cse485.baiviet_tacgia (ma_bviet, ma_tgia) VALUES (6, 6);