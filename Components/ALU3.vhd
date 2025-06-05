LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.all;

entity ALU_unit3 is -- ALU unit includes Reg. 3
	port ( clk, reset : in std_logic ;
			Reg1, Reg2: in std_logic_vector(7 downto 0); -- 8-bit inputs A & B from Reg. 1 & Reg. 2
			Student_id: in std_logic_vector(3 downto 0);
			opcode : in std_logic_vector(7 downto 0); -- 8-bit opcode from Decoder
			result : out std_logic_vector(3 downto 0)); -- 8-bit Result
end ALU_unit3 ;

architecture calculation of ALU_unit3 is
begin
	process ( clk, reset )
	begin
		if reset = '1' then
			result <= "0000" ;
		elsif (clk'EVENT AND clk = '1') then
			case opcode is
				when "00000001" =>
					if student_id < Reg1(3 downto 0) then 
						result <= "1111"; -- MAKE THIS Y IN 7SEG
					elsif student_id < Reg1(7 downto 4) then 
						result <= "1111"; -- MAKE THIS Y IN 7SEG
					else
						result <= "0000"; -- MAKE THIS N IN 7SEG
					end if;
				when "00000010" =>
					if student_id < Reg1(3 downto 0) then 
						result <= "1111"; -- MAKE THIS Y IN 7SEG
					elsif student_id < Reg1(7 downto 4) then 
						result <= "1111"; -- MAKE THIS Y IN 7SEG
					else
						result <= "0000"; -- MAKE THIS N IN 7SEG
					end if;
				when "00000100" =>
					if student_id < Reg1(3 downto 0) then 
						result <= "1111"; -- MAKE THIS Y IN 7SEG
					elsif student_id < Reg1(7 downto 4) then 
						result <= "1111"; -- MAKE THIS Y IN 7SEG
					else
						result <= "0000"; -- MAKE THIS N IN 7SEG
					end if;
				when "00001000" =>
					if student_id < Reg1(3 downto 0) then 
						result <= "1111"; -- MAKE THIS Y IN 7SEG
					elsif student_id < Reg1(7 downto 4) then 
						result <= "1111"; -- MAKE THIS Y IN 7SEG
					else
						result <= "0000"; -- MAKE THIS N IN 7SEG
					end if;
				when "00010000" =>
					if student_id < Reg1(3 downto 0) then 
						result <= "1111"; -- MAKE THIS Y IN 7SEG
					elsif student_id < Reg1(7 downto 4) then 
						result <= "1111"; -- MAKE THIS Y IN 7SEG
					else
						result <= "0000"; -- MAKE THIS N IN 7SEG
					end if;
				when "00100000" =>
					if student_id < Reg1(3 downto 0) then 
						result <= "1111"; -- MAKE THIS Y IN 7SEG
					elsif student_id < Reg1(7 downto 4) then 
						result <= "1111"; -- MAKE THIS Y IN 7SEG
					else
						result <= "0000"; -- MAKE THIS N IN 7SEG
					end if;
				when "01000000" =>
					if student_id < Reg1(3 downto 0) then 
						result <= "1111"; -- MAKE THIS Y IN 7SEG
					elsif student_id < Reg1(7 downto 4) then 
						result <= "1111"; -- MAKE THIS Y IN 7SEG
					else
						result <= "0000"; -- MAKE THIS N IN 7SEG
					end if;
				when "10000000" =>
					if student_id < Reg1(3 downto 0) then 
						result <= "1111"; -- MAKE THIS Y IN 7SEG
					elsif student_id < Reg1(7 downto 4) then 
						result <= "1111"; -- MAKE THIS Y IN 7SEG
					else
						result <= "0000"; -- MAKE THIS N IN 7SEG
					end if;
				when others =>
					result <= "----";
			end case ;
		end if ;
	end process ;
end calculation ;