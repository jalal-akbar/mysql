### Flow Control Functions
### CASE
SELECT id,
CASE category
    WHEN "Non-Alcohol" THEN "Tidak Mabuk"
    WHEN "Alcohol" THEN "Memabukkan"
ELSE "Sehat" END AS "New Kategory"
FROM products;
### IF ELSE
SELECT  id, name, 
        price,
        IF(price > 100000, "Lumayan Mahal", "Lumayan Murah")AS "Mahal atau Murah?"
FROM products;
### ELSE IF
SELECT  id, name, 
        price,
        IF (price >=500000, "Mahal Banget", IF(price BETWEEN 100000 AND 500000, "Mahal", "Murah"))AS "Mahal atau Murah?" 
FROM products;
### IF NULL
SELECT id, name, IFNULL(description, "Kosong")AS "Deskripsi" FROM products;