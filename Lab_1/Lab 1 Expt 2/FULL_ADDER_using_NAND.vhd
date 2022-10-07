library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity FULL_ADDER  is
  port (A, B, CIN: in std_logic; SUM, COUT: out std_logic);
end entity FULL_ADDER;

architecture Struct of FULL_ADDER is
  signal S1, S2, S3, S4, S5, S6, S7 : std_logic;
begin
  NAND1: NAND_2 port map (A => A, B => B, Y => S1);
  NAND2: NAND_2 port map (A => A, B => S1, Y => S2);
  NAND3: NAND_2 port map (A => B, B => S1, Y => S3);
  NAND4: NAND_2 port map (A => S2, B => S3, Y => S4);
  
  NAND5: NAND_2 port map (A => S4, B => CIN, Y => S5);
  NAND6: NAND_2 port map (A => S4, B => S5, Y => S6);
  NAND7: NAND_2 port map (A => CIN, B => S5, Y => S7);
  NAND8: NAND_2 port map (A => S6, B => S7, Y => SUM);
  
  NAND9: NAND_2 port map (A => S1, B => S5, Y => COUT);
end Struct;
