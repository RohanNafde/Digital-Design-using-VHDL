library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity serial_adder is

port( a, b: in std_logic;
reset,clock:in std_logic;
s: out std_logic);

end serial_adder;
architecture bhv of serial_adder is
type state is (s11, s12);
signal y_present1,  y_next1 : state:= s11;

begin

clock_proc: process(clock, reset)

begin
if(clock='1' and clock' event) then
	if( reset = '1') then
	y_present1<= s11;
	
--Here Reset is synchronous
-- Fill the code here

	else
	-- Fill the code here
	y_present1<= y_next1;
	
	end if;
end if;
end process;

state_transition_proc1:process(a, b ,y_present1)

begin

case y_present1 is
when s11=>
if(a = '1' and b = '1') then --r has been detected
y_next1<= s11; -- Fill the code here
else
y_next1<= y_present1;
end if;

when s12=>
if(a = '0' and b = '0') then --u has been detected
y_next1<= s11; -- Fill the code here
else
y_next1<= y_present1;
end if;
end case;

end process;


-------------------------
---------Fill rest of the code here---------
output_proc1:process(y_present1, a, b) ------- output process after this which will give
-------the output based on the present state and input (Mealy machine)
begin
case y_present1 is


when s11=>
--if (a = '1' and b = '1') then 
s <= not(reset)and (a xor b);



when s12=>
--if(a = '0' and b = '0') then --n has been detected
s <= not(reset) and (a xor b xor '1');
 -- Fill the code here

end case;
end process;

end architecture;


