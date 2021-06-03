library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity FULLADDER_BEHAVIORAL_SOURCE is
Port ( A : in  STD_LOGIC_VECTOR (2 downto 0);
       O : out  STD_LOGIC_VECTOR (1 downto 0));
end FULLADDER_BEHAVIORAL_SOURCE;

architecture Behavioral of FULLADDER_BEHAVIORAL_SOURCE is

begin
process (A)
begin

---for SUM
if (A = "001" or A = "010" or A = "100" or A = "111") then
O(1) <= '1';
---single inverted commas used for assigning to one bit
else
O(1) <= '0';
end if;

---for CARRY
if (A = "011" or A = "101" or A = "110" or A = "111") then
O(0) <= '1';
else
O(0) <= '0';
end if;

end process;
end Behavioral;
