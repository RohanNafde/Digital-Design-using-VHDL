library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity server is
	port(inp: in std_logic_vector(3 downto 0); clock, reset: in std_logic;
	outp: out std_logic_vector(4 downto 0));
end entity server;

architecture bhv of server is

type state is (idle, stu, res, prof, admin, res_req, prof_req, admin_req);

signal p, n: state := idle;
signal a : integer := 1;


begin

clock_proc: process(clock, reset)
	begin
	if(clock = '1' and clock' event) then
		if(reset = '1') then
			p <= idle;
		else
			p <= n;
		end if;
	end if;
end process;

state_transition_proc_run: process(inp, p)
begin
	case p is
	
		when idle =>
		if(inp(3) = '1') then
			n <= admin;
		elsif(inp(2) = '1') then
			n <= prof;
		elsif(inp(1) = '1') then
			n <= res;
		elsif(inp(0) = '1') then
			n <= stu;
		else
			n <= idle;
		end if;
	
		when stu =>
		if(inp(3) = '1') then
			n <= admin_req;
		elsif(inp(2) = '1') then
			n <= prof_req;
		elsif(inp(1) = '1') then
			n <= res_req;
		elsif(inp(0) = '0') then
			n <= idle;
		else
			n <= stu;
		end if;
	
		when res =>
		if(inp(3) = '1') then
			n <= admin_req;
		elsif(inp(2) = '1') then
			n <= prof_req;
		elsif(inp(1) = '0') then
			n <= idle;
		else
			n <= res;
		end if;
	
		when prof =>
		if(inp(3) = '1') then
			n <= admin_req;
		elsif(inp(2) = '0') then
			n <= idle;
		else
			n <= prof;
		end if;
	
		when admin =>
		if(inp(3) = '0') then
			n <= idle;
		else
			n <= admin;
		end if;
		
		when res_req =>
--		a <= a + 1;
--		n <= res_req;
--		if(a = 3) then
--			n <= res;
--			a <= 1;
--		end if;
		n <= res;
		
		when prof_req =>
--			a <= a + 1;
--		n <= prof_req;
--			if(a = 3) then
--				n <= prof;
--				a <= 1;
--		end if;
		n <= profs;
		
		when admin_req =>
--			a <= a + 1;
--		n <= admin_req;
--			if(a = 3) then
--				n <= admin;
--				a <= 1;
--		end if;
		n <= admin;
		
		
	end case;
end process state_transition_proc_run;

output_proc_run: process(p, inp) 
begin
	case p is
	
		when idle =>
		outp <= "00000";
	
		when stu =>
		outp <= "10000";
	
		when res =>
		outp <= "11000";
	
		when prof =>
		outp <= "11100";
	
		when admin =>
		outp <= "11110";
	
		when res_req =>
		outp <= "11111";
	
		when prof_req =>
		outp <= "11111";
	
		when admin_req =>
		outp <= "11111";
		
	end case;
end process output_proc_run;

end bhv;