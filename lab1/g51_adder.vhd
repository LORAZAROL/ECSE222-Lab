entity g51_adder is 
	Port (A, B				: in std_logic_vector(4 downto 0);
			decoded_A		: out std_logic_vector(13 downto 0);
			decoded_B		: out std_logic_vector(13 downto 0);
			decoded_AplusB	: out std_logic_vector(13 downto 0);
end entity g51_adder;