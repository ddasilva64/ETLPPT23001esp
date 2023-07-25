-- Table: target.DimProductSubcategory

-- DROP TABLE IF EXISTS target."DimProductSubcategory";

CREATE TABLE IF NOT EXISTS target."DimProductSubcategory"
(
    "ProductSubcategoryKey" integer NOT NULL,
    "ProductSubcategory" character varying(50) COLLATE pg_catalog."default" NOT NULL,
    "ProductCategoryKey" integer,
    CONSTRAINT "DimProductSubcategory_pkey" PRIMARY KEY ("ProductSubcategoryKey"),
    CONSTRAINT "DimProductCategoryFK" FOREIGN KEY ("ProductCategoryKey")
        REFERENCES target."DimProductCategory" ("ProductCategoryKey") MATCH FULL
        ON UPDATE CASCADE
        ON DELETE CASCADE
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS target."DimProductSubcategory"
    OWNER to postgres;

COMMENT ON COLUMN target."DimProductSubcategory"."ProductSubcategoryKey"
    IS 'm086';

COMMENT ON COLUMN target."DimProductSubcategory"."ProductSubcategory"
    IS 'm146';

COMMENT ON COLUMN target."DimProductSubcategory"."ProductCategoryKey"
    IS 'm121';
-- Index: fki_DimProductCategoryFK

-- DROP INDEX IF EXISTS target."fki_DimProductCategoryFK";

CREATE INDEX IF NOT EXISTS "fki_DimProductCategoryFK"
    ON target."DimProductSubcategory" USING btree
    ("ProductCategoryKey" ASC NULLS LAST)
    TABLESPACE pg_default;