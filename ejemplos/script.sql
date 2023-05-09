CREATE TABLE IF NOT EXISTS trades (id_trades INT,
trade_usd float,
kg float,
quantity float,
id_code int,
id_country int,
id_quantity int,
id_flow int,
id_year int
);

CREATE TABLE IF NOT EXISTS countries (
  id_country INT,
  alpha_3 VARCHAR(3),
  country VARCHAR(50),
  region VARCHAR(50),
  sub_region VARCHAR(50)
);


CREATE TABLE IF NOT EXISTS flow (
  id_flow INT,
  flow VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS quantity (
  id_quantity INT,
  quantity VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS codes
(
    id_code            integer encode az64,
    code               integer encode az64,
    description        varchar(2000),
    parent_description varchar(1000)
);



CREATE TABLE IF NOT EXISTS years (
  id_year INT,
  year INT
);