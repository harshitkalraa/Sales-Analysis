-- cleaning Dim_datetable
USE AdventureWorksDW2019

select DateKey,
FullDateAlternateKey AS Date,
EnglishDayNameOfWeek AS Day,
WeekNumberOfYear as WeekNr,
EnglishMonthName AS Month,
MonthNumberOfYear As MonthNo,
CalendarQuarter AS Quarter,
CalendarYear AS year
From DimDate
Where CalendarYear > = 2019

