SELECT object_name(id) "table",rowcnt "rowcount"
	FROM sys.sysindexes
	WHERE indid=1 AND 
		object_name(id) IN 
			('DimCountries', 'DimCurrency', 'DimCustomer', 'DimEmployee',
			'DimGeography', 'DimProduct', 'DimProductCategory', 'DimProductSubcategory', 
			'DimPromotion','DimRegions','DimReseller', 'DimSalesTerritory',
			'DimStatesProvinces','DimSubregions','FactCountries',
			'FactExchanges','FactInternetSales','FactInternetSalesForecast',
			'FactInternetSalesReason','FactProductInventory', 'FactResellerSales', 
			'Metadata')
	ORDER BY 1