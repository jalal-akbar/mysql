### Menggunakan String FUNCTION
SELECT id, 
    LOWER(name) AS "Lower Name",
    UPPER(name) AS "Upper Name",
    LENGTH(name) AS "Length Name"
FROM products;
SELECT id, UPPER(name) FROM products;
SELECT id, FIELD(1, 0,4,6,1) AS "Field" FROM products;
SELECT id , LENGTH(name) FROM products;
SELECT CONCAT(id , name) FROM products;
SELECT LEFT(name, 5) AS "EXTRACT STRING FROM LEFT" FROM products;
SELECT RIGHT(id, 4) AS "EXTRACT STRING FROM RIGHT" FROM products;
SELECT id, name, LOCATE("Bima", name) AS "Match Position" FROM products;
    

DESC products;