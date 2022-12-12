library ieee;
use ieee.std_logic_1164.all;

entity clock_divider is
	port (clk_out, L1, L2, L3, L4, L5, L6, L7, L8: out std_logic;
	clk_50, SW1, SW2, SW3, SW4, SW5, SW6, SW7, SW8: in std_logic);
end entity clock_divider;

architecture bhv of clock_divider is

signal sa, re, ga, ma, pa, dha, ni, saa: integer := 0;
signal t1, t2, t3, t4, t5, t6, t7, t8: std_logic := '0';

begin
	proc: process(clk_50, sa, re, ga, ma, pa, dha, ni, saa,
	t1, t2, t3, t4, t5, t6, t7, t8,
	SW1, SW2, SW3, SW4, SW5, SW6, SW7, SW8)
	begin
		
		if(clk_50'event and clk_50 = '1') then	
			sa <= sa + 1;
			re <= re + 1;
			ga <= ga + 1;
			ma <= ma + 1;
			pa <= pa + 1;
			dha <= dha + 1;
			ni <= ni + 1;
			saa <= saa + 1;
			
			if(sa = 104168) then
				t1 <= not t1;
				sa <= 0;
			end if;
			
			if(re = 92593) then
				t2 <= not t2;
				re <= 0;
			end if;
			
			if(ga = 83333) then
				t3 <= not t3;
				ga <= 0;
			end if;
			
			if(ma = 78125) then
				t4 <= not t4;
				ma <= 0;
			end if;
			
			if(pa = 69444) then
				t5 <= not t5;
				pa <= 0;
			end if;
			
			if(dha = 62500) then
				t6 <= not t6;
				dha <= 0;
			end if;
			
			if(ni = 55556) then
				t7 <= not t7;
				ni <= 0;
			end if;
			
			if(saa = 52083) then
				t8 <= not t8;
				saa <= 0;
			end if;
			
		end if;
		
		if(SW1 = '1' and SW2 = '1' and SW3 = '1' and SW4 = '1' and SW5 = '1' and SW6 = '1' and SW7 = '1' and SW8 = '1') then
			clk_out <= t8;
			L1 <= '0'; L2 <= '0'; L3 <= '0'; L4 <= '0'; L5 <= '0'; L6 <= '0'; L7 <= '0'; L8 <= '1';
			
		elsif(SW1 = '1' and SW2 = '1' and SW3 = '1' and SW4 = '1' and SW5 = '1' and SW6 = '1' and SW7 = '1') then
			clk_out <= t7;
			L1 <= '0'; L2 <= '0'; L3 <= '0'; L4 <= '0'; L5 <= '0'; L6 <= '0'; L7 <= '1'; L8 <= '0';
			
		elsif(SW1 = '1' and SW2 = '1' and SW3 = '1' and SW4 = '1' and SW5 = '1' and SW6 = '1') then
			clk_out <= t6;
			L1 <= '0'; L2 <= '0'; L3 <= '0'; L4 <= '0'; L5 <= '0'; L6 <= '1'; L7 <= '0'; L8 <= '0';
			
		elsif(SW1 = '1' and SW2 = '1' and SW3 = '1' and SW4 = '1' and SW5 = '1') then
			clk_out <= t5;
			L1 <= '0'; L2 <= '0'; L3 <= '0'; L4 <= '0'; L5 <= '1'; L6 <= '0'; L7 <= '0'; L8 <= '0';
			
		elsif(SW1 = '1' and SW2 = '1' and SW3 = '1' and SW4 = '1') then
			clk_out <= t4;
			L1 <= '0'; L2 <= '0'; L3 <= '0'; L4 <= '1'; L5 <= '0'; L6 <= '0'; L7 <= '0'; L8 <= '0';
			
		elsif(SW1 = '1' and SW2 = '1' and SW3 = '1') then
			clk_out <= t3;
			L1 <= '0'; L2 <= '0'; L3 <= '1'; L4 <= '0'; L5 <= '0'; L6 <= '0'; L7 <= '0'; L8 <= '0';
			
		elsif(SW1 = '1' and SW2 = '1') then
			clk_out <= t2;
			L1 <= '0'; L2 <= '1'; L3 <= '0'; L4 <= '0'; L5 <= '0'; L6 <= '0'; L7 <= '0'; L8 <= '0';
			
		elsif(SW1 = '1') then
			clk_out <= t1;
			L1 <= '1'; L2 <= '0'; L3 <= '0'; L4 <= '0'; L5 <= '0'; L6 <= '0'; L7 <= '0'; L8 <= '0';
		
		end if;
		
	end process proc;
end bhv;