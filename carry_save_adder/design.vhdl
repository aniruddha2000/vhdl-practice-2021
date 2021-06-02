library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity csa is
Port(x : in STD_LOGIC_VECTOR (3 downto 0);
y : in STD_LOGIC_VECTOR (3 downto 0);
z : in STD_LOGIC_VECTOR (3 downto 0);
sb : inout STD_LOGIC_VECTOR (4 downto 0);
c : inout STD_LOGIC_VECTOR (4 downto 0);
sum : out STD_LOGIC_VECTOR (4 downto 0);
cin : in STD_LOGIC;
cout : out STD_LOGIC);
end csa;

architecture rtl of csa is

signal cs: STD_LOGIC_VECTOR(5 downto 0);

begin
process(x,y,z,sb,c,cs)
variable i : integer;
begin
sb(4) <= '0';
c(0) <= '0';

for i in 0 to 3 loop
sb(i) <= x(i) xor y(i) xor z(i);
c(i+1) <= (x(i) and y(i)) or (x(i) and z(i)) or (y(i) and z(i));
end loop;
cs(0) <= cin;

for i in 0 to 4 loop
sum(i) <= sb(i) xor c(i) xor cs(i);
cs(i+1) <= (sb(i) and c(i)) or (sb(i) and cs(i)) or (c(i) and cs(i));
end loop;
cout <= cs(5);

end process;
end rtl;
