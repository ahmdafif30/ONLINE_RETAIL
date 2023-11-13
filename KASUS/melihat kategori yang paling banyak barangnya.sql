SELECT kategori, COUNT(*) AS jumlah_barang
FROM products
GROUP BY kategori
ORDER BY jumlah_barang DESC
LIMIT 1;
