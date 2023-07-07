-- Table: target.DimProductCategory

-- DROP TABLE IF EXISTS target."DimProductCategory";

CREATE TABLE IF NOT EXISTS target."DimProductCategory"
(
    "ProductCategoryKey" integer NOT NULL,
    "ProductCategory" character varying(50) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "DimProductCategory_pkey" PRIMARY KEY ("ProductCategoryKey")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS target."DimProductCategory"
    OWNER to postgres;

COMMENT ON COLUMN target."DimProductCategory"."ProductCategoryKey"
    IS 'm121';

COMMENT ON COLUMN target."DimProductCategory"."ProductCategory"
    IS 'm122';