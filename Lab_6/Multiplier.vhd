library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity Multiplier is
	port (A3, A2, A1, A0, B2, B1, B0: in std_logic; M6, M5, M4, M3, M2, M1, M0: out std_logic);
end entity Multiplier;

architecture Struct of Multiplier is
	signal A3B0, A2B0, A1B0, A0B0, A3B1, A2B1, A1B1, A0B1, A3B2, A2B2, A1B2, A0B2, S2, S1, S0, Cout : std_logic;

component Add_Sub  is
	port (A3, A2, A1, A0, B3, B2, B1, B0, M: in std_logic; Cout, S3, S2, S1, S0: out std_logic);
end component Add_Sub;	
	
begin
	AND30: AND_2 port map (A => A3, B => B0, Y => A3B0);
	AND20: AND_2 port map (A => A2, B => B0, Y => A2B0);
	AND10: AND_2 port map (A => A1, B => B0, Y => A1B0);
	AND00: AND_2 port map (A => A0, B => B0, Y => M0);
	
	AND31: AND_2 port map (A => A3, B => B1, Y => A3B1);
	AND21: AND_2 port map (A => A2, B => B1, Y => A2B1);
	AND11: AND_2 port map (A => A1, B => B1, Y => A1B1);
	AND01: AND_2 port map (A => A0, B => B1, Y => A0B1);
	
	AND32: AND_2 port map (A => A3, B => B2, Y => A3B2);
	AND22: AND_2 port map (A => A2, B => B2, Y => A2B2);
	AND12: AND_2 port map (A => A1, B => B2, Y => A1B2);
	AND02: AND_2 port map (A => A0, B => B2, Y => A0B2);
	
	Adder_1: Add_Sub port map (A3 => '0', A2 => A3B0, A1 => A2B0, A0 => A1B0, B3 => A3B1, B2 => A2B1, B1 => A1B1, B0 => A0B1, M => '0', Cout => Cout, S3 => S2, S2 => S1, S1 => S0, S0 => M1);
	Adder_2: Add_Sub port map (A3 => Cout, A2 => S2, A1 => S1, A0 => S0, B3 => A3B2, B2 => A2B2, B1 => A1B2, B0 => A0B2, M => '0', Cout => M6, S3 => M5, S2 => M4, S1 => M3, S0 => M2);
end Struct;