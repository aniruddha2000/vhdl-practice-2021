library IEEE;
use IEEE.std_logic_1164.all;

entity nand_gate is
port(
  a,b: in std_logic;
  c: out std_logic);
end nand_gate;

architecture rtl of nand_gate is
begin
  c <= '1' when a = '0' and b = '0' else
       '1' when a = '0' and b = '1' else
       '1' when a = '1' and b = '0' else
       '0' when a = '1' and b = '1' else
       'Z';
end rtl;
