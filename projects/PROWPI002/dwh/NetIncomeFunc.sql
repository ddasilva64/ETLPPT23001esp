CREATE OR REPLACE FUNCTION target."NetIncomeFunc" (double precision, double precision, double precision, double precision) RETURNS real AS '
	DECLARE
		ExtendedAmount 		ALIAS FOR $1;
		ProductStandardCost ALIAS FOR $2;
		TaxAmt 				ALIAS FOR $3;
		Freight				ALIAS FOR $4;
	BEGIN
		RETURN ExtendedAmount-(ProductStandardCost+TaxAmt+Freight);
	END;
' LANGUAGE 'plpgsql';