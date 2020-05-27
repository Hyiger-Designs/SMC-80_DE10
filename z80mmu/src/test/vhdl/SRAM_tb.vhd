library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

use work.user_types.all;

entity SRAM_tb is
end;

architecture bench of SRAM_tb is

	constant ADDR_WIDTH : integer := 19;
	constant DATA_WIDTH : integer := 8;

	component SRAM
		generic(
			ADDR_WIDTH : integer := ADDR_WIDTH;
			DATA_WIDTH : integer := DATA_WIDTH;
			FILE_NAME  : string  := ""
		);
		port(
			CE_n : in    std_logic;
			OE_n : in    std_logic;
			WE_n : in    std_logic;
			A    : in    std_logic_vector(ADDR_WIDTH - 1 downto 0);
			D    : inout std_logic_vector(DATA_WIDTH - 1 downto 0)
		);

	end component;

	signal clk  : std_logic;
	signal CE_n : std_logic := '1';
	signal OE_n : std_logic := '1';
	signal WE_n : std_logic := '1';
	signal A    : std_logic_vector(ADDR_WIDTH - 1 downto 0);
	signal D    : std_logic_vector(DATA_WIDTH - 1 downto 0);

	-- VHDL 2003 slv's can only be initialized with a hex literal if it's length is a multiple of 4...
	constant init1 : std_logic_vector(mult_ceil(ADDR_WIDTH, 4) - 1 downto 0) := x"7FFFF";
	constant init2 : std_logic_vector(mult_ceil(ADDR_WIDTH, 4) - 1 downto 0) := x"00000";

	constant clock_period : time := 10 ns;
	signal stop_the_clock : boolean;

begin

	uut : ENTITY work.SRAM
		generic map(
			FILE_NAME => "RCZ80_std.rom"
		)
		PORT MAP(
			CE_n => CE_n,
			OE_n => OE_n,
			WE_n => WE_n,
			A    => A,
			D    => D
		);

	stimulus : process
	begin
		wait for clock_period * 4;

		-- Perform a write
		CE_n <= '0';
		WE_n <= '0';
		OE_n <= '1';

		A <= init1(A'range);
		D <= x"A5";

		wait for clock_period * 2;

		-- Disable 
		CE_n <= '1';
		WE_n <= '1';
		OE_n <= '1';
		wait for clock_period * 4;

		-- perform a read
		CE_n <= '0';
		WE_n <= '1';
		OE_n <= '0';
		A    <= init2(A'range);
		wait for clock_period;

		--assert(D = "ZZZZZZZZ") report "D should be tristated" severity error;

		--assert(D = x"A5") report "D should be xA5" severity error;	

		--stop_the_clock <= true;
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
