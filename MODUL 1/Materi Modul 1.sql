-- Nama  : Zainul Haqqi Mr
-- Nim   : 23241115
-- Kelas : C
-- Modul : Modul 1 Data Definisian Language

-- Membuat DataBase 
CREATE DATABASE pti_mart;
USE pti_mart;

-- MEMBUAT Table
CREATE TABLE PeLanggan(
id_pelanggan int PRIMARY KEY NOT NULL,
nama_pelanggan 	VARCHAR (50),
alamat VARCHAR (100),
kota VARCHAR (20),
no_tlp VARCHAR (15)
);

CREATE TABLE Produk(
id_produk int PRIMARY KEY NOT NULL,
nama_produk VARCHAR (50),
kategori VARCHAR (20),
harga VARCHAR (20),
stok int (10)
);


-- membuat tabel dengan forign key
CREATE TABLE transaksi(
id_transaksi int PRIMARY KEY NOT NULL,
TGL_TRANSAKSI date,
id_produk int,
id_pelanggan int,
qty int,
total_harga int,
foreign key (id_produk) references PRODUK (id_produk),
foreign key (id_pelanggan) references pelanggan (id_pelanggan)
);

-- mengisi data dalam tabel
insert into pelanggan(
id_pelanggan, nama_pelanggan, alamat, kota, no_tlp
)values
(1, 'Ahmad Sulaiman', 'Jl. Mataram No. 10', 'Mataram', '0812-3456-7890'),
(2, 'Rina Wulandari', 'Jl. Gomong No. 5', 'Ampenan', '0821-2345-6789'),
(3, 'Budi Santoso', 'Jl. Sekarbela No. 15', 'Mataram', '0831-3456-7890'),
(4, 'Siti Nurhaliza', 'Jl. Monjok No. 20', 'Mataram', '0841-4567-8901'),
(5, 'Joko Prabowo', 'Jl. Ampenan No. 8', 'Ampenan', '0851-5678-9012');

-- masukkan data ke tabel produk
insert into produk(
id_produk, nama_produk, kategori, harga, stok
)values
(006,"buku tulis","alat tulis",5000,50),
(007,"penghapus","alat tulis",1500,35),
(008,"penggaris","alat tulis",3000,25),
(009,"pulpen","alat tulis",4000,40),
(010,"spidol","alat tulis",6000,15);

-- masukkan data ke table yang ada foreign key
insert into transaksi
set id_transaksi = 1002,
tgl_transaksi = "2025-02-01",
id_produk = (
select id_produk from produk
where id_produk = 006),
id_pelanggan = (
select id_pelanggan from Pelanggan
where id_pelanggan = 002),
qty = 2,
total_harga = (
select harga from produk
where id_produk = 006) * 2;

-- cek data apkh sdh msk
select * from Pelanggan;
select * from produk;
select * from transaksi;