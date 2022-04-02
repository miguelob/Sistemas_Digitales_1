 library ieee;
 use ieee.std_logic_1164.all;
 use ieee.numeric_std.all;
entity ALU5Bits_vhd_tst is
end ALU5Bits_vhd_tst;
architecture ALU5Bits_arch of ALU5Bits_vhd_tst is
-- constants
-- signals
 signal a : std_logic_vector(4 downto 0);
 signal b : std_logic_vector(4 downto 0);
 signal ov : std_logic;
 signal s : std_logic_vector(4 downto 0);
 signal sel : std_logic_vector(2 downto 0);
component ALU5Bits
port (
 a : in std_logic_vector(4 downto 0);
 b : in std_logic_vector(4 downto 0);
 ov : out std_logic;
 s : out std_logic_vector(4 downto 0);
 sel : in std_logic_vector(2 downto 0));
end component;
begin
i1 : ALU5Bits
port map (
-- list connections between master ports and signals
 a => a,
 b => b,
 ov => ov,
 s => s,
 sel => sel);
init : process
-- variable declarations
begin
-- code that executes only once
wait;
end process init;
always : process
-- optional sensitivity list
-- ( )
-- variable declarations
begin
-- code executes for every event on sensitivity list
for k in 0 to 7 loop
 sel <= std_logic_vector(to_unsigned(k, 3));
 for i in -16 to 15 loop
 a <= std_logic_vector(to_signed(i, 5));
 for j in -16 to 15 loop
 b <= std_logic_vector(to_signed(j, 5));
 wait for 100 ns;
 if sel = "000" then
 assert s = (a and b)
 report "Error en el AND" severity failure;
 end if;
 if sel = "001" then
 assert s = (a or b)
 report "Error en la OR" severity failure;
 end if;
 if sel = "010" then
 assert s = (a xor b)
 report "Error en la XOR" severity failure;
 end if;
 if sel = "011" then
 assert s = not(a)
 report "Error en la NOT" severity failure;
 end if;
 if sel = "100" then
 if (i+j > 15) or (i+j < -16) then
 assert ov = '1'
 report "Error en el overflow de la suma"
 severity failure;
 else
 assert signed(s) = i+j
 report "Error en la suma"
 severity failure;
 end if;
 end if;
 if sel = "101" then
 if (i-j > 15) or (i-j < -16) then
 assert ov = '1'
 report "Error en el overflow de la resta"
 severity failure;
 else
 assert signed(s) = i-j
 report "Error en la resta"
 severity failure;
 end if;
 end if;
 if sel = "110" then
 if (i+1 > 15) or (i+1 < -16) then
 assert ov = '1'
 report "Error en el overflow del incremento"
 severity failure;
 else
 assert signed(s) = i+1 report "Error en el incremento"
 severity failure;
 end if;
 end if;
 if sel = "111" then
 if (i*j > 15) or (i*j < -16) then
 assert ov = '1'
 report "Error en el overflow de la multiplicación"
 severity failure;
 else
 assert signed(s) = i*j
 report "Error en la multiplicación"
 severity failure;
 end if;
 end if;
 end loop;
 end loop;
end loop;
wait;
end process always;
end ALU5Bits_arch;