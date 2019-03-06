library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity addition is
	port( x, y: in std_logic_vector(4 downto 0);
			sum:	out std_logic_vector(5 downto 0));
	end addition;
	
architecture aaaaa of addition is
begin
	sum <= ('0' & x) + ('0' & y);
end aaaaa;

entity g51_adder is 
	Port (A, B				: in std_logic_vector(4 downto 0);
			decoded_A		: out std_logic_vector(13 downto 0);
			decoded_B		: out std_logic_vector(13 downto 0);
			decoded_AplusB	: out std_logic_vector(13 downto 0);
end entity g51_adder;

architecture magic_cast of g51_adder is
	signal digitA1 = std_logic_vector(3 downto 0);
	signal digitA0 = std_logic_vector(3 downto 0);
	signal digitB1 = std_logic_vector(3 downto 0);
	signal digitB0 = std_logic_vector(3 downto 0);
	begin 
		if A(4) = '1' then 
			digitA1(0) <= '1'; 
			digitA1(1), digitA1(2), digitA1(3) <= '0';
		else if A(4) = '0'
			digitA0(0) <= A(0);
			digitA0(1) <= A(1);
			digitA0(2) <= A(2);
			digitA0(3) <= A(3);
			
		if B(4) = '1' then
			digitB1(0) <= '1'; 
			digitB1(1), digitB1(2), digitB1(3) <= '0';
		else if B(4) = '0'
			digitB0(0) <= B(0);
			digitB0(1) <= B(1);
			digitB0(2) <= B(2);
			digitB0(3) <= B(3);
		
		component g51_segment_decoder
			Port( code: in std_logic_vector(3 downto 0);
			segments: out std_logic_vector(6 downto 0)
			);
			
			-- decode each half and concat them