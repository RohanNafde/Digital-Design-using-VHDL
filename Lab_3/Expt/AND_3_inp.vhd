library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity AND_3_inp  is
	port (A, B, C: in std_logic; Z: out std_logic);
end entity AND_3_inp;

architecture Struct of AND_3_inp is
	signal S0 : std_logic;
begin
	AND1: AND_2 port map (A => A, B => B, Y => S0);
	AND2: AND_2 port map (A => S0, B => C, Y => Z);
end Struct;