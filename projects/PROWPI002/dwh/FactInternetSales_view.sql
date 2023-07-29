CREATE VIEW target."FactInternetSales_view"  AS 
	SELECT
       s."ProductKey", s."CustomerKey", s."PromotionKey", s."CurrencyKey", s."SalesTerritoryKey", s."SalesOrderNumber", 
       s."SalesOrderLineNumber", s."RevisionNumber", s."OrderQuantity", s."UnitPrice", s."ExtendedAmount", 
	   s."UnitPriceDiscountPct", s."DiscountAmount", s."ProductStandardCost", s."TotalProductCost", s."SalesAmount", 
	   s."TaxAmt", s."Freight", s."CarrierTrackingNumber", s."CustomerPONumber", s."OrderDate", s."DueDate", s."ShipDate", 
	   s."FactInternetSalesPK", t."SalesTerritoryRegion", t."SalesTerritoryGroup", t."CountryCode"
 FROM target."FactInternetSales" s 
      LEFT JOIN target."DimSalesTerritory" t
	  ON s."SalesTerritoryKey" = t."SalesTerritoryKey";