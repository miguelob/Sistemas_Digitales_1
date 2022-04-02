library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity Multiplicador5Bits_vhd_tst is
end Multiplicador5Bits_vhd_tst;
architecture Multiplicador5Bits_arch of Multiplicador5Bits_vhd_tst is
-- signals
signal a : std_logic_vector(4 downto 0);
signal b : std_logic_vector(4 downto 0);
signal p : std_logic_vector(9 downto 0);
component Multiplicador5Bits
port (
 a : in std_logic_vector(4 downto 0);
 b : in std_logic_vector(4 downto 0);
 p : out std_logic_vector(9 downto 0));
end component;
begin
 i1 : Multiplicador5Bits
 port map (
 a => a,
 b => b,
 p => p
 );
 init : process
 begin -- code that executes only once
 wait;
 end process init;
 always : process
 begin
 for i in 0 to 31 loop
 a <= std_logic_vector(to_unsigned(i, 5));
 for j in 0 to 31 loop
 b <= std_logic_vector(to_unsigned(j, 5));
 wait for 100 ns;
 assert unsigned(p) = i*j
 report "Fallo en la multiplicacion."
severity failure;
 end loop;
 end loop;
 report "Simulacion realizada con exito.";
 wait;
 end process always;
end Multiplicador5Bits_arch;