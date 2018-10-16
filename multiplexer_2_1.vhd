entity multiplexer_2_1 is

	port
	(
		-- Input ports
		sel, a, b : IN BIT;


		-- Output ports
		y : OUT BIT
	);
end entity;


-- Library Clause(s) (optional)
-- Use Clause(s) (optional)

architecture fluxo of multiplexer_2_1 is

	-- Declarations (optional)

begin

		WITH sel SELECT
		 y <= a WHEN '0',
		 b WHEN OTHERS;

end architecture;