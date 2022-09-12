### Jenis-jenis JOIN
1. INNER JOIN set sebagai default atau JOIN biasa
2. LEFT JOIN mengambil semua data dari tabel1 yang berelasi dan tak berelasi
3. RIGHT JOIN kebalikan dari LEFT Join
4. CROSS JOIN mengkalikan semua data dari tabel1 dan tabel 2
### Menambahkan Data Yg tidak Berelasi
SELECT * FROM categories;
SELECT * FROM products;
INSERT INTO categories(id,name)VALUES('C004','Lain-Lain'),('C005', 'Gadget');
INSERT INTO products(id ,name ,description, price,quantity)VALUES('X001','X Coba1','Coba-Coba', 10000, 1),
('X002','X Coba2','Coba-Coba', 10000, 2);

### INNER JOIN
SELECT * FROM categories AS c
INNER JOIN products AS p ON(c.id = p.id_category);

### LEFT JOIN
SELECT * FROM categories AS c
LEFT JOIN products AS p ON(c.id = p.id_category);
### RIGHT JOIN
SELECT * FROM categories AS c
RIGHT JOIN products AS p ON(c.id = p.id_category);
### CROSS JOIN Jarang Di gunakan