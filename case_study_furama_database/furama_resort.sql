drop database if exists furama_resort;
create database furama_resort;
use furama_resort;

create table vi_tri(
	ma_vi_tri int primary key,
    ten_vi_tri varchar(45)
);

create table trinh_do(
	ma_trinh_do int primary key,
    ten_trinh_do varchar(45)
);

create table bo_phan(
	ma_bo_phan int primary key,
    ten_bo_phan varchar(45)
);

create table nhan_vien(
	ma_nhan_vien int primary key,
    ho_ten varchar(45),
    ngay_sinh date,
    so_cmnd varchar(45),
    luong double,
    so_dien_thoai varchar(45),
    email varchar(45),
    dia_chi varchar(45),
    ma_vi_tri int,
    ma_trinh_do int,
    ma_bo_phan int,
    foreign key (ma_vi_tri) references vi_tri (ma_vi_tri),
    foreign key (ma_trinh_do) references trinh_do (ma_trinh_do),
    foreign key (ma_bo_phan) references bo_phan (ma_bo_phan)
);

create table loai_khach(
	ma_loai_khach int primary key,
    ten_loai_khach varchar(45)
);

create table khach_hang(
	ma_khach_hang int primary key,
    ho_va_ten varchar(45),
    ngay_sinh date,
    gioi_tinh bit(1),
    so_cmnd varchar(45),
    so_dien_thoai varchar(45),
    email varchar(45),
    dia_chi varchar(45),
	ma_loai_khach int,
    foreign key (ma_loai_khach) references loai_khach (ma_loai_khach)
);

create table kieu_thue(
	ma_kieu_thue int primary key,
    ten_kieu_thue varchar(45)
);

create table loai_dich_vu(
	ma_loai_dich_vu int primary key,
    ten_loai_dich_vu varchar(45)
);

create table dich_vu(
ma_dich_vu int primary key,
ten_dich_vu varchar(45),
dien_tich int,
chi_phi_thue double,
so_nguoi_toi_da int,
tieu_chuan_phong varchar(45),
mo_ta_tien_nghi_khac varchar(45),
dien_tich_ho_boi double,
so_tang int,
ma_kieu_thue int,
ma_loai_dich_vu int,
foreign key(ma_kieu_thue) references kieu_thue(ma_kieu_thue),
foreign key(ma_loai_dich_vu) references loai_dich_vu(ma_loai_dich_vu)
);

create table dich_vu_di_kem(
	ma_dich_vu_di_kem int primary key,
    ten_dich_vu_di_kem varchar(45),
    gia double,
    don_vi varchar(10),
    trang_thai varchar(45)
);

create table hop_dong(
	ma_hop_dong int primary key,
    ngay_lam_hop_dong datetime,
    ngay_ket_thuc datetime,
    tien_dat_coc double,
    ma_nhan_vien int,
    ma_khach_hang int,
    ma_dich_vu int,
    foreign key (ma_nhan_vien) references nhan_vien (ma_nhan_vien),
    foreign key (ma_khach_hang) references khach_hang (ma_khach_hang),
    foreign key (ma_dich_vu) references dich_vu (ma_dich_vu)
);

create table hop_dong_chi_tiet(
ma_hop_dong_chi_tiet int primary key,
so_luong int,
ma_hop_dong int,
ma_dich_vu_di_kem int,
foreign key(ma_hop_dong) references hop_dong(ma_hop_dong),
foreign key(ma_dich_vu_di_kem) references dich_vu_di_kem(ma_dich_vu_di_kem)
);

-- TASK 1: 
-- Thêm mới Vị trí
insert into vi_tri values (1,'Quản lý');
insert into vi_tri values (2,'Nhân viên');

-- Thêm mới trình độ
insert into trinh_do values (1,'Trung cấp');
insert into trinh_do values (2,'Cao đẳng');
insert into trinh_do values (3,'Đại học');
insert into trinh_do values (4,'Sau Đại học');

-- Thêm mới bộ phận
insert into bo_phan values (1,'Sale-marketing');
insert into bo_phan values (2,'Hành chính');
insert into bo_phan values (3,'Phục vụ');
insert into bo_phan values (4,'Quản lý');

-- Thêm mới nhân viên
insert into nhan_vien values (1,'Nguyễn Văn An', '1994-01-08','456231786','10000000','0901234121','annguyen@gmail.com','295 Nguyễn Tất Thành, Đà Nẵng',1,3,1);
insert into nhan_vien values (2,'Lê Văn Bình', '1997-04-09','654231234','7000000','0934212314','binhlv@gmail.com','22 Yên Bái, Đà Nẵng',1,2,2);
insert into nhan_vien values (3,'Hồ Thị Yến','1995-12-12','999231723','14000000','0412352315','thiyen@gmail.com','K234/11 Điện Biên Phủ, Gia Lai',1,3,2);
insert into nhan_vien values (4,'Võ Công Toản','1980-04-04','123231365','17000000','0374443232','toan0404@gmail.com','77 Hoàng Diệu, Quảng Trị',1,4,4);
insert into nhan_vien values (5,'Nguyễn Bỉnh Phát','1999-12-09','454363232','6000000','0902341231','phatphat@gmail.com','43 Yên Bái, Đà Nẵng',2,1,1);
insert into nhan_vien values (6,'Khúc An Nghi','2000-11-08','964542311','7000000','0978653213','annghi20@gmail.com','294 Nguyễn Tất Thành, Đà Nẵng',2,3,3);
insert into nhan_vien values (7,'Nguyễn Hữu Hà','1993-01-01','534323231','8000000','0941234553','nhh0101@gmail.com','4 Nguyễn Chí Thanh, Huế',2,3,2);
insert into nhan_vien values (8,'Nguyễn Hà Đông','1989-09-03','234414123','9000000','0642123111','donghanguyen@gmail.com','111 Hùng Vương, Hà Nội',2,4,4);
insert into nhan_vien values (9,'Tống Hoàng Giang','1982-09-03','256781231','6000000','0245144444','hoangtong@gmail.com','213 Hàm Nghi, Đà Nẵng',2,4,4);
insert into nhan_vien values (10,'Nguyễn Công Đạo','1994-01-08','755434343','8000000','0988767111','nguyencongdao12@gmail.com','6 Hoà Khánh, Đồng Nai',2,3,2);

-- Thêm mới loại khách
insert into loai_khach values (1,'Diamond');
insert into loai_khach values (2,'Platinium');
insert into loai_khach values (3,'Gold');
insert into loai_khach values (4,'Silver');
insert into loai_khach values (5,'Member');

-- Thêm mới khách hàng
insert into khach_hang values (1,'Nguyễn Thị Hào','1970-11-07',0,'643431213','0945423362','thihao07@gmail.com','23 Nguyễn Hoàng, Đà Nẵng',5);
insert into khach_hang values (2,'Phạm Xuân Diệu','1992-08-08',1,'865342123','0954333333','xuandieu92@gmail.com','K77/22 Thái Phiên, Quảng Trị',3);
insert into khach_hang values (3,'Trương Đình Nghệ','1990-02-27',1,'488645199','0373213122','nghenhan2702@gmail.com','K323/12 Ông Ích Khiêm, Vinh',1);
insert into khach_hang values (4,'Dương Văn Quan','1981-07-08',1,'543432111','0490039241','duongquan@gmail.com','K453/12 Lê Lợi, Đà Nẵng',1);
insert into khach_hang values (5,'Hoàng Trần Nhi Nhi','1995-12-09',0,'795453345','0312345678','nhinhi123@gmail.com','224 Lý Thái Tổ, Gia Lai',4);
insert into khach_hang values (6,'Tôn Nữ Mộc Châu','2005-12-06',0,'732434215','0988888844','tonnuchau@gmail.com','37 Yên Thế, Đà Nẵng',4);
insert into khach_hang values (7,'Nguyễn Mỹ Kim','1984-04-08',0,'856453123','0912345698','kimcuong84@gmail.com','K123/45 Lê Lợi, Hồ Chí Minh',1);
insert into khach_hang values (8,'Nguyễn Thị Hào','1999-04-08',1,'965656433','0763212345','haohao99@gmail.com','55 Nguyễn Văn Linh, Kon Tum',3);
insert into khach_hang values (9,'Trần Đại Danh','1994-07-01',1,'344343432','0987654321','danhhai99@gmail.com','24 Lý Thường Kiệt, Quảng Ngãi',1);
insert into khach_hang values (10,'Nguyễn Tâm Đắc','1989-07-01',1,'432341235','0643343433','dactam@gmail.com','22 Ngô Quyền, Đà Nẵng',2);

-- Thêm mới kiểu thuê
insert into kieu_thue values (1,'Theo giờ');
insert into kieu_thue values (2,'Theo ngày');
insert into kieu_thue values (3,'Theo tháng');
insert into kieu_thue values (4,'Theo năm');

-- Thêm mới loại dịch vụ
insert into loai_dich_vu values (1,'Villa');
insert into loai_dich_vu values (2,'House');
insert into loai_dich_vu values (3,'Room');

-- Thêm mới dịch vụ
insert into dich_vu values (1,'Villa Beach Front','25000','10000000',10,'vip','Có hồ bơi',500,4,3,1);
insert into dich_vu values (2,'House Princess 01','14000','5000000',7,'vip','Có thêm bếp nướng',null,3,2,2);
insert into dich_vu values (3,'Room Twin 01','5000','1000000',2,'vip','Có tivi',null,null,4,3);
insert into dich_vu values (4,'Villa No Beach Front','22000','9000000',8,'normal','Có hồ bơi',300,3,3,1);
insert into dich_vu values (5,'House Princess 02','10000','4000000',5,'normal','Có thêm bếp nướng',null,2,3,2);
insert into dich_vu values (6,'Room Twin 02','3000','900000',2,'normal','Có tivi',null,null,4,3);

-- Thêm mới dịch vụ đi kèm
insert into dich_vu_di_kem values (1,'karaoke','10000','giờ','tiện nghi, hiện tại');
insert into dich_vu_di_kem values (2,'Thuê xe máy','10000','chiếc','hỏng 1 xe');
insert into dich_vu_di_kem values (3,'Thuê xe đạp','20000','chiếc','tốt');
insert into dich_vu_di_kem values (4,'Buffet buổi sáng','15000','suất','đầy đủ đồ ăn, tráng miệng');
insert into dich_vu_di_kem values (5,'Buffet buổi trưa','90000','suất','đầy đủ đồ ăn, tráng miệng');
insert into dich_vu_di_kem values (6,'Buffet buổi tối','16000','suất','đầy đủ đồ ăn, tráng miệng');

-- Thêm mới hợp đồng
insert into hop_dong values (1,'2020-12-08','2020-12-08','0',3,1,3);
insert into hop_dong values (2,'2020-07-14','2020-07-21','200000',7,3,1);
insert into hop_dong values (3,'2021-03-15','2021-03-17','50000',3,4,2);
insert into hop_dong values (4,'2021-01-14','2021-01-18','100000',7,5,5);
insert into hop_dong values (5,'2021-07-14','2021-07-15','0',7,2,6);
insert into hop_dong values (6,'2021-06-01','2021-06-03','0',7,7,6);
insert into hop_dong values (7,'2021-09-02','2021-09-05','100000',7,4,4);
insert into hop_dong values (8,'2021-06-17','2021-06-18','150000',3,4,1);
insert into hop_dong values (9,'2020-11-19','2020-11-19','0',3,4,4);
insert into hop_dong values (10,'2021-04-12','2021-04-14','0',10,3,5);

-- Thêm mới hợp đồng chi tiết
insert into hop_dong_chi_tiet values (1, 5, 2, 4);
insert into hop_dong_chi_tiet values (2, 8, 2, 5);
insert into hop_dong_chi_tiet values (3, 15, 2, 6);
insert into hop_dong_chi_tiet values (4, 1, 3, 1);
insert into hop_dong_chi_tiet values (5, 11, 3, 2);
insert into hop_dong_chi_tiet values (6, 1, 1, 3);
insert into hop_dong_chi_tiet values (7, 2, 1, 2);
insert into hop_dong_chi_tiet values (8, 2, 1, 2);