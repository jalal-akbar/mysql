### JOIN
CREATE TABLE wishlists
(
    id INT NOT NULL AUTO_INCREMENT,
    id_products VARCHAR(100) NOT NULL,
    descriptions TEXT,
    PRIMARY KEY (id),
    CONSTRAINT fk_wishlists_products FOREIGN KEY (id_products) REFERENCES products (id)
)ENGINE = InnoDB;

### Melakkukan Join Table products
SELECT * FROM wishlists AS w
JOIN products AS p ON ( w.id_products = p.id );
SELECT w.id AS 'id', p.id AS 'id_products', p.name 'name_products', w.descriptions AS 'Description' FROM wishlists AS w 
JOIN products AS p ON ( w.id_products = p.id );
### Membuat Relasi ke Tabel customers
ALTER TABLE wishlists
ADD COLUMN id_customers INT AFTER id_products;
ALTER TABLE wishlists
ADD CONSTRAINT fk_wishlists_customers FOREIGN KEY(id_customers) REFERENCES customers(id);
UPDATE wishlists
SET id_customers = 1
WHERE id = 1;
### Melakukan Join Ke multiple Tabel
SELECT w.id AS 'id', c.first_name AS 'customer name', p.name AS 'produk name', w.descriptions AS 'description'
FROM wishlists AS w
JOIN products AS p ON (w.id_products = p.id)
JOIN customers AS c ON (w.id_customers = c.id);

SHOW CREATE TABLE wishlists;
DESC wishlists;
SELECT * FROM wishlists;

DESC products; 
SELECT * FROM products;
DESC customers;
SELECT * FROM customers;
### JENIS JENIS JOIN
### INNER JOIN / DEFAULT JOIN
### LEFT JOIN mangambil semua data dari table1 walaupun tidak berelasi dengan table2 
### RIGHT JOIN kebalikan dari LEFT JOIN
### CROSS JOIN mengkalikan data tabel1 dengan tabel2 , dan jarang di gunakan