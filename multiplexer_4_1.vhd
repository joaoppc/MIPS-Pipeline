library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_4_1 is
    Port ( SEL : in  STD_LOGIC_VECTOR (2 downto 0);
           A,B,C,D   : in  STD_LOGIC;
           Y             : out STD_LOGIC
			);
end entity;

architecture mux_arch of mux_4_1 is
begin
process(SEL)
begin
	case SEL is
		when "0000" => 
			y <= A;
		when "0001" => 
			y <= B;
		when "0010" => 
			y <= C;
		when "0011" => 
			y <= D;
	end case;
end process;
end mux_arch;