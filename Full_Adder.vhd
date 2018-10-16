-- Quartus Prime VHDL Template
-- Signed Adder

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Full_adder is

	generic
	(
		DATA_WIDTH : natural := 8
	);

	port 
	(
		a	   : in std_logic	;
		b	   : in std_logic	;
		carry_in	   : in std_logic;
		carry_out : out std_logic;
		soma : out std_logic
	);

end entity;

architecture rtl of Full_adder is
begin

	soma <= (a OR b) OR carry_in;
	carry_out <= (carry_in AND (a OR b)) OR (a AND b);
	
	

end rtl;
