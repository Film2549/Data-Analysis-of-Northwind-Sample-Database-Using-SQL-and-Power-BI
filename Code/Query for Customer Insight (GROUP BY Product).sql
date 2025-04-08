USE northwind;

WITH PreviousPart2 AS (
	select
		od.OrderID,
		o.CustomerID,
		FORMAT(CONVERT(DATE,o.RequiredDate), 'yyyy-MM-dd') AS RequiredDate,
		((od.UnitPrice * od.Quantity * (1 - od.Discount)) - o.Freight) AS TotalIncome,
		p.ProductName,
		cg.CategoryName,
		od.Quantity,
		s.CompanyName,
		c.ContactTitle AS CustomerRole,
		CASE
			WHEN c.City LIKE '%?%' 
			   OR c.City LIKE '%?%' 
			   OR c.City = '?' THEN 'uncomplete'
			ELSE c.City
		END AS CustomerCity,
		c.Country,
		s.CompanyName AS ChosenShipperCompany
	FROM 
	dbo.OrderDetails AS od
	LEFT JOIN dbo.Orders AS o
	ON od.OrderID = o.OrderID
	LEFT JOIN dbo.Customers AS c
	ON o.CustomerID = c.CustomerID
	LEFT JOIN dbo.Shippers AS s
	ON o.ShipVia = s.ShipperID
	LEFT JOIN dbo.Products AS p
	ON od.ProductID = p.ProductID
	LEFT JOIN dbo.Categories AS cg
	ON p.CategoryID = cg.CategoryID
)

SELECT 
	ProductName,
	SUM(Quantity) AS TotalQuantity
FROM PreviousPart2
GROUP BY ProductName;

