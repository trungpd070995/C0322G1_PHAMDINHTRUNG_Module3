drop database if exists quan_ly_ban_hang;
create database quan_ly_ban_hang;
use quan_ly_ban_hang;

create table customer(
c_id int primary key,
c_name varchar(50),
c_age int
);
insert into customer values(1, 'Pham Dinh Trung', 27);

create table `order`(
o_id int primary key,
c_id int, 
o_date date,
o_total_price int,
foreign key(c_id) references customer(c_id)
);
insert into `order` values(1, 1, '2022-06-12', 5000);

create table product(
p_id int primary key,
p_name varchar(50),
p_price int
);
insert into product values(1, 'Laptop Lenovo', 1000);

create table order_detail(
od_id int primary key,
o_id int,
p_id int,
od_qty int,
foreign key(o_id) references `order`(o_id),
foreign key(p_id) references product(p_id)
);
insert into order_detail values(1 ,1, 1, 5);