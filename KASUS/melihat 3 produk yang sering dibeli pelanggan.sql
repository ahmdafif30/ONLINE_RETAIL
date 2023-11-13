SELECT p.nama_produk, COUNT(dp.ProductID) AS jumlah_pembelian
FROM detailPesanan dp
JOIN products p ON dp.ProductID = p.productID
JOIN Orders o ON dp.order_id = o.order_id
GROUP BY dp.ProductID
ORDER BY jumlah_pembelian DESC
LIMIT 3;
