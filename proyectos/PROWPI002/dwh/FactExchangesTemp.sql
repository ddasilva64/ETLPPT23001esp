-- Table: target.FactExchangesTemp

-- DROP TABLE IF EXISTS target."FactExchangesTemp";

CREATE TABLE IF NOT EXISTS target."FactExchangesTemp"
(
    "Date" date NOT NULL,
    "CurrencyKey" character varying(3) COLLATE pg_catalog."default" NOT NULL,
    "Exchange" real,
    CONSTRAINT "FactExchangesTemp_pkey" PRIMARY KEY ("Date", "CurrencyKey")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS target."FactExchangesTemp"
    OWNER to postgres;