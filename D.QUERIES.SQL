DELETE FROM payment_records
WHERE PAYMENT_ID='20';

DELETE FROM market_stall
WHERE market_stall_ID='20';

SELECT* FROM TRADER;

SELECT First_Name,Product_Sold
FROM TRADER;

SELECT * FROM TRADER
WHERE Address='15 MARK STREET';


SELECT* FROM payment_records
WHERE Paid_Amount >50 AND Paid_Amount =200;

SELECT*FROM sales_records
WHERE AMOUNT_PAID >30 AND  AMOUNT_PAID=150;

SELECT * FROM TRADER
WHERE Address='15 MARK STREET';

SELECT * FROM TRADER 
ORDER BY First_Name ASC; 

SELECT* FROM market
ORDER BY MARKET_NAME ASC;

SELECT * FROM local_council_staff
ORDER BY First_Name DESC; 

SELECT * FROM market
ORDER BY market_LOCATION DESC;

SELECT * FROM TRADER 
ORDER BY First_Name DESC, Last_Name ASC; 

SELECT*  FROM TRADER
LIMIT 15;


SELECT* FROM market_stall
LIMIT 10;

SELECT*  FROM TRADER
LIMIT 16 OFFSET 1;


SELECT* FROM market_stall
LIMIT 10 OFFSET 6;


SELECT TRADER_ID
FROM TRADER
ORDER  BY First_Name ASC
LIMIT 3;

SELECT PAYMENT_ID
FROM payment_records
ORDER  BY Reciept_Code ASC
LIMIT 3;

SELECT AVG(Paid_Amount)
FROM payment_records;

SELECT AVG( AMOUNT_PAID)
FROM sales_records;

SELECT SUM(Paid_Amount)
FROM payment_records;

SELECT SUM( AMOUNT_PAID)
FROM sales_records;

SELECT COUNT(Paid_Amount)
FROM payment_records;

SELECT COUNT( AMOUNT_PAID)
FROM sales_records;

SELECT MIN(Paid_Amount)
FROM payment_records;

SELECT MIN( AMOUNT_PAID)
FROM sales_records;

SELECT MAX(Paid_Amount)
FROM payment_records;

SELECT MAX( AMOUNT_PAID)
FROM sales_records;