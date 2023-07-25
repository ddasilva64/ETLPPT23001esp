-- Table: target.DimGeography

-- DROP TABLE IF EXISTS target."DimGeography";

CREATE TABLE IF NOT EXISTS target."DimGeography"
(
    "GeographyKey" integer NOT NULL,
    "CountryCode" character varying(3) COLLATE pg_catalog."default" NOT NULL,
    "StateProvinceCode" character varying(3) COLLATE pg_catalog."default",
    "SalesTerritoryKey" integer,
    "City" character varying(60) COLLATE pg_catalog."default",
    "PostalCode" character varying(10) COLLATE pg_catalog."default",
    CONSTRAINT "DimGeography_pkey" PRIMARY KEY ("GeographyKey"),
    CONSTRAINT "DimCountriesFK" FOREIGN KEY ("CountryCode")
        REFERENCES target."DimCountries" ("CountryCode") MATCH FULL
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    CONSTRAINT "DimSalesTerritoryFK" FOREIGN KEY ("SalesTerritoryKey")
        REFERENCES target."DimSalesTerritory" ("SalesTerritoryKey") MATCH FULL
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    CONSTRAINT "DimStatesProvincesFK" FOREIGN KEY ("StateProvinceCode")
        REFERENCES target."DimStatesProvinces" ("StateProvinceCode") MATCH FULL
        ON UPDATE CASCADE
        ON DELETE CASCADE
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS target."DimGeography"
    OWNER to postgres;

COMMENT ON COLUMN target."DimGeography"."GeographyKey"
    IS 'm141';

COMMENT ON COLUMN target."DimGeography"."CountryCode"
    IS 'm001';

COMMENT ON COLUMN target."DimGeography"."StateProvinceCode"
    IS 'm139';

COMMENT ON COLUMN target."DimGeography"."SalesTerritoryKey"
    IS 'm063';

COMMENT ON COLUMN target."DimGeography"."City"
    IS 'm143';

COMMENT ON COLUMN target."DimGeography"."PostalCode"
    IS 'm144';
-- Index: fki_DimCountriesFK

-- DROP INDEX IF EXISTS target."fki_DimCountriesFK";

CREATE INDEX IF NOT EXISTS "fki_DimCountriesFK"
    ON target."DimGeography" USING btree
    ("CountryCode" COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
-- Index: fki_DimStatesProvincesFK

-- DROP INDEX IF EXISTS target."fki_DimStatesProvincesFK";

CREATE INDEX IF NOT EXISTS "fki_DimStatesProvincesFK"
    ON target."DimGeography" USING btree
    ("StateProvinceCode" COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;