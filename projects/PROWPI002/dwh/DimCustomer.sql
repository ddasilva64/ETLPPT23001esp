-- Table: target.DimCustomer

-- DROP TABLE IF EXISTS target."DimCustomer";

CREATE TABLE IF NOT EXISTS target."DimCustomer"
(
    "CustomerKey" integer NOT NULL,
    "GeographyKey" integer,
    "CustomerAlternateKey" character varying(15) COLLATE pg_catalog."default",
    "Title" character varying(50) COLLATE pg_catalog."default",
    "FirstName" character varying(50) COLLATE pg_catalog."default",
    "MiddleName" character varying(50) COLLATE pg_catalog."default",
    "LastName" character varying(50) COLLATE pg_catalog."default",
    "BirthDate" date,
    "MaritalStatus" character varying(1) COLLATE pg_catalog."default",
    "Suffix" character varying(10) COLLATE pg_catalog."default",
    "Gender" character varying(1) COLLATE pg_catalog."default",
    "EmailAddress" character varying(50) COLLATE pg_catalog."default",
    "YearlyIncome" real,
    "TotalChildren" integer,
    "NumberChildrenAtHome" integer,
    "Education" character varying(40) COLLATE pg_catalog."default",
    "HouseOwnerFlag" character varying(1) COLLATE pg_catalog."default",
    "NumberCarsOwned" integer,
    "AddressLine1" character varying(120) COLLATE pg_catalog."default",
    "AddressLine2" character varying(120) COLLATE pg_catalog."default",
    "Phone" character varying(20) COLLATE pg_catalog."default",
    "DateFirstPurchase" date,
    "CommuteDistance" character varying(15) COLLATE pg_catalog."default",
    "Occupation" character varying(100) COLLATE pg_catalog."default",
    "NameStyle" boolean,
    CONSTRAINT "DimCustomer_pkey" PRIMARY KEY ("CustomerKey"),
    CONSTRAINT "DimGeographyFK" FOREIGN KEY ("GeographyKey")
        REFERENCES target."DimGeography" ("GeographyKey") MATCH FULL
        ON UPDATE CASCADE
        ON DELETE CASCADE
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS target."DimCustomer"
    OWNER to postgres;

COMMENT ON COLUMN target."DimCustomer"."CustomerKey"
    IS 'm060';

COMMENT ON COLUMN target."DimCustomer"."GeographyKey"
    IS 'm141';

COMMENT ON COLUMN target."DimCustomer"."CustomerAlternateKey"
    IS 'm108';

COMMENT ON COLUMN target."DimCustomer"."Title"
    IS 'm038';

COMMENT ON COLUMN target."DimCustomer"."FirstName"
    IS 'm034';

COMMENT ON COLUMN target."DimCustomer"."MiddleName"
    IS 'm036';

COMMENT ON COLUMN target."DimCustomer"."LastName"
    IS 'm035';

COMMENT ON COLUMN target."DimCustomer"."BirthDate"
    IS 'm040';

COMMENT ON COLUMN target."DimCustomer"."MaritalStatus"
    IS 'm044';

COMMENT ON COLUMN target."DimCustomer"."Suffix"
    IS 'm045';

COMMENT ON COLUMN target."DimCustomer"."Gender"
    IS 'm048';

COMMENT ON COLUMN target."DimCustomer"."EmailAddress"
    IS 'm042';

COMMENT ON COLUMN target."DimCustomer"."YearlyIncome"
    IS 'm110';

COMMENT ON COLUMN target."DimCustomer"."TotalChildren"
    IS 'm111';

COMMENT ON COLUMN target."DimCustomer"."NumberChildrenAtHome"
    IS 'm112';

COMMENT ON COLUMN target."DimCustomer"."Education"
    IS 'm113';

COMMENT ON COLUMN target."DimCustomer"."HouseOwnerFlag"
    IS 'm115';

COMMENT ON COLUMN target."DimCustomer"."NumberCarsOwned"
    IS 'm116';

COMMENT ON COLUMN target."DimCustomer"."AddressLine1"
    IS 'm117';

COMMENT ON COLUMN target."DimCustomer"."AddressLine2"
    IS 'm118';

COMMENT ON COLUMN target."DimCustomer"."Phone"
    IS 'm043';

COMMENT ON COLUMN target."DimCustomer"."DateFirstPurchase"
    IS 'm119';

COMMENT ON COLUMN target."DimCustomer"."CommuteDistance"
    IS 'm120';

COMMENT ON COLUMN target."DimCustomer"."Occupation"
    IS 'm114';

COMMENT ON COLUMN target."DimCustomer"."NameStyle"
    IS 'm037';
-- Index: fki_DimGeographyFK

-- DROP INDEX IF EXISTS target."fki_DimGeographyFK";

CREATE INDEX IF NOT EXISTS "fki_DimGeographyFK"
    ON target."DimCustomer" USING btree
    ("GeographyKey" ASC NULLS LAST)
    TABLESPACE pg_default;