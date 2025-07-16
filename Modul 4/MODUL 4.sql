-- Nama		: Zainul Haqqi mr 
-- NIM		: 23241115
-- Kelas	: C
-- Modul	: Modul 4 Join, Union, Limit

use pti_mart2;

-- JOIN
-- penggabungan dua buah tabel yang saling berelasi
-- untuk mendapatkan informasi yang lebih kompleks

-- Praktek 1
-- Ambil nama pelanggan yang pernah transaksi beserta qty
-- artinya kita join tabel penjualan dan tabel pelanggan
-- ambil kode_pelanggan, nama pelanggan, dan qty
select tp.kode_pelanggan, mp.nama_pelanggan, tp.qty 
from tr_penjualan_dqlab as tp join ms_pelanggan_dqlab as mp
on tp.kode_pelanggan = mp.kode_pelanggan;

-- Praktek 2
-- CROSS JOIN
-- menggabungkan dua buah tabel tanpa ekspresi filter
select tp.kode_pelanggan, mp.nama_pelanggan, tp.qty 
from tr_penjualan_dqlab as tp join ms_pelanggan_dqlab as mp
on true;

-- Praktek 3
-- INNER JOIN
-- ambil pelanggan yang pernah transaksi beserta nama produk dan qty
-- artinya join table penjualan dan table pelanggan
-- ambil nama pelanggan, kode pelanggan, dan qty
select tp.kode_pelanggan, mp.nama_pelanggan, tp.nama_produk, tp.qty
from tr_penjualan_dqlab as tp INNER JOIN ms_pelanggan_dqlab as mp
on tp.kode_pelanggan = mp.kode_pelanggan;

-- Praktek 4
-- LEFT JOIN
-- ambil semua nama pelanggan yang pernah bertransaksi
select tp.kode_pelanggan, mp.nama_pelanggan, tp.qty
from tr_penjualan_dqlab as tp LEFT JOIN ms_pelanggan_dqlab as mp
on tp.kode_pelanggan = mp.kode_pelanggan;

-- Praktek 5
-- RIGHT JOIN
-- ambil semua nama pelanggan yang pernah bertransaksi
select tp.kode_pelanggan, mp.nama_pelanggan, tp.qty
from tr_penjualan_dqlab as tp RIGHT JOIN ms_pelanggan_dqlab as mp
on tp.kode_pelanggan = mp.kode_pelanggan;

-- ambil semua nama pelanggan yang tidak pernah bertransaksi
select tp.kode_pelanggan, mp.nama_pelanggan, tp.qty
from tr_penjualan_dqlab as tp RIGHT JOIN ms_pelanggan_dqlab as mp
on tp.kode_pelanggan = mp.kode_pelanggan
where tp.qty is null;