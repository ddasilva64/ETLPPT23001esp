-- Table: target.DimRegions

-- DROP TABLE IF EXISTS target."DimRegions";

CREATE TABLE IF NOT EXISTS target."DimRegions"
(
    "RegionCode" integer NOT NULL,
    "Region" character varying(20) COLLATE pg_catalog."default",
    CONSTRAINT "DimRegions_pkey" PRIMARY KEY ("RegionCode")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS target."DimRegions"
    OWNER to postgres;

COMMENT ON COLUMN target."DimRegions"."RegionCode"
    IS 'm201';

COMMENT ON COLUMN target."DimRegions"."Region"
    IS 'm203';