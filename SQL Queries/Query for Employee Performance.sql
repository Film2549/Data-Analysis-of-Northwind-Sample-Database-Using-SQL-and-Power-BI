USE northwind

SELECT 
	od.OrderID,
	e.TitleOfCourtesy + e.FirstName + ' ' + e.LastName AS EmployeeName,
	FORMAT(CONVERT(DATE,o.OrderDate), 'yyyy-MM-dd') AS OrderDate,
	FORMAT(CONVERT(DATE,o.RequiredDate), 'yyyy-MM-dd') AS RequiredDate,
	DATEDIFF(DAY, o.OrderDate, o.ShippedDate) AS OrderDuration, --Indicate orders duration as integer.
	od.Quantity,
	((od.UnitPrice * od.Quantity * (1 - od.Discount)) - o.Freight) AS Income,
		CASE
		WHEN ((od.UnitPrice * od.Quantity * (1 - od.Discount)) - o.Freight) < 0 THEN 'Loss'
		WHEN ((od.UnitPrice * od.Quantity * (1 - od.Discount)) - o.Freight) > 0 THEN 'Profit'
		WHEN ((od.UnitPrice * od.Quantity * (1 - od.Discount)) - o.Freight) = 0 THEN 'Break-even'
	END AS 'Position',
	r.RegionDescription AS EmployeeRegion
FROM dbo.OrderDetails AS od
LEFT JOIN dbo.Orders AS o
ON od.OrderID = o.OrderID
LEFT JOIN dbo.Employees AS e
ON o.EmployeeID = e.EmployeeID
LEFT JOIN dbo.EmployeeTerritories AS et
ON e.EmployeeID = et.EmployeeID
LEFT JOIN dbo.Territories AS t
ON et.TerritoryID = t.TerritoryID
LEFT JOIN dbo.Region AS r
ON t.RegionID = r.RegionID ;