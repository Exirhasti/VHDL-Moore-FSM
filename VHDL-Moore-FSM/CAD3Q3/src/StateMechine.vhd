-------------------------------------------------------------------------------
--
-- Title       : FSM
-- Design      : CAD3Q3
-- Author      : exirhasti@yahoo.com
-- Company     : Guilan University
--
-------------------------------------------------------------------------------
--
-- File        : c:\Users\exirh\Desktop\Private\5th semester\Aminian\CAD3Q3\CAD3Q3\src\StateMechine.vhd
-- Generated   : Tue Dec  3 18:28:52 2024
-- From        : interface description file
-- By          : Itf2Vhdl ver. 1.22
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------

--{{ Section below this comment is automatically maintained
--   and may be overwritten
--{entity {FSM} architecture {Arch}}

library IEEE;
use IEEE.std_logic_1164.all;

entity FSM is
	port(
		 z : out STD_LOGIC_VECTOR (3 downto 0);
		 clk : in STD_LOGIC;
		 rst : in STD_LOGIC
	     );
end FSM;

--}} End of automatically maintained section

architecture Arch of FSM is	  

type myState is (s0, s1, s2, s3, s4, s5, s6);
signal P_S : myState;	

begin		
	process (clk, rst)
	begin
		if (rst = '1') then 
			P_S <= s0;
		elsif (clk'event and clk = '1') then
			case P_S is
				when s0 => P_S <= s1;
				when s1 => P_S <= s2;
				when s2 => P_S <= s3;
				when s3 => P_S <= s4;
				when s4 => P_S <= s5;
				when s5 => P_S <= s6;
				when s6 => P_S <= s0;
			end case;
		end if;
	end process;
	z <= 
		"0000" when (P_S = s0) else 
		"0011" when (P_S = s1) else
		"0111" when (P_S = s2) else
		"0111" when (P_S = s3) else
		"1011" when (P_S = s4) else
		"1011" when (P_S = s5) else
		"1111";	

	 -- enter your statements here --

end Arch;
