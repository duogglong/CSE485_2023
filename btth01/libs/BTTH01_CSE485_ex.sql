# Bai 3.a:
CREATE TABLE tacgia
(
    ma_tgia   INT           NOT NULL AUTO_INCREMENT PRIMARY KEY,
    ten_tgia  NVARCHAR(100) NOT NULL,
    hinh_tgia NVARCHAR(100)
);

CREATE TABLE theloai
(
    ma_tloai  INT          NOT NULL AUTO_INCREMENT PRIMARY KEY,
    ten_tloai NVARCHAR(50) NOT NULL
);

CREATE TABLE baiviet
(
    ma_bviet INT           NOT NULL AUTO_INCREMENT PRIMARY KEY,
    tieude   NVARCHAR(200) NOT NULL,
    ten_bhat NVARCHAR(100) NOT NULL,
    ma_tloai int           NOT NULL,
    tomtat   TEXT          NOT NULL,
    noidung  TEXT,
    ma_tgia  int           NOT NULL,
    ngayviet DATETIME      NOT NULL DEFAULT NOW(),
    hinhanh  VARCHAR(200),
    FOREIGN KEY (ma_tloai) REFERENCES theloai (ma_tloai),
    FOREIGN KEY (ma_tgia) REFERENCES tacgia (ma_tgia)
);

# Bai 3.b 3.c:
CREATE TABLE tacgia
(
    ma_tgia   INT           NOT NULL AUTO_INCREMENT PRIMARY KEY,
    ten_tgia  NVARCHAR(100) NOT NULL,
    hinh_tgia NVARCHAR(100)
);

CREATE TABLE theloai
(
    ma_tloai  INT          NOT NULL AUTO_INCREMENT PRIMARY KEY,
    ten_tloai NVARCHAR(50) NOT NULL
);

CREATE TABLE baiviet
(
    ma_bviet INT           NOT NULL AUTO_INCREMENT PRIMARY KEY,
    tieude   NVARCHAR(200) NOT NULL,
    ten_bhat NVARCHAR(100) NOT NULL,
    tomtat   TEXT          NOT NULL,
    noidung  TEXT,
    ngayviet DATETIME      NOT NULL DEFAULT NOW(),
    hinhanh  VARCHAR(200)
);

CREATE TABLE theloai_baiviet
(
    ma_tloai int NOT NULL,
    ma_bviet  int NOT NULL,
    PRIMARY KEY (ma_tloai, ma_bviet),
    FOREIGN KEY (ma_tloai) REFERENCES theloai (ma_tloai),
    FOREIGN KEY (ma_bviet) REFERENCES baiviet (ma_bviet)
);

CREATE TABLE baiviet_tacgia
(
    ma_bviet int NOT NULL,
    ma_tgia  int NOT NULL,
    PRIMARY KEY (ma_bviet, ma_tgia),
    FOREIGN KEY (ma_bviet) REFERENCES baiviet (ma_bviet),
    FOREIGN KEY (ma_tgia) REFERENCES tacgia (ma_tgia)
);

CREATE TABLE user
(
    id INT           NOT NULL AUTO_INCREMENT PRIMARY KEY,
    username   VARCHAR(20) NOT NULL,
    password   VARCHAR(30) NOT NULL,
);

