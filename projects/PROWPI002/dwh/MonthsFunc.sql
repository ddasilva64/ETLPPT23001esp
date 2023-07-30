CREATE OR REPLACE FUNCTION target."MonthsFunc" (double precision,double precision,double precision) RETURNS int AS '
	DECLARE
		yearsNo 			ALIAS FOR $1;
		monthsNo			ALIAS FOR $2;
		daysNo 				ALIAS FOR $3;
	BEGIN
		RETURN 
			CASE WHEN yearsNo*12 + monthsNo + CEIL(daysNo/28)>0 THEN yearsNo*12 + monthsNo + CEIL(daysNo/28)
			ELSE 1
            END;
	END;
' LANGUAGE 'plpgsql';