-- cleaning product table

USE AdventureWorksDW2019

Select p.ProductKey,
p.ProductAlternateKey as ProdcutItemCode,
p.EnglishProductName As ProdcutName,
ps.EnglishProductSubcategoryName AS SubCategory,
pc.EnglishProductCategoryName As Prodcutcategory,
p.Color As ProcudtColor,
p.Size As ProductSize,
p.ProductLine AS Product_Line,
p.ModelName AS Prodcutmodel,
p.EnglishDescription AS Product_Description,
ISNULL (p.status, 'Outdated') AS Product_Status
From DimProduct AS p
left join DimProductSubcategory as ps ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey
left Join DimProductCategory as pc ON ps.ProductCategoryKey = pc.ProductCategoryKey
order by 
p.ProductKey