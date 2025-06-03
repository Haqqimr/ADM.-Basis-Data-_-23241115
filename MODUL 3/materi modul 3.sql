
-- NAMA : zainul haqqi mr
-- NIM : 23241115
-- KELAS : C
-- Modul -1 SELECT,PREFIX dan ALIAS

create database ptic_mart;

-- menggunakan database
USE ptic_mart;

-- praktik 1
-- SELECT statment
-- ambil kolom nama produk dari tabel produk
SELECT nama_produk FROM ms_produk;

-- praktek 2 
-- ambil kolom nama produk dan harga 
SELECT nama_produk, harga FROM ms_produk;

-- praktek 3
-- ambil semua kolom menggunakan
SELECT * FROM ms_produk;

-- praktek 4
-- ambil kolom kode_produk, nama_produk dari table ms_produk
SELECT kode_produk, nama_produk FROM ms_produk;

-- ambil seluruh kolom dari table ms_penjualan
SELECT * FROM tr_penjualan_dqlab;

-- PREFIX dan ALIAS
-- PREFIX
-- praktek 5
-- Ambil nama produk dari tabel produk dan gunakan tabel sebagai prefix
SELECT ms_produk.nama_produk FROM ms_produk;

-- praktek 6
-- ambil nama produk dari tabel produk, ginakan tabel dan database sebagai prefrix
SELECT ptic_mart.ms_produk.nama_produk FROM ms_produk;

-- ALIAS 
-- praktek 7
-- Ambil nama produk dari tabel produk alias kan nama produk dengan np
SELECT nama_produk AS np FROM ms_produk;
SELECT nama_produk np FROM ms_produk;

-- prakatek 8  
-- ambil nama produk dari tabel produk, Alias kan tabel produk dengan msp
SELECT nama_produk from ms_produk AS msp;

-- praktek 9
-- menggunakan alias dan prefix bersamaan 
-- ambil nama produk dari tabel produk, aliaskan tabel produk dengan msp,dan jadin prefix untuk kolom 
SELECT msp.nama_produk FROM ms_produk AS msp;

-- case 1
-- ambil nama pelanggan dan alamat DARI TABEL MS PELANGGAN
SELECT nama_pelanggan, alamat FROM ms_pelanggan;

-- case 2
-- ambil produk dan harga dari tabel ms produk
SELECT nama_produk, harga FROM ms_produk;

