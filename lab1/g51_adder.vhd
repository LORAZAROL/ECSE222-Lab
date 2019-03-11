library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity g51_adder is 
	Port (A, B				: in std_logic_vector(4 downto 0);
			decoded_A		: out std_logic_vector(13 downto 0);
			decoded_B		: out std_logic_vector(13 downto 0);
			decoded_AplusB	: out std_logic_vector(13 downto 0));
end entity;

architecture a0 of g51_adder is 
	-- binary sum
	signal sum: std_logic_vector(5 downto 0);
	
	-- sum: split 6-bit sum into two 4-bit digits
	signal digit0: std_logic_vector(3 downto 0);
	signal digit1: std_logic_vector(3 downto 0);
	
	-- sum: turn the sum into decoded form each
	signal sum0: std_logic_vector(6 downto 0);
	signal sum1: std_logic_vector(6 downto 0);

	-- represent A and B in decoded form
	signal digitA0: std_logic_vector(3 downto 0);
	signal digitA1: std_logic_vector(3 downto 0);
	signal hexA0: std_logic_vector(6 downto 0);
	signal hexA1: std_logic_vector(6 downto 0);

	signal digitB0: std_logic_vector(3 downto 0);
	signal digitB1: std_logic_vector(3 downto 0);
	signal hexB0: std_logic_vector(6 downto 0);
	signal hexB1: std_logic_vector(6 downto 0);
	
	component g51_segment_decoder is
		Port( code: in std_logic_vector(3 downto 0);
		  segments: out std_logic_vector(6 downto 0)
	);
	end component;

	begin
		sum <= ('0' & A) + ('0' & B);
		digit0 <= sum(3 downto 0);
		digit1(0) <= sum(4);
		digit1(1) <= sum(5); 
		digit1(3 downto 2) <= "00";
		
		-- decode digit0->sum0; digit1->sum1; then sum1&sum0 -> decoded_AplusB
		Decoder_sum0: g51_segment_decoder port map(code=>digit0, segments=>sum0);
		Decoder_sum1: g51_segment_decoder port map(code=>digit1, segments=>sum1);
		decoded_AplusB <= sum1 & sum0;

		--represent A into decoded form: 
		digitA0 <= A(3 downto 0);
		digitA1(0) <= A(4);
		digitA1(3 downto 1) <= "000";

		-- decode A
		Decoder_a0: g51_segment_decoder port map(code=>digitA0, segments=>hexA0);
		Decoder_a1: g51_segment_decoder port map(code=>digitA1, segments=>hexA1);
		decoded_A <= hexA1 & hexA0;

		--represent B into decoded form: 
		digitB0 <= B(3 downto 0);
		digitB1(0) <= B(4);
		digitB1(3 downto 1) <= "000";

		-- decode B
		Decoder_b0: g51_segment_decoder port map(code=>digitB0, segments=>hexB0);
		Decoder_b1: g51_segment_decoder port map(code=>digitB1, segments=>hexB1);
		decoded_B <= hexB1 & hexB0;

	end architecture a0;