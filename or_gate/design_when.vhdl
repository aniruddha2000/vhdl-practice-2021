library IEEE;
use IEEE.std_logic_1164.all;

entity or_gate is
port(
  a,b: in std_logic;
  c: out std_logic);
end or_gate;

architecture rtl of or_gate is
begin
  c <= '0' when a = '0' and b = '0' else
       '1' when a = '0' and b = '1' else
       '1' when a = '1' and b = '0' else
       '1' when a = '1' and b = '1' else
       'Z'
end rtl;
