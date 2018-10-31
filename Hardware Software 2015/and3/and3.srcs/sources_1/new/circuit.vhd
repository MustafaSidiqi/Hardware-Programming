----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.09.2016 15:18:33
-- Design Name: 
-- Module Name: circuit - Behavioral
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

entity circuit is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           o : out STD_LOGIC);
end circuit;

architecture Behavioral of circuit is

component and3 is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           o : out STD_LOGIC);
end component and3;

component not1 is
    Port ( a : in STD_LOGIC;
           o : out STD_LOGIC);
end component not1;

component or2 is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           o : out STD_LOGIC);
end component or2;

signal t: std_logic;
signal t2: std_logic;
signal n1: std_logic;
signal n2: std_logic;
signal n3: std_logic;

begin

    or2_inst1: component or2
    Port map(
    a => t,
    b => t2,
    o => o);

    and3_inst1: component and3
    Port map(
    a => a,
    b => b,
    c => c,
    o => t);
    
    and3_inst2: component and3
    Port map(
    a => n1,
    b => n2,
    c => n3,
    o => t2); 
    
    not1_inst1: component not1
    Port map(
    a => a,
    o => n1);
    
    not1_inst2: component not1
    Port map(
    a => b,
    o => n2);
        
    not1_inst3: component not1
    Port map(
    a => c,
    o => n3);  

end Behavioral;
