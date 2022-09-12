### Mebuat Tabel Dengan Full-Text-Search
CREATE TABLE products
(
    id VARCHAR(100) NOT NULL,
    name VARCHAR(100) NOT NULL,
    category ENUM('Non-Alcohol', 'Alcohol', 'Herbal'),
    description VARCHAR(100) NOT NULL,
    price INT NOT NULL,
    quantity INT NOT NULL,
    PRIMARY KEY(id),
    FULLTEXT KEY products_search (name , description)
)ENGINE = InnoDB;

### Menambah FULLTEXT
ALTER TABLE products
ADD FULLTEXT products_search (name , description);

### Menghapus FULLTEXT
ALTER TABLE products
DROP INDEX products_search;

### FULL TEXT IN NATURAL LAMGUAGE MODE
SELECT * FROM products
WHERE 
MATCH (name,description)
AGAINST('Bima' IN NATURAL LANGUAGE MODE);
### FULL Text IN BOOLEAN MODE
SELECT * FROM products
WHERE MATCH(name, description) AGAINST('+bima -whiskey' IN BOOLEAN MODE);

### Fulltext WITH QUERY EXPANSION
SELECT * FROM products
WHERE MATCH(name, description) AGAINST('Bima' WITH QUERY EXPANSION); 

DESC products;
SHOW CREATE TABLE products;