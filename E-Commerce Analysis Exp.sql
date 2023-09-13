
SELECT *
FROM PortfolioProject..ECommerceUK


-- OVERALL TOTAL 

SELECT COUNT(Quantity) AS TotalQuantity, SUM(UnitPrice*Quantity) AS TotalUnitPrice
FROM PortfolioProject..ECommerceUK


--Countries with Highest Ordered

SELECT Country, COUNT(Quantity) AS TotalQuantity
FROM PortfolioProject..ECommerceUK
GROUP BY Country
ORDER BY TotalQuantity DESC



--Ordered Quantity by Date

SELECT InvoiceDateConverted, COUNT(Quantity) AS Quantity
FROM PortfolioProject..ECommerceUK
GROUP BY InvoiceDateConverted
ORDER BY Quantity DESC



--Description Most Buy 

SELECT Description, COUNT(Quantity) Quantity
FROM PortfolioProject..ECommerceUK
GROUP BY Description
ORDER BY  Quantity DESC


--Customer most buy

SELECT CustomerIDFixed, Country,  COUNT(Quantity) Quantity
FROM PortfolioProject..ECommerceUK
WHERE CustomerIDFixed NOT LIKE '%NO%'
GROUP BY CustomerIDFixed, Country
ORDER BY  Quantity DESC



