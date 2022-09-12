### transaction
### START TX => INSERT,INSERT,UPDATE,DELETE => COOMIT TX/ROLLBACK TX 
START TRANSACTION;
SELECT * FROM products;





### LOCKING RECORDS MANUAL
START TRANSACTION;
# User 2 wait cause locking 
SELECT * FROM products WHERE id = 'P001';

UPDATE products
SET quantity = quantity + 100
WHERE id = 'P001';

COMMIT;

### DEADLOCK
START TRANSACTION;

# USER 2 SELECT id = 'P002'
SELECT * FROM products WHERE id = 'P002' FOR UPDATE;
# USER 2 SELECT id = 'P001' AND WAIT USER 1 DONE
SELECT * FROM products WHERE id = 'P001' FOR UPDATE;
#ERROR 1213 (40001): Deadlock found when trying to get lock; try restarting transaction



