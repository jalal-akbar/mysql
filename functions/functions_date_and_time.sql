### Time And Date Functions
SELECT id, created_at,
        TIME(created_at) AS "Time",
        DAY(created_at) AS "Day",
        MONTH(created_at) AS "Month",
        YEAR(created_at) AS "Years" 
FROM products;
SELECT * FROM products;