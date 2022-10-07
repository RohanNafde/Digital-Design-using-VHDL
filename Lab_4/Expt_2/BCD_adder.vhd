library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity BCD_adder  is
	port (A3, A2, A1, A0, B3, B2, B1, B0: in std_logic; Y4, Y3, Y2, Y1, Y0: out std_logic);
end entity BCD_adder;

architecture Struct of BCD_adder is
	signal Cout, S3, S2, S1, S0, X1, X2, X3, ADD6: std_logic;
	
	component Add_Sub is
		port (A3, A2, A1, A0, B3, B2, B1, B0, M: in std_logic; Cout, S3, S2, S1, S0: out std_logic);
	end component Add_Sub;
	
begin
	Add_Sub_1: Add_Sub port map (A3 => A3, A2 => A2, A1 => A1, A0 => A0, B3 => B3, B2 => B2, B1 => B1, B0 => B0, M => '0', Cout => Cout, S3 => S3, S2 => S2, S1 => S1, S0 => S0);
	
	OR1: OR_2 port map (A => S2, B => S1, Y => X1);
	ANDX: AND_2 port map (A => S3, B => X1, Y => X2);
	OR2: OR_2 port map (A => X2, B => Cout, Y => ADD6);
	
	Y4 <= ADD6;
	
	Add_Sub_2: Add_Sub port map (A3 => S3, A2 => S2, A1 => S1, A0 => S0, B3 => '0', B2 => ADD6, B1 => ADD6, B0 => '0', M => '0', Cout => X3, S3 => Y3, S2 => Y2, S1 => Y1, S0 => Y0);
end Struct;