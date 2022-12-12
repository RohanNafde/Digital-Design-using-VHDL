library ieee;
use ieee.std_logic_1164.all;

entity clock_divider is
	port (clk_out : out std_logic; clk_50, resetn : in std_logic);
end entity clock_divider;

architecture bhv of clock_divider is

signal a: integer := 0;
signal temp: std_logic := '0';

begin
	proc: process(clk_50, resetn)
	begin
		
		if(resetn = '1') then
			clk_out <= '0';
			a <= 0;
			
		elsif(clk_50'event and clk_50 = '1') then
			a <= a + 1;
			if(a = 50000000) then
				temp <= not temp;
				a <= 0;
			end if;
		end if;
		
		clk_out <= temp;
	end process proc;
end bhv;