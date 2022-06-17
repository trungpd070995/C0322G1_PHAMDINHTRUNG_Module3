drop database if exists demo;
create database demo;
use demo;

-- Bước 2: Tạo bảng Products với các trường dữ liệu sau:

create table products(
id int primary key auto_increment,
product_code varchar (20),
product_name varchar (50),
product_price double,
product_amount int,
product_description varchar (100),
product_status varchar (100)
);
-- Chèn một số dữ liệu mẫu cho bảng Products.

insert into products ( product_code, product_name, product_price, product_amount, product_description, product_status )
values ('132132', 'Apple', 1000, 20, 'Iphone11-promax', 'Còn hàng trong kho'),
		('123132', 'Samsung', 2000, 30, 'Galaxy', 'Còn hàng trong kho'),
		('124134', 'Xiaomi', 3000, 40, 'Red-mi', 'Tạm hết hàng'),
		('125135', 'Oppo', 4000, 50, 'Reno', 'Còn hàng trong kho'),
		('126136', 'Vivo', 5000, 40, 'V20', 'Tạm hết hàng');

-- Bước 3:Bước 3:
-- Tạo Unique Index trên bảng Products (sử dụng cột productCode để tạo chỉ mục)

create index index_1 on products(product_code);
select * from products where product_code = "123132";
explain select * from products where product_code = "123132";

-- Tạo Composite Index trên bảng Products (sử dụng 2 cột productName và productPrice)
create index index_2 on products(product_name, product_price);
select * from products where product_name = "Apple";

-- Sử dụng câu lệnh EXPLAIN để biết được câu lệnh SQL của bạn thực thi như nào
explain select * from products where product_name = "Apple";

-- So sánh câu truy vấn trước và sau khi tạo index

-- Bước 4: 
-- Tạo view lấy về các thông tin: productCode, productName, productPrice, productStatus từ bảng products.

create view view_1 as
select product_code, product_name, product_price, product_status from products;
select * from view_1;

-- Tiến hành sửa đổi view

SET SQL_SAFE_UPDATES = 0;
update view_1 
set product_name = "Nokia", product_price = 1500, product_status = "Hết hàng"
where product_code = 132132;
SET SQL_SAFE_UPDATES = 1;

-- Tiến hành xoá view

drop view view_1;

-- Bước 5:  
-- Tạo store procedure lấy tất cả thông tin của tất cả các sản phẩm trong bảng product

delimiter //
create procedure all_products()
begin
	select * from products;
end //
delimiter ;
call all_products();

-- Tạo store procedure thêm một sản phẩm mới

delimiter //
create procedure sp_insert_new_product(
in p_product_code varchar(10),
in p_product_name varchar(45), 
p_product_price double, 
in p_product_amount int, 
in p_product_description varchar(90), 
in p_product_status varchar(45))
begin
	insert into products(product_code, product_name, product_price, product_description, product_status)
    values (p_product_code, p_product_name, p_product_price, p_product_description, p_product_status);
end //
delimiter ;
call sp_insert_new_product('111456','B-phone', 6000, 25, '3Q', 'Hàng mới nhập về');

-- Tạo store procedure sửa thông tin sản phẩm theo id

delimiter //
create procedure sp_edit_new_product(in p_id int, in p_price double)
begin
	update products set product_price = p_price where id = p_id;
end //
delimiter ;

call sp_edit_new_product(1,15003);

-- Tạo store procedure xoá sản phẩm theo id

delimiter //
create procedure sp_delete_product_by_id(in p_id_delete int)
begin
	delete from products p where p.id = p_id_delete;
end //
delimiter ;
call sp_delete_product_by_id(4);




