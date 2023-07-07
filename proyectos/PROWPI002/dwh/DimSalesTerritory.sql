-- Table: target.DimSalesTerritory

-- DROP TABLE IF EXISTS target."DimSalesTerritory";

CREATE TABLE IF NOT EXISTS target."DimSalesTerritory"
(
    "SalesTerritoryKey" integer NOT NULL,
    "SalesTerritoryRegion" character varying(60) COLLATE pg_catalog."default",
    "SalesTerritoryGroup" character varying(60) COLLATE pg_catalog."default",
    "CountryCode" character varying(3) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "DimSalesTerritory_pkey" PRIMARY KEY ("SalesTerritoryKey"),
    CONSTRAINT "DimCountriesFK" FOREIGN KEY ("CountryCode")
        REFERENCES target."DimCountries" ("CountryCode") MATCH FULL
        ON UPDATE CASCADE
        ON DELETE CASCADE
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS target."DimSalesTerritory"
    OWNER to postgres;

COMMENT ON COLUMN target."DimSalesTerritory"."SalesTerritoryKey"
    IS 'm063';

COMMENT ON COLUMN target."DimSalesTerritory"."SalesTerritoryRegion"
    IS 'm173';

COMMENT ON COLUMN target."DimSalesTerritory"."SalesTerritoryGroup"
    IS 'm175';

COMMENT ON COLUMN target."DimSalesTerritory"."CountryCode"
    IS 'm001';