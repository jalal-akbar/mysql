SET operator adalah hasil operas antara hasil dari dua SELECT QUERY
1. UNION adalah data yang di ambil tanpa meduplikat
2. UNION ALL adalah data yang di ambil walaupun duplikat
3. INTERSECT adalah data yang di ambil dari hasil query tabel dan query tabel2
4. MINUS adalah data yang di ambil tidak sama dengan hasil query tabel1 dan table2

CREATE TABLE guestbooks
(
    id INT NOT NULL AUTO_INCREMENT,
    email VARCHAR(100) NOT NULL,
    title VARCHAR(100) NOT NULL,
    content TEXT,
    PRIMARY KEY(id)
)ENGINE = InnoDB;
INSERT INTO guestbooks(email, title, content)
VALUES  ('guest1@gmail.com', 'This is Title', 'Content'),
        ('guest2@gmail.com', 'This is Title', 'Content'),
        ('guest3@gmail.com', 'This is Title', 'Content'),
        ('jalal@gmail.com', 'This is Title', 'Content'),
        ('jalal@gmail.com', 'This is Title', 'Content');
SELECT * FROM guestbooks;

### UNION
### MIRIP INNER JOIN
### menghilangkan hasil duplikat tabel2 ke tabel2
SELECT c.email FROM customers AS c
UNION
SELECT g.email FROM guestbooks AS g;
### UNION ALL
### MIRIP KONSEP LEFT JOIN
SELECT c.email FROM customers AS c
UNION ALL
SELECT g.email FROM guestbooks AS g;
### UNION ALL MENGGUNAKAN SUBQUERY
SELECT countemail.email AS 'Email', COUNT(countemail.email) AS "Count" 
FROM (SELECT c.email FROM customers AS c 
UNION ALL 
SELECT g.email FROM guestbooks AS g) AS countemail
GROUP BY countemail.email;
### INTERSECT
### di mysql tidak ad INTERSECT
### CREATE MANUAL Menggunakan JOIN atau SUBQUERY
SELECT c.email FROM customers AS c
WHERE email IN(SELECT g.email FROM guestbooks AS g);
### MINUS
### sama seperti INTERSECT
### CREATE MANUAL Menggunakan LEFT JOIN atau SUBQUERY
SELECT c.email, g.email FROM customers AS c
LEFT JOIN guestbooks AS g ON (g.email = c.email)
WHERE g.email IS NULL;