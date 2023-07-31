CREATE VIEW target."CustomerProduct_view"  AS 
	SELECT "ProductKey", "CustomerKey"
		FROM target."FactInternetSales"
	GROUP BY  "ProductKey", "CustomerKey"