--library IEEE;
--use IEEE.STD_LOGIC_1164.ALL;
--use ieee.std_logic_arith.all; 
--use ieee.std_logic_unsigned.all; 
--
--entity IOT is
-- Port ( 	clk 	: in  STD_LOGIC;     -----clock signal
--			txd 	: out  STD_LOGIC); -----transmitter data
--						
--end IOT;
--architecture Behavioral of IOT is
--------UART connections
--component WIFI 
--Port ( 	clk 	: in  STD_LOGIC;
--				txd 	: out  STD_LOGIC);
--end component;
--begin
--U1:WIFI port map(clk,txd);
--end Behavioral;
--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity IOT is
    Port (
        clk     : in  STD_LOGIC;  -- Clock signal
        btn     : in  STD_LOGIC;  -- Button input
		  LED     : out STD_LOGIC;
        txd     : out STD_LOGIC   -- UART transmitter data
    );
end IOT;

architecture Behavioral of IOT is
    signal gated_clk : STD_LOGIC;  -- Modified clock signal

    -- UART component
    component WIFI
        Port (
            clk : in  STD_LOGIC;
            txd : out STD_LOGIC
        );
    end component;

begin
    -- Generate clock only when button is pressed
    gated_clk <= clk when btn = '1' else '0';
	 LED <= btn;
    -- Instantiate UART module with gated clock
    U1: WIFI port map (gated_clk, txd);
end Behavioral;
