CREATE TABLE wallets
(
    id INT NOT NULL AUTO_INCREMENT,
    id_customers INT NOT NULL,
    balance INT NOT NULL DEFAULT 0,
    PRIMARY KEY(id),
    ### KEY OF ONE TO ONE RELATIONSHIP
    UNIQUE KEY id_customers_unique (id_customers),
    FOREIGN KEY fk_id_customers (id_customers) REFERENCES customers(id)
) ENGINE = InnoDB;
### Contoh One to One adalah seperti di toko online, ONE customer TO ONE wallets dan harus memilliki UNIQUE KEY

INSERT INTO wallets(id_customers, balance)VALUES(1, 100000),(2, 200000);
SELECT * FROm wallets;
ALTER TABLE wallets
ADD CONSTRAINT fk_id_customers FOREIGN KEY(id_customers) REFERENCES customers(id);
SHOW CREATE TABLE wallets;


DESC wallets;