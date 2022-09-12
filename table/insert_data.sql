CREATE TABLE barang(
    id VARCHAR(100) NOT NULL,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    price INT UNSIGNED NOT NULL,
    quantity INT UNSIGNED NOT NULL DEFAULT 0,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
)ENGINE = InnoDB;
### Memasukan Data
INSERT INTO barang(id,name,price,quantity)
VALUES("P001","Teh Pucuk", 1500, 100);
### Memasukan Data Sekaligus
INSERT INTO barang(id,name,price,quantity)
VALUES  ("P002", "Teh Bima", 150000, 30),
        ("P003", "Wine Zamaica", 700000, 10),
        ("P002", "Whiskey Bima", 150000, 5),
        ("P002", "Iceland", 160000, 40);
SELECT * FROM barang;
DESC barang;
SHOW TABLES;