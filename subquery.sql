1. subquery di WHERE Clause
2. subquery di FROM Clause

### Common WHERE
### Multiple SELECT
### SELECT RESULT AVG 134367
SELECT AVG(price) FROM products;
SELECT * FROM products WHERE price > 134367;
### Subquery di WHERE clause
### NOT MULTIPLE SELECT
### RESULT AVG ON WHERE CLAUSE
### LIKE SELECT * FROM products WHERE price > (AVG)
SELECT * FROM products
WHERE price > (SELECT AVG(price) FROM products);

### SUBQUERY FROM CLAUSE
### MAX products 10000000 dan kita ingin mengambil harga tertinggi products yg memiliki categories
### LIKE SELECT MAX(price) FROM (product yg memiliki category)

SELECT MAX(price) FROM products;
SELECT MAX(cp.price) 
FROM (SELECT price FROM categories AS c JOIN products AS p ON (c.id = p.id_category))AS cp;
