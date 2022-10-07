library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity Prime_Detector is
	port (A, B, C, D: in std_logic; OUTPUT: out std_logic);
end entity Prime_Detector;

architecture Struct of Prime_Detector is
	signal A_BAR, B_BAR, C_BAR, D_BAR, S1, S2, S3, S4, S5, O1, O2, O3 : std_logic;
	
component AND_3_inp is -- 3 input AND gate
	port (A, B, C: in std_logic; Z: out std_logic);
end component AND_3_inp;


begin
	NOT1: INVERTER port map (A => A, Y => A_BAR);
	NOT2: INVERTER port map (A => B, Y => B_BAR);
	NOT3: INVERTER port map (A => C, Y => C_BAR);
	NOT4: INVERTER port map (A => D, Y => D_BAR);
	
	AND1: AND_3_inp port map (A => A_BAR, B => B, C => D, Z => S1);
	AND2: AND_3_inp port map (A => A_BAR, B => C, C => D, z => S2);
	AND3: AND_3_inp port map (A => A_BAR, B => B_BAR, C => C, Z => S3);
	AND4: AND_3_inp port map (A => B, B => C_BAR, C => D, Z => S4);
	AND5: AND_3_inp port map (A => B_BAR, B => C, C => D, Z => S5);
	
	OR1: OR_2 port map (A => S1, B => S2, Y => O1);
	OR2: OR_2 port map (A => S3, B => S4, Y => O2);
	OR3: OR_2 port map (A => O1, B => O2, Y => O3);
	OR4: OR_2 port map (A => O3, B => S5, Y => OUTPUT);
end Struct;