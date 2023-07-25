-- Table: target.FactInternetSalesForecast

-- DROP TABLE IF EXISTS target."FactInternetSalesForecast";

CREATE TABLE IF NOT EXISTS target."FactInternetSalesForecast"
(
    "ProductKey" integer NOT NULL,
    "CustomerKey" integer NOT NULL,
    "PromotionKey" integer NOT NULL,
    "CurrencyKey" character varying(3) COLLATE pg_catalog."default" NOT NULL,
    "SalesTerritoryKey" integer NOT NULL,
    "SalesOrderNumber" character varying(20) COLLATE pg_catalog."default" NOT NULL,
    "SalesOrderLineNumber" integer NOT NULL,
    "RevisionNumber" integer NOT NULL,
    "OrderQuantity" integer NOT NULL,
    "UnitPrice" real NOT NULL,
    "ExtendedAmount" real NOT NULL,
    "UnitPriceDiscountPct" real NOT NULL,
    "DiscountAmount" real NOT NULL,
    "ProductStandardCost" real NOT NULL,
    "TotalProductCost" real NOT NULL,
    "SalesAmount" real NOT NULL,
    "TaxAmt" real NOT NULL,
    "Freight" real NOT NULL,
    "CarrierTrackingNumber" character varying(25) COLLATE pg_catalog."default",
    "CustomerPONumber" character varying(25) COLLATE pg_catalog."default",
    "OrderDate" date,
    "DueDate" date,
    "ShipDate" date,
    "FactInternetSalesForecastPK" character varying(30) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "FactInternetSalesForecast_pkey" PRIMARY KEY ("FactInternetSalesForecastPK"),
    CONSTRAINT "DimCurrenciesFK" FOREIGN KEY ("CurrencyKey")
        REFERENCES target."DimCurrencies" ("CurrencyKey") MATCH FULL
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    CONSTRAINT "DimCustomerForecastFK" FOREIGN KEY ("CustomerKey")
        REFERENCES target."DimCustomer" ("CustomerKey") MATCH FULL
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    CONSTRAINT "DimProductForecastFK" FOREIGN KEY ("ProductKey")
        REFERENCES target."DimProduct" ("ProductKey") MATCH FULL
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    CONSTRAINT "DimPromotionForecastFK" FOREIGN KEY ("PromotionKey")
        REFERENCES target."DimPromotion" ("PromotionKey") MATCH FULL
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    CONSTRAINT "DimSalesTerritoryForecastFK" FOREIGN KEY ("SalesTerritoryKey")
        REFERENCES target."DimSalesTerritory" ("SalesTerritoryKey") MATCH FULL
        ON UPDATE CASCADE
        ON DELETE CASCADE
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS target."FactInternetSalesForecast"
    OWNER to postgres;

COMMENT ON COLUMN target."FactInternetSalesForecast"."ProductKey"
    IS 'm084';

COMMENT ON COLUMN target."FactInternetSalesForecast"."CustomerKey"
    IS 'm060';

COMMENT ON COLUMN target."FactInternetSalesForecast"."PromotionKey"
    IS 'm150';

COMMENT ON COLUMN target."FactInternetSalesForecast"."CurrencyKey"
    IS 'm082';

COMMENT ON COLUMN target."FactInternetSalesForecast"."SalesTerritoryKey"
    IS 'm063';

COMMENT ON COLUMN target."FactInternetSalesForecast"."SalesOrderNumber"
    IS 'm064';

COMMENT ON COLUMN target."FactInternetSalesForecast"."SalesOrderLineNumber"
    IS 'm065';

COMMENT ON COLUMN target."FactInternetSalesForecast"."RevisionNumber"
    IS 'm066';

COMMENT ON COLUMN target."FactInternetSalesForecast"."OrderQuantity"
    IS 'm067';

COMMENT ON COLUMN target."FactInternetSalesForecast"."UnitPrice"
    IS 'm068';

COMMENT ON COLUMN target."FactInternetSalesForecast"."ExtendedAmount"
    IS 'm069';

COMMENT ON COLUMN target."FactInternetSalesForecast"."UnitPriceDiscountPct"
    IS 'm070';

COMMENT ON COLUMN target."FactInternetSalesForecast"."DiscountAmount"
    IS 'm071';

COMMENT ON COLUMN target."FactInternetSalesForecast"."ProductStandardCost"
    IS 'm072';

COMMENT ON COLUMN target."FactInternetSalesForecast"."TotalProductCost"
    IS 'm073';

COMMENT ON COLUMN target."FactInternetSalesForecast"."SalesAmount"
    IS 'm074';

COMMENT ON COLUMN target."FactInternetSalesForecast"."TaxAmt"
    IS 'm075';

COMMENT ON COLUMN target."FactInternetSalesForecast"."Freight"
    IS 'm076';

COMMENT ON COLUMN target."FactInternetSalesForecast"."CarrierTrackingNumber"
    IS 'm077';

COMMENT ON COLUMN target."FactInternetSalesForecast"."CustomerPONumber"
    IS 'm078';

COMMENT ON COLUMN target."FactInternetSalesForecast"."OrderDate"
    IS 'm079';

COMMENT ON COLUMN target."FactInternetSalesForecast"."DueDate"
    IS 'm080';

COMMENT ON COLUMN target."FactInternetSalesForecast"."ShipDate"
    IS 'm081';
-- Index: fki_CurrenciesForecastFK

-- DROP INDEX IF EXISTS target."fki_CurrenciesForecastFK";

CREATE INDEX IF NOT EXISTS "fki_CurrenciesForecastFK"
    ON target."FactInternetSalesForecast" USING btree
    ("CurrencyKey" COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
-- Index: fki_DimCurrenciesForecastFK

-- DROP INDEX IF EXISTS target."fki_DimCurrenciesForecastFK";

CREATE INDEX IF NOT EXISTS "fki_DimCurrenciesForecastFK"
    ON target."FactInternetSalesForecast" USING btree
    ("CurrencyKey" COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
-- Index: fki_DimCustomerForecastFK

-- DROP INDEX IF EXISTS target."fki_DimCustomerForecastFK";

CREATE INDEX IF NOT EXISTS "fki_DimCustomerForecastFK"
    ON target."FactInternetSalesForecast" USING btree
    ("CustomerKey" ASC NULLS LAST)
    TABLESPACE pg_default;
-- Index: fki_DimProductForecastFK

-- DROP INDEX IF EXISTS target."fki_DimProductForecastFK";

CREATE INDEX IF NOT EXISTS "fki_DimProductForecastFK"
    ON target."FactInternetSalesForecast" USING btree
    ("ProductKey" ASC NULLS LAST)
    TABLESPACE pg_default;
-- Index: fki_DimPromotionForecastFK

-- DROP INDEX IF EXISTS target."fki_DimPromotionForecastFK";

CREATE INDEX IF NOT EXISTS "fki_DimPromotionFForecastK"
    ON target."FactInternetSalesForecast" USING btree
    ("PromotionKey" ASC NULLS LAST)
    TABLESPACE pg_default;
-- Index: fki_DimSalesTerritoryForecastFK

-- DROP INDEX IF EXISTS target."fki_DimSalesTerritoryForecastFK";

CREATE INDEX IF NOT EXISTS "fki_DimSalesTerritoryForecastFK"
    ON target."FactInternetSalesForecast" USING btree
    ("SalesTerritoryKey" ASC NULLS LAST)
    TABLESPACE pg_default;