-- 8 bit collatz calculator
ENTITY CollatzEnt IS PORT
(
	in_v: IN BIT_VECTOR; -- This is the input value
	out_v: OUT BIT); -- Set to 0 whilst running, and then 1 on final

END logic;

ARCHITECTURE CollatzArch OF logic IS

BEGIN
	PROCESS(in_v)
		VARIABLE I: integer range 0 to 1023; -- we set the max of I way too large in case it all goes wrong...
	BEGIN
		WHILE (I > 1) LOOP
			IF((I AND '1')= '1')
				I = I*3 + 1;
			END IF
			I ror 1

		END LOOP
	END
	out_v = '1';
END archlogic;