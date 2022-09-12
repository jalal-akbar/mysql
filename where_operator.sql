### WHERE Operator
### Mencari Data Dengan Operator Perbandingan
SELECT * FROM products WHERE price = 150000;
SELECT * FROM products WHERE category != "Non-Alcohol";
SELECT id , name, price FROM products WHERE price < 50000;
SELECT id, name, price, quantity FROM products WHERE quantity > 100;
### AND dan OR
SELECT * FROM products WHERE price < 50000 AND quantity > 100;
SELECT * FROM products WHERE price < 50 OR quantity > 100;
### Operator AND adalah Default Prioritas
SELECT * FROM products WHERE price < 150000 OR quantity >100 AND category="Herbal";
### Gunakan () pada OR Agar Terhindar dari Prioritas AND
SELECT * FROM products WHERE (price < 15000 OR quantity >100) AND category="Herbal"; 
### LIKE Operator (Operasi LIKE itu Sangat Lambat kalo datanya Banyak)
SELECT id, name FROM products WHERE name LIKE "%Teh%";
SELECT id, name FROM products WHERE name LIKE "%a";
SELECT * FROM products WHERE name LIKE "a%";
SELECT * FROM products WHERE category NOT LIKE "a%";
### NULL Operator
SELECT * FROM products WHERE description IS NULL;
SELECT id,name,description FROM products WHERE description IS NOT NULL;
### BETWEEN Operator atau Simple Way AND Operator
SELECT * FROM products WHERE price BETWEEN 10000 AND 50000;
SELECT * FROM products WHERE quantity NOT BETWEEN 50 and 100;
### IN Operator atau Simple Way OR Operator
SELECT * FROM products WHERE category IN ("Herbal", "Non-Alcohol");
SELECT * FROM products;