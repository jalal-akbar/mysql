CREATE TABLE products(
    id VARCHAR(100) NOT NULL,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    price INT UNSIGNED NOT NULL,
    quantity INT UNSIGNED NOT NULL DEFAULT 0,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
)ENGINE = InnoDB;
### Update Data Dengan Where Clause
### Menambah Kolom category
ALTER TABLE products
ADD COLUMN category ENUM("Alcohol", "Non-Alchol", "Herbal") AFTER name;
ALTER TABLE products
MODIFY category ENUM("Alcohol", "Non-Alcohol", "Herbal");
### Mengubah Satu Kolom
UPDATE products
SET category = "Non-Alcohol"
WHERE id = "P001";
### Mengubah Beberapa Kolom
UPDATE products
SET category="Herbal", description = "Limited Edition"
WHERE id = "P002";
### Mengubah Dengan Value di Kolom
UPDATE products
SET category="Alcohol", description="Limited Edition", price = price + 111111, quantity = 2
Where id = "P004";
SELECT * FROM products;