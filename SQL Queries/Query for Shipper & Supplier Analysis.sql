USE northwind

SELECT 
	od.OrderID,
	p.ProductName,
	shp.CompanyName AS Shipper,
	o.Freight,
	FORMAT(CONVERT(DATE,o.OrderDate), 'yyyy-MM-dd') AS OrderDate,
		FORMAT(CONVERT(DATE,o.RequiredDate), 'yyyy-MM-dd') AS RequiredDate,
	FORMAT(CONVERT(DATE,o.ShippedDate), 'yyyy-MM-dd') AS ShippedDate,
	DATEDIFF(DAY, o.OrderDate, o.ShippedDate) AS OrderDuration,
	CASE 
		WHEN ShippedDate IS NULL THEN 'Pending'
        WHEN DATEDIFF(DAY,o.RequiredDate , o.ShippedDate) > 0 THEN 'Late'
        ELSE 'On Time'
    END AS OrderTimeStatus,
	sp.CompanyName AS Supplier,
	sp.Country AS SupplierCountry
FROM dbo.OrderDetails AS od
LEFT JOIN dbo.Orders AS o
ON od.OrderID = o.OrderID
LEFT JOIN dbo.Products AS p
ON p.ProductID = od.ProductID
LEFT JOIN dbo.Suppliers AS sp
ON sp.SupplierID = p.SupplierID
LEFT JOIN dbo.Shippers AS shp
ON o.ShipVia = shp.ShipperID;