select cols.table_catalog,cols.table_name,cols.column_name,
       data_type,pg_catalog.col_description(c2.oid,cols.ordinal_position::int)
from information_schema.columns cols
inner join pg_catalog.pg_class c on  c.relname=cols.table_name
inner join pg_catalog.pg_class c2 on c2.relname=cols.table_name
where table_schema = 'target' and cols.table_name<> 'Metadata'
order by cols.table_name,
   		 pg_catalog.col_description(c2.oid,cols.ordinal_position::int),
		 cols.column_name
