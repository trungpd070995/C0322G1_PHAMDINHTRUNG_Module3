drop database if exists quan_ly_ban_hang_01;
create database quan_ly_ban_hang_01;
use quan_ly_ban_hang_01;

create table customer(
c_id int primary key,
c_name varchar(50),
c_age int
);
insert into customer values(1, 'Dinh Trung', 27);
insert into customer values(2, 'Minh Quan' , 23);
insert into customer values(3, 'Ngoc Oanh' , 20);
insert into customer values(4, 'Hong Ha' , 20);
insert into customer values(5, 'Binh Nguyen' , 23);

create table `order`(
o_id int primary key,
c_id int, 
o_date date,
o_total_price int,
foreign key(c_id) references customer(c_id)
);
insert into `order` values(1, 1, '2022-06-12',null);
insert into `order` values(2, 2, '2022-06-23',null);
insert into `order` values(3, 1, '2022-06-15',null);

create table product(
p_id int primary key,
p_name varchar(50),
p_price int
);
insert into product values(1, 'Laptop', 1);
insert into product values(2, 'May Giat', 3);
insert into product values(3, 'Tu Lanh', 5);
insert into product values(4, 'Dieu Hoa', 7);
insert into product values(5, 'Quat', 4);
insert into product values(6, 'Bep Dien', 2);

create table order_detail(
o_id int,
p_id int,
od_qty int,
primary key (o_id, p_id),
foreign key(o_id) references `order`(o_id),
foreign key(p_id) references product(p_id)
);
insert into order_detail values(1 ,1, 3);
insert into order_detail values(1 ,3, 7);
insert into order_detail values(1 ,4, 2);
insert into order_detail values(2 ,1, 1);
insert into order_detail values(3 ,1, 8);
insert into order_detail values(2 ,5, 4);
insert into order_detail values(2 ,3, 3);