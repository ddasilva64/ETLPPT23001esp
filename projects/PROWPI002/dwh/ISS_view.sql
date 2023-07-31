CREATE VIEW target."ISS_view"  AS 
	SELECT "ProductKey", "CustomerKey", "PromotionKey", "CurrencyKey", "SalesTerritoryKey", "SalesOrderNumber", "SalesOrderLineNumber", 
		   "RevisionNumber", "OrderQuantity", "UnitPrice", "ExtendedAmount", "UnitPriceDiscountPct", "DiscountAmount", "ProductStandardCost", 
		   "TotalProductCost", "SalesAmount", "TaxAmt", "Freight", "CarrierTrackingNumber", "CustomerPONumber", "OrderDate", "DueDate", 
		   "ShipDate", "FactInternetSalesPK" "ISSKey"
	FROM target."FactInternetSales"
	UNION
	SELECT "ProductKey", "CustomerKey", "PromotionKey", "CurrencyKey", "SalesTerritoryKey", "SalesOrderNumber", "SalesOrderLineNumber", 
		   "RevisionNumber", "OrderQuantity", "UnitPrice", "ExtendedAmount", "UnitPriceDiscountPct", "DiscountAmount", "ProductStandardCost", 
		   "TotalProductCost", "SalesAmount", "TaxAmt", "Freight", "CarrierTrackingNumber", "CustomerPONumber", "OrderDate", "DueDate", "ShipDate", 
		   "FactInternetSalesForecastPK"  "ISSKey"
	FROM target."FactInternetSalesForecast"