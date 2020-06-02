
-- Z80 CPU at 7.3728mhz
-- 64K RAM
-- 64K Pageable ROM with 8K page size and page selection
-- Dual ACIA 6850 UARTs at 115200 8N1
-- CF Filesystem

-- Inspiration and ideas from: Grant Searle's MULTICOMP project at http://searle.hostei.com/grant/Multicomp/index.html

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.utilities.all;

entity SMC_80_DE10_tb is
end SMC_80_DE10_tb;

architecture struct of SMC_80_DE10_tb is

	constant clock_period : time := 10 ns;

	signal clk            : std_logic;
	signal stop_the_clock : boolean;

	-- RAM/ROM Board
	signal A          : std_logic_vector(15 downto 0);
	signal D          : std_logic_vector(7 downto 0);
	signal CPU_D_I    : std_logic_vector(7 downto 0);
	signal CPU_D_O    : std_logic_vector(7 downto 0);
	signal MA         : std_logic_vector(18 downto 14) := (others => '0');
	signal nRESET_EXT : std_logic;
	signal RAM_nCE    : std_logic;
	signal ROM_nCE    : std_logic;
	signal nRD        : std_logic;
	signal nWR        : std_logic;
	signal nMREQ      : std_logic;
	signal nIORQ      : std_logic;
	signal nWait      : std_logic;
	signal nInt       : std_logic;
	signal nM1        : std_logic;
	signal nRST       : std_logic                      := '1';

	-- UART/FTDI
	signal nRTS : std_logic;            -- a2-5
	signal nCTS : std_logic;            -- a2-6
	signal TX   : std_logic;            -- a2-7
	signal RX   : std_logic;            -- a2-8

	-- FPGA Board
	signal nRESET   : std_logic;
	signal step_pb  : std_logic;
	signal mode_sw  : std_logic;
	signal page_led : std_logic;
	signal LED      : std_logic_vector(7 downto 0);
	signal DISP     : sseg;

	signal ROM_nCS : std_logic := '1';

	signal MEM_nWR : std_logic := '1';
	signal MEM_nRD : std_logic := '1';
	signal RAM_nCS : std_logic := '1';

begin

	romwbw : ENTITY work.SRAM
		generic map(
			FILE_NAME => "RCZ80_std.rom"
		)
		PORT MAP(
			clk  => clk,
			CE_n => ROM_nCE,
			OE_n => MEM_nRD,
			WE_n => MEM_nWR,
			A    => MA & A(13 downto 0),
			D    => D
		);

	ram512k : ENTITY work.SRAM
		PORT MAP(
			clk  => clk,
			CE_n => RAM_nCE,
			OE_n => MEM_nRD,
			WE_n => MEM_nWR,
			A    => MA & A(13 downto 0),
			D    => D
		);

	-- T80 CPU
	cpu : entity work.T80s
		generic map(Mode => 1, T2Write => 1, IOWait => 0)
		port map(
			RESET_n => nRESET,
			CLK_n   => clk,
			WAIT_n  => nWAIT,
			INT_n   => nINT,
			NMI_n   => '1',
			BUSRQ_n => '1',
			M1_n    => nM1,
			MREQ_n  => nMREQ,
			IORQ_n  => nIORQ,
			RD_n    => nRD,
			WR_n    => nWR,
			RFSH_n  => open,
			HALT_n  => open,
			BUSAK_n => open,
			A       => A(15 downto 0),
			DI      => CPU_D_I,
			DO      => CPU_D_O
		);

	-- Implement 16K page memory model
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
			MA       => MA(18 DOWNTO 14),
			page_led => page_led
		);

	MEM_nWR <= nWR or nMREQ;
	MEM_nRD <= nRD or nMREQ;

	-- 

	D <= CPU_D_O when MEM_nWR = '0' else (others => 'Z');

	CPU_D_I <= D when ROM_nCS = '0' or RAM_nCS = '0' else x"FF";

	clocking : process
	begin
		while not stop_the_clock loop
			clk <= '0', '1' after clock_period / 2;
			wait for clock_period;
		end loop;
		wait;
	end process;

end;
