-- Table: target.DimSubregions

-- DROP TABLE IF EXISTS target."DimSubregions";

CREATE TABLE IF NOT EXISTS target."DimSubregions"
(
    "SubregionCode" integer NOT NULL,
    "Subregion" character varying(60) COLLATE pg_catalog."default",
    CONSTRAINT "DimSubregions_pkey" PRIMARY KEY ("SubregionCode")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS target."DimSubregions"
    OWNER to postgres;

COMMENT ON COLUMN target."DimSubregions"."SubregionCode"
    IS 'm202';

COMMENT ON COLUMN target."DimSubregions"."Subregion"
    IS 'm204';