library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity PriorityEncoder  is
  port (A, B, C, D: in std_logic; Y1, Y0, V: out std_logic);
end entity PriorityEncoder;

architecture Struct of PriorityEncoder is
  signal S1, S2, S3, B_BAR : std_logic;
begin
  OR1: OR_2 port map (A => A, B => B, Y => Y1);
  INV1: INVERTER port map (A => B, Y => B_BAR);
  AND1: AND_2 port map (A => B_BAR, B => C, Y => S1);
  OR2: OR_2 port map (A => A, B => S1, Y => Y0);
  OR3: OR_2 port map (A => A, B => B, Y => S2);
  OR4: OR_2 port map (A => C, B => D, Y => S3);
  OR5: OR_2 port map (A => S2, B => S3, Y => V);
end Struct;