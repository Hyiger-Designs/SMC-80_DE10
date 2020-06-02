library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.utilities.all;

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
	signal SSEG_nENA : std_logic;
	
	    -- system reset signals
    signal power_on_reset       : std_logic_vector(1 downto 0) := (others => '1');
    signal system_reset         : std_logic;
	 signal reset_pb_clk1    : std_logic;
    signal reset_pb_sync    : std_logic;
begin

	process(CLK_OUT)
	begin
		if rising_edge(CLK_OUT) then
            reset_pb_clk1 <= not reset_pb;
            reset_pb_sync <= reset_pb_clk1;
			-- reset the system when requested
			if (power_on_reset(0) = '1' or reset_pb_sync = '1') then
				system_reset <= '0';
			else
				system_reset <= '1';
			end if;

			-- shift 0s into the power_on_reset shift register from the MSB
			power_on_reset <= '0' & power_on_reset(power_on_reset'length - 1 downto 1);

		end if;
	end process;

	 
	stepper : ENTITY work.single_step
		PORT MAP(
			clk     => CLK_OUT,
			reset   => not system_reset,
			step_pb => step_pb,
			nM1     => nM1,
			mode_sw => mode_sw,
			nWait   => nWAIT
		);

	
	display_data <= A & D;

	SSEG_nENA <= nIORQ or nWR or not nMREQ;
	
	-- Use 6 sseg displays with the decimal point on display 2 (3rd from right)
	display_0 : entity work.display_bytes
		generic map(DP_LOC => (0 => 2))
		port map(
			clk    => CLK_OUT,
			nEna	 => SSEG_nEna,
			nReset => system_reset,
			data   => display_data,
			disp   => DISP
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
			clk	=> CLK_OUT,
			nRST     => system_reset,
			A        => A(7 downto 0),
			Ah       => A(15 downto 14),
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
			clk    => CLK_OUT,
			nRESET => system_reset,
			nENA   => LED_nCS,
			D      => D,
			Q      => LED
		);

	nRESET <= system_reset;

end;
