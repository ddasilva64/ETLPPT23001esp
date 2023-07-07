SELECT fi."OrderDate", fi."FactInternetSalesPK", fi."ProductKey", fi."SalesTerritoryKey", fi."OrderQuantity", fi."UnitPrice", fi."DiscountAmount", 
       fi."ExtendedAmount", dc."Country", dr."CurrencyKey", dr."Currency"
FROM target."FactInternetSales" fi,
     target."DimSalesTerritory" ds,
	 target."DimCountries" dc, 
	 target."DimCurrencies" dr
WHERE fi."SalesTerritoryKey" = ds."SalesTerritoryKey" AND
      dc."CountryCode" = ds."CountryCode" AND
	  fi."CurrencyKey" = dr."CurrencyKey"
ORDER BY fi."OrderDate", fi."FactInternetSalesPK", dr."Currency"