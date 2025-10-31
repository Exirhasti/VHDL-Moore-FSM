library ieee;
use ieee.std_logic_1164.all;

	-- Add your library and packages declaration here ...

entity fsm_tb is
end fsm_tb;

architecture TB_ARCHITECTURE of fsm_tb is
	-- Component declaration of the tested unit
	component fsm
	port(
		z : out STD_LOGIC_VECTOR(3 downto 0);
		clk : in STD_LOGIC ;
		rst : in STD_LOGIC );
	end component;

	-- Stimulus signals - signals mapped to the input and inout ports of tested entity
	signal clk : STD_LOGIC := '0';
	signal rst : STD_LOGIC := '0';
	-- Observed signals - signals mapped to the output ports of tested entity
	signal z : STD_LOGIC_VECTOR(3 downto 0);

	-- Add your code here ...
	constant clk_period : time := 10 ns;
begin

	-- Unit Under Test port map
	UUT : fsm
		port map (
			z => z,
			clk => clk,
			rst => rst
		);
		
		clk <= not clk after 10 ns;
		process
		begin
		rst <= '1';
		wait until rising_edge(clk);
		rst <= '0';
		wait until rising_edge(clk);
		wait until rising_edge(clk);
		wait until rising_edge(clk);
		wait until rising_edge(clk);
		wait until rising_edge(clk);
		rst <= '1';
        wait until rising_edge(clk);
		wait until rising_edge(clk);
		wait until rising_edge(clk);
        rst <= '0';
        wait until rising_edge(clk);
		wait until rising_edge(clk);
		wait until rising_edge(clk);
		wait until rising_edge(clk);
		wait until rising_edge(clk);
		wait until rising_edge(clk);
		wait until rising_edge(clk);
		wait until rising_edge(clk);
		wait until rising_edge(clk);
		wait;
		end process;
		
	-- Add your stimulus here ...

end TB_ARCHITECTURE;

configuration TESTBENCH_FOR_fsm of fsm_tb is
	for TB_ARCHITECTURE
		for UUT : fsm
			use entity work.fsm(arch);
		end for;
	end for;
end TESTBENCH_FOR_fsm;

