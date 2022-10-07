library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity Sub is
	port (X3, X2, X1, X0, Y3, Y2, Y1, Y0: in std_logic; Z, N, V, L, G: out std_logic);
end entity Sub;

architecture Struct of Sub is
	signal Y3_B, Y2_B, Y1_B, Y0_B, C1, C2, C3, C4, S3, S2, S1, S0, O3, O2, O1, O0, C_1, C_2, C_3, C_4, P1, P2, P3, P4, P5: std_logic;
begin
	NOT3: INVERTER port map (A => Y3, Y => Y3_B);
	NOT2: INVERTER port map (A => Y2, Y => Y2_B);
	NOT1: INVERTER port map (A => Y1, Y => Y1_B);
	NOT0: INVERTER port map (A => Y0, Y => Y0_B);
	
	FA3: FULL_ADDER port map (A => Y3_B, B => '0', Ci => C3, S => S3, Co => C4);
	FA2: FULL_ADDER port map (A => Y2_B, B => '0', Ci => C2, S => S2, Co => C3);
	FA1: FULL_ADDER port map (A => Y1_B, B => '0', Ci => C1, S => S1, Co => C2);
	FA0: FULL_ADDER port map (A => Y0_B, B => '1', Ci => '0', S => S0, Co => C1);
	
	FA_3: FULL_ADDER port map (A => S3, B => X3, Ci => C_3, S => O3, Co => C_4);
	FA_2: FULL_ADDER port map (A => S2, B => X2, Ci => C_2, S => O2, Co => C_3);
	FA_1: FULL_ADDER port map (A => S1, B => X1, Ci => C_1, S => O1, Co => C_2);
	FA_0: FULL_ADDER port map (A => S0, B => X0, Ci => '0', S => O0, Co => C_1);
	
	OR1: OR_2 port map (A => O0, B => O1, Y => P1);
	OR2: OR_2 port map (A => O2, B => O3, Y => P2);
	OR3: OR_2 port map (A => P1, B => P2, Y => P3);
	NOT4: INVERTER port map (A => P3, Y => Z);
	
	N <= O3;
	
	XOR1: XOR_2 port map (A => X3, B => Y3, Y => P4);
	XOR2: XOR_2 port map (A => O3, B => X3, Y => P5);
	AND1: AND_2 port map (A => P4, B => P5, Y => V);
	
	L <= '0';
	G <= '0';
end Struct;