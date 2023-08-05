CREATE VIEW target."Currencies_Exchanges_view"  AS 
	SELECT
		c."CurrencyKey", c."Currency",
		e."Date", e."Exchange"
 	FROM target."FactExchanges" e
      LEFT JOIN target."DimCurrencies" c 
	  ON e."CurrencyKey" = c."CurrencyKey"