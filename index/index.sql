### Mambuat Index
CREATE TABLE sellers
(
    id INT  NOT NULL AUTO_INCREMENT,
    name1 VARCHAR(100),
    name2 VARCHAR(100),
    name3 VARCHAR(100),
    email VARCHAR(100) NOT NULL,
    PRIMARY KEY(id),
    CONSTRAINT email_unique UNIQUE KEY(email),
    INDEX name1_index (name1),
    INDEX name2_index (name2),
    INDEX name3_index (name3),
    INDEX name1_name2_name3 (name1, name2, name3)
)ENGINE = InnoDB;
### DELETE INDEX
ALTER TABLE sellers
DROP INDEX name1_index,
DROP INDEX name2_index,
DROP INDEX name3_index,
DROP INDEX name1_name2_name3_index;
### ADD INDEX
ALTER TABLE sellers
ADD INDEX name1_index (name1),
ADD INDEX name2_index (name2),
ADD INDEX name3_index (name3),
ADD INDEX name1_name2_name3_index (name1, name2, name3);

DESC sellers;
SHOW CREATE TABLE sellers;