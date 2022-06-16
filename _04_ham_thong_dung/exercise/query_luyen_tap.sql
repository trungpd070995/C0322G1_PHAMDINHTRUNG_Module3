use quan_ly_sinh_vien_03;

-- Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất.
-- Hiển thị các thông tin môn học có điểm thi lớn nhất.
-- Hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên, xếp hạng theo thứ tự điểm giảm dần

select * from student ;

select * from student
where `status` = true;

select * from `subject`
where credit < 10;

-- Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất.
select * from `subject` 
where credit in (select max(credit) from `subject`);

-- Hiển thị các thông tin môn học có điểm thi lớn nhất.
select * from `subject` sb
join mark m on m.sub_id = sb.sub_id
where m.mark in (select max(mark) from mark);

-- Hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên, xếp hạng theo thứ tự điểm giảm dần
select *, avg(m.mark) dtb from student st
join mark m on m.student_id = st.student_id
group by st.student_id
order by dtb desc;