-- Table: target.DimStatesProvinces

-- DROP TABLE IF EXISTS target."DimStatesProvinces";

CREATE TABLE IF NOT EXISTS target."DimStatesProvinces"
(
    "StateProvinceCode" character varying(3) COLLATE pg_catalog."default" NOT NULL,
    "CountryCode" character varying(3) COLLATE pg_catalog."default" NOT NULL,
    "StateProvince" character varying(60) COLLATE pg_catalog."default",
    CONSTRAINT "DimStatesProvinces_pkey" PRIMARY KEY ("StateProvinceCode"),
    CONSTRAINT "DimCountriesFK" FOREIGN KEY ("CountryCode")
        REFERENCES target."DimCountries" ("CountryCode") MATCH FULL
        ON UPDATE CASCADE
        ON DELETE CASCADE
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS target."DimStatesProvinces"
    OWNER to postgres;

COMMENT ON COLUMN target."DimStatesProvinces"."StateProvinceCode"
    IS 'm139';

COMMENT ON COLUMN target."DimStatesProvinces"."CountryCode"
    IS 'm001';

COMMENT ON COLUMN target."DimStatesProvinces"."StateProvince"
    IS 'm140';