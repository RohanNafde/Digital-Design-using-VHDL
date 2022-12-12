library ieee;
use ieee.std_logic_1164.all;

entity seq_gen is
	port (reset, clock_50: in std_logic; y:out std_logic);
end entity seq_gen;

architecture ach of seq_gen is

type state is (RST, S1, S2, S3);

signal p, n: state := RST;

begin

	clock_proc: process(clock_50, reset)
	begin
	if(clock_50='1' and clock_50' event) then
		if(reset = '1') then
			p <= RST;
		else
			p <= n;
		end if;
	end if;
	end process clock_proc;
	
	state_transition_proc_run: process(p)
	begin
	case p is
	
		when RST =>
		n <= S1;
		
		when S1 =>
		n <= S2;
		
		when S2 =>
		n <= S3;
		
		when S3 =>
		n <= RST;
		
	end case;
	end process state_transition_proc_run;
	
	output_proc_run: process(p) 
	begin
	case p is
	
		when RST =>
		y <= '1';
		
		when S1 =>
		y <= '1';
		
		when S2 =>
		y <= '1';
		
		when S3 =>
		y <= '0';
		
	end case;
	end process output_proc_run;

end ach;