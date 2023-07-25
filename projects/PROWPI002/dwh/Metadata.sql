-- Table: target.Metadata

-- DROP TABLE IF EXISTS target."Metadata";

CREATE TABLE IF NOT EXISTS target."Metadata"
(
    "Key" character varying(4) COLLATE pg_catalog."default" NOT NULL,
    "Meaning" character varying(250) COLLATE pg_catalog."default" NOT NULL,
    "Standard" character varying(50) COLLATE pg_catalog."default",
    "Formula" character varying(500) COLLATE pg_catalog."default",
    "Units" character varying(10) COLLATE pg_catalog."default",
    CONSTRAINT "Metadata_pkey" PRIMARY KEY ("Key")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS target."Metadata"
    OWNER to postgres;