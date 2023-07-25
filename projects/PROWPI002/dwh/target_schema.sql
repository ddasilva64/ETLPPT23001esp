-- SCHEMA: target

-- DROP SCHEMA IF EXISTS target ;

CREATE SCHEMA IF NOT EXISTS target
    AUTHORIZATION postgres;

COMMENT ON SCHEMA target
    IS 'Target schema from PDI ETL';