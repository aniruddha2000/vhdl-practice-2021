library ieee;
use ieee.std_logic_1164.all;

entity mux_tb is
end entity;

architecture tb of mux_tb is
component MUX_SOURCE is
Port ( S : in STD_LOGIC_VECTOR (1 downto 0);
I : in STD_LOGIC_VECTOR (3 downto 0);
Y : out STD_LOGIC);
end component;

signal S : STD_LOGIC_VECTOR(1 downto 0);
signal I : STD_LOGIC_VECTOR(3 downto 0);
signal Y : STD_LOGIC;

begin
uut : MUX_SOURCE port map(
S => S,
I => I,
Y => Y);

stim : process
begin

I(0) <= '0';
I(1) <= '1';
I(2) <= '0';
I(3) <= '1';

S <= "00";wait for 10 ns;
S <= "01";wait for 10 ns;
S <= "10";wait for 10 ns;
S <= "11";wait for 10 ns;
wait;
end process;
end tb;
