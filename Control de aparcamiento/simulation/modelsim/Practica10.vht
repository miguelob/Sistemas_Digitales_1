LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY ControlAparcamiento_vhd_tst IS
END ControlAparcamiento_vhd_tst;
ARCHITECTURE ControlAparcamiento_arch OF ControlAparcamiento_vhd_tst
IS
-- constants
-- signals
SIGNAL clk : STD_LOGIC:='0';
SIGNAL entra_coche : STD_LOGIC;
SIGNAL libre : STD_LOGIC;
SIGNAL max_coches : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL num_coches : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL ocupado : STD_LOGIC;
SIGNAL reset_n : STD_LOGIC;
SIGNAL sale_coche : STD_LOGIC;
COMPONENT ControlAparcamiento
PORT (
 clk : IN STD_LOGIC;
 entra_coche : IN STD_LOGIC;
 libre : OUT STD_LOGIC;
 max_coches : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
 num_coches : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
 ocupado : OUT STD_LOGIC;
 reset_n : IN STD_LOGIC;
 sale_coche : IN STD_LOGIC);
END COMPONENT;
BEGIN
i1 : ControlAparcamiento
PORT MAP (
 -- list connections between master ports and signals
 clk => clk,
 entra_coche => entra_coche,
 libre => libre,
 max_coches => max_coches,
 num_coches => num_coches,
 ocupado => ocupado,
 reset_n => reset_n,
 sale_coche => sale_coche);
init : PROCESS
-- variable declarations
BEGIN
-- code that executes only once
WAIT;
END PROCESS init;
clk <= not clk after 50 ns;
always : PROCESS
BEGIN
 reset_n <= '0';
 entra_coche <= '0';
 sale_coche <= '0';
 max_coches <= X"07";
 wait for 160 ns;
 reset_n <= '1';
 wait for 100 ns;
 for n in 0 to 8 loop
 entra_coche <= '1';
 wait for 500 ns;
 entra_coche <= '0';
 wait for 600 ns;
 end loop;
 assert num_coches = max_coches
 report "Error el contador no satura"
 severity failure;
 assert ocupado <= '1'
 report "Error, la salida ocupado no funciona"
 severity failure;
 for n in 0 to 3 loop
 sale_coche <= '1';
 wait for 500 ns;
 sale_coche <= '0';
 wait for 600 ns;
 end loop;
 wait for 100 ns;
 assert num_coches = X"03"
 report "Error: el contador cuenta mal hacia abajo"
 severity failure;
 assert ocupado <= '0'
 report "Error, la salida libre no funciona"
 severity failure;
 wait for 100 ns;
 assert false
 report "Fin de la simulacion"
 severity failure;
 WAIT;
END PROCESS always;
END ControlAparcamiento_arch;