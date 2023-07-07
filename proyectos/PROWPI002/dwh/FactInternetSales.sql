-- Table: target.FactInternetSales

-- DROP TABLE IF EXISTS target."FactInternetSales";

CREATE TABLE IF NOT EXISTS target."FactInternetSales"
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
    "FactInternetSalesPK" character varying(30) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "FactInternetSales_pkey" PRIMARY KEY ("FactInternetSalesPK"),
    CONSTRAINT "DimCurrenciesFK" FOREIGN KEY ("CurrencyKey")
        REFERENCES target."DimCurrencies" ("CurrencyKey") MATCH FULL
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    CONSTRAINT "DimCustomerFK" FOREIGN KEY ("CustomerKey")
        REFERENCES target."DimCustomer" ("CustomerKey") MATCH FULL
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    CONSTRAINT "DimProductFK" FOREIGN KEY ("ProductKey")
        REFERENCES target."DimProduct" ("ProductKey") MATCH FULL
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    CONSTRAINT "DimPromotionFK" FOREIGN KEY ("PromotionKey")
        REFERENCES target."DimPromotion" ("PromotionKey") MATCH FULL
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    CONSTRAINT "DimSalesTerritoryFK" FOREIGN KEY ("SalesTerritoryKey")
        REFERENCES target."DimSalesTerritory" ("SalesTerritoryKey") MATCH FULL
        ON UPDATE CASCADE
        ON DELETE CASCADE
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS target."FactInternetSales"
    OWNER to postgres;

COMMENT ON COLUMN target."FactInternetSales"."ProductKey"
    IS 'm084';

COMMENT ON COLUMN target."FactInternetSales"."CustomerKey"
    IS 'm060';

COMMENT ON COLUMN target."FactInternetSales"."PromotionKey"
    IS 'm150';

COMMENT ON COLUMN target."FactInternetSales"."CurrencyKey"
    IS 'm082';

COMMENT ON COLUMN target."FactInternetSales"."SalesTerritoryKey"
    IS 'm063';

COMMENT ON COLUMN target."FactInternetSales"."SalesOrderNumber"
    IS 'm064';

COMMENT ON COLUMN target."FactInternetSales"."SalesOrderLineNumber"
    IS 'm065';

COMMENT ON COLUMN target."FactInternetSales"."RevisionNumber"
    IS 'm066';

COMMENT ON COLUMN target."FactInternetSales"."OrderQuantity"
    IS 'm067';

COMMENT ON COLUMN target."FactInternetSales"."UnitPrice"
    IS 'm068';

COMMENT ON COLUMN target."FactInternetSales"."ExtendedAmount"
    IS 'm069';

COMMENT ON COLUMN target."FactInternetSales"."UnitPriceDiscountPct"
    IS 'm070';

COMMENT ON COLUMN target."FactInternetSales"."DiscountAmount"
    IS 'm071';

COMMENT ON COLUMN target."FactInternetSales"."ProductStandardCost"
    IS 'm072';

COMMENT ON COLUMN target."FactInternetSales"."TotalProductCost"
    IS 'm073';

COMMENT ON COLUMN target."FactInternetSales"."SalesAmount"
    IS 'm074';

COMMENT ON COLUMN target."FactInternetSales"."TaxAmt"
    IS 'm075';

COMMENT ON COLUMN target."FactInternetSales"."Freight"
    IS 'm076';

COMMENT ON COLUMN target."FactInternetSales"."CarrierTrackingNumber"
    IS 'm077';

COMMENT ON COLUMN target."FactInternetSales"."CustomerPONumber"
    IS 'm078';

COMMENT ON COLUMN target."FactInternetSales"."OrderDate"
    IS 'm079';

COMMENT ON COLUMN target."FactInternetSales"."DueDate"
    IS 'm080';

COMMENT ON COLUMN target."FactInternetSales"."ShipDate"
    IS 'm081';
-- Index: fki_CurrenciesFK

-- DROP INDEX IF EXISTS target."fki_CurrenciesFK";

CREATE INDEX IF NOT EXISTS "fki_CurrenciesFK"
    ON target."FactInternetSales" USING btree
    ("CurrencyKey" COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
-- Index: fki_DimCurrenciesFK

-- DROP INDEX IF EXISTS target."fki_DimCurrenciesFK";

CREATE INDEX IF NOT EXISTS "fki_DimCurrenciesFK"
    ON target."FactInternetSales" USING btree
    ("CurrencyKey" COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
-- Index: fki_DimCustomerFK

-- DROP INDEX IF EXISTS target."fki_DimCustomerFK";

CREATE INDEX IF NOT EXISTS "fki_DimCustomerFK"
    ON target."FactInternetSales" USING btree
    ("CustomerKey" ASC NULLS LAST)
    TABLESPACE pg_default;
-- Index: fki_DimProductFK

-- DROP INDEX IF EXISTS target."fki_DimProductFK";

CREATE INDEX IF NOT EXISTS "fki_DimProductFK"
    ON target."FactInternetSales" USING btree
    ("ProductKey" ASC NULLS LAST)
    TABLESPACE pg_default;
-- Index: fki_DimPromotionFK

-- DROP INDEX IF EXISTS target."fki_DimPromotionFK";

CREATE INDEX IF NOT EXISTS "fki_DimPromotionFK"
    ON target."FactInternetSales" USING btree
    ("PromotionKey" ASC NULLS LAST)
    TABLESPACE pg_default;
-- Index: fki_DimSalesTerritoryFK

-- DROP INDEX IF EXISTS target."fki_DimSalesTerritoryFK";

CREATE INDEX IF NOT EXISTS "fki_DimSalesTerritoryFK"
    ON target."FactInternetSales" USING btree
    ("SalesTerritoryKey" ASC NULLS LAST)
    TABLESPACE pg_default;