CREATE TABLE products(
    id VARCHAR(100) NOT NULL,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    price INT UNSIGNED NOT NULL,
    quantity INT UNSIGNED NOT NULL DEFAULT 0,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
    PRIMARY KEY (id)
)ENGINE = InnoDB;
### Where Clause
### Mencari Data
SELECT * FROM products
WHERE id = "P001";
SELECT * FROM products
WHERE price = 150000;
SELECT * FROM products
WHERE quantity <= 10;