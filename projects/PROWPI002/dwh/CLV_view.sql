CREATE VIEW target."CLV_view"  AS 
	SELECT
       COUNT(*), c."CustomerKey", MIN(c."GeographyKey") "GeographyKey", MIN(s."CurrencyKey") "CurrencyKey",
	   MIN(s."SalesTerritoryKey") "SalesTerritoryKey",
	   MIN(c."Title") "Title", MIN(c."FirstName") "FirstName", MIN(c."MiddleName") "MiddleName", MIN(c."LastName") "LastName",
	   MIN(s."OrderDate") "MinOrderDate", MAX(s."OrderDate") "MaxOrderDate",
	   target."NetIncomeFunc"(SUM(s."ExtendedAmount"),SUM(s."ProductStandardCost"),SUM(s."TaxAmt"),SUM(s."Freight")) "NetIncome",
	   CASE 
			WHEN target."NetIncomeFunc"(SUM(s."ExtendedAmount"),SUM(s."ProductStandardCost"),SUM(s."TaxAmt"),SUM(s."Freight")) > 0 THEN 1
	   ELSE 0
	   END "ARPA_Account",
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
		   		) "CLV",
	   10.00 "CAC",
	   target."CLV_CACFunc"(
			SUM(s."ExtendedAmount"),SUM(s."ProductStandardCost"),SUM(s."TaxAmt"),SUM(s."Freight"),
			DATE_PART('YEAR',AGE(MAX(s."OrderDate"), MIN(s."OrderDate"))),
			DATE_PART('MONTH',AGE(MAX(s."OrderDate"), MIN(s."OrderDate"))),
			DATE_PART('DAY',AGE(MAX(s."OrderDate"), MIN(s."OrderDate"))), 10.0
			) "CLV_CAC",
	   MIN("BirthDate") "BirthDate", DATE_PART('year',AGE("BirthDate")) "Age", 
	   MIN("MaritalStatus") "MaritalStatus", min("Suffix") "Suffix", 
	   MIN("Gender") "Gender", min("YearlyIncome") "YearlyIncome", 
	   MIN("TotalChildren") "TotalChildren", MIN("NumberChildrenAtHome") "NumberChildrenAtHome", 
	   MIN("Education") "Education", MIN("HouseOwnerFlag") "HouseOwnerFlag", MIN("NumberCarsOwned") "NumberCarsOwned", 
	   MIN("AddressLine1") "AddressLine1", MIN("AddressLine2") "AddressLine2", 
	   MIN("Phone") "Phone", MIN("DateFirstPurchase") "DateFirstPurchase", MIN("CommuteDistance") "CommuteDistance", 
	   MIN("Occupation") "Occupation"
 	FROM target."DimCustomer" c 
      LEFT JOIN target."FactInternetSales" s
	  ON s."CustomerKey" = c."CustomerKey"
	GROUP BY c."CustomerKey";
