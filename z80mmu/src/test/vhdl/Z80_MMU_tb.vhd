library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

use work.utilities.all;

entity Z80_MMU_tb is
end;

architecture bench of Z80_MMU_tb is

	signal clk : std_logic;

	signal A        : std_logic_vector(15 downto 0);
	signal MA       : std_logic_vector(18 downto 14);
	signal Mem_A    : std_logic_vector(18 downto 0);
	signal D        : std_logic_vector(7 downto 0);
	signal nMREQ    : std_logic;
	signal nIORQ    : std_logic;
	signal nWR      : std_logic;
	signal nM1      : std_logic;
	signal RAM_nCE  : std_logic := '1';
	signal ROM_nCE  : std_logic := '1';
	signal nRST     : std_logic := '1';
	signal page_led : std_logic;

	signal power_on_reset : std_logic_vector(3 downto 0) := (others => '1');

	constant clock_period : time := 10 ns;
	signal stop_the_clock : boolean;

	constant x00000 : std_logic_vector(18 downto 0) := (others => '0');
	constant x04000 : std_logic_vector(18 downto 0) := "0000100000000000000";
	constant x78000 : std_logic_vector(18 downto 0) := "1111000000000000000";
	constant x7C000 : std_logic_vector(18 downto 0) := "1111100000000000000";

begin

	mmu : ENTITY work.Z80_MMU
		PORT MAP(
			clk      => clk,
			nRST     => nRST,
			A        => A(7 DOWNTO 0),
			Ah       => A(15 DOWNTO 14),
			D        => D,
			nIORQ    => nIORQ,
			nM1      => nM1,
			nMREQ    => nMREQ,
			nWR      => nWR,
			ROM_nCE  => ROM_nCE,
			RAM_nCE  => RAM_nCE,
			MA       => MA,
			page_led => page_led
		);

	process(clk)
	begin
		if rising_edge(clk) then

			-- reset the system when requested
			if (power_on_reset(0) = '1') then
				nRST <= '0';
			else
				nRST <= '1';
			end if;

			-- shift 0s into the power_on_reset shift register from the MSB
			power_on_reset <= '0' & power_on_reset(power_on_reset'length - 1 downto 1);

		end if;
	end process;

	stimulus : process
	

		procedure outp(addr : in std_logic_vector(7 downto 0); data : in std_logic_vector(7 downto 0)) is
		begin
			nM1   <= '1';
			nMREQ <= '1';
			nIORQ <= '0';
			nWR   <= '0';

			A <= x"00" & addr;
			D <= data;
			wait for clock_period * 2;
		end procedure outp;

		procedure addr_decode(addr : std_logic_vector(15 downto 0)) is
		begin
			nMREQ <= '0';
			nIORQ <= '1';
			nWR   <= '1';

			A <= addr;
			wait for clock_period * 2;
		end procedure addr_decode;
		

	begin
		wait until nRST = '1';

		-- Initialize Page Registers
		outp(x"78", x"00");             -- ROM 0x00000 - 0x03FFF
		outp(x"79", x"01");             -- ROM 0x04000 - 0x07FFF
		outp(x"7A", x"3E");             -- RAM 0x78000 - 0x7BFFF
		outp(x"7B", x"3F");             -- RAM 0x7C000 - 0x7FFFF

		-- Enable Paging
		outp(x"7C", x"01");

		-- Bank 0
		addr_decode(x"0000");
		assert_equal (Mem_A, x00000);

		-- Bank 1
		addr_decode(x"4000");
		assert_equal (Mem_A , x04000);

		-- Bank 2
		addr_decode(x"8000");
		assert_equal (Mem_A, x78000);

		-- Bank 3
		addr_decode(x"C000");
		assert_equal(Mem_A, x7C000);

		-- Disable Paging
		outp(x"7C", x"00");

		addr_decode(x"0000");
		addr_decode(x"4000");
		addr_decode(x"8000");
		addr_decode(x"C000");

		stop_the_clock <= true;
		wait;
	end process stimulus;

	Mem_A <= MA & A(13 downto 0) when nMREQ = '0' else (others => 'Z');
	

	clocking : process
	begin
		while not stop_the_clock loop
			clk <= '0', '1' after clock_period / 2;
			wait for clock_period;
		end loop;
		wait;
	end process;

end;
