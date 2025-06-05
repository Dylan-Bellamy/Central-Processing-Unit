LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY seg7Y IS
	PORT(bcd : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		  leds : OUT STD_LOGIC_VECTOR(0 TO 6));
END seg7Y;

ARCHITECTURE Behavior OF seg7Y IS
BEGIN
	PROCESS(bcd)
	BEGIN 
			CASE bcd IS				--		abcdefg
				WHEN "1111" => leds <= "1000100";
				WHEN "0000" => leds <= "0001001";
				WHEN OTHERS => leds <= "-------";
			END CASE;
	END PROCESS;
END Behavior;
	