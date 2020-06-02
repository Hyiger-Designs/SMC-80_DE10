library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

use work.utilities.all;

entity SRAM_tb is
end;

architecture bench of SRAM_tb is

	constant ADDR_WIDTH : integer := 19;
	constant DATA_WIDTH : integer := 8;

	signal clk  : std_logic;
	signal CE_n : std_logic := '1';
	signal OE_n : std_logic := '1';
	signal WE_n : std_logic := '1';
	signal A    : std_logic_vector(ADDR_WIDTH - 1 downto 0);
	signal D    : std_logic_vector(DATA_WIDTH - 1 downto 0);

	constant clock_period : time := 10 ns;
	signal stop_the_clock : boolean;

begin

	romwbw : ENTITY work.SRAM
		generic map(
			FILE_NAME => "RCZ80_std.rom"
		)
		PORT MAP(
			clk => clk,
			CE_n => CE_n,
			OE_n => OE_n,
			WE_n => WE_n,
			A    => A,
			D    => D
		);

	stimulus : process
	
		procedure read(addr : in std_logic_vector(A'range)) is
		begin
			A    <= addr;
			D    <= (others => 'Z');
			CE_n <= '0';
			OE_n <= '0';
			WE_n <= '1';
			wait for clock_period * 2;
		end procedure read;

		procedure write(addr : in std_logic_vector(A'range); data : in std_logic_vector(D'range)) is
		begin
			A    <= addr;
			D    <= data;
			CE_n <= '0';
			OE_n <= '1';
			WE_n <= '0';
			wait for clock_period * 2;
		end procedure write;

	begin
		wait for clock_period * 2;

		-- Read from Address 0
		read((others => '0'));
		assert (D = x"C3") report "D should be xC3" severity error;

		-- Write xAA to Address 0
		write((others => '0'), x"AA");

		-- Read from Address 0
		read((others => '0'));
		assert (D = x"AA") report "D should be xA5" severity error;

		-- Write x55 to Address 1
		write((0 => '1', others => '0'), x"55");

		-- Read from Address 1
		read ((0 => '1', others => '0'));
		assert (D = x"55") report "D should be x55" severity error;

		stop_the_clock <= true;
		wait;
	end process;

	clocking : process
	begin
		while not stop_the_clock loop
			clk <= '0', '1' after clock_period / 2;
			wait for clock_period;
		end loop;
		wait;
	end process;

end;
