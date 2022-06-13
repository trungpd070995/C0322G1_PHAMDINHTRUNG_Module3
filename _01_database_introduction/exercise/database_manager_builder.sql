create database IF NOT EXISTS student_management;
use student_management;

create table class(
`id` int auto_increment primary key,
`name` varchar (50)
);

INSERT INTO `class` (`name`) VALUES ('Trung');
INSERT INTO `class` (`name`) VALUES ('Khanh');
INSERT INTO `class` (`name`) VALUES ('Hoang');
INSERT INTO `class` (`name`) VALUES ('Thong');
INSERT INTO `class` (`name`) VALUES ('Nguyet');

create table teacher(
`id` int auto_increment primary key,
`name` varchar (50),
`age` date,
`country` varchar(50)
);
insert into `teacher` (`name`, `age`, `country`) values ('Trung','1995-07-09', 'QBinh');
insert into `teacher` (`name`, `age`, `country`) values ('Hoang','1996-08-09', 'QTri');
insert into `teacher` (`name`, `age`, `country`) values ('Trung','1997-06-08', 'Hue');



