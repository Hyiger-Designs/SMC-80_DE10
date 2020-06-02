library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- A generic asynchronous dual port RAM with write enable
entity reg_file is
	port(
		clk     : in  std_logic;
		nRST    : in  std_logic;
		nWR_Ena : in  std_logic;
		RA      : in  std_logic_vector;
		WA      : in  std_logic_vector;
		D       : in  std_logic_vector;
		Q       : out std_logic_vector
	);
end reg_file;

architecture arch of reg_file is

	constant SIZE : integer := (2**RA'length) - 1;

	subtype word is std_logic_vector(D'range);
	type RegisterEntry is array (0 to SIZE) of word;

	function init return RegisterEntry is
	begin
		return (others => (others => '0'));
	end function;

	signal mem : RegisterEntry := init;

begin

	process(clk, nRST)
	begin
		if (nRST = '0') then
			mem <= init;
		elsif rising_edge(clk) then
			if (nWR_Ena = '0') then
				mem(to_integer(unsigned(WA))) <= D;
			end if;
		end if;

	end process;

	Q <= mem(to_integer(unsigned(RA)));
end arch;
