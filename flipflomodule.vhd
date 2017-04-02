----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:40:32 03/28/2017 
-- Design Name: 
-- Module Name:    flipflomodule - arqflipflomodule 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity flipflomodule is
    Port ( D : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           DONT : out  STD_LOGIC);
end flipflomodule;

architecture arqflipflomodule of flipflomodule is

begin
		
process (CLK)	--activa el flipflop en ambos flancos
begin
   if CLK'event and CLK='1' then  --Activa el flipflop en el flanco de subida
      if RST='1' then   
         DONT <= '0';
      else
         DONT <= D;
      end if;
   end if;
end process;
 

						
end arqflipflomodule;

