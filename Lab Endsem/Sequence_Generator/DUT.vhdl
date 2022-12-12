-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(1 downto 0); output_vector: out std_logic_vector(0 downto 0));
end entity;

architecture DutWrap of DUT is

component seq_gen is
	port (reset,clock_50: in std_logic; y:out std_logic);
end component seq_gen;

begin
   add_instance: seq_gen 
			port map (
					-- order of As Cin B A
					reset => input_vector(1),
					clock_50   => input_vector(0),
                                        -- order of outputs S Cout
					y => output_vector(0));

end DutWrap;

