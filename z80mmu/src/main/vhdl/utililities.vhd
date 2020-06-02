library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_textio.all;

library std;
use std.textio.all;                     -- basic I/O

package utilities is
	subtype byte is std_logic_vector(7 downto 0);

	type sseg is array (natural range <>) of byte;

	type natural_array is array (natural range <>) of integer range 0 to 255;

	function mult_ceil(m, n : integer) return integer;

	function nibble_upper(data : in std_logic_vector) return integer;

	function MAX(LEFT, RIGHT : INTEGER) return INTEGER;

	function maximum(a : natural_array) return integer;

	function to_hex(a : std_logic_vector) return string;

	procedure assert_equal(actual, expected : in std_logic_vector);

end utilities;

package body utilities is

	-- Returns the next highest multiple of n
	function mult_ceil(m, n : integer) return integer is
	begin
		return ((m + n - 1) / n) * n;
	end function;

	function nibble_upper(data : in std_logic_vector) return integer is
	begin
		return max(data'length / 4 - 1, 0);
	end function;

	function max(LEFT, RIGHT : INTEGER) return INTEGER is
	begin
		if LEFT > RIGHT then
			return LEFT;
		else
			return RIGHT;
		end if;
	end function;

	function maximum(a : natural_array) return integer is
		variable highest : integer;
	begin
		highest := a(0);
		for i in 1 to a'high loop
			if (highest < a(i)) then
				highest := a(i);
			end if;
		end loop;
		return highest;
	end function;

	function to_binary(a : std_logic_vector) return string is
		variable b    : string(1 to a'length) := (others => NUL);
		variable stri : integer               := 1;
	begin
		for i in a'range loop
			b(stri) := std_logic'image(a((i)))(2);
			stri    := stri + 1;
		end loop;
		return b;
	end function;

	function to_hex(a : std_logic_vector) return string is
		variable L : line;
	begin
		hwrite(L, a);
		return L.all;
	end function;

	procedure assert_equal(actual, expected : in std_logic_vector) is
	begin
		assert (actual = expected) report "Expected " & to_hex(expected) & " but was " & to_hex(actual) severity error;
	end procedure;

end utilities;
