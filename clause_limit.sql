### LIMIT Clause
SELECT * FROM products ORDER BY price DESC LIMIT 2;
### SKIP/OFF ADDSET Hasil Query
SELECT * FROM products ORDER BY id LIMIT 5,2;
### Membatasi Hasil Query
SELECT * FROM products WHERE price < 50000 ORDER BY price DESC LIMIT 2;
SELECT * FROM products WHERE price < 50000 ORDER BY price ASC LIMIT 2;