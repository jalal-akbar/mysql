### Ketika Membuat Tabel
CREATE TABLE products(
    id VARCHAR(100) NOT NULL,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    price INT UNSIGNED NOT NULL,
    quantity INT UNSIGNED NOT NULL DEFAULT 0,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
    PRIMARY KEY(id)
)ENGINE = InnoDB;

### Add Primary KEY
ALTER TABLE products
ADD PRIMARY KEY(id);
### Duplicate Entry id "P001"
INSERT INTO products(id, name, price, quantity)
VALUES("P001", "Teh Zimbagwe", 10000, ,100);
### Multiple Key For MANY TO MANY

DESC products;