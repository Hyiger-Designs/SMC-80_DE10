library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

package user_types is
	subtype byte is std_logic_vector(7 downto 0);
	type sseg is array (natural range <>) of byte;

	function mult_ceil(m, n : integer) return integer;

	function nibble_upper(data : in std_logic_vector) return integer;

	function MAX(LEFT, RIGHT : INTEGER) return INTEGER;

end user_types;

package body user_types is

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

end user_types;
