library IEEE;
use IEEE.std_logic_1164.all;

use work.user_types.all;

-- Display a std_logic_vector on seven segment displays as hexadecimal
-- Can use the decimal place indicator to partion the digits
-- TODO: allow setting multiple dps
entity display_bytes is
	generic(
		DP_POS : natural := 0           --  0 disables DP, else enable DP on the N'th display
	);
	port(
		clk    : in  std_logic;
		nReset : in  std_logic;
		data   : in  std_logic_vector;
		DISP   : out sseg
	);
end display_bytes;

architecture hex_display of display_bytes is
	constant NIBBLES  : natural := data'length / 4;
	constant NUM_DISP : natural := DISP'length;

	signal dp : std_logic_vector(DISP'range) := (others => '0');
begin

	assert NIBBLES <= NUM_DISP report "ERROR: number of hex digits to display " &
		natural'image(NIBBLES) &
		" is larger than number of displays" &
		 natural'image(NUM_DISP) severity error;

	assert DP_POS <= NUM_DISP report "invalid decimal place location " &
		 natural'image(DP_POS) severity error;

   -- Turn on the DP at the given digit
	-- If set to 
	disp_dp : if (DP_POS > 0) generate
		dp(DP_POS - 1) <= '1';
	end generate disp_dp;

	-- partition vector into 4 bit nibbles, 1 for each display
	-- converts 4 bits to a seven segment hex digit
	data_disp : for i in NIBBLES - 1 downto 0 generate

		sseg_unit : entity work.hex_to_sseg
			port map(
				clk    => clk,
				nReset => nReset,
				hex    => data(4 * (i + 1) - 1 downto 4 * i),
				dp     => dp(i),
				sseg_o => DISP(i)
			);

	end generate data_disp;

end hex_display;
