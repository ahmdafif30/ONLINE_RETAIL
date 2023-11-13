-- Menambahkan Data Pelanggan
INSERT INTO pelanggan (nama_pelanggan, email, nomor_telp, alamat)
VALUES ('John Doe', 'johndoe@example.com', '123456789', 'Jl. Contoh No. 123');

-- Menambahkan Data Produk
INSERT INTO products (nama_produk, kategori, harga, jumlah_stok)
VALUES
    ('Laptop', 'Elektronik', 6000000, 10),
    ('Buku Tulis', 'Alat Tulis', 5000, 50),
    ('Sepatu Sport', 'Fashion', 800000, 20),
    ('Panci Stainless', 'Alat Masak', 45000, 30),
    ('Smartphone', 'Elektronik', 3000000, 15);

-- Menambahkan Data Pesanan
INSERT INTO Orders (pelangganID, tgl_order, Status)
VALUES ((SELECT pelangganID FROM pelanggan WHERE nama_pelanggan = 'John Doe'), CURDATE(), 'Diproses');

-- Menambahkan Data Detail Pesanan (untuk 3 barang yang berbeda)
INSERT INTO detailPesanan (order_id, ProductID, Jumlah, Harga)
VALUES
   ((SELECT order_id FROM Orders WHERE Status = 'Diproses' ORDER BY tgl_order DESC LIMIT 1), 1, 2, 6000000),
   ((SELECT order_id FROM Orders WHERE Status = 'Diproses' ORDER BY tgl_order DESC LIMIT 1), 2, 3, 15000),
   ((SELECT order_id FROM Orders WHERE Status = 'Diproses' ORDER BY tgl_order DESC LIMIT 1), 3, 1, 800000);
