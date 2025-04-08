USE northwind

select 
	od.OrderID,
	p.ProductName,
	od.UnitPrice,
	od.Quantity,
	ROUND(od.Discount,2) AS Discount,
	o.Freight,
	FORMAT(CONVERT(DATE,o.RequiredDate), 'yyyy-MM-dd') AS RequiredDate,
	CASE 
        WHEN MONTH(o.RequiredDate) BETWEEN 3 AND 5 THEN 'Spring'
        WHEN MONTH(o.RequiredDate) BETWEEN 6 AND 8 THEN 'Summer'
        WHEN MONTH(o.RequiredDate) BETWEEN 9 AND 11 THEN 'Autumn'
        WHEN MONTH(o.RequiredDate) IN (12, 1, 2) THEN 'Winter' 
        ELSE 'Unknown'
    END AS Season,
	o.ShipCountry,
	cg.CategoryName,
	(od.UnitPrice * od.Quantity * (1 - od.Discount)) AS Revenue,
	((od.UnitPrice * od.Quantity * (1 - od.Discount)) - o.Freight) AS Income,
	CASE
		WHEN ((od.UnitPrice * od.Quantity * (1 - od.Discount)) - o.Freight) < 0 THEN 'Loss'
		WHEN ((od.UnitPrice * od.Quantity * (1 - od.Discount)) - o.Freight) > 0 THEN 'Profit'
		WHEN ((od.UnitPrice * od.Quantity * (1 - od.Discount)) - o.Freight) = 0 THEN 'Break-even'
	END AS 'Position'
FROM dbo.OrderDetails AS od
LEFT JOIN dbo.Orders AS o
ON od.OrderID = o.OrderID
LEFT JOIN dbo.Products AS p
ON od.ProductID = p.ProductID
LEFT JOIN dbo.Categories AS cg
ON p.CategoryID = cg.CategoryID
ORDER BY RequiredDate;