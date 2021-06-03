library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity FullAdder_tb is
end entity;

architecture tb of FullAdder_tb is
component FULLADDER_BEHAVIORAL_SOURCE is
Port ( A : in STD_LOGIC_VECTOR (2 downto 0);
O : out STD_LOGIC_VECTOR (1 downto 0));
end component;

signal A : STD_LOGIC_VECTOR(2 downto 0);
signal O : STD_LOGIC_VECTOR(1 downto 0);

begin

uut: FULLADDER_BEHAVIORAL_SOURCE port map(
A => A, O => O);

stim: process
begin

A <= "000";
wait for 20 ns;

A <= "001";
wait for 20 ns;

A <= "010";
wait for 20 ns;

A <= "011";
wait for 20 ns;

A <= "100";
wait for 20 ns;

A <= "101";
wait for 20 ns;

A <= "110";
wait for 20 ns;

A <= "111";
wait for 20 ns;

wait;

end process;
end tb;
