-- NAMA : zainul haqqi mr
-- NIM : 23241115
-- KELAS : C

-- Melihat database yang ada 
show databases

-- Melihat database
use mysql;


-- Melihat table dalam database mysql
show tables

-- Mendeskrisikan sebuah table yang di pilih ex. tabel 'user'
DESCRIBE user;
-- Melihat isi tabel user,khusus untuk kolom host,user dan password
select host, user, Password FROM user;
