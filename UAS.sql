-- Nama : Zainul Haqqi Mr
-- NIM : 23241115
-- Kelas : C
-- Modul :UAS

-- soal 1
*Munculkan kode pelanggan nama produk kuantitinya harga dan total dari semua  produk yang pernah di transaksikan  namun output yang di minta adalah total harga minimal 200.000 dan di urutkan berdasarkan total harga terkecil
--soal 2
 tampilkan nama produk,kategori,dan harga dari semua produk yang tidak pernah terjual
 
-- soal 3
 -- munculkan kode pelanggan,nama pelanggan, alamat, dan nilai transaksi dari pelanggan yang paling tinggi nilai transaksinya 
 

-- UAS
SELECT  t, pr.nama_produk,  t.qty, pr.harga, (t.qty * pr.harga) AS total_harga FROM transaksi t join produk pr ON t.kode_produk = pr.kode_produk
WHERE (t.qty * pr.harga) >= 200000;

select  
    p.nama_produk,  
    p.kategori,  
    p.harga  
FROM  
    ms_produk_dqlab p  
LEFT JOIN  
    tr_penjualan_dqlab t ON p.id_produk = t.id_produk  
WHERE  
    t.id_produk IS NULL;
    SELECT  
    p.id_pelanggan,  
    p.nama_pelanggan,  
    p.alamat,  
    SUM(t.qty * pr.harga) AS nilai_transaksi  
FROM  
    ms_pelanggan_dqlab p  
JOIN  
    tr_penjualan_dqlab t ON p.id_pelanggan = t.id_pelanggan  
JOIN  
    ms_produk_dqlab pr ON t.id_produk = pr.id_produk  
GROUP BY  
    p.id_pelanggan, p.nama_pelanggan, p.alamat  
ORDER BY  
    nilai_transaksi DESC  
LIMIT 1;

