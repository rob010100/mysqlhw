--Robert Hedrick
USE Tickets
--Query 1

SELECT *
FROM TICKET
WHERE Fine BETWEEN 40 AND 60;


--Query 2

SELECT *
FROM DRIVER
WHERE DriverFirstName LIKE 'J%';


--Query 3

SELECT *
FROM DRIVER
WHERE City IS NULL;


--Query 4
UPDATE DRIVER
SET City = 'Kansas City'
WHERE City IS NULL;


--Query 5

SELECT DISTINCT City
FROM DRIVER
WHERE City IS NOT NULL;


--Query 6

SELECT SUM(Fine) AS FinesTotal,
COUNT(TicketNumber) AS TicketCount
FROM TICKET;


--Query 7

SELECT DISTINCT Place, 
COUNT(Ticketnumber) AS NumberofTickets
GROUP BY Place
FROM TICKET;


--Query 8

SELECT DriverFirstName, DriverLastName, Date, Place, Fine
FROM DRIVER, TICKET
ORDER BY Fine;


--Query 9

SELECT DriverFirstName, DriverLastName, Date, Place, Fine
FROM DRIVER, TICKET
WHERE Place = 'Main Campus'
ORDER BY Fine;