-- Table: target.FactCountries

-- DROP TABLE IF EXISTS target."FactCountries";

CREATE TABLE IF NOT EXISTS target."FactCountries"
(
    "CountryCode" character varying(3) COLLATE pg_catalog."default" NOT NULL,
    "Population" integer,
    "PDR" integer,
    "PGR" real,
    "CO2PC" real,
    "MFPC" real,
    "GDPG" real,
    "GNIPC" real,
    "FGNIPC" real,
    "MGNIPC" real,
    "FLFPR" real,
    "MLFPR" real,
    "PDGDP" real,
    "EYS" real,
    "FEYS" real,
    "MEYS" real,
    "FSSE" real,
    "MSSE" real,
    "CHEGDP" real,
    "CHEPCUSD" real,
    "LE" real,
    "FLE" real,
    "MLE" real,
    "MMR" integer,
    "TBR" real,
    CONSTRAINT "FactCountries_pkey" PRIMARY KEY ("CountryCode"),
    CONSTRAINT "DimCountriesFK" FOREIGN KEY ("CountryCode")
        REFERENCES target."DimCountries" ("CountryCode") MATCH FULL
        ON UPDATE CASCADE
        ON DELETE CASCADE
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS target."FactCountries"
    OWNER to postgres;

COMMENT ON COLUMN target."FactCountries"."CountryCode"
    IS 'm001';

COMMENT ON COLUMN target."FactCountries"."Population"
    IS 'm005';

COMMENT ON COLUMN target."FactCountries"."PDR"
    IS 'm006';

COMMENT ON COLUMN target."FactCountries"."PGR"
    IS 'm007';

COMMENT ON COLUMN target."FactCountries"."CO2PC"
    IS 'm008';

COMMENT ON COLUMN target."FactCountries"."MFPC"
    IS 'm009';

COMMENT ON COLUMN target."FactCountries"."GDPG"
    IS 'm010';

COMMENT ON COLUMN target."FactCountries"."GNIPC"
    IS 'm011';

COMMENT ON COLUMN target."FactCountries"."FGNIPC"
    IS 'm012';

COMMENT ON COLUMN target."FactCountries"."MGNIPC"
    IS 'm013';

COMMENT ON COLUMN target."FactCountries"."FLFPR"
    IS 'm014';

COMMENT ON COLUMN target."FactCountries"."MLFPR"
    IS 'm015';

COMMENT ON COLUMN target."FactCountries"."PDGDP"
    IS 'm016';

COMMENT ON COLUMN target."FactCountries"."EYS"
    IS 'm017';

COMMENT ON COLUMN target."FactCountries"."FEYS"
    IS 'm018';

COMMENT ON COLUMN target."FactCountries"."MEYS"
    IS 'm019';

COMMENT ON COLUMN target."FactCountries"."FSSE"
    IS 'm020';

COMMENT ON COLUMN target."FactCountries"."MSSE"
    IS 'm021';

COMMENT ON COLUMN target."FactCountries"."CHEGDP"
    IS 'm022';

COMMENT ON COLUMN target."FactCountries"."CHEPCUSD"
    IS 'm023';

COMMENT ON COLUMN target."FactCountries"."LE"
    IS 'm024';

COMMENT ON COLUMN target."FactCountries"."FLE"
    IS 'm025';

COMMENT ON COLUMN target."FactCountries"."MLE"
    IS 'm026';

COMMENT ON COLUMN target."FactCountries"."MMR"
    IS 'm027';

COMMENT ON COLUMN target."FactCountries"."TBR"
    IS 'm028';