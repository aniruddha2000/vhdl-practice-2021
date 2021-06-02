library IEEE;
use IEEE.std_logic_1164.all;

entity xor_gate is
port(
  a,b: in std_logic;
  c: out std_logic);
end xor_gate;

architecture rtl of xor_gate is
begin
  c <= (a and (not b)) or ((not a) and b);
end rtl;
