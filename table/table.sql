show engines;

CREATE TABLE products (  
    kode int,
    nama VARCHAR(100),
    harga INT,
    jumlah INT
)ENGINE=InnoDB;

### Show Table
SHOW TABLES;
### Description Table
DESC products;
### Description Table With JSON
SHOW CREATE TABLE products;
### Alter Table
### ADD
ALTER TABLE products
ADD COLUMN deskripsi TEXT,
ADD COLUMN desk TEXT;
### DROP
ALTER TABLE products
DROP COLUMN desk;
### RENAME
ALTER TABLE products
RENAME COLUMN kode TO id;
### MODIFY
ALTER TABLE products
MODIFY deskripsi VARCHAR(100) AFTER nama;
### NULL VALUES
ALTER TABLE products
MODIFY id INT NOT NULL,
MODIFY nama VARCHAR(100) NOT NULL;
### DEFAULT VALUES
ALTER TABLE products
MODIFY harga INT NOT NULL DEFAULT 0,
MODIFY jumlah INT NOT NULL DEFAULT 0;
ALTER TABLE products
ADD COLUMN created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ;
### TRUNCATE
INSERT INTO products(id,nama)
VALUES (1,'SOFI');
SELECT * FROM products;
TRUNCATE TABLE products;
SELECT * FROM products;
DESC products;
### Rename Table
ALTER TABLE barang RENAME products;
### DROP TABLE
DROP TABLES products;
DESC products;
