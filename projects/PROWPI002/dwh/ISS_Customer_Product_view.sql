CREATE VIEW target."ISS_Customer_Product_view"  AS 
	SELECT
       c."CustomerKey", c."GeographyKey", s."CurrencyKey", s."SalesTerritoryKey", c."Title", c."FirstName", 
	   c."MiddleName", c."LastName", s."OrderDate", 
	   s."ExtendedAmount",s."ProductStandardCost",s."TaxAmt",s."Freight",
	   10.00 "CAC",
	   "BirthDate", DATE_PART('year',AGE("BirthDate")) "Age", 
	   "MaritalStatus","Suffix","Gender","TotalChildren", "NumberChildrenAtHome", 
	   "Education","HouseOwnerFlag","NumberCarsOwned", "AddressLine1","AddressLine2", 
	   "Phone","DateFirstPurchase","CommuteDistance", "Occupation",
       p."ProductKey",p."ProductName", p."ProductSubcategoryKey"
 	FROM target."DimCustomer" c 
      LEFT JOIN target."ISS_view" s
	  ON s."CustomerKey" = c."CustomerKey" 
	  LEFT JOIN target."DimProduct" p
	  ON s."ProductKey" = p."ProductKey"