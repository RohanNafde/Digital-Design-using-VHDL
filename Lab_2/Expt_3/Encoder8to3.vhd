library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity Encoder8to3  is
	port (Y7, Y6, Y5, Y4, Y3, Y2, Y1, Y0, Enable: in std_logic; A2, A1, A0: out std_logic);
end entity Encoder8to3;

architecture Struct of Encoder8to3 is

signal S1, S2, S3, S4, S5, s6, s7 : std_logic;

component Encoder4to2  is
	port (A, B, C, D, En: in std_logic; Y1, Y0: out std_logic);
end component Encoder4to2;
	
begin
	Enc1: Encoder4to2 port map (A => Y7, B => Y6, C => Y5, D => Y4, En => Enable, Y1 => s4, Y0 => s3);
	Enc2: Encoder4to2 port map (A => Y3, B => Y2, C => Y1, D => Y0, En => Enable, Y1 => s2, Y0 => s1);
	Enc3: Encoder4to2 port map (A => Y7, B => Y6, C => Y4, D => Y5, En => Enable, Y1 => s6, Y0 => s5);
	OR1: OR_2 port map (A => S4, B => S3, Y => S7);
	OR2: OR_2 port map (A => S7, B => S5, Y => A2);
	OR3: OR_2 port map (A => S4, B => S2, Y => A1);
	OR4: OR_2 port map (A => S3, B => S1, Y => A0);
end Struct;