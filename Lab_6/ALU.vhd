library ieee;
use ieee.std_logic_1164.all;

entity alu_beh is
	generic(
	operand_width : integer:=4);
	port (
	A: in std_logic_vector(operand_width-1 downto 0);
	B: in std_logic_vector(operand_width-1 downto 0);
	op: out std_logic_vector((operand_width*2)-1 downto 0)) ;
end alu_beh;

architecture a1 of alu_beh is

	-- Adder
	function add(A: in std_logic_vector(operand_width-1 downto 0);
		B: in std_logic_vector(operand_width-1 downto 0))
	return std_logic_vector is
	
	variable sum : std_logic_vector(operand_width downto 0):= (others=>'0');
	variable carry : std_logic_vector(operand_width downto 0):= (others=>'0');
	
	begin
		full_adder:
		for i in 0 to operand_width-1 loop
			sum(i):= carry(i) xor (A(i) xor B(i));
			carry(i+1):= (A(i) and B(i)) or (B(i) and carry(i)) or (A(i) and carry(i));
		end loop full_adder;
		
		sum(operand_width):= carry(operand_width);
	return sum;
	end add;
	
	-- subtractor
	function sub(A: in std_logic_vector(operand_width-1 downto 0);
		B: in std_logic_vector(operand_width-1 downto 0))
	return std_logic_vector is
	
	variable B_Bar : std_logic_vector(operand_width-1 downto 0):= (others=>'0');
	variable B_2comp : std_logic_vector(operand_width-1 downto 0):= (others=>'0');
	variable Temp1 : std_logic_vector(operand_width downto 0):= (others=>'0');
	variable Temp2 : std_logic_vector(operand_width downto 0):= (others=>'0');
	variable add_1 : std_logic_vector(operand_width-1 downto 0):= (0 => '1', others=>'0');
	variable diff : std_logic_vector(operand_width*2-1 downto 0):= (others=>'0');
	variable carry : std_logic:= '1';
	
	begin
		B_Bar := not B;
		Temp1 := add(B_Bar, add_1);
		B_2comp := Temp1(operand_width-1 downto 0);
		Temp2 := add(B_2comp, A);
		diff(operand_width-1 downto 0) := Temp2(operand_width-1 downto 0);
		
	return diff;
	end sub;

	
	-- shifter
	function rolf(A: in std_logic_vector(operand_width-1 downto 0);
		B: in std_logic_vector(operand_width-1 downto 0))
	return std_logic_vector is
	
	variable shift : std_logic_vector((operand_width*2)-1 downto 0):= (others=>'0');
	variable temp_shift : std_logic_vector((operand_width*2)-1 downto 0):= (others=>'0');
	variable dec : integer:=0;
	
	begin
		shift(operand_width-1 downto 0):= A;
		
		if_1:
		if B(0) = '1' then
			shift := shift(6 downto 0) & shift(7);
		end if if_1;
		
		if_2:
		if B(1) = '1' then
			shift := shift(5 downto 0) & shift(7 downto 6);
		end if if_2;
		
		if_4:	
		if B(2) = '1' then
			shift := shift(3 downto 0) & shift(7 downto 4);
		end if if_4;
		
		return shift;
	end rolf;
	
	-- Bitwise XOR
	function Bitwise(A: in std_logic_vector(operand_width-1 downto 0);
		B: in std_logic_vector(operand_width-1 downto 0))
	return std_logic_vector is
	
	variable bitwise : std_logic_vector((operand_width*2)-1 downto 0):= (others=>'0');
	
	begin
		bit_xor:
		for i in 0 to operand_width-1 loop
			bitwise(i) := A(i) xor B(i);
		end loop bit_xor;
		
	return bitwise;
	end Bitwise;
	
	-- Multiplication
	function multiplication(A: in std_logic_vector(operand_width-1 downto 0);
		B: in std_logic_vector(operand_width-1 downto 0))
	return std_logic_vector is
	
	variable multi : std_logic_vector((operand_width*2)-1 downto 0):= (others=>'0');
	variable temp_mult : std_logic_vector(operand_width downto 0):= (others=>'0');
	variable temp_A : std_logic_vector(operand_width-1 downto 0):= (others=>'0');
	
	begin
		multi(0):= A(0);
		multi(1):= A(1);
		temp_A(0):= A(2);
		temp_A(1):= A(3);
		temp_mult:= add(A, temp_A);
		multi(6 downto 2) := temp_mult;
		
	return multi;
	end multiplication;
	
	-- main
	begin
		alu : process(A, B)
		begin
			
			main_if:
			if (A(3) = '0')and(B(3) = '0') then
				op <= rolf(A, B);
			elsif (A(3) = '0')and(B(3) = '1') then
				op <= sub(B, A);
			elsif (A(3) = '1')and(B(3) = '0') then
				op <= multiplication(A, B);
			elsif (A(3) = '1')and(B(3) = '1') then
				op <= Bitwise(A, B);
			end if main_if;
		end process ;
	end a1 ;