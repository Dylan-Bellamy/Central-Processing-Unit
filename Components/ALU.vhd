LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.all;

entity ALU_unit is -- ALU unit includes Reg. 3
	port ( clk, reset : in std_logic ;
			Reg1, Reg2: in std_logic_vector(7 downto 0); -- 8-bit inputs A & B from Reg. 1 & Reg. 2
			opcode : in std_logic_vector(7 downto 0); -- 8-bit opcode from Decoder
			result1, result2 : out std_logic_vector(3 downto 0);
			result : buffer std_logic_vector(7 downto 0);	-- 8-bit Result
			neg : out std_logic;
			sum : buffer std_logic_vector(8 downto 0)); -- 9-bit Result
end ALU_unit ;

architecture calculation of ALU_unit is
begin
	process ( clk, reset )
	begin
		if reset = '1' then
			result1 <= "0000" ;
			result2 <= "0000" ;
		elsif (clk'EVENT AND clk = '1') then
			case opcode is
				when "00000001" =>
					result <= Reg1 + Reg2;
					result1 <= result(3 downto 0); 
					result2 <= result(7 downto 4); 
				when "00000010" =>
					sum <= "000000000" + (('0' & Reg1) + ('0' & (NOT(Reg2) + "00000001")));
					neg <= sum(8) XOR Reg1(7) XOR Reg2(7) XOR sum(7);
					result <= Reg1 - Reg2;
					result1 <= result(3 downto 0); 
					result2 <= result(7 downto 4);
				when "00000100" =>
					result <= NOT Reg1;
					result1 <= NOT Reg1(3 downto 0);
					result2 <= NOT Reg1(7 downto 4);
				when "00001000" =>
					result <= Reg1 NAND Reg2;
					result1 <= result(3 downto 0); 
					result2 <= result(7 downto 4); 
				when "00010000" =>
					result <= Reg1 NOR Reg2;
					result1 <= result(3 downto 0); 
					result2 <= result(7 downto 4); 
				when "00100000" =>
					result <= Reg1 AND Reg2;
					result1 <= result(3 downto 0); 
					result2 <= result(7 downto 4); 
				when "01000000" =>
					result <= Reg1 XOR Reg2;
					result1 <= result(3 downto 0); 
					result2 <= result(7 downto 4); 
				when "10000000" =>
					result <= Reg1 OR Reg2;
					result1 <= result(3 downto 0); 
					result2 <= result(7 downto 4); 
				when others =>
					result1 <= "----";
					result2 <= "----";
			end case ;
		end if ;
	end process ;
end calculation ;