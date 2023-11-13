CREATE TABLE Orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    pelangganID INT,
    tgl_order DATE,
    Status VARCHAR(20),
    FOREIGN KEY (pelangganID) REFERENCES pelanggan(pelangganID)
);
