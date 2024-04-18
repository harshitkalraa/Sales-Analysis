-- Cleaning Internet Sales

USE AdventureWorksDW2019

Select ProductKey,
OrderDateKey,
LEFT(OrderDateKey,4) as YearKey,
DueDateKey,
ShipDateKey,
CustomerKey,
SalesOrderNumber,
SalesAmount
From FactInternetSales
--Where YearKey >= YEAR(GETDATE())-2
Order by OrderDateKey


