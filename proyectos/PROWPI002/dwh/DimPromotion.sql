-- Table: target.DimPromotion

-- DROP TABLE IF EXISTS target."DimPromotion";

CREATE TABLE IF NOT EXISTS target."DimPromotion"
(
    "PromotionKey" integer NOT NULL,
    "Promotion" character varying(255) COLLATE pg_catalog."default",
    "DiscountPct" real,
    "PromotionType" character varying(50) COLLATE pg_catalog."default",
    "PromotionCategory" character varying(50) COLLATE pg_catalog."default",
    "StartDate" date NOT NULL,
    "EndDate" date NOT NULL,
    "MinQty" integer,
    "MaxQty" integer,
    CONSTRAINT "DimPromotion_pkey" PRIMARY KEY ("PromotionKey")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS target."DimPromotion"
    OWNER to postgres;

COMMENT ON COLUMN target."DimPromotion"."PromotionKey"
    IS 'm150';

COMMENT ON COLUMN target."DimPromotion"."Promotion"
    IS 'm151';

COMMENT ON COLUMN target."DimPromotion"."DiscountPct"
    IS 'm152';

COMMENT ON COLUMN target."DimPromotion"."PromotionType"
    IS 'm153';

COMMENT ON COLUMN target."DimPromotion"."PromotionCategory"
    IS 'm154';

COMMENT ON COLUMN target."DimPromotion"."StartDate"
    IS 'm056';

COMMENT ON COLUMN target."DimPromotion"."EndDate"
    IS 'm057';

COMMENT ON COLUMN target."DimPromotion"."MinQty"
    IS 'm157';

COMMENT ON COLUMN target."DimPromotion"."MaxQty"
    IS 'm158';