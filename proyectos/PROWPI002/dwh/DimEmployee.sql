-- Table: target.DimEmployee

-- DROP TABLE IF EXISTS target."DimEmployee";

CREATE TABLE IF NOT EXISTS target."DimEmployee"
(
    "EmployeeKey" integer NOT NULL,
    "ParentEmployeeKey" integer,
    "EmployeeNationalIDAlternateKey" character varying(15) COLLATE pg_catalog."default",
    "ParentEmployeeNationalIDAlternateKey" character varying(15) COLLATE pg_catalog."default",
    "SalesTerritoryKey" integer,
    "FirstName" character varying(50) COLLATE pg_catalog."default" NOT NULL,
    "LastName" character varying(50) COLLATE pg_catalog."default" NOT NULL,
    "MiddleName" character varying(50) COLLATE pg_catalog."default",
    "NameStyle" boolean NOT NULL,
    "Title" character varying(50) COLLATE pg_catalog."default",
    "HireDate" date,
    "BirthDate" date,
    "LoginID" character varying(256) COLLATE pg_catalog."default",
    "EmailAddress" character varying(50) COLLATE pg_catalog."default",
    "Phone" character varying(25) COLLATE pg_catalog."default",
    "MaritalStatus" character varying(1) COLLATE pg_catalog."default",
    "EmergencyContactName" character varying(50) COLLATE pg_catalog."default",
    "EmergencyContactPhone" character varying(25) COLLATE pg_catalog."default",
    "SalariedFlag" boolean,
    "Gender" character varying(1) COLLATE pg_catalog."default",
    "PayFrequency" integer,
    "BaseRate" real,
    "VacationHours" integer,
    "SickLeaveHours" integer,
    "CurrentFlag" boolean,
    "SalesPersonFlag" boolean,
    "DepartmentName" character varying(50) COLLATE pg_catalog."default",
    "StartDate" date,
    "EndDate" date,
    "Status" character varying(50) COLLATE pg_catalog."default",
    CONSTRAINT "DimEmployee_pkey" PRIMARY KEY ("EmployeeKey"),
    CONSTRAINT "DimEmployeeFK" FOREIGN KEY ("ParentEmployeeKey")
        REFERENCES target."DimEmployee" ("EmployeeKey") MATCH FULL
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    CONSTRAINT "DimSalesTerritoryFK" FOREIGN KEY ("SalesTerritoryKey")
        REFERENCES target."DimSalesTerritory" ("SalesTerritoryKey") MATCH FULL
        ON UPDATE CASCADE
        ON DELETE CASCADE
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS target."DimEmployee"
    OWNER to postgres;

COMMENT ON COLUMN target."DimEmployee"."EmployeeKey"
    IS 'm029';

COMMENT ON COLUMN target."DimEmployee"."ParentEmployeeKey"
    IS 'm030';

COMMENT ON COLUMN target."DimEmployee"."EmployeeNationalIDAlternateKey"
    IS 'm031';

COMMENT ON COLUMN target."DimEmployee"."ParentEmployeeNationalIDAlternateKey"
    IS 'm032';

COMMENT ON COLUMN target."DimEmployee"."SalesTerritoryKey"
    IS 'm063';

COMMENT ON COLUMN target."DimEmployee"."FirstName"
    IS 'm034';

COMMENT ON COLUMN target."DimEmployee"."LastName"
    IS 'm035';

COMMENT ON COLUMN target."DimEmployee"."MiddleName"
    IS 'm036';

COMMENT ON COLUMN target."DimEmployee"."NameStyle"
    IS 'm037';

COMMENT ON COLUMN target."DimEmployee"."Title"
    IS 'm038';

COMMENT ON COLUMN target."DimEmployee"."HireDate"
    IS 'm039';

COMMENT ON COLUMN target."DimEmployee"."BirthDate"
    IS 'm040';

COMMENT ON COLUMN target."DimEmployee"."LoginID"
    IS 'm041';

COMMENT ON COLUMN target."DimEmployee"."EmailAddress"
    IS 'm042';

COMMENT ON COLUMN target."DimEmployee"."Phone"
    IS 'm043';

COMMENT ON COLUMN target."DimEmployee"."MaritalStatus"
    IS 'm044';

COMMENT ON COLUMN target."DimEmployee"."EmergencyContactName"
    IS 'm045';

COMMENT ON COLUMN target."DimEmployee"."EmergencyContactPhone"
    IS 'm046';

COMMENT ON COLUMN target."DimEmployee"."SalariedFlag"
    IS 'm047';

COMMENT ON COLUMN target."DimEmployee"."Gender"
    IS 'm048';

COMMENT ON COLUMN target."DimEmployee"."PayFrequency"
    IS 'm049';

COMMENT ON COLUMN target."DimEmployee"."BaseRate"
    IS 'm050';

COMMENT ON COLUMN target."DimEmployee"."VacationHours"
    IS 'm051';

COMMENT ON COLUMN target."DimEmployee"."SickLeaveHours"
    IS 'm052';

COMMENT ON COLUMN target."DimEmployee"."CurrentFlag"
    IS 'm053';

COMMENT ON COLUMN target."DimEmployee"."SalesPersonFlag"
    IS 'm054';

COMMENT ON COLUMN target."DimEmployee"."DepartmentName"
    IS 'm055';

COMMENT ON COLUMN target."DimEmployee"."StartDate"
    IS 'm056';

COMMENT ON COLUMN target."DimEmployee"."EndDate"
    IS 'm057';

COMMENT ON COLUMN target."DimEmployee"."Status"
    IS 'm058';
-- Index: fki_DimEmployeeFK

-- DROP INDEX IF EXISTS target."fki_DimEmployeeFK";

CREATE INDEX IF NOT EXISTS "fki_DimEmployeeFK"
    ON target."DimEmployee" USING btree
    ("ParentEmployeeKey" ASC NULLS LAST)
    TABLESPACE pg_default;