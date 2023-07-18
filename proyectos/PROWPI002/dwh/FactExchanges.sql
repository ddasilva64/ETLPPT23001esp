-- Table: target.FactExchanges

-- DROP TABLE IF EXISTS target."FactExchanges";

CREATE TABLE IF NOT EXISTS target."FactExchanges"
(
    "Date" date NOT NULL,
    "CurrencyKey" character varying(3) COLLATE pg_catalog."default" NOT NULL,
    "Exchange" real,
    CONSTRAINT "FactExchanges_pkey" PRIMARY KEY ("Date", "CurrencyKey")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS target."FactExchanges"
    OWNER to postgres;