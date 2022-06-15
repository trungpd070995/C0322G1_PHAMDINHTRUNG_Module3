use furama_resort;

-- TASK - 2 :
select ma_nhan_vien, ho_ten from nhan_vien
where ho_ten like 'H%' or ho_ten like 'T%'or ho_ten like 'K%' and length(ho_ten) <15;

