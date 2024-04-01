--Robert Hedrick

USE Cape_Codd

--Query 1

SELECT *
FROM SKU_DATA;

--Query 2
SELECT SKU, SKU_Description, Department, Buyer
FROM SKU_DATA;


--Query 3
SELECT Buyer, Department
FROM SKU_DATA;

--Query 4
SELECT *
FROM SKU_DATA
WHERE Department='Water Sports';

--Query 5
SELECT *
FROM SKU_DATA
WHERE SKU>200000;

--Query 6
SELECT *
FROM SKU_DATA
WHERE Department='Water Sports'
AND Buyer='Nancy Meyers';

--Query 7
SELECT *
FROM SKU_DATA
WHERE Department='Water Sports'
OR Department='Climbing';

--Query 8
Select *
FROM ORDER_ITEM;

--Query 9
Select *
FROM ORDER_ITEM
ORDER BY Price;

--Query 10
Select *
FROM ORDER_ITEM
ORDER BY Price DESC;
