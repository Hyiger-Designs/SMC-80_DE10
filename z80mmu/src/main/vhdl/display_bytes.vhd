library IEEE;
use IEEE.std_logic_1164.all;

use work.utilities.all;

-- Display a std_logic_vector on seven segment displays as hexadecimal
-- Can use the decimal place indicator to partion the digits
-- TODO: allow setting multiple dps
entity display_bytes is
	generic(
		DP_LOC : natural_array          --  empty disables DP, else enable DPs on the N'th display
	);
	port(
		clk    : in  std_logic;
		nReset : in  std_logic;
		nENA   : in  std_logic;
		data   : in  std_logic_vector;
		disp   : out sseg
	);
end display_bytes;

architecture hex_display of display_bytes is
	constant NIBBLES  : natural := data'length / 4; -- Number of 4-bit chunks in data
	constant NUM_DISP : natural := disp'length; -- Number sseg displays on board
	constant MAX_DP   : integer := maximum(DP_LOC);

	-- holds which decimal points are lit
	signal dp : std_logic_vector(DISP'range) := (others => '0');

begin

	assert NIBBLES <= NUM_DISP report "ERROR: number of hex digits " &
		natural'image(NIBBLES) &
		" is larger than number of displays" &
		 natural'image(NUM_DISP) severity error;

	-- use maximum(dps) here
	assert MAX_DP <= NUM_DISP report "ERROR: invalid decimal place location " &
		 natural'image(MAX_DP) severity error;

	-- Turn on the DP on the given digit indexed by DP_LOC
	-- If set to 
	disp_dp : if DP_LOC'length > 0 generate
		set_dp : for i in DP_LOC'range generate
			dp(DP_LOC(i)) <= '1';
		end generate set_dp;
	end generate disp_dp;

	-- partition vector into 4 bit nibbles, 1 for each display
	-- encodes the 4 bits to a seven segment hex digit
	data_disp : for i in NIBBLES - 1 downto 0 generate

		sseg_unit : entity work.hex_to_sseg
			port map(
				clk    => clk,
				nReset => nReset,
				nEna   => nEna,
				hex    => data(4 * (i + 1) - 1 downto 4 * i),
				dp     => dp(i),
				sseg_o => disp(i)
			);

	end generate data_disp;

end hex_display;
