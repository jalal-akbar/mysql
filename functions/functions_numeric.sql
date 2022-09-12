### Numeric Functions
### DIV untuk Pembagian INT
### Arithmatic Operator
SELECT 65 + 65 as "Penjumlahan";
SELECT 70 - 30 as "Pengurangan";
SELECT id, price DIV 1000 AS "Price in K" FROM products;
SELECT id,name,price FROM products WHERE price DIV 1000;
### Mathematical Functions
SELECT id, SIN(price), COS(price),TAN(price) FROM products;