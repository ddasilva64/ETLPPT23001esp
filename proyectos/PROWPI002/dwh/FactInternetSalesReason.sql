-- Table: target.FactInternetSalesReason

-- DROP TABLE IF EXISTS target."FactInternetSalesReason";

CREATE TABLE IF NOT EXISTS target."FactInternetSalesReason"
(
    "SalesOrderNumber" character varying(20) COLLATE pg_catalog."default" NOT NULL,
    "SalesOrderLineNumber" integer NOT NULL,
    "SalesReasonKey" integer NOT NULL,
    "FactInternetSalesReasonPK" character varying(30) COLLATE pg_catalog."default" NOT NULL,
    "FactInternetSalesReason_004" character varying(30) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "FactInternetSalesReason_pkey" PRIMARY KEY ("FactInternetSalesReasonPK"),
    CONSTRAINT "FactInternetSalesReason_004FK" FOREIGN KEY ("FactInternetSalesReason_004")
        REFERENCES target."FactInternetSales" ("FactInternetSalesPK") MATCH FULL
        ON UPDATE CASCADE
        ON DELETE CASCADE
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS target."FactInternetSalesReason"
    OWNER to postgres;

COMMENT ON COLUMN target."FactInternetSalesReason"."SalesOrderNumber"
    IS 'm064';

COMMENT ON COLUMN target."FactInternetSalesReason"."SalesOrderLineNumber"
    IS 'm065';

COMMENT ON COLUMN target."FactInternetSalesReason"."SalesReasonKey"
    IS 'm149';
-- Index: fki_FactInternetSalesReason_004FK

-- DROP INDEX IF EXISTS target."fki_FactInternetSalesReason_004FK";

CREATE INDEX IF NOT EXISTS "fki_FactInternetSalesReason_004FK"
    ON target."FactInternetSalesReason" USING btree
    ("FactInternetSalesReason_004" COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;