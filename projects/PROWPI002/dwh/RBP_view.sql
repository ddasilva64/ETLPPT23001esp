CREATE VIEW target."RPB_view"  AS 
	SELECT
       COUNT(*), p."ProductKey", 
	   MIN(s."SalesTerritoryKey") "SalesTerritoryKey",
	   MIN(p."ProductName") "ProductName", MIN(p."Description") "Description", MIN(p."ProductSubcategoryKey") "ProductSubcategoryKey", 
	   MIN(p."StandardCost") "StandardCost", MIN(p."SafetyStockLevel") "SafetyStockLevel", MIN(p."ReorderPoint") "ReorderPoint",
	   MIN(p."ListPrice") "ListPrice", MIN("StartDate") "StartDate", MIN("EndDate") "EndDate", MIN("Status") "Status",
	   MIN(s."OrderDate") "MinOrderDate", MAX(s."OrderDate") "MaxOrderDate",
	   target."NetIncomeFunc"(SUM(s."ExtendedAmount"),SUM(s."ProductStandardCost"),SUM(s."TaxAmt"),SUM(s."Freight")) "NetIncome",
	   CASE 
			WHEN target."NetIncomeFunc"(SUM(s."ExtendedAmount"),SUM(s."ProductStandardCost"),SUM(s."TaxAmt"),SUM(s."Freight")) > 0 THEN 1
	   ELSE 0
	   END "ARPP_Product",
	   target."MonthsFunc"(
				DATE_PART('YEAR',AGE(MAX(s."OrderDate"), MIN(s."OrderDate"))),
				DATE_PART('MONTH',AGE(MAX(s."OrderDate"), MIN(s."OrderDate"))),
		   		DATE_PART('DAY',AGE(MAX(s."OrderDate"), MIN(s."OrderDate")))
		   		) "MonthsNo",
	   target."CLVFunc"(
		   		SUM(s."ExtendedAmount"),SUM(s."ProductStandardCost"),SUM(s."TaxAmt"),SUM(s."Freight"),
				DATE_PART('YEAR',AGE(MAX(s."OrderDate"), MIN(s."OrderDate"))),
				DATE_PART('MONTH',AGE(MAX(s."OrderDate"), MIN(s."OrderDate"))),
		   		DATE_PART('DAY',AGE(MAX(s."OrderDate"), MIN(s."OrderDate")))
		   		) "PLV",
	   25.00 "PSC",
	   target."CLV_CACFunc"(
			SUM(s."ExtendedAmount"),SUM(s."ProductStandardCost"),SUM(s."TaxAmt"),SUM(s."Freight"),
			DATE_PART('YEAR',AGE(MAX(s."OrderDate"), MIN(s."OrderDate"))),
			DATE_PART('MONTH',AGE(MAX(s."OrderDate"), MIN(s."OrderDate"))),
			DATE_PART('DAY',AGE(MAX(s."OrderDate"), MIN(s."OrderDate"))), 25.0
			) "PLV_PSC"
 	FROM target."DimProduct" p
      LEFT JOIN target."FactInternetSales" s
	  ON s."ProductKey" = p."ProductKey"
	GROUP BY p."ProductKey";
