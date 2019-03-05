library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity g51_lab1 is
	Port( code: in std_logic_vector(3 downto 0);
		  segments: out std_logic_vector(6 downto 0)
	);
end g51_lab1;
architecture transformer of g51_lab1 is 
	begin
		segments(0) <= (not code(0) and not code(1) and code(2) and not code(3)) OR 
							(code(0) and not code(1) and not code(2) and not code(3)) OR
							(code(0) and code(1) and not code(2) and code(3)) OR
							(code(0) and not code(1) and code(2) and code(3));

		segments(1) <= (not code(0) and code(1) and code(2)) OR
							(code(0) and code(1) and code(3)) OR
							(not code(0) and code(2) and code(3)) OR
							(code(1) and code(2) and code(3)) OR
							(code(0) and not code(1) and code(2) and not code(3));
							
		segments(2) <= (not code(0) and code(1) and not code(2) and not code(3)) OR
							(not code(0) and code(2) and code(3)) OR
							(code(1) and code(2) and code(3));
		
		segments(3) <= (not code(0) and not code(1) and code(2) and not code(3)) OR 
							(not code(0) and code(1) and not code(2) and code(3)) OR 
							(code(0) and not code(1) and not code(2) and not code(3)) OR 
							(code(0) and code(1) and code(2));
							
		segments(4) <= (code(2) and not code(1) and not code(3)) OR 
							(code(0) and not code(1) and not code(2)) OR
							(code(0) and not code(3));
							
		segments(5) <= (code(0) and not code(1) and code(2) and code(3)) OR
							(code(0) and code(1) and not code(3)) OR
							(code(1) and not code(2) and not code(3)) OR
							(code(0) and not code(2) and not code(3));
							
		segments(6) <= (not code(0) and not code(1) and code(2) and code(3)) OR 
							(code(0) and code(1) and code(2) and not code(3)) OR 
							(not code(1) and not code(2) and not code(3));
							
	end transformer;


--state each full adder
	entity full_adder is
		port(	x, y, cin: in std_logic;
				s, cout:	out std_logic);
		end entity full_adder;
	architecture a0 of full_adder is
		begin
			s <= x xor y xor cin;
			cout <= (x and y) OR (cin and x) OR (cin and y);
		end architecture a0;
	
--generate sum
entity five_bit_adder is
	port( X, Y, Cin: in std_logic_vector(4 downto 0);
			S, Cout: out std_logic_vector(4 downto 0));
end entity five_bit_adder;
architecture addall of five_bit_adder is
	component full_adder is 
		port(	x, y, cin: in std_logic;
				s, cout:	out std_logic);
		end component full_adder;
	begin 
		full_adder0: full_adder port map(A(0), B(0), 0, S(0), Cout(0));
		full_adder1: full_adder port map(A(1), B(1), Cout(0), S(1), Cout(1));
		full_adder2: full_adder port map(A(2), B(2), Cout(1), S(2), Cout(2));
		full_adder3: full_adder port map(A(3), B(3), Cout(2), S(3), Cout(3));
		full_adder4: full_adder port map(A(4), B(4), Cout(3), S(4), Cout(4));
end architecture addall;	
--sum = CoutS(4)S(3)S(2)S(1)S(0)

--final generalization
entity g51_adder is 
	Port (A, B				: in std_logic_vector(4 downto 0);
			decoded_A		: out std_logic_vector(13 downto 0);
			decoded_B		: out std_logic_vector(13 downto 0);
			decoded_AplusB	: out std_logic_vector(13 downto 0);
end entity g51_adder;
		





