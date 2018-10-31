----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.09.2016 14:19:49
-- Design Name: 
-- Module Name: and3 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity and3 is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           o : out STD_LOGIC);
end and3;

architecture Behavioral of and3 is

component and2 is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           o : out STD_LOGIC);
end component and2;

signal t: std_logic;

begin
    and2_inst1: component and2
    Port map(
    a => a,
    b => b,
    o => t);

and2_inst2: component and2
    Port map(
    a => t,
    b => c,
    o => o);
    
--o <= (not a and not b and not c) or (a and b and c);

end Behavioral;
