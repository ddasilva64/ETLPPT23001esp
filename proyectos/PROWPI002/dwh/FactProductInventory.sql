-- Table: target.FactProductInventory

-- DROP TABLE IF EXISTS target."FactProductInventory";

CREATE TABLE IF NOT EXISTS target."FactProductInventory"
(
    "ProductKey" integer NOT NULL,
    "MovementDate" date NOT NULL,
    "UnitCost" real NOT NULL,
    "UnitsIn" integer NOT NULL,
    "UnitsOut" integer NOT NULL,
    "UnitsBalance" integer NOT NULL,
    "FactProductInventoryPK" character varying(20) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "FactProductInventory_pkey" PRIMARY KEY ("FactProductInventoryPK"),
    CONSTRAINT "DimProductFK" FOREIGN KEY ("ProductKey")
        REFERENCES target."DimProduct" ("ProductKey") MATCH FULL
        ON UPDATE CASCADE
        ON DELETE CASCADE
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS target."FactProductInventory"
    OWNER to postgres;

COMMENT ON COLUMN target."FactProductInventory"."ProductKey"
    IS 'm084';

COMMENT ON COLUMN target."FactProductInventory"."MovementDate"
    IS 'm176';

COMMENT ON COLUMN target."FactProductInventory"."UnitCost"
    IS 'm177';

COMMENT ON COLUMN target."FactProductInventory"."UnitsIn"
    IS 'm178';

COMMENT ON COLUMN target."FactProductInventory"."UnitsOut"
    IS 'm179';

COMMENT ON COLUMN target."FactProductInventory"."UnitsBalance"
    IS 'm180';