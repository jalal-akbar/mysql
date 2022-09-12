### MANY orders TO MANY products
### Solusi nya adalah buat tabel perantara untuk menghubungkan tabel1 dan tabel2

### Tabel 2
CREATE TABLE orders
(
    id INT NOT NULL AUTO_INCREMENT,
    total INT NOT NULL,
    date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(id)
)ENGINE = InnoDB;

### Tabel Penghubung
CREATE TABLE orders_details
(
    id_products VARCHAR(100) NOT NULL ,
    id_orders INT NOT NULL,
    quantity INT NOT NULL DEFAULT 0,
    price INT NOT NULL DEFAULT 0,
    PRIMARY KEY(id_products, id_orders),
    CONSTRAINT fk_orders_details_products FOREIGN KEY(id_products) REFERENCES products (id),
    CONSTRAINT fk_orders_details_orders FOREIGN KEY(id_orders) REFERENCES orders (id)  
)ENGINE = InnoDB;

### INSERT
INSERT INTO orders(total)VALUES(50000),(50000),(50000);
INSERT INTO orders_details(id_products,id_orders,price,quantity) 
VALUES  ('P002', 1, 25000, 2),
        ('P003', 1,30000, 1),
        ('P004', 2, 25000, 1),
        ('P005', 2, 25000, 1),
        ('P013', 3, 50000, 1),
        ('P014', 3, 40000, 1);

### SELECT
SELECT * FROM products;
SELECT * FROM orders;
SELECT * FROM orders_details;
SELECT o.id AS 'Id', p.name AS 'Name', od.quantity AS 'Quantity', od.price AS 'Price'
FROM orders AS o
JOIN orders_details AS od ON (o.id = od.id_orders)
JOIN products AS p ON(p.id= od.id_products);