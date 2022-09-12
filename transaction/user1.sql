### transaction
# START TX => INSERT,INSERT,UPDATE,DELETE => COOMIT TX/ROLLBACK TX 
START TRANSACTION;

UPDATE products
SET quantity = 100
WHERE id = 'P001';


### LOCKING RECORDS MANUAL
START TRANSACTION;
# FOR UPDATE to LOCKING MANUAL
SELECT * FROM products WHERE id = 'P001' FOR UPDATE;

UPDATE products
SET quantity = quantity - 100
WHERE id = 'P001';

COMMIT;

### DEADLOCK
START TRANSACTION;

# USER 1 SELECT id = 'P001'
SELECT * FROM products WHERE id = 'P001' FOR UPDATE;
# USER 1 SELECT id = 'P002' AND WAIT USER 2 DONE
SELECT * FROM products WHERE id = 'P002' FOR UPDATE;
#ERROR 1213 (40001): Deadlock found when trying to get lock; try restarting transaction