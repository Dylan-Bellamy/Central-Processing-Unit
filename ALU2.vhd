LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.all;

entity ALU_unit2 is -- ALU unit includes Reg. 3
	port ( clk, reset : in std_logic ;
			Reg1, Reg2: in std_logic_vector(7 downto 0); -- 8-bit inputs A & B from Reg. 1 & Reg. 2
			opcode : in std_logic_vector(7 downto 0); -- 8-bit opcode from Decoder
			result1, result2 : out std_logic_vector(3 downto 0); -- 4-bit Result
			result : buffer std_logic_vector(7 downto 0); -- 8-bit Result
			neg : out std_logic);
end ALU_unit2 ;

architecture calculation of ALU_unit2 is
begin
	process ( clk, reset )
	begin
		if reset = '1' then
			result1 <= "0000" ;
			result2 <= "0000" ;
		elsif (clk'EVENT AND clk = '1') then
			case opcode is
				when "00000001" =>
					result <= Reg1; 
					result(1) <= Reg2(1);
					result(3) <= Reg2(3);
					result(1) <= Reg2(5);
					result(3) <= Reg2(7);
					result1 <= result(3 downto 0); 
					result2 <= result(7 downto 4); 
					neg <= '0';
				when "00000010" =>
					result <= Reg1 NAND Reg2; 
					result1 <= result(3 downto 0); 
					result2 <= result(7 downto 4); 
				when "00000100" =>
					if (Reg1 + Reg2) < "00000101" then
						result <= Reg1 + Reg2 + "11111011";
						neg <= '1';
					else 
						result <= Reg1 + Reg2 - "00000101";
						result1 <= result(3 downto 0); 
						result2 <= result(7 downto 4); 
						neg <= '0';
					end if;
				when "00001000" =>
					result <= NOT(Reg2) + "00000001";
					result1 <= result(3 downto 0); 
					result2 <= result(7 downto 4); 
					neg <= '1';
				when "00010000" =>
					result <= Reg2; 
					result(0) <= NOT Reg2(0);
					result(2) <= NOT Reg2(2);
					result(4) <= NOT Reg2(4);
					result(6) <= NOT Reg2(6);
					result1 <= result(3 downto 0); 
					result2 <= result(7 downto 4); 
				when "00100000" =>
					result(0) <= '1';
					result(1) <= '1';
					result(2) <= Reg1(0);
					result(3) <= Reg1(1);
					result(4) <= Reg1(2);
					result(5) <= Reg1(3);
					result(6) <= Reg1(4);
					result(7) <= Reg1(5);
					result1 <= result(3 downto 0); 
					result2 <= result(7 downto 4); 
				when "01000000" =>
					result <= "00000000"; -- MIGHT BE WRONG
					result1 <= result(3 downto 0); 
					result2 <= result(7 downto 4); 
					neg <= '0';
				when "10000000" =>
					result <= NOT(Reg1) + "00000001";
					result1 <= result(3 downto 0); 
					result2 <= result(7 downto 4);
					neg <= '1';
				when others =>
					result <= "--------";
					result1 <= result(3 downto 0); 
					result2 <= result(7 downto 4); 
			end case ;
		end if ;
	end process ;
end calculation ;