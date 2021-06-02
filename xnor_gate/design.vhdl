library IEEE;
use IEEE.std_logic_1164.all;

entity xnor_gate is
port(
  a,b: in std_logic;
  c: out std_logic);
end xnor_gate;

architecture rtl of xnor_gate is
begin
  c <= (a and b) or ((not a) and (not b))
end rtl;
