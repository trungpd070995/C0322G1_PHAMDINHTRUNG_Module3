drop database if exists quan_ly_vat_tu;
create database quan_ly_vat_tu;
use quan_ly_vat_tu;

create table phieu_xuat(
so_phieu_xuat int primary key,
ngay_xuat date
);
insert into phieu_xuat values(1, '2022-06-12');

create table vat_tu(
ma_vat_tu  int primary key,
ten_vat_tu varchar(50)
);
insert into vat_tu values(100, 'Xi mang');

create table chi_tiet_phieu_xuat(
so_phieu_xuat int,
ma_vat_tu int,
don_gia_xuat int,
so_luong_xuat int,
foreign key (so_phieu_xuat) references phieu_xuat(so_phieu_xuat),
foreign key (ma_vat_tu) references vat_tu(ma_vat_tu)
);
insert into chi_tiet_phieu_xuat values(1, 100, 100000, 100);

create table phieu_nhap(
so_phieu_nhap int primary key,
ngay_nhap date
);
insert into phieu_nhap values(1, '2022-06-10');

create table chi_tiet_phieu_nhap(
ma_vat_tu int,
don_gia_nhap int,
so_luong_nhap int,
so_phieu_nhap int,
foreign key (ma_vat_tu) references vat_tu(ma_vat_tu),
foreign key (so_phieu_nhap) references phieu_nhap(so_phieu_nhap)
);
insert into chi_tiet_phieu_nhap values(100, 70000, 200, 1);

create table don_dat_hang(
so_don_hang int primary key,
ngay_dat_hang date
);
insert into don_dat_hang values(50, '2022-06-12');

create table chi_tiet_don_dat_hang(
ma_vat_tu int,
so_don_hang int,
foreign key (ma_vat_tu) references vat_tu(ma_vat_tu),
foreign key (so_don_hang) references don_dat_hang(so_don_hang)
);
insert into chi_tiet_don_dat_hang values(100, 50);

create table don_hang_nha_cung_cap(
ma_ncc int primary key,
ten_ncc varchar(50),
dia_chi varchar(100)
);
insert into don_hang_nha_cung_cap (ma_ncc, ten_ncc, dia_chi) values (1001, 'Ang Son', 'Van Ninh, Quang Binh');

create table cung_cap(
so_don_hang int,
ma_ncc int,
foreign key (so_don_hang) references don_dat_hang(so_don_hang),
foreign key (ma_ncc) references don_hang_nha_cung_cap(ma_ncc)
);
insert into cung_cap values(50, 1001);

create table so_dien_thoai(
ma_ncc int,
sdt varchar(20),
foreign key(ma_ncc) references don_hang_nha_cung_cap(ma_ncc),
primary key(ma_ncc, sdt)
);
insert into so_dien_thoai values (1001, '0373111456')