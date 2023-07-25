-- Table: target.DimCurrencies

-- DROP TABLE IF EXISTS target."DimCurrencies";

CREATE TABLE IF NOT EXISTS target."DimCurrencies"
(
    "CurrencyKey" character varying(3) COLLATE pg_catalog."default" NOT NULL,
    "Currency" character varying(60) COLLATE pg_catalog."default",
    CONSTRAINT "DimCurrencies_pkey" PRIMARY KEY ("CurrencyKey")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS target."DimCurrencies"
    OWNER to postgres;

COMMENT ON COLUMN target."DimCurrencies"."CurrencyKey"
    IS 'm082';

COMMENT ON COLUMN target."DimCurrencies"."Currency"
    IS 'm083';