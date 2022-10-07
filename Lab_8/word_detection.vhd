library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity word_detection is
	port(inp: in std_logic_vector(4 downto 0); reset, clock: in std_logic; outp: out std_logic);
end entity word_detection;

architecture bhv of word_detection is

type state_run is (rst_run, r, ru, run);
type state_cry is (rst_cry, c, cr, cry);
type state_broom is (rst_broom, b, br, bro, broo, broom);

signal p_run, n_run: state_run := rst_run;
signal p_cry, n_cry: state_cry := rst_cry;
signal p_broom, n_broom: state_broom := rst_broom;
signal s_run, s_cry, s_broom: std_logic;

begin
	clock_proc: process(clock, reset)
	begin
	if(clock='1' and clock' event) then
		if(reset = '1') then
			p_run <= rst_run;
			p_cry <= rst_cry;
			p_broom <= rst_broom;
		else
			p_run <= n_run;
			p_cry <= n_cry;
			p_broom <= n_broom;
		end if;
	end if;
end process;

state_transition_proc_run: process(inp, p_run)
begin
	case p_run is
	
		when rst_run =>
		if(unsigned(inp)=18) then
			n_run <= r;
		else
			n_run <= rst_run;
		end if;
		
		when r =>
		if(unsigned(inp)=21) then
			n_run <= ru;
		else
			n_run <= r;
		end if;
		
		when ru =>
		if(unsigned(inp)=14) then
			n_run <= run;
		else
			n_run <= ru;
		end if;
		
		when run =>
		if(unsigned(inp)=18) then
			n_run <= r;
		else
			n_run <= rst_run;
		end if;
	
	end case;
end process state_transition_proc_run;

state_transition_proc_cry: process(inp, p_cry)
begin
	
	case p_cry is
	
		when rst_cry =>
		if(unsigned(inp)=3) then
			n_cry <= c;
		else
			n_cry <= rst_cry;
		end if;
		
		when c =>
		if(unsigned(inp)=18) then
			n_cry <= cr;
		else
			n_cry <= c;
		end if;
		
		when cr =>
		if(unsigned(inp)=25) then
			n_cry <= cry;
		else
			n_cry <= cr;
		end if;
		
		when cry =>
		if(unsigned(inp)=3) then
			n_cry <= c;
		else
			n_cry <= rst_cry;
		end if;
	
	end case;
end process state_transition_proc_cry;

state_transition_proc_broom: process(inp, p_broom)
begin
	
	case p_broom is
	
		when rst_broom =>
		if(unsigned(inp)=2) then
			n_broom <= b;
		else
			n_broom <= rst_broom;
		end if;
		
		when b =>
		if(unsigned(inp)=18) then
			n_broom <= br;
		else
			n_broom <= b;
		end if;
		
		when br =>
		if(unsigned(inp)=15) then
			n_broom <= bro;
		else
			n_broom <= br;
		end if;
		
		when bro =>
		if(unsigned(inp)=15) then
			n_broom <= broo;
		else
			n_broom <= bro;
		end if;
		
		when broo =>
		if(unsigned(inp)=13) then
			n_broom <= broom;
		else
			n_broom <= broo;
		end if;
		
		when broom =>
		if(unsigned(inp)=2) then
			n_broom <= b;
		else
			n_broom <= rst_broom;
		end if;
	
	end case;
end process state_transition_proc_broom;

output_proc_run: process(n_run, inp) 
begin
	case n_run is
	
		when rst_run =>
		s_run <= '0';
		
		when r =>
		s_run <= '0';
		
		when ru =>
		s_run <= '0';
		
		when run =>
		s_run <= '1';
		
	end case;
end process output_proc_run;
	
output_proc_cry: process(n_cry, inp) 
begin
	case n_cry is
	
		when rst_cry =>
		s_cry <= '0';
		
		when c =>
		s_cry <= '0';
		
		when cr =>
		s_cry <= '0';
		
		when cry =>
		s_cry <= '1';
		
	end case;
end process output_proc_cry;

output_proc_broom: process(n_broom, inp) 
begin
	case n_broom is
	
		when rst_broom =>
		s_broom <= '0';
		
		when b =>
		s_broom <= '0';
		
		when br =>
		s_broom <= '0';
		
		when bro =>
		s_broom <= '0';
		
		when broo =>
		s_broom <= '0';
		
		when broom =>
		s_broom <= '1';
		
	end case;
end process output_proc_broom;

outp <= s_run or s_cry or s_broom;

end bhv;