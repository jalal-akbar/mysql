### ONE categories TO MANY products
CREATE TABLE categories
(
    id VARCHAR(100) NOT NULL,
    name VARCHAR(100) NOT NULL,
    PRIMARY KEY(id)
)ENGINE = InnoDB;

INSERT INTO categories(id, name)
VALUES
('C001', 'Sehat dan Halal'),
('C002', 'Halal'),
('C003', 'Haram');

DESC products;
SELECT id,name FROM products;

ALTER TABLE products
DROP category;
ALTER TABLE products
ADD COLUMN id_category VARCHAR(100);
ALTER TABLE products
ADD CONSTRAINT fk_id_category FOREIGN KEY(id_category) REFERENCES categories(id);
UPDATE products
SET id_category = 'C001'
WHERE id IN ('P002','P007','P011','P010');
UPDATE products
SET id_category = 'C002'
WHERE id IN ('P001','P006','P008','P012','P016');
UPDATE products
SET id_category = 'C003'
WHERE id IN ('P003','P004','P005','P009','P013','P014','P015');

SELECT c.id,p.name,c.name FROM categories AS c
JOIN products AS p ON (c.id = p.id_category);