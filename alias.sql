### Alias
### Alias Untuk Kolom
SELECT  id AS "Kode Barang",
        name AS "Nama Barang",
        category AS "Kategory",
        description AS "Deskripsi",
        price As "Harga",
        quantity AS "Jumlah"
FROM products;
### Alias Untuk TABLE
SELECT  p.id AS "Kode",
        p.name AS "Nama",
        p.category AS "Kategory",
        p.description AS "Deskripsi",
        p.price AS "Harga",
        p.quantity AS "Jumlah"
FROM products AS p;
SELECT * FROM products;