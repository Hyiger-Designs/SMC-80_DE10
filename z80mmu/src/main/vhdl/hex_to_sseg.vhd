library ieee;
use ieee.std_logic_1164.all;

-- Convert a 4-bit value into a single HEX digit
entity hex_to_sseg is
	port(
		clk    : in  std_logic;
		nReset : in  std_logic;
		nEna   : in  std_logic;
		hex    : in  std_logic_vector(3 downto 0);
		dp     : in  std_logic;
		sseg_o : out std_logic_vector(7 downto 0)
	);
end hex_to_sseg;

architecture arch of hex_to_sseg is
	signal sseg : std_logic_vector(7 downto 0);
begin

	disp : entity work.gen_register
		generic map(CLRBIT => '1')
		port map(
			clk    => clk,
			nRESET => nRESET,
			nENA   => nEna,
			D      => sseg,
			Q      => sseg_o
		);

	decode : process(hex, nEna)
	begin
		if (nEna = '0') then
			case hex is
				when "0000" => sseg(6 downto 0) <= "1000000";
				when "0001" => sseg(6 downto 0) <= "1111001";
				when "0010" => sseg(6 downto 0) <= "0100100";
				when "0011" => sseg(6 downto 0) <= "0110000";
				when "0100" => sseg(6 downto 0) <= "0011001";
				when "0101" => sseg(6 downto 0) <= "0010010";
				when "0110" => sseg(6 downto 0) <= "0000010";
				when "0111" => sseg(6 downto 0) <= "1111000";
				when "1000" => sseg(6 downto 0) <= "0000000";
				when "1001" => sseg(6 downto 0) <= "0011000";
				when "1010" => sseg(6 downto 0) <= "0001000";
				when "1011" => sseg(6 downto 0) <= "0000011";
				when "1100" => sseg(6 downto 0) <= "1000110";
				when "1101" => sseg(6 downto 0) <= "0100001";
				when "1110" => sseg(6 downto 0) <= "0000110";
				when "1111" => sseg(6 downto 0) <= "0001110";
				when others => sseg(6 downto 0) <= "1111111";
			end case;
			sseg(7) <= not dp;
		else
			sseg <= (others => '1');
		end if;
	end process;

end arch;
