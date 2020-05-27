-- Simulate async memory that can be initialized from a binary file
-- defaults to 512K x 8 SRAM with separate enable signals

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity SRAM is
	generic(
		ADDR_WIDTH : integer := 19;
		DATA_WIDTH : integer := 8;
		FILE_NAME  : string  := ""
	);
	port(
		CE_n : in    std_logic;
		OE_n : in    std_logic;
		WE_n : in    std_logic;
		A    : in    std_logic_vector(ADDR_WIDTH - 1 downto 0);
		D    : inout std_logic_vector(DATA_WIDTH - 1 downto 0)
	);
end SRAM;

architecture behaviour of SRAM is

	-- Build a 2-D array type for the RAM
	subtype word_t is std_logic_vector((DATA_WIDTH - 1) downto 0);
	type memory_t is array (2**ADDR_WIDTH - 1 downto 0) of word_t;

	-- Initialize RAM with a binary file
	impure function init_ram(fileName : in String := "") return memory_t is
		use std.textio.all;
		type bin_file is file of character;
		file file_pointer    : bin_file;
		variable char_buffer : character;
		variable output      : memory_t := (others => (others => '0'));
		use ieee.numeric_std.all;
	begin
		if (fileName = "") then
			return output;
		end if;

		file_open(file_pointer, fileName, READ_MODE);
		for i in memory_t'reverse_range loop
			read(file_pointer, char_buffer);
			output(i) := std_logic_vector(to_unsigned(character'POS(char_buffer), 8));
		end loop;
		file_close(file_pointer);
		return output;
	end function;

	signal RAM : memory_t := init_ram(FILE_NAME);

	signal WR    : std_logic;
	signal D_del : std_logic_vector(7 downto 0);

begin

	WR    <= '1' when CE_n = '0' and WE_n = '0' else '0';
	D_del <= D after 1 ns;

	process(WR)
	begin
		if WR'event and WR = '0' then
			RAM(to_integer(unsigned(A))) <= D_del;
		end if;
	end process;

	D <= RAM(to_integer(unsigned(A))) when OE_n = '0' and CE_n = '0' and WE_n = '1' and not is_x(A) else (others => 'Z');

end;
