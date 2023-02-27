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

CREATE TABLE users
(
    id INT           NOT NULL AUTO_INCREMENT PRIMARY KEY,
    username   VARCHAR(20) NOT NULL,
    password   VARCHAR(30) NOT NULL
);

# a. Liệt kê các bài viết về các bài hát thuộc thể loại Nhạc trữ tình
select b.* from theloai t
join theloai_baiviet tb on t.ma_tloai = tb.ma_tloai
join baiviet b on b.ma_bviet = tb.ma_bviet
where t.ten_tloai = 'Nhạc trữ tình';

# b. Liệt kê các bài viết của tác giả “Nhacvietplus”
select b.* from baiviet b
join baiviet_tacgia bt on b.ma_bviet = bt.ma_bviet
join tacgia t on t.ma_tgia = bt.ma_tgia
where t.ten_tgia = 'Nhacvietplus';

# c. Liệt kê các thể loại nhạc chưa có bài viết cảm nhận nào.
select t.* from theloai t
left join theloai_baiviet tb on t.ma_tloai = tb.ma_tloai
where tb.ma_tloai is null;

# d. Liệt kê các bài viết với các thông tin sau: mã bài viết, tên bài viết, tên bài hát, tên tác giả, tên
# thể loại, ngày viết.


# e. Tìm thể loại có số bài viết nhiều nhất

# f. Liệt kê 2 tác giả có số bài viết nhiều nhất

# g. Liệt kê các bài viết về các bài hát có tựa bài hát chứa 1 trong các từ “yêu”, “thương”, “anh”, “em”

# h. Liệt kê các bài viết về các bài hát có tiêu đề bài viết hoặc tựa bài hát chứa 1 trong các từ
# “yêu”, “thương”, “anh”, “em”

# i. Tạo 1 view có tên vw_Music để hiển thị thông tin về Danh sách các bài viết kèm theo Tên
# thể loại và tên tác giả

# j. Tạo 1 thủ tục có tên sp_DSBaiViet với tham số truyền vào là Tên thể loại và trả về danh sách
# Bài viết của thể loại đó. Nếu thể loại không tồn tại thì hiển thị thông báo lỗi.

# k. Thêm mới cột SLBaiViet vào trong bảng theloai. Tạo 1 trigger có tên tg_CapNhatTheLoai để
# khi thêm/sửa/xóa bài viết thì số lượng bài viết trong bảng theloai được cập nhật theo.


#caue
select  ma_tloai ,count(ma_tloai)
from baiviet
group by ma_tloai
order by count(ma_tloai) desc
LIMIT 1;
#cauf

create view cauf 
as
select  ma_tgia ,count(ma_tgia)
from baiviet
group by ma_tgia
order by count(ma_tgia) desc
LIMIT 2;

select ten_tgia
from tacgia
where ma_tgia in(
select ma_tgia from cauf);
#caug
select ma_bviet,tieude
from baiviet
where tomtat like '%yêu%' OR tomtat like'%thương%' OR tomtat like'%anh%' OR  tomtat like'%em%';
#cauh
select ma_bviet,tieude
from baiviet
where tomtat like '%yêu%' OR tomtat like'%thương%' OR tomtat like'%anh%' OR  tomtat like'%em%' OR tieude like '%yêu%' OR tieude like'%thương%' OR tieude like'%anh%' OR  tieude like'%em%';
#caui
create view vw_Music 
as
select tieude, ten_tgia, ten_tloai
from tacgia
inner join baiviet
on tacgia.ma_tgia = baiviet.ma_tgia
inner join theloai
on theloai.ma_tloai = baiviet.ma_tloai
select * from vw_Music
#cauj
create procedure sp_DSBAIVIET(IN ten_tloai varchar(50)