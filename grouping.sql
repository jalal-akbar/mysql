### Grouping
### GROUP BY
SELECT COUNT(id)AS "Total Id", category FROM products GROUP BY category;
SELECT MAX(price) AS "Harga Tertinggi", category FROM products GROUP BY category;
SELECT MIN(price) AS "Harga Terendah", category FROM products GROUP BY category;
SELECT AVG(price) AS "Rata-Rata", category FROM products GROUP BY category;
SELECT SUM(quantity) AS "Jumlah", category FROM products GROUP BY category;
### HAVING Clause Like Where Clause
SELECT COUNT(id) AS total, category FROM products GROUP BY category HAVING total >= 5;
SELECT MAX(price) AS max, category FROM products GROUP BY category HAVING max >= 200000;
SELECT MIN(price) AS min, category FROM products GROUP BY category HAVING min <= 10000;