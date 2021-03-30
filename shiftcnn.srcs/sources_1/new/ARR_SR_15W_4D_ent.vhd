----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/30/2021 09:34:25 AM
-- Design Name: 
-- Module Name: ARR_SR_15W_4D_ent - Behavioral
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

package input_buffer_type is
type inputBuffer is array( 14 downto 0) of std_logic_vector (7 downto 0);
end package input_buffer_type;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

package output_buffer_type is
type outputBuffer is array( 14 downto 0) of std_logic_vector (7 downto 0);
end package output_buffer_type;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use work.input_buffer_type.all;
use work.output_buffer_type.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ARR_SR_15W_4D_ent is
 port(
        clk : in std_logic;
        inputs: in inputBuffer;
        outputs1, outputs2, outputs3, outputs4: out outputBuffer
    );
end ARR_SR_15W_4D_ent;

architecture Behavioral of ARR_SR_15W_4D_ent is

    COMPONENT SR_8W_4D_ent
    PORT(
        clk : in std_logic;
        sr_in : in std_logic_vector( 7 downto 0);
        sr_out : out std_logic_vector(7 downto 0);
        sr_out2 : out std_logic_vector(7 downto 0);
        sr_out3 : out std_logic_vector(7 downto 0);
        sr_out4 : out std_logic_vector(7 downto 0)
    );
    END COMPONENT;

begin

sr_0: SR_8W_4D_ent port map (clk => clk, sr_in => inputs(0), sr_out => outputs1(0), sr_out2 => outputs2(0), sr_out3 => outputs3(0), sr_out4 => outputs4(0));
sr_1: SR_8W_4D_ent port map (clk => clk, sr_in => inputs(1), sr_out => outputs1(1), sr_out2 => outputs2(1), sr_out3 => outputs3(1), sr_out4 => outputs4(1));
sr_2: SR_8W_4D_ent port map (clk => clk, sr_in => inputs(2), sr_out => outputs1(2), sr_out2 => outputs2(2), sr_out3 => outputs3(2), sr_out4 => outputs4(2));
sr_3: SR_8W_4D_ent port map (clk => clk, sr_in => inputs(3), sr_out => outputs1(3), sr_out2 => outputs2(3), sr_out3 => outputs3(3), sr_out4 => outputs4(3));
sr_4: SR_8W_4D_ent port map (clk => clk, sr_in => inputs(4), sr_out => outputs1(4), sr_out2 => outputs2(4), sr_out3 => outputs3(4), sr_out4 => outputs4(4));
sr_5: SR_8W_4D_ent port map (clk => clk, sr_in => inputs(5), sr_out => outputs1(5), sr_out2 => outputs2(5), sr_out3 => outputs3(5), sr_out4 => outputs4(5));
sr_6: SR_8W_4D_ent port map (clk => clk, sr_in => inputs(6), sr_out => outputs1(6), sr_out2 => outputs2(6), sr_out3 => outputs3(6), sr_out4 => outputs4(6));
sr_7: SR_8W_4D_ent port map (clk => clk, sr_in => inputs(7), sr_out => outputs1(7), sr_out2 => outputs2(7), sr_out3 => outputs3(7), sr_out4 => outputs4(7));
sr_8: SR_8W_4D_ent port map (clk => clk, sr_in => inputs(8), sr_out => outputs1(8), sr_out2 => outputs2(8), sr_out3 => outputs3(8), sr_out4 => outputs4(8));
sr_9: SR_8W_4D_ent port map (clk => clk, sr_in => inputs(9), sr_out => outputs1(9), sr_out2 => outputs2(9), sr_out3 => outputs3(9), sr_out4 => outputs4(9));
sr_10: SR_8W_4D_ent port map (clk => clk, sr_in => inputs(10), sr_out => outputs1(10), sr_out2 => outputs2(10), sr_out3 => outputs3(10), sr_out4 => outputs4(10));
sr_11: SR_8W_4D_ent port map (clk => clk, sr_in => inputs(11), sr_out => outputs1(11), sr_out2 => outputs2(11), sr_out3 => outputs3(11), sr_out4 => outputs4(11));
sr_12: SR_8W_4D_ent port map (clk => clk, sr_in => inputs(12), sr_out => outputs1(12), sr_out2 => outputs2(12), sr_out3 => outputs3(12), sr_out4 => outputs4(12));
sr_13: SR_8W_4D_ent port map (clk => clk, sr_in => inputs(13), sr_out => outputs1(13), sr_out2 => outputs2(13), sr_out3 => outputs3(13), sr_out4 => outputs4(13));
sr_14: SR_8W_4D_ent port map (clk => clk, sr_in => inputs(14), sr_out => outputs1(14), sr_out2 => outputs2(14), sr_out3 => outputs3(14), sr_out4 => outputs4(14));


end Behavioral;
