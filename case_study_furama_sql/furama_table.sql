create database furama;
use furama;

create table vi_tri(
ma_vi_tri int primary KEY,
ten_vi_tri varchar (45)
);

create table trinh_do(
ma_trinh_do int primary key,
ten_trinh_do varchar (45)
);

create table bo_phan(
ma_bo_phan int primary key,
ten_bo_phan varchar (45)
);

create table loai_khach(
ma_loai_khach int primary key,
ten_loai_khach varchar (45)
);

create table kieu_thue(
ma_kieu_thue int primary key,
ten_kieu_thue varchar (45)
);

create table loai_dich_vu(
ma_loai_dich_vu int primary key,
ten_loai_dich_vu varchar(45)
);

create table dich_vu_di_kem(
ma_dich_vu_di_kem int primary key,
ten_dich_vu_di_kem varchar (45),
gia Double,
don_vi varchar (10),
trang_thai varchar (45)
);

create table dich_vu(
ma_dich_vu int primary key,
ten_dich_vu varchar (45),
dien_tich int,
chi_phi_thue double,
so_nguoi_toi_da int,
ma_kieu_thue int,
ma_loai_dich_vu int,
tieu_chuan_phong varchar (45),
mo_ta_tien_nghi_khac varchar (45),
dien_tich_ho_boi double,
so_tang int,
foreign key (ma_kieu_thue) references kieu_thue(ma_kieu_thue),
foreign key (ma_loai_dich_vu) references loai_dich_vu(ma_loai_dich_vu)
);

create table nhan_vien(
ma_nhan_vien int primary key,
ho_ten varchar (45),
ngay_sinh date,
so_cmnd varchar (45),
luong double,
so_dien_thoai varchar (45),
email varchar (45),
dia_chi varchar (45),
ma_vi_tri int,
ma_trinh_do int,
ma_bo_phan int,
foreign key (ma_vi_tri) references vi_tri(ma_vi_tri)
);