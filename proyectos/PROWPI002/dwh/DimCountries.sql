-- Table: target.DimCountries

-- DROP TABLE IF EXISTS target."DimCountries";

CREATE TABLE IF NOT EXISTS target."DimCountries"
(
    "CountryCode" character varying(3) COLLATE pg_catalog."default" NOT NULL,
    "Country" character varying(60) COLLATE pg_catalog."default",
    "Capital" character varying(60) COLLATE pg_catalog."default",
    "RegionCode" integer,
    "SubregionCode" integer,
    "CurrencyKey01" character varying(3) COLLATE pg_catalog."default",
    "CurrencyKey02" character varying(3) COLLATE pg_catalog."default",
    "Area" integer,
    CONSTRAINT "DimCountries_pkey" PRIMARY KEY ("CountryCode"),
    CONSTRAINT "DimCurrencies01FK" FOREIGN KEY ("CurrencyKey01")
        REFERENCES target."DimCurrencies" ("CurrencyKey") MATCH FULL
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    CONSTRAINT "DimCurrencies02FK" FOREIGN KEY ("CurrencyKey02")
        REFERENCES target."DimCurrencies" ("CurrencyKey") MATCH FULL
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    CONSTRAINT "DimRegionsFK" FOREIGN KEY ("RegionCode")
        REFERENCES target."DimRegions" ("RegionCode") MATCH FULL
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    CONSTRAINT "DimSubregionsFK" FOREIGN KEY ("SubregionCode")
        REFERENCES target."DimSubregions" ("SubregionCode") MATCH FULL
        ON UPDATE CASCADE
        ON DELETE CASCADE
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS target."DimCountries"
    OWNER to postgres;

COMMENT ON COLUMN target."DimCountries"."CountryCode"
    IS 'm001';

COMMENT ON COLUMN target."DimCountries"."Country"
    IS 'm002';

COMMENT ON COLUMN target."DimCountries"."Capital"
    IS 'm200';

COMMENT ON COLUMN target."DimCountries"."RegionCode"
    IS 'm201';

COMMENT ON COLUMN target."DimCountries"."SubregionCode"
    IS 'm202';

COMMENT ON COLUMN target."DimCountries"."CurrencyKey01"
    IS 'm082';

COMMENT ON COLUMN target."DimCountries"."CurrencyKey02"
    IS 'm082';

COMMENT ON COLUMN target."DimCountries"."Area"
    IS 'm003';
-- Index: fki_DimCurrencies01FK

-- DROP INDEX IF EXISTS target."fki_DimCurrencies01FK";

CREATE INDEX IF NOT EXISTS "fki_DimCurrencies01FK"
    ON target."DimCountries" USING btree
    ("CurrencyKey01" COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
-- Index: fki_DimCurrencies02FK

-- DROP INDEX IF EXISTS target."fki_DimCurrencies02FK";

CREATE INDEX IF NOT EXISTS "fki_DimCurrencies02FK"
    ON target."DimCountries" USING btree
    ("CurrencyKey02" COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
-- Index: fki_DimRegionsFK

-- DROP INDEX IF EXISTS target."fki_DimRegionsFK";

CREATE INDEX IF NOT EXISTS "fki_DimRegionsFK"
    ON target."DimCountries" USING btree
    ("RegionCode" ASC NULLS LAST)
    TABLESPACE pg_default;
-- Index: fki_DimSubregionsFK

-- DROP INDEX IF EXISTS target."fki_DimSubregionsFK";

CREATE INDEX IF NOT EXISTS "fki_DimSubregionsFK"
    ON target."DimCountries" USING btree
    ("SubregionCode" ASC NULLS LAST)
    TABLESPACE pg_default;