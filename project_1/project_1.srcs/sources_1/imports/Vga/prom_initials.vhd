
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity prom_initials is
    port(
        address : in std_logic_vector(3 downto 0);
        row : out std_logic_vector(0 to 30)
    );
end prom_initials;

architecture Behavioral of prom_initials is
    type rom_array is array (NATURAL range<>) of std_logic_vector(0 to 30);
    constant rom : rom_array := (
        "1111111110111111111101000000000",
        "1000000000100000000101000000000",
        "1000000000100000000101000000000",
        "1000000000100000000101000000000",
        "1000000000100000000101000000000",
        "1000000000100000000101000000000",
        "1000000000100000000101000000000",
        "1111110000111111111101000000000",
        "1000000000100000000001000000000",
        "1000000000100000000001000000000",
        "1000000000100000000001000000000",
        "1000000000100000000001000000000",
        "1000000000100000000001000000000",
        "1000000000100000000001000000000",
        "1111111110110000000001111111111",
        "0000000000000000000000000000000"
    );
begin
    process(address)
        variable a : integer;
    begin
        a := to_integer(unsigned(address));
        row <= rom(a);
    end process;
end Behavioral;