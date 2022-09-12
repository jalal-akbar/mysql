### Unique Contraint
### Membuat Tabel Constraint
CREATE TABLE customers (
    id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    PRIMARY KEY(id),
    CONSTRAINT unique_emails UNIQUE KEY(email)
) ENGINE = InnoDB;
### Menghapus Constraint
ALTER TABLE customers DROP CONSTRAINT unique_emails;
### Menambah Constraint
ALTER TABLE customers ADD CONSTRAINT email_unique UNIQUE KEY(email);
### Insert Data
INSERT INTO customers(first_name, last_name, email)
VALUES('Jalal', 'Akbar','jalal@gmail.com'),("Fatmah","Sondari","fatmah@gmail.com");
### Test Constraint
INSERT INTO customers(first_name,last_name,email)VALUES('Jalal','Akbar','jalal@gmail.com')
SELECT * FROM customers;
DESC customers;

### Check Constraint
### Add Check Constraint
ALTER TABLE products 
ADD CONSTRAINT check_price CHECK(price >= 1000);
### Test Check CONSTRAINT Success
INSERT INTO products(id,name,category,price,quantity)VALUES('P016', 'Boba', 'Non-Alcohol',15000,55);
### Test Check Constraint Fail
INSERT INTO products (id,name,category,price,quantity)VALUES('P017','Aqua Abal-Abal','Non-Alcohol',500,100);
DESC products;
SELECT * FROM products;