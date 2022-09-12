CREATE TABLE admins (  
    id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    create_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(id)
)ENGINE = InnoDB;
INSERT INTO admins(first_name,last_name)
VALUES  ("Jalaluddin", "Akbar"),
        ("Meri", "Maroon"),
        ("Fatmah", "Sondakh"),
        ("Sonia", "Froy"),
        ("Eko", "Kheneddy");
INSERT INTO admins(first_name, last_name)
VALUES("Fatamah", "Sondakh");
SELECT * FROM admins;
DELETE FROM admins WHERE id = 3;
### Melihat ID Terakhir
SELECT LAST_INSERT_ID();

DESC admins;