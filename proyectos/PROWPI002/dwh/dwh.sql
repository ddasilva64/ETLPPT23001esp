	SELECT MIN(tc.table_name) AS table_name, MIN(tc.constraint_name) AS constraint_name, 
		   MIN(tc.constraint_type) AS constraint_type, MIN(kcu.column_name) AS column_name, 
		   MIN(rc.match_option) AS match_type, MIN(rc.update_rule) AS on_update, 
		   MIN(rc.delete_rule) AS on_delete, MIN(ccu.table_name) AS references_table,
		   MIN(ccu.column_name) AS references_field
		   	FROM information_schema.table_constraints tc
				LEFT JOIN information_schema.key_column_usage kcu
				ON tc.constraint_catalog = kcu.constraint_catalog
				AND tc.constraint_schema = kcu.constraint_schema
				AND tc.constraint_name = kcu.constraint_name
				LEFT JOIN information_schema.referential_constraints rc
				ON tc.constraint_catalog = rc.constraint_catalog
				AND tc.constraint_schema = rc.constraint_schema
				AND tc.constraint_name = rc.constraint_name
				LEFT JOIN information_schema.constraint_column_usage ccu
				ON rc.unique_constraint_catalog = ccu.constraint_catalog
				AND rc.unique_constraint_schema = ccu.constraint_schema
				AND rc.unique_constraint_name = ccu.constraint_name
			WHERE lower(tc.constraint_type) in ('foreign key', 'primary key') AND
				kcu.table_schema = 'target' AND tc.table_catalog = 'datawarehouse' AND tc.table_name<> 'Metadata'
			GROUP BY tc.table_name, tc.constraint_name, tc.constraint_type, 
					 kcu.column_name, rc.match_option, rc.update_rule, rc.delete_rule , ccu.table_name ,
		             ccu.column_name
			ORDER BY tc.table_name, kcu.column_name