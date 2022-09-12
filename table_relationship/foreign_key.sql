### FOREIGN KEY
CREATE TABLE wishlists
(
    id INT NOT NULL AUTO_INCREMENT,
    id_products VARCHAR(100) NOT NULL,
    descriptions TEXT,
    PRIMARY KEY (id),
    CONSTRAINT fk_wishlists_products FOREIGN KEY (id_products) REFERENCES products (id)
)ENGINE = InnoDB;

### Menghapus Foreign Key
ALTER TABLE wishlists
DROP CONSTRAINT fk_wishlists_products;
### Menambah FOREIGN KEY
ALTER TABLE wishlists
ADD CONSTRAINT fk_wishlists_products FOREIGN KEY (id_products) REFERENCES products (id);
### Test FOREIGN KEY
INSERT INTO wishlists(id_products, descriptions)VALUES('P001', 'Minumah Ringan');
SELECT * FROM wishlists;
### BEHAVIOR FOREIGN KEY
### RESTRICT = ON DELETE(di tolak) ON UPDATE (di tolak)  RESTRICT SET DEFAULT BEHAVIOR
### CASCADE = ON DELETE (Data akan di Hapus) ON UPDATE (Data akan di Ubah)
### NO ACTION = ON DELETE(Data di biarkan) ON UPDATE (Data di biarkan)
### SET NULL = ON DELETE(Data diubah Menjadi NULL) ON UPDATE (Data di Ubah jadi NULL)

### MENAMBAH BEHAVIOR CASCADE
ALTER TABLE wishlists
ADD CONSTRAINT fk_wishlists_products FOREIGN KEY(id_products) REFERENCES products(id)
ON DELETE CASCADE ON UPDATE CASCADE;
### Menambah Behavior NO ACTION
ALTER TABLE wishlists
ADD CONSTRAINT fk_wishlists_products FOREIGN KEY (id_products) REFERENCES products(id)
ON DELETE NO ACTION ON UPDATE NO ACTION;

DESC wishlists;