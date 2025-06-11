use pti_mart2;

-- latihan mandiri 1
-- a. tampilkan semua kolom dari table tr penjualan dengan mengurutkan berdasarkan qty dan tgl_transaksi
select * from tr_penjualan_dqlab order by qty, tgl_transaksi;

-- b. tampilkan semua kolom dari table ms pelanggan dengan mengurutkan berdasarkan nama_pelanggan
select * from ms_pelanggan_dqlab order by nama_pelanggan;

-- c. tampilkan semua kolom dari table ms pelanggan dengan mengurutkan berdasarkan alamat
select * from ms_pelanggan_dqlab order by alamat;

-- Latihan mandiri 2
-- a. tampilkan semua kolom dari table tr penjualan dengan mengurutkan berdasarkan tgl transaksi secara DESC dan qty secara ASC
select * from tr_penjualan_dqlab order by tgl_transaksi desc, qty asc;

-- b. tampilkan semua kolom dari table ms_pelanggan dengan mengurutkan berdasarkan nama pelanggan secara DESC
select * from ms_pelanggan_dqlab order by nama_pelanggan desc;

-- c. tampilkan semua kolom dari table ms_pelanggan dengan mengurutkan berdasarkan alamat secara DESC
select * from ms_pelanggan_dqlab order by alamat desc;

-- Latihan mandiri 3
-- Pengurutan dengan ekspresi total harga menggunakan rumusan jumlah barang dikali harga barang dikurangi diskon
select nama_produk, qty, harga, diskon_persen, (qty * harga - diskon_persen) as total_harga from tr_penjualan_dqlab order by total_harga desc;

-- Latihan mandiri 4
-- a. tampilkan semua kolom dari transaksi yang ada diskon dan urut dari harga tertinggi
select * from tr_penjualan_dqlab where diskon_persen>0 order by harga desc;

-- b. tampilkan kolom nama produk, qty, dan harga dari transaksi penjualan yang memiliki harga minimal 100k dan diurutkan berdasarkan harga tertinggi
select nama_produk, qty, harga from tr_penjualan_dqlab where harga>=100000 order by harga desc;

-- c. tampilkan kolom nama produk, qty, harga dari tabel transaksi. harga minimal 100k atau nama produk berawalan karakter T dan urut dari diskon tertinggi
select nama_produk, qty, harga from tr_penjualan_dqlab where harga>=100000 or nama_produk like 'T%' order by diskon_persen desc;

-- Latihan mandiri 5
-- a. melihat daftar nama produk yang total jumlah produk terjual per kelompok nama produk adalah di atas nilai 4
select nama_produk from tr_penjualan_dqlab group by nama_produk having sum(qty)>4;

-- b. melihat daftar nama produk yang total jumlah produk terjual per kelompok harus produk sama dengan 9
select nama_produk from tr_penjualan_dqlab group by nama_produk having sum(qty)=9;

-- c. melihat daftar kelompok nama produk dan total nilai penjualan (harga dikali jumlah, dikurangi diskon) dengan dan urutan berdasarkan nilai penjualan terbesar;
select nama_produk, sum(harga*qty-diskon_persen) as nilai_penjualan from tr_penjualan_dqlab group by nama_produk order by nilai_penjualan desc;