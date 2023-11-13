CREATE TABLE Payments (
    id_pembayaran INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    tgl_pembayaran DATE,
    total DECIMAL(10, 2),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);
