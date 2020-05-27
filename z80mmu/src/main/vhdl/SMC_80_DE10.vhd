library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.user_types.all;

entity SMC_80_DE10 is
	generic(
		DEBUG : boolean := false
	);
	port(
		-- DE10 Board Clock 50 mhz
		clk      : in  std_logic;       -- 

		-- SMC-80 Board
		A        : in  std_logic_vector(15 downto 0);
		D        : in  std_logic_vector(7 downto 0);
		nM1      : in  std_logic;
		nHalt    : in  std_logic;
		nRD      : in  std_logic;
		nWR      : in  std_logic;
		nMREQ    : in  std_logic;
		nIORQ    : in  std_logic;
		MA       : out std_logic_vector(18 downto 14);
		CPU_Clk  : out std_logic;
		UART_Clk : out std_logic;
		nRESET   : out std_logic;
		RAM_nCE  : out std_logic;
		ROM_nCE  : out std_logic;
		SIO_nCE  : out std_logic;
		nWAIT    : out std_logic;
		CnD      : out std_logic;
		BnA      : out std_logic;
		-- DE10-Lite Board
		reset_pb : in  std_logic;
		step_pb  : in  std_logic;
		mode_sw  : in  std_logic;
		page_led : out std_logic;
		LED      : out std_logic_vector(7 downto 0);
		DISP     : out sseg(0 to 5)
	);
end SMC_80_DE10;

architecture struct of SMC_80_DE10 is

	signal LED_nCS      : std_logic;
	signal CLK_OUT      : std_logic;
	signal IO_nRD       : std_logic;
	signal IO_nWR       : std_logic;
	signal RAM_CS       : std_logic;
	signal Q            : std_logic_vector(7 downto 0);
	signal display_data : std_logic_vector(23 downto 0);
begin

	stepper : ENTITY work.single_step
		PORT MAP(
			clk     => clk,
			reset   => not reset_pb,
			step_pb => step_pb,
			nM1     => nM1,
			mode_sw => mode_sw,
			nWait   => nWAIT
		);

	-- Display address and data lines on seven seg display
	display_data <= A & D;

	-- Use 6 sseg displays with the decimal point on the 3rd display 
	display_0 : entity work.display_bytes
		generic map(DP_POS => 3)
		port map(
			clk    => clk,
			nReset => reset_pb,
			data   => display_data,
			DISP   => DISP
		);

	slow_clk : if (DEBUG) generate
		clock_inst : entity work.fracn_10
			port map(
				clock     => clk,
				output_50 => CLK_OUT
			);
	end generate;

	fast_clk : if (not DEBUG) generate
		clock_inst : entity work.fracn_73728
			port map(
				clock     => clk,
				output_50 => CLK_OUT
			);
	end generate;

	CPU_Clk  <= CLK_OUT;
	UART_Clk <= CLK_OUT;

	-- Implement 16K page memory model
	mmu : entity work.Z80_MMU
		port map(
			nRST     => reset_pb,
			A        => A(7 downto 0),
			Ah       => A(15 downto 14),
			D        => D,
			nIORQ    => nIORQ,
			nM1      => nM1,
			nMREQ    => nMREQ,
			nWR      => nWR,
			nROM_CE  => ROM_nCE,
			nRAM_CE  => RAM_nCE,
			MA       => MA,
			page_led => page_led
		);

	IO_nRD <= nRD or nIORQ;
	IO_nWR <= nWR or nIORQ;

	-- Select Serial Channel A - 2 Bytes $80-$81
	SIO_nCE <= '0' when A(7 downto 1) = "1000000" and (IO_nWR = '0' or IO_nRD = '0') else '1';

	-- Emulate the RC2014
	BnA <= A(1);
	CnD <= not A(0);

	-- Write to LED's at port 0
	LED_nCS <= '0' when IO_nWR = '0' and A(7 downto 0) = x"00" else '1';

	leds : entity work.gen_register
		port map(
			clk    => clk,
			nRESET => reset_pb,
			nENA   => LED_nCS,
			D      => D,
			Q      => LED
		);

	nRESET <= reset_pb;

end;
