library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity Add_Sub  is
	port (A3, A2, A1, A0, B3, B2, B1, B0, M: in std_logic; Cout, S3, S2, S1, S0: out std_logic);
end entity Add_Sub;

architecture Struct of Add_Sub is
	signal Cin1, Cin2, Cin3, X0, X1, X2, X3 : std_logic;
	
component FULL_ADDER  is
	port (A, B, CIN: in std_logic; SUM, COUT: out std_logic);
end component FULL_ADDER;

begin
	XOR1: XOR_2 port map (A => B3, B => M, Y => X3);
	XOR2: XOR_2 port map (A => B2, B => M, Y => X2);
	XOR3: XOR_2 port map (A => B1, B => M, Y => X1);
	XOR4: XOR_2 port map (A => B0, B => M, Y => X0);
	
	Full_Adder1: FULL_ADDER port map (A => A3, B => X3, CIN => Cin3, SUM => S3, COUT => Cout);
	Full_Adder2: FULL_ADDER port map (A => A2, B => X2, CIN => Cin2, SUM => S2, COUT => Cin3);
	Full_Adder3: FULL_ADDER port map (A => A1, B => X1, CIN => Cin1, SUM => S1, COUT => Cin2);
	Full_Adder4: FULL_ADDER port map (A => A0, B => X0, CIN => M, SUM => S0, COUT => Cin1);
end Struct;