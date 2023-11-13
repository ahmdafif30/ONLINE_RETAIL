SELECT AVG(total_transaksi) AS rata_rata_transaksi
FROM (
    SELECT o.order_id, SUM(dp.Harga * dp.Jumlah) AS total_transaksi
    FROM Orders o
    JOIN detailPesanan dp ON o.order_id = dp.order_id
    WHERE o.tgl_order >= CURDATE() - INTERVAL 1 MONTH
    GROUP BY o.order_id
) AS transaksi_bulanan;
