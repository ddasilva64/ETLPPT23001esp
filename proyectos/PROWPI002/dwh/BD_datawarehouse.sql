-- Database: datawarehouse

-- DROP DATABASE IF EXISTS datawarehouse;

CREATE DATABASE datawarehouse
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'Catalan_Spain.1252'
    LC_CTYPE = 'Catalan_Spain.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;

COMMENT ON DATABASE datawarehouse
    IS 'Project Data Warehouse ';