-- Table: target.DimProduct

-- DROP TABLE IF EXISTS target."DimProduct";

CREATE TABLE IF NOT EXISTS target."DimProduct"
(
    "ProductKey" integer NOT NULL,
    "ProductAlternateKey" character varying(25) COLLATE pg_catalog."default" NOT NULL,
    "ProductName" character varying(50) COLLATE pg_catalog."default" NOT NULL,
    "Description" character varying(400) COLLATE pg_catalog."default",
    "ProductSubcategoryKey" integer,
    "WeightUnitMeasureCode" character varying(3) COLLATE pg_catalog."default",
    "SizeUnitMeasureCode" character varying(3) COLLATE pg_catalog."default",
    "StandardCost" real,
    "FinishedGoodsFlag" boolean NOT NULL,
    "Color" character varying(15) COLLATE pg_catalog."default",
    "SafetyStockLevel" integer,
    "ReorderPoint" integer,
    "ListPrice" real,
    "Size" character varying(50) COLLATE pg_catalog."default",
    "SizeRange" character varying(50) COLLATE pg_catalog."default",
    "Weight" real,
    "DaysToManufacture" integer,
    "ProductLine" character varying(2) COLLATE pg_catalog."default",
    "DealerPrice" real,
    "Class" character varying(2) COLLATE pg_catalog."default",
    "Style" character varying(2) COLLATE pg_catalog."default",
    "ModelName" character varying(50) COLLATE pg_catalog."default",
    "StartDate" date,
    "EndDate" date,
    "Status" character varying(7) COLLATE pg_catalog."default",
    CONSTRAINT "DimProduct_pkey" PRIMARY KEY ("ProductKey"),
    CONSTRAINT "DimProductSubcategoryFK" FOREIGN KEY ("ProductSubcategoryKey")
        REFERENCES target."DimProductSubcategory" ("ProductSubcategoryKey") MATCH FULL
        ON UPDATE CASCADE
        ON DELETE CASCADE
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS target."DimProduct"
    OWNER to postgres;

COMMENT ON COLUMN target."DimProduct"."ProductKey"
    IS 'm084';

COMMENT ON COLUMN target."DimProduct"."ProductAlternateKey"
    IS 'm085';

COMMENT ON COLUMN target."DimProduct"."ProductName"
    IS 'm089';

COMMENT ON COLUMN target."DimProduct"."Description"
    IS 'm103';

COMMENT ON COLUMN target."DimProduct"."ProductSubcategoryKey"
    IS 'm086';

COMMENT ON COLUMN target."DimProduct"."WeightUnitMeasureCode"
    IS 'm087';

COMMENT ON COLUMN target."DimProduct"."SizeUnitMeasureCode"
    IS 'm088';

COMMENT ON COLUMN target."DimProduct"."StandardCost"
    IS 'm072';

COMMENT ON COLUMN target."DimProduct"."FinishedGoodsFlag"
    IS 'm090';

COMMENT ON COLUMN target."DimProduct"."Color"
    IS 'm091';

COMMENT ON COLUMN target."DimProduct"."SafetyStockLevel"
    IS 'm092';

COMMENT ON COLUMN target."DimProduct"."ReorderPoint"
    IS 'm093';

COMMENT ON COLUMN target."DimProduct"."ListPrice"
    IS 'm073';

COMMENT ON COLUMN target."DimProduct"."Size"
    IS 'm094';

COMMENT ON COLUMN target."DimProduct"."SizeRange"
    IS 'm095';

COMMENT ON COLUMN target."DimProduct"."Weight"
    IS 'm096';

COMMENT ON COLUMN target."DimProduct"."DaysToManufacture"
    IS 'm097';

COMMENT ON COLUMN target."DimProduct"."ProductLine"
    IS 'm098';

COMMENT ON COLUMN target."DimProduct"."DealerPrice"
    IS 'm099';

COMMENT ON COLUMN target."DimProduct"."Class"
    IS 'm100';

COMMENT ON COLUMN target."DimProduct"."Style"
    IS 'm101';

COMMENT ON COLUMN target."DimProduct"."ModelName"
    IS 'm102';

COMMENT ON COLUMN target."DimProduct"."StartDate"
    IS 'm056';

COMMENT ON COLUMN target."DimProduct"."EndDate"
    IS 'm057';

COMMENT ON COLUMN target."DimProduct"."Status"
    IS 'm058';
-- Index: fki_DimProductSubcategoryFK

-- DROP INDEX IF EXISTS target."fki_DimProductSubcategoryFK";

CREATE INDEX IF NOT EXISTS "fki_DimProductSubcategoryFK"
    ON target."DimProduct" USING btree
    ("ProductSubcategoryKey" ASC NULLS LAST)
    TABLESPACE pg_default;