SELECT cols.table_catalog, cols.table_name, cols.column_name, data_type,
       pg_catalog.col_description(c2.oid,cols.ordinal_position::int)
FROM information_schema.columns cols
INNER JOIN pg_catalog.pg_class c ON  c.relname=cols.table_name
INNER JOIN pg_catalog.pg_class c2 ON c2.relname=cols.table_name
WHERE table_schema = 'target' AND cols.table_catalog = 'datawarehouse' AND cols.table_name<> 'Metadata'
ORDER BY cols.table_name,
   		 pg_catalog.col_description(c2.oid,cols.ordinal_position::int),
		 cols.column_name