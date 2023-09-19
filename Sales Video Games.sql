
SELECT Platform, COUNT(Platform) AS TotalCount
FROM PortfolioProject..vgsales
GROUP BY Platform
ORDER BY TotalCount DESC

SELECT Publisher, COUNT(Publisher) AS TotalCount
FROM PortfolioProject..vgsales
GROUP BY Publisher
ORDER BY TotalCount DESC

SELECT Genre, COUNT(Genre) AS TotalCount
FROM PortfolioProject..vgsales
GROUP BY Genre
ORDER BY TotalCount DESC

SELECT Year, COUNT(Year) AS TotalCount
FROM PortfolioProject..vgsales
WHERE Year is NOT NULL
GROUP BY Year
ORDER BY Year 

SELECT SUM(NA_Sales) AS TotalSumOfNASales
,SUM(EU_Sales) AS TotalSumOfEUSales
,SUM(JP_Sales) AS TotalSumOfJPSales
,SUM(Other_Sales) AS TotalSumOfOtherSales
,SUM(Global_Sales) AS TotalSumOfGlobalSales
FROM PortfolioProject..vgsales


SELECT TOP 10 *
FROM PortfolioProject..vgsales


  SELECT COUNT(Name) AS TotalCountOfVideoGames
  FROM PortfolioProject..vgsales




