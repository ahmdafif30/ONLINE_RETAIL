	CREATE TABLE pelanggan (
    pelangganID INT PRIMARY KEY AUTO_INCREMENT,
    nama_pelanggan VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    nomor_telp VARCHAR(15) NOT NULL,
    alamat text
);
