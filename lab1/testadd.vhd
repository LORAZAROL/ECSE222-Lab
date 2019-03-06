library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity testadd is
	port( x, y: in std_logic_vector(4 downto 0);
			sum:	out std_logic_vector(5 downto 0));
	end testadd;
	
architecture aaaaa of testadd is
begin
	sum <= ('0' & x) + ('0' & y);
end aaaaa;