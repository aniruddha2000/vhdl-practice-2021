library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity testbench is
--empty
end testbench;

architecture tb of testbench is

component csa is
Port(x : in STD_LOGIC_VECTOR (3 downto 0);
y : in STD_LOGIC_VECTOR (3 downto 0);
z : in STD_LOGIC_VECTOR (3 downto 0);
sb : inout STD_LOGIC_VECTOR (4 downto 0);
c : inout STD_LOGIC_VECTOR (4 downto 0);
sum : out STD_LOGIC_VECTOR (4 downto 0);
cin : in STD_LOGIC;
cout : out STD_LOGIC);
end component;

signal X: STD_LOGIC_VECTOR(3 downto 0);
signal Y: STD_LOGIC_VECTOR(3 downto 0);
signal Z: STD_LOGIC_VECTOR(3 downto 0);
signal SB: STD_LOGIC_VECTOR(4 downto 0);
signal C: STD_LOGIC_VECTOR(4 downto 0);
signal Cin: STD_LOGIC;
signal Sum: STD_LOGIC_VECTOR(4 downto 0);
signal Cout: STD_LOGIC;

begin
DUT: csa port map(X,Y,Z,SB,C,Sum,Cin,Cout);

process
begin

X <= "0110";
Y <= "1100";
Z <= "0001";
Cin <= '1';
wait for 1 ns;

X <= "1110";
Y <= "1100";
Z <= "0011";
Cin <= '1';
wait for 1 ns;

--clear inputs
X <= "0000";
Y <= "0000";
Z <= "0000";
Cin <= '0';
wait;
end process;
end tb;
