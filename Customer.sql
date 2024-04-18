-- cleaning customer table

USE AdventureWorksDW2019

Select c.customerkey AS CustomerKey,
c.firstname AS FirstName,
c.lastname	as LastName,
CONCAT(c.firstname, ' ', c.lastname) As FullName,
Case c.gender 
        When 'M' Then 'Male'
		When 'F' Then 'Female'
		End As Gender,
c.datefirstpurchase AS DateFirstPurchase,
g.city As Customer_City

From DimCustomer as c
Left Join DimGeography as g ON c.GeographyKey = g.GeographyKey
Order by CustomerKey 