CREATE OR REPLACE FUNCTION target."CLV_CACFunc" (double precision, double precision, double precision, double precision,
                                                 double precision, double precision, double precision, double precision) RETURNS double precision AS '
	DECLARE
		ExtendedAmount 		ALIAS FOR $1;
		ProductStandardCost ALIAS FOR $2;
		TaxAmt 				ALIAS FOR $3;
		Freight				ALIAS FOR $4;
		yearsNo 			ALIAS FOR $5;
		monthsNo			ALIAS FOR $6;
		daysNo 				ALIAS FOR $7;
		cac					ALIAS FOR $8;
	BEGIN
	    RETURN target."LTVFunc"(ExtendedAmount,ProductStandardCost,TaxAmt,Freight,yearsNo,monthsNo,daysNo)/cac;
	END;
' LANGUAGE 'plpgsql';