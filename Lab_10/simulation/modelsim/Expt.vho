-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "10/20/2022 15:02:52"

-- 
-- Device: Altera 10M25SAE144C8G Package EQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_16,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_18,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_19,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_129,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_136,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_138,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	clock_divider IS
    PORT (
	clk_out : BUFFER std_logic;
	L1 : BUFFER std_logic;
	L2 : BUFFER std_logic;
	L3 : BUFFER std_logic;
	L4 : BUFFER std_logic;
	L5 : BUFFER std_logic;
	L6 : BUFFER std_logic;
	L7 : BUFFER std_logic;
	L8 : BUFFER std_logic;
	clk_50 : IN std_logic;
	SW1 : IN std_logic;
	SW2 : IN std_logic;
	SW3 : IN std_logic;
	SW4 : IN std_logic;
	SW5 : IN std_logic;
	SW6 : IN std_logic;
	SW7 : IN std_logic;
	SW8 : IN std_logic
	);
END clock_divider;

-- Design Ports Information
-- clk_out	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L1	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L2	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L3	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L4	=>  Location: PIN_56,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L5	=>  Location: PIN_57,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L6	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L7	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L8	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW2	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW4	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW5	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW3	=>  Location: PIN_41,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW6	=>  Location: PIN_45,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW7	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW8	=>  Location: PIN_47,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW1	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_50	=>  Location: PIN_26,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF clock_divider IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_out : std_logic;
SIGNAL ww_L1 : std_logic;
SIGNAL ww_L2 : std_logic;
SIGNAL ww_L3 : std_logic;
SIGNAL ww_L4 : std_logic;
SIGNAL ww_L5 : std_logic;
SIGNAL ww_L6 : std_logic;
SIGNAL ww_L7 : std_logic;
SIGNAL ww_L8 : std_logic;
SIGNAL ww_clk_50 : std_logic;
SIGNAL ww_SW1 : std_logic;
SIGNAL ww_SW2 : std_logic;
SIGNAL ww_SW3 : std_logic;
SIGNAL ww_SW4 : std_logic;
SIGNAL ww_SW5 : std_logic;
SIGNAL ww_SW6 : std_logic;
SIGNAL ww_SW7 : std_logic;
SIGNAL ww_SW8 : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \clk_out~output_o\ : std_logic;
SIGNAL \L1~output_o\ : std_logic;
SIGNAL \L2~output_o\ : std_logic;
SIGNAL \L3~output_o\ : std_logic;
SIGNAL \L4~output_o\ : std_logic;
SIGNAL \L5~output_o\ : std_logic;
SIGNAL \L6~output_o\ : std_logic;
SIGNAL \L7~output_o\ : std_logic;
SIGNAL \L8~output_o\ : std_logic;
SIGNAL \SW1~input_o\ : std_logic;
SIGNAL \SW2~input_o\ : std_logic;
SIGNAL \clk_50~input_o\ : std_logic;
SIGNAL \clk_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \sa~1_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \sa~0_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \sa~2_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \sa~3_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \sa~4_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \sa~5_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \sa~6_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \sa~7_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \sa~8_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \sa~9_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \t1~0_combout\ : std_logic;
SIGNAL \t1~q\ : std_logic;
SIGNAL \SW3~input_o\ : std_logic;
SIGNAL \Add7~0_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \re~0_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \re~1_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \re~2_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \re~3_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \re~4_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \re~5_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \re~6_combout\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \re~7_combout\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \re~8_combout\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \Add1~33\ : std_logic;
SIGNAL \Add1~34_combout\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~38_combout\ : std_logic;
SIGNAL \Add1~39\ : std_logic;
SIGNAL \Add1~40_combout\ : std_logic;
SIGNAL \Add1~41\ : std_logic;
SIGNAL \Add1~42_combout\ : std_logic;
SIGNAL \Add1~43\ : std_logic;
SIGNAL \Add1~44_combout\ : std_logic;
SIGNAL \Add1~45\ : std_logic;
SIGNAL \Add1~46_combout\ : std_logic;
SIGNAL \Add1~47\ : std_logic;
SIGNAL \Add1~48_combout\ : std_logic;
SIGNAL \Add1~49\ : std_logic;
SIGNAL \Add1~50_combout\ : std_logic;
SIGNAL \Add1~51\ : std_logic;
SIGNAL \Add1~52_combout\ : std_logic;
SIGNAL \Equal1~8_combout\ : std_logic;
SIGNAL \Add1~53\ : std_logic;
SIGNAL \Add1~54_combout\ : std_logic;
SIGNAL \Add1~55\ : std_logic;
SIGNAL \Add1~56_combout\ : std_logic;
SIGNAL \Add1~57\ : std_logic;
SIGNAL \Add1~58_combout\ : std_logic;
SIGNAL \Add1~59\ : std_logic;
SIGNAL \Add1~60_combout\ : std_logic;
SIGNAL \Equal1~9_combout\ : std_logic;
SIGNAL \Equal1~6_combout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \Equal1~7_combout\ : std_logic;
SIGNAL \Equal1~10_combout\ : std_logic;
SIGNAL \t2~0_combout\ : std_logic;
SIGNAL \t2~q\ : std_logic;
SIGNAL \SW5~input_o\ : std_logic;
SIGNAL \SW4~input_o\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \ma~2_combout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \ma~0_combout\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \ma~1_combout\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \ma~3_combout\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \ma~4_combout\ : std_logic;
SIGNAL \Add3~15\ : std_logic;
SIGNAL \Add3~16_combout\ : std_logic;
SIGNAL \Add3~17\ : std_logic;
SIGNAL \Add3~18_combout\ : std_logic;
SIGNAL \Add3~19\ : std_logic;
SIGNAL \Add3~20_combout\ : std_logic;
SIGNAL \Add3~21\ : std_logic;
SIGNAL \Add3~22_combout\ : std_logic;
SIGNAL \ma~5_combout\ : std_logic;
SIGNAL \Add3~23\ : std_logic;
SIGNAL \Add3~24_combout\ : std_logic;
SIGNAL \ma~6_combout\ : std_logic;
SIGNAL \Add3~25\ : std_logic;
SIGNAL \Add3~26_combout\ : std_logic;
SIGNAL \Add3~27\ : std_logic;
SIGNAL \Add3~28_combout\ : std_logic;
SIGNAL \Add3~29\ : std_logic;
SIGNAL \Add3~30_combout\ : std_logic;
SIGNAL \ma~7_combout\ : std_logic;
SIGNAL \Add3~31\ : std_logic;
SIGNAL \Add3~32_combout\ : std_logic;
SIGNAL \Add3~33\ : std_logic;
SIGNAL \Add3~34_combout\ : std_logic;
SIGNAL \Add3~35\ : std_logic;
SIGNAL \Add3~36_combout\ : std_logic;
SIGNAL \Equal3~5_combout\ : std_logic;
SIGNAL \Add3~37\ : std_logic;
SIGNAL \Add3~38_combout\ : std_logic;
SIGNAL \Add3~39\ : std_logic;
SIGNAL \Add3~40_combout\ : std_logic;
SIGNAL \Add3~41\ : std_logic;
SIGNAL \Add3~42_combout\ : std_logic;
SIGNAL \Add3~43\ : std_logic;
SIGNAL \Add3~44_combout\ : std_logic;
SIGNAL \Equal3~6_combout\ : std_logic;
SIGNAL \Equal3~7_combout\ : std_logic;
SIGNAL \Add3~45\ : std_logic;
SIGNAL \Add3~46_combout\ : std_logic;
SIGNAL \Add3~47\ : std_logic;
SIGNAL \Add3~48_combout\ : std_logic;
SIGNAL \Add3~49\ : std_logic;
SIGNAL \Add3~50_combout\ : std_logic;
SIGNAL \Add3~51\ : std_logic;
SIGNAL \Add3~52_combout\ : std_logic;
SIGNAL \Equal3~8_combout\ : std_logic;
SIGNAL \Add3~53\ : std_logic;
SIGNAL \Add3~54_combout\ : std_logic;
SIGNAL \Add3~55\ : std_logic;
SIGNAL \Add3~56_combout\ : std_logic;
SIGNAL \Add3~57\ : std_logic;
SIGNAL \Add3~58_combout\ : std_logic;
SIGNAL \Add3~59\ : std_logic;
SIGNAL \Add3~60_combout\ : std_logic;
SIGNAL \Equal3~9_combout\ : std_logic;
SIGNAL \Equal3~3_combout\ : std_logic;
SIGNAL \Equal3~2_combout\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Equal3~4_combout\ : std_logic;
SIGNAL \Equal3~10_combout\ : std_logic;
SIGNAL \t4~0_combout\ : std_logic;
SIGNAL \t4~q\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \ga~1_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \ga~0_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \ga~2_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \ga~3_combout\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \ga~4_combout\ : std_logic;
SIGNAL \Add2~19\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \Add2~21\ : std_logic;
SIGNAL \Add2~22_combout\ : std_logic;
SIGNAL \Add2~23\ : std_logic;
SIGNAL \Add2~24_combout\ : std_logic;
SIGNAL \Add2~25\ : std_logic;
SIGNAL \Add2~26_combout\ : std_logic;
SIGNAL \ga~5_combout\ : std_logic;
SIGNAL \Add2~27\ : std_logic;
SIGNAL \Add2~28_combout\ : std_logic;
SIGNAL \Equal2~3_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal2~4_combout\ : std_logic;
SIGNAL \Add2~29\ : std_logic;
SIGNAL \Add2~30_combout\ : std_logic;
SIGNAL \ga~6_combout\ : std_logic;
SIGNAL \Add2~31\ : std_logic;
SIGNAL \Add2~32_combout\ : std_logic;
SIGNAL \Equal2~5_combout\ : std_logic;
SIGNAL \Add2~33\ : std_logic;
SIGNAL \Add2~34_combout\ : std_logic;
SIGNAL \Add2~35\ : std_logic;
SIGNAL \Add2~36_combout\ : std_logic;
SIGNAL \Add2~37\ : std_logic;
SIGNAL \Add2~38_combout\ : std_logic;
SIGNAL \Add2~39\ : std_logic;
SIGNAL \Add2~40_combout\ : std_logic;
SIGNAL \Add2~41\ : std_logic;
SIGNAL \Add2~42_combout\ : std_logic;
SIGNAL \Add2~43\ : std_logic;
SIGNAL \Add2~44_combout\ : std_logic;
SIGNAL \Equal2~6_combout\ : std_logic;
SIGNAL \Equal2~7_combout\ : std_logic;
SIGNAL \Add2~45\ : std_logic;
SIGNAL \Add2~46_combout\ : std_logic;
SIGNAL \Add2~47\ : std_logic;
SIGNAL \Add2~48_combout\ : std_logic;
SIGNAL \Add2~49\ : std_logic;
SIGNAL \Add2~50_combout\ : std_logic;
SIGNAL \Add2~51\ : std_logic;
SIGNAL \Add2~52_combout\ : std_logic;
SIGNAL \Add2~53\ : std_logic;
SIGNAL \Add2~54_combout\ : std_logic;
SIGNAL \Add2~55\ : std_logic;
SIGNAL \Add2~56_combout\ : std_logic;
SIGNAL \Add2~57\ : std_logic;
SIGNAL \Add2~58_combout\ : std_logic;
SIGNAL \Add2~59\ : std_logic;
SIGNAL \Add2~60_combout\ : std_logic;
SIGNAL \Equal2~9_combout\ : std_logic;
SIGNAL \Equal2~8_combout\ : std_logic;
SIGNAL \Equal2~10_combout\ : std_logic;
SIGNAL \t3~0_combout\ : std_logic;
SIGNAL \t3~q\ : std_logic;
SIGNAL \clk_out~0_combout\ : std_logic;
SIGNAL \clk_out~1_combout\ : std_logic;
SIGNAL \proc~0_combout\ : std_logic;
SIGNAL \SW6~input_o\ : std_logic;
SIGNAL \SW8~input_o\ : std_logic;
SIGNAL \SW7~input_o\ : std_logic;
SIGNAL \Add7~1\ : std_logic;
SIGNAL \Add7~2_combout\ : std_logic;
SIGNAL \Add7~3\ : std_logic;
SIGNAL \Add7~4_combout\ : std_logic;
SIGNAL \saa~0_combout\ : std_logic;
SIGNAL \Add7~5\ : std_logic;
SIGNAL \Add7~6_combout\ : std_logic;
SIGNAL \Add7~7\ : std_logic;
SIGNAL \Add7~8_combout\ : std_logic;
SIGNAL \saa~1_combout\ : std_logic;
SIGNAL \Add7~9\ : std_logic;
SIGNAL \Add7~10_combout\ : std_logic;
SIGNAL \saa~2_combout\ : std_logic;
SIGNAL \Add7~11\ : std_logic;
SIGNAL \Add7~12_combout\ : std_logic;
SIGNAL \saa~3_combout\ : std_logic;
SIGNAL \Add7~13\ : std_logic;
SIGNAL \Add7~14_combout\ : std_logic;
SIGNAL \Add7~15\ : std_logic;
SIGNAL \Add7~16_combout\ : std_logic;
SIGNAL \saa~4_combout\ : std_logic;
SIGNAL \Add7~17\ : std_logic;
SIGNAL \Add7~18_combout\ : std_logic;
SIGNAL \saa~5_combout\ : std_logic;
SIGNAL \Add7~19\ : std_logic;
SIGNAL \Add7~20_combout\ : std_logic;
SIGNAL \Add7~21\ : std_logic;
SIGNAL \Add7~22_combout\ : std_logic;
SIGNAL \saa~6_combout\ : std_logic;
SIGNAL \Equal7~2_combout\ : std_logic;
SIGNAL \Equal7~1_combout\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \Add7~23\ : std_logic;
SIGNAL \Add7~24_combout\ : std_logic;
SIGNAL \Add7~25\ : std_logic;
SIGNAL \Add7~26_combout\ : std_logic;
SIGNAL \Add7~27\ : std_logic;
SIGNAL \Add7~28_combout\ : std_logic;
SIGNAL \saa~7_combout\ : std_logic;
SIGNAL \Add7~29\ : std_logic;
SIGNAL \Add7~30_combout\ : std_logic;
SIGNAL \saa~8_combout\ : std_logic;
SIGNAL \Equal7~3_combout\ : std_logic;
SIGNAL \Equal7~4_combout\ : std_logic;
SIGNAL \Add7~31\ : std_logic;
SIGNAL \Add7~32_combout\ : std_logic;
SIGNAL \Add7~33\ : std_logic;
SIGNAL \Add7~34_combout\ : std_logic;
SIGNAL \Add7~35\ : std_logic;
SIGNAL \Add7~36_combout\ : std_logic;
SIGNAL \Add7~37\ : std_logic;
SIGNAL \Add7~38_combout\ : std_logic;
SIGNAL \Equal7~5_combout\ : std_logic;
SIGNAL \Add7~39\ : std_logic;
SIGNAL \Add7~40_combout\ : std_logic;
SIGNAL \Add7~41\ : std_logic;
SIGNAL \Add7~42_combout\ : std_logic;
SIGNAL \Add7~43\ : std_logic;
SIGNAL \Add7~44_combout\ : std_logic;
SIGNAL \Add7~45\ : std_logic;
SIGNAL \Add7~46_combout\ : std_logic;
SIGNAL \Equal7~6_combout\ : std_logic;
SIGNAL \Add7~47\ : std_logic;
SIGNAL \Add7~48_combout\ : std_logic;
SIGNAL \Add7~49\ : std_logic;
SIGNAL \Add7~50_combout\ : std_logic;
SIGNAL \Add7~51\ : std_logic;
SIGNAL \Add7~52_combout\ : std_logic;
SIGNAL \Add7~53\ : std_logic;
SIGNAL \Add7~54_combout\ : std_logic;
SIGNAL \Equal7~7_combout\ : std_logic;
SIGNAL \Add7~55\ : std_logic;
SIGNAL \Add7~56_combout\ : std_logic;
SIGNAL \Add7~57\ : std_logic;
SIGNAL \Add7~58_combout\ : std_logic;
SIGNAL \Add7~59\ : std_logic;
SIGNAL \Add7~60_combout\ : std_logic;
SIGNAL \Add7~61\ : std_logic;
SIGNAL \Add7~62_combout\ : std_logic;
SIGNAL \Equal7~8_combout\ : std_logic;
SIGNAL \Equal7~9_combout\ : std_logic;
SIGNAL \Equal7~10_combout\ : std_logic;
SIGNAL \t8~0_combout\ : std_logic;
SIGNAL \t8~q\ : std_logic;
SIGNAL \Add6~0_combout\ : std_logic;
SIGNAL \ni~1_combout\ : std_logic;
SIGNAL \Add6~1\ : std_logic;
SIGNAL \Add6~2_combout\ : std_logic;
SIGNAL \Add6~3\ : std_logic;
SIGNAL \Add6~4_combout\ : std_logic;
SIGNAL \ni~0_combout\ : std_logic;
SIGNAL \Add6~5\ : std_logic;
SIGNAL \Add6~6_combout\ : std_logic;
SIGNAL \Add6~7\ : std_logic;
SIGNAL \Add6~8_combout\ : std_logic;
SIGNAL \Add6~9\ : std_logic;
SIGNAL \Add6~10_combout\ : std_logic;
SIGNAL \Add6~11\ : std_logic;
SIGNAL \Add6~12_combout\ : std_logic;
SIGNAL \Add6~13\ : std_logic;
SIGNAL \Add6~14_combout\ : std_logic;
SIGNAL \Add6~15\ : std_logic;
SIGNAL \Add6~16_combout\ : std_logic;
SIGNAL \ni~2_combout\ : std_logic;
SIGNAL \Add6~17\ : std_logic;
SIGNAL \Add6~18_combout\ : std_logic;
SIGNAL \Add6~19\ : std_logic;
SIGNAL \Add6~20_combout\ : std_logic;
SIGNAL \Add6~21\ : std_logic;
SIGNAL \Add6~22_combout\ : std_logic;
SIGNAL \ni~3_combout\ : std_logic;
SIGNAL \Add6~23\ : std_logic;
SIGNAL \Add6~24_combout\ : std_logic;
SIGNAL \ni~4_combout\ : std_logic;
SIGNAL \Add6~25\ : std_logic;
SIGNAL \Add6~26_combout\ : std_logic;
SIGNAL \Add6~27\ : std_logic;
SIGNAL \Add6~28_combout\ : std_logic;
SIGNAL \ni~5_combout\ : std_logic;
SIGNAL \Add6~29\ : std_logic;
SIGNAL \Add6~30_combout\ : std_logic;
SIGNAL \ni~6_combout\ : std_logic;
SIGNAL \Add6~31\ : std_logic;
SIGNAL \Add6~32_combout\ : std_logic;
SIGNAL \Add6~33\ : std_logic;
SIGNAL \Add6~34_combout\ : std_logic;
SIGNAL \Add6~35\ : std_logic;
SIGNAL \Add6~36_combout\ : std_logic;
SIGNAL \Add6~37\ : std_logic;
SIGNAL \Add6~38_combout\ : std_logic;
SIGNAL \Add6~39\ : std_logic;
SIGNAL \Add6~40_combout\ : std_logic;
SIGNAL \Add6~41\ : std_logic;
SIGNAL \Add6~42_combout\ : std_logic;
SIGNAL \Add6~43\ : std_logic;
SIGNAL \Add6~44_combout\ : std_logic;
SIGNAL \Add6~45\ : std_logic;
SIGNAL \Add6~46_combout\ : std_logic;
SIGNAL \Add6~47\ : std_logic;
SIGNAL \Add6~48_combout\ : std_logic;
SIGNAL \Add6~49\ : std_logic;
SIGNAL \Add6~50_combout\ : std_logic;
SIGNAL \Add6~51\ : std_logic;
SIGNAL \Add6~52_combout\ : std_logic;
SIGNAL \Add6~53\ : std_logic;
SIGNAL \Add6~54_combout\ : std_logic;
SIGNAL \Add6~55\ : std_logic;
SIGNAL \Add6~56_combout\ : std_logic;
SIGNAL \Add6~57\ : std_logic;
SIGNAL \Add6~58_combout\ : std_logic;
SIGNAL \Add6~59\ : std_logic;
SIGNAL \Add6~60_combout\ : std_logic;
SIGNAL \Add6~61\ : std_logic;
SIGNAL \Add6~62_combout\ : std_logic;
SIGNAL \Equal6~9_combout\ : std_logic;
SIGNAL \Equal6~8_combout\ : std_logic;
SIGNAL \Equal6~1_combout\ : std_logic;
SIGNAL \Equal6~2_combout\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \Equal6~3_combout\ : std_logic;
SIGNAL \Equal6~4_combout\ : std_logic;
SIGNAL \Equal6~5_combout\ : std_logic;
SIGNAL \Equal6~6_combout\ : std_logic;
SIGNAL \Equal6~7_combout\ : std_logic;
SIGNAL \Equal6~10_combout\ : std_logic;
SIGNAL \t7~0_combout\ : std_logic;
SIGNAL \t7~q\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \dha~1_combout\ : std_logic;
SIGNAL \Add5~1\ : std_logic;
SIGNAL \Add5~2_combout\ : std_logic;
SIGNAL \Add5~3\ : std_logic;
SIGNAL \Add5~4_combout\ : std_logic;
SIGNAL \dha~0_combout\ : std_logic;
SIGNAL \Add5~5\ : std_logic;
SIGNAL \Add5~6_combout\ : std_logic;
SIGNAL \Add5~7\ : std_logic;
SIGNAL \Add5~8_combout\ : std_logic;
SIGNAL \Add5~9\ : std_logic;
SIGNAL \Add5~10_combout\ : std_logic;
SIGNAL \dha~2_combout\ : std_logic;
SIGNAL \Add5~11\ : std_logic;
SIGNAL \Add5~12_combout\ : std_logic;
SIGNAL \Add5~13\ : std_logic;
SIGNAL \Add5~14_combout\ : std_logic;
SIGNAL \Add5~15\ : std_logic;
SIGNAL \Add5~16_combout\ : std_logic;
SIGNAL \Add5~17\ : std_logic;
SIGNAL \Add5~18_combout\ : std_logic;
SIGNAL \Add5~19\ : std_logic;
SIGNAL \Add5~20_combout\ : std_logic;
SIGNAL \dha~3_combout\ : std_logic;
SIGNAL \Add5~21\ : std_logic;
SIGNAL \Add5~22_combout\ : std_logic;
SIGNAL \Add5~23\ : std_logic;
SIGNAL \Add5~24_combout\ : std_logic;
SIGNAL \dha~4_combout\ : std_logic;
SIGNAL \Add5~25\ : std_logic;
SIGNAL \Add5~26_combout\ : std_logic;
SIGNAL \dha~5_combout\ : std_logic;
SIGNAL \Add5~27\ : std_logic;
SIGNAL \Add5~28_combout\ : std_logic;
SIGNAL \dha~6_combout\ : std_logic;
SIGNAL \Add5~29\ : std_logic;
SIGNAL \Add5~30_combout\ : std_logic;
SIGNAL \dha~7_combout\ : std_logic;
SIGNAL \Add5~31\ : std_logic;
SIGNAL \Add5~32_combout\ : std_logic;
SIGNAL \Add5~33\ : std_logic;
SIGNAL \Add5~34_combout\ : std_logic;
SIGNAL \Add5~35\ : std_logic;
SIGNAL \Add5~36_combout\ : std_logic;
SIGNAL \Add5~37\ : std_logic;
SIGNAL \Add5~38_combout\ : std_logic;
SIGNAL \Add5~39\ : std_logic;
SIGNAL \Add5~40_combout\ : std_logic;
SIGNAL \Add5~41\ : std_logic;
SIGNAL \Add5~42_combout\ : std_logic;
SIGNAL \Add5~43\ : std_logic;
SIGNAL \Add5~44_combout\ : std_logic;
SIGNAL \Add5~45\ : std_logic;
SIGNAL \Add5~46_combout\ : std_logic;
SIGNAL \Add5~47\ : std_logic;
SIGNAL \Add5~48_combout\ : std_logic;
SIGNAL \Add5~49\ : std_logic;
SIGNAL \Add5~50_combout\ : std_logic;
SIGNAL \Add5~51\ : std_logic;
SIGNAL \Add5~52_combout\ : std_logic;
SIGNAL \Add5~53\ : std_logic;
SIGNAL \Add5~54_combout\ : std_logic;
SIGNAL \Equal5~8_combout\ : std_logic;
SIGNAL \Add5~55\ : std_logic;
SIGNAL \Add5~56_combout\ : std_logic;
SIGNAL \Add5~57\ : std_logic;
SIGNAL \Add5~58_combout\ : std_logic;
SIGNAL \Add5~59\ : std_logic;
SIGNAL \Add5~60_combout\ : std_logic;
SIGNAL \Add5~61\ : std_logic;
SIGNAL \Add5~62_combout\ : std_logic;
SIGNAL \Equal5~9_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \Equal5~2_combout\ : std_logic;
SIGNAL \Equal5~1_combout\ : std_logic;
SIGNAL \Equal5~3_combout\ : std_logic;
SIGNAL \Equal5~4_combout\ : std_logic;
SIGNAL \Equal5~6_combout\ : std_logic;
SIGNAL \Equal5~5_combout\ : std_logic;
SIGNAL \Equal5~7_combout\ : std_logic;
SIGNAL \Equal5~10_combout\ : std_logic;
SIGNAL \t6~0_combout\ : std_logic;
SIGNAL \t6~q\ : std_logic;
SIGNAL \clk_out~2_combout\ : std_logic;
SIGNAL \clk_out~3_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \pa~1_combout\ : std_logic;
SIGNAL \Add4~1\ : std_logic;
SIGNAL \Add4~2_combout\ : std_logic;
SIGNAL \Add4~3\ : std_logic;
SIGNAL \Add4~4_combout\ : std_logic;
SIGNAL \pa~0_combout\ : std_logic;
SIGNAL \Add4~5\ : std_logic;
SIGNAL \Add4~6_combout\ : std_logic;
SIGNAL \Add4~7\ : std_logic;
SIGNAL \Add4~8_combout\ : std_logic;
SIGNAL \Add4~9\ : std_logic;
SIGNAL \Add4~10_combout\ : std_logic;
SIGNAL \Add4~11\ : std_logic;
SIGNAL \Add4~12_combout\ : std_logic;
SIGNAL \pa~2_combout\ : std_logic;
SIGNAL \Add4~13\ : std_logic;
SIGNAL \Add4~14_combout\ : std_logic;
SIGNAL \Add4~15\ : std_logic;
SIGNAL \Add4~16_combout\ : std_logic;
SIGNAL \pa~3_combout\ : std_logic;
SIGNAL \Add4~17\ : std_logic;
SIGNAL \Add4~18_combout\ : std_logic;
SIGNAL \pa~4_combout\ : std_logic;
SIGNAL \Add4~19\ : std_logic;
SIGNAL \Add4~20_combout\ : std_logic;
SIGNAL \pa~5_combout\ : std_logic;
SIGNAL \Add4~21\ : std_logic;
SIGNAL \Add4~22_combout\ : std_logic;
SIGNAL \pa~6_combout\ : std_logic;
SIGNAL \Add4~23\ : std_logic;
SIGNAL \Add4~24_combout\ : std_logic;
SIGNAL \Add4~25\ : std_logic;
SIGNAL \Add4~26_combout\ : std_logic;
SIGNAL \Add4~27\ : std_logic;
SIGNAL \Add4~28_combout\ : std_logic;
SIGNAL \Add4~29\ : std_logic;
SIGNAL \Add4~30_combout\ : std_logic;
SIGNAL \Add4~31\ : std_logic;
SIGNAL \Add4~32_combout\ : std_logic;
SIGNAL \pa~7_combout\ : std_logic;
SIGNAL \Add4~33\ : std_logic;
SIGNAL \Add4~34_combout\ : std_logic;
SIGNAL \Add4~35\ : std_logic;
SIGNAL \Add4~36_combout\ : std_logic;
SIGNAL \Add4~37\ : std_logic;
SIGNAL \Add4~38_combout\ : std_logic;
SIGNAL \Add4~39\ : std_logic;
SIGNAL \Add4~40_combout\ : std_logic;
SIGNAL \Add4~41\ : std_logic;
SIGNAL \Add4~42_combout\ : std_logic;
SIGNAL \Add4~43\ : std_logic;
SIGNAL \Add4~44_combout\ : std_logic;
SIGNAL \Add4~45\ : std_logic;
SIGNAL \Add4~46_combout\ : std_logic;
SIGNAL \Equal4~6_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \Equal4~2_combout\ : std_logic;
SIGNAL \Equal4~1_combout\ : std_logic;
SIGNAL \Equal4~3_combout\ : std_logic;
SIGNAL \Equal4~4_combout\ : std_logic;
SIGNAL \Equal4~5_combout\ : std_logic;
SIGNAL \Add4~47\ : std_logic;
SIGNAL \Add4~48_combout\ : std_logic;
SIGNAL \Add4~49\ : std_logic;
SIGNAL \Add4~50_combout\ : std_logic;
SIGNAL \Add4~51\ : std_logic;
SIGNAL \Add4~52_combout\ : std_logic;
SIGNAL \Add4~53\ : std_logic;
SIGNAL \Add4~54_combout\ : std_logic;
SIGNAL \Equal4~7_combout\ : std_logic;
SIGNAL \Add4~55\ : std_logic;
SIGNAL \Add4~56_combout\ : std_logic;
SIGNAL \Add4~57\ : std_logic;
SIGNAL \Add4~58_combout\ : std_logic;
SIGNAL \Add4~59\ : std_logic;
SIGNAL \Add4~60_combout\ : std_logic;
SIGNAL \Add4~61\ : std_logic;
SIGNAL \Add4~62_combout\ : std_logic;
SIGNAL \Equal4~8_combout\ : std_logic;
SIGNAL \Equal4~9_combout\ : std_logic;
SIGNAL \Equal4~10_combout\ : std_logic;
SIGNAL \t5~0_combout\ : std_logic;
SIGNAL \t5~q\ : std_logic;
SIGNAL \clk_out~4_combout\ : std_logic;
SIGNAL \clk_out~5_combout\ : std_logic;
SIGNAL \clk_out$latch~combout\ : std_logic;
SIGNAL \proc~1_combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \L1$latch~combout\ : std_logic;
SIGNAL \L2~0_combout\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \L2$latch~combout\ : std_logic;
SIGNAL \comb~2_combout\ : std_logic;
SIGNAL \L3~0_combout\ : std_logic;
SIGNAL \L3$latch~combout\ : std_logic;
SIGNAL \L4~0_combout\ : std_logic;
SIGNAL \comb~3_combout\ : std_logic;
SIGNAL \L4$latch~combout\ : std_logic;
SIGNAL \proc~2_combout\ : std_logic;
SIGNAL \comb~5_combout\ : std_logic;
SIGNAL \comb~4_combout\ : std_logic;
SIGNAL \L5$latch~combout\ : std_logic;
SIGNAL \comb~7_combout\ : std_logic;
SIGNAL \comb~6_combout\ : std_logic;
SIGNAL \L6$latch~combout\ : std_logic;
SIGNAL \comb~10_combout\ : std_logic;
SIGNAL \comb~8_combout\ : std_logic;
SIGNAL \proc~3_combout\ : std_logic;
SIGNAL \comb~9_combout\ : std_logic;
SIGNAL \L7$latch~combout\ : std_logic;
SIGNAL \comb~11_combout\ : std_logic;
SIGNAL \L8$latch~combout\ : std_logic;
SIGNAL sa : std_logic_vector(31 DOWNTO 0);
SIGNAL saa : std_logic_vector(31 DOWNTO 0);
SIGNAL ga : std_logic_vector(31 DOWNTO 0);
SIGNAL ma : std_logic_vector(31 DOWNTO 0);
SIGNAL re : std_logic_vector(31 DOWNTO 0);
SIGNAL pa : std_logic_vector(31 DOWNTO 0);
SIGNAL ni : std_logic_vector(31 DOWNTO 0);
SIGNAL dha : std_logic_vector(31 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

clk_out <= ww_clk_out;
L1 <= ww_L1;
L2 <= ww_L2;
L3 <= ww_L3;
L4 <= ww_L4;
L5 <= ww_L5;
L6 <= ww_L6;
L7 <= ww_L7;
L8 <= ww_L8;
ww_clk_50 <= clk_50;
ww_SW1 <= SW1;
ww_SW2 <= SW2;
ww_SW3 <= SW3;
ww_SW4 <= SW4;
ww_SW5 <= SW5;
ww_SW6 <= SW6;
ww_SW7 <= SW7;
ww_SW8 <= SW8;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_50~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X26_Y28_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X60_Y2_N23
\clk_out~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clk_out$latch~combout\,
	devoe => ww_devoe,
	o => \clk_out~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\L1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \L1$latch~combout\,
	devoe => ww_devoe,
	o => \L1~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\L2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \L2$latch~combout\,
	devoe => ww_devoe,
	o => \L2~output_o\);

-- Location: IOOBUF_X19_Y0_N23
\L3~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \L3$latch~combout\,
	devoe => ww_devoe,
	o => \L3~output_o\);

-- Location: IOOBUF_X21_Y0_N23
\L4~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \L4$latch~combout\,
	devoe => ww_devoe,
	o => \L4~output_o\);

-- Location: IOOBUF_X21_Y0_N2
\L5~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \L5$latch~combout\,
	devoe => ww_devoe,
	o => \L5~output_o\);

-- Location: IOOBUF_X24_Y0_N30
\L6~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \L6$latch~combout\,
	devoe => ww_devoe,
	o => \L6~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\L7~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \L7$latch~combout\,
	devoe => ww_devoe,
	o => \L7~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\L8~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \L8$latch~combout\,
	devoe => ww_devoe,
	o => \L8~output_o\);

-- Location: IOIBUF_X3_Y0_N1
\SW1~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW1,
	o => \SW1~input_o\);

-- Location: IOIBUF_X6_Y0_N29
\SW2~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW2,
	o => \SW2~input_o\);

-- Location: IOIBUF_X0_Y13_N15
\clk_50~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_50,
	o => \clk_50~input_o\);

-- Location: CLKCTRL_G2
\clk_50~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X16_Y12_N0
\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = sa(0) $ (VCC)
-- \Add0~1\ = CARRY(sa(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sa(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X15_Y12_N6
\sa~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sa~1_combout\ = (\Add0~0_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~0_combout\,
	datad => \Equal0~10_combout\,
	combout => \sa~1_combout\);

-- Location: FF_X16_Y12_N19
\sa[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \sa~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sa(0));

-- Location: LCCOMB_X16_Y12_N2
\Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (sa(1) & (!\Add0~1\)) # (!sa(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!sa(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sa(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: FF_X16_Y12_N3
\sa[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sa(1));

-- Location: LCCOMB_X16_Y12_N4
\Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (sa(2) & (\Add0~3\ $ (GND))) # (!sa(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((sa(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sa(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X16_Y12_N5
\sa[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sa(2));

-- Location: LCCOMB_X16_Y12_N6
\Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (sa(3) & (!\Add0~5\)) # (!sa(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!sa(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sa(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X15_Y12_N16
\sa~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sa~0_combout\ = (\Add0~6_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datad => \Equal0~10_combout\,
	combout => \sa~0_combout\);

-- Location: FF_X16_Y12_N1
\sa[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \sa~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sa(3));

-- Location: LCCOMB_X16_Y12_N8
\Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (sa(4) & (\Add0~7\ $ (GND))) # (!sa(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((sa(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sa(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: FF_X16_Y12_N9
\sa[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sa(4));

-- Location: LCCOMB_X16_Y12_N10
\Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (sa(5) & (!\Add0~9\)) # (!sa(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!sa(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sa(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X15_Y12_N14
\sa~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sa~2_combout\ = (!\Equal0~10_combout\ & \Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~10_combout\,
	datad => \Add0~10_combout\,
	combout => \sa~2_combout\);

-- Location: FF_X15_Y12_N15
\sa[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \sa~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sa(5));

-- Location: LCCOMB_X16_Y12_N12
\Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (sa(6) & (\Add0~11\ $ (GND))) # (!sa(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((sa(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sa(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X15_Y12_N0
\sa~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sa~3_combout\ = (!\Equal0~10_combout\ & \Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~10_combout\,
	datac => \Add0~12_combout\,
	combout => \sa~3_combout\);

-- Location: FF_X15_Y12_N1
\sa[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \sa~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sa(6));

-- Location: LCCOMB_X16_Y12_N14
\Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (sa(7) & (!\Add0~13\)) # (!sa(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!sa(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sa(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X15_Y12_N2
\sa~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sa~4_combout\ = (!\Equal0~10_combout\ & \Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~10_combout\,
	datac => \Add0~14_combout\,
	combout => \sa~4_combout\);

-- Location: FF_X15_Y12_N3
\sa[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \sa~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sa(7));

-- Location: LCCOMB_X16_Y12_N16
\Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (sa(8) & (\Add0~15\ $ (GND))) # (!sa(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((sa(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sa(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: FF_X16_Y12_N17
\sa[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sa(8));

-- Location: LCCOMB_X16_Y12_N18
\Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (sa(9) & (!\Add0~17\)) # (!sa(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!sa(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sa(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X15_Y12_N30
\sa~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sa~5_combout\ = (!\Equal0~10_combout\ & \Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~10_combout\,
	datad => \Add0~18_combout\,
	combout => \sa~5_combout\);

-- Location: FF_X15_Y12_N31
\sa[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \sa~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sa(9));

-- Location: LCCOMB_X16_Y12_N20
\Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (sa(10) & (\Add0~19\ $ (GND))) # (!sa(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((sa(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sa(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X15_Y12_N4
\sa~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sa~6_combout\ = (!\Equal0~10_combout\ & \Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~10_combout\,
	datac => \Add0~20_combout\,
	combout => \sa~6_combout\);

-- Location: FF_X15_Y12_N5
\sa[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \sa~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sa(10));

-- Location: LCCOMB_X16_Y12_N22
\Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (sa(11) & (!\Add0~21\)) # (!sa(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!sa(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sa(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: FF_X16_Y12_N23
\sa[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sa(11));

-- Location: LCCOMB_X15_Y12_N26
\Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (sa(9) & (!sa(8) & (sa(10) & !sa(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sa(9),
	datab => sa(8),
	datac => sa(10),
	datad => sa(11),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X16_Y12_N24
\Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (sa(12) & (\Add0~23\ $ (GND))) # (!sa(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((sa(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sa(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X15_Y12_N12
\sa~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sa~7_combout\ = (!\Equal0~10_combout\ & \Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~10_combout\,
	datad => \Add0~24_combout\,
	combout => \sa~7_combout\);

-- Location: FF_X15_Y12_N13
\sa[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \sa~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sa(12));

-- Location: LCCOMB_X16_Y12_N26
\Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (sa(13) & (!\Add0~25\)) # (!sa(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!sa(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sa(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: FF_X16_Y12_N27
\sa[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sa(13));

-- Location: LCCOMB_X16_Y12_N28
\Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (sa(14) & (\Add0~27\ $ (GND))) # (!sa(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((sa(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sa(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: FF_X16_Y12_N29
\sa[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sa(14));

-- Location: LCCOMB_X16_Y12_N30
\Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (sa(15) & (!\Add0~29\)) # (!sa(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!sa(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sa(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X15_Y12_N18
\sa~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sa~8_combout\ = (!\Equal0~10_combout\ & \Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~10_combout\,
	datac => \Add0~30_combout\,
	combout => \sa~8_combout\);

-- Location: FF_X15_Y12_N19
\sa[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \sa~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sa(15));

-- Location: LCCOMB_X15_Y12_N28
\Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (sa(12) & (sa(15) & (!sa(14) & !sa(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sa(12),
	datab => sa(15),
	datac => sa(14),
	datad => sa(13),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X15_Y12_N8
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!sa(0) & (sa(3) & (!sa(1) & !sa(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sa(0),
	datab => sa(3),
	datac => sa(1),
	datad => sa(2),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X15_Y12_N24
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (sa(7) & (sa(5) & (!sa(4) & sa(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sa(7),
	datab => sa(5),
	datac => sa(4),
	datad => sa(6),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X15_Y12_N22
\Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~2_combout\ & (\Equal0~3_combout\ & (\Equal0~0_combout\ & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Equal0~3_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~1_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X16_Y11_N0
\Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (sa(16) & (\Add0~31\ $ (GND))) # (!sa(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((sa(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sa(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X15_Y11_N4
\sa~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sa~9_combout\ = (\Add0~32_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~32_combout\,
	datad => \Equal0~10_combout\,
	combout => \sa~9_combout\);

-- Location: FF_X15_Y11_N5
\sa[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \sa~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sa(16));

-- Location: LCCOMB_X16_Y11_N2
\Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (sa(17) & (!\Add0~33\)) # (!sa(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!sa(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sa(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: FF_X16_Y11_N3
\sa[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sa(17));

-- Location: LCCOMB_X16_Y11_N4
\Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (sa(18) & (\Add0~35\ $ (GND))) # (!sa(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((sa(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sa(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: FF_X16_Y11_N5
\sa[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sa(18));

-- Location: LCCOMB_X16_Y11_N6
\Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (sa(19) & (!\Add0~37\)) # (!sa(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!sa(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sa(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: FF_X16_Y11_N7
\sa[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sa(19));

-- Location: LCCOMB_X16_Y11_N8
\Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (sa(20) & (\Add0~39\ $ (GND))) # (!sa(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((sa(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sa(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: FF_X16_Y11_N9
\sa[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sa(20));

-- Location: LCCOMB_X16_Y11_N10
\Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (sa(21) & (!\Add0~41\)) # (!sa(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!sa(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sa(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: FF_X16_Y11_N11
\sa[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sa(21));

-- Location: LCCOMB_X16_Y11_N12
\Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (sa(22) & (\Add0~43\ $ (GND))) # (!sa(22) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((sa(22) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sa(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: FF_X16_Y11_N13
\sa[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sa(22));

-- Location: LCCOMB_X16_Y11_N14
\Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (sa(23) & (!\Add0~45\)) # (!sa(23) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!sa(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sa(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: FF_X16_Y11_N15
\sa[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sa(23));

-- Location: LCCOMB_X16_Y11_N16
\Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (sa(24) & (\Add0~47\ $ (GND))) # (!sa(24) & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((sa(24) & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sa(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: FF_X16_Y11_N17
\sa[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sa(24));

-- Location: LCCOMB_X16_Y11_N18
\Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (sa(25) & (!\Add0~49\)) # (!sa(25) & ((\Add0~49\) # (GND)))
-- \Add0~51\ = CARRY((!\Add0~49\) # (!sa(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sa(25),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: FF_X16_Y11_N19
\sa[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sa(25));

-- Location: LCCOMB_X16_Y11_N20
\Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (sa(26) & (\Add0~51\ $ (GND))) # (!sa(26) & (!\Add0~51\ & VCC))
-- \Add0~53\ = CARRY((sa(26) & !\Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sa(26),
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: FF_X16_Y11_N21
\sa[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sa(26));

-- Location: LCCOMB_X16_Y11_N22
\Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (sa(27) & (!\Add0~53\)) # (!sa(27) & ((\Add0~53\) # (GND)))
-- \Add0~55\ = CARRY((!\Add0~53\) # (!sa(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sa(27),
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: FF_X16_Y11_N23
\sa[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sa(27));

-- Location: LCCOMB_X15_Y11_N0
\Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!sa(27) & (!sa(24) & (!sa(26) & !sa(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sa(27),
	datab => sa(24),
	datac => sa(26),
	datad => sa(25),
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X16_Y11_N24
\Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (sa(28) & (\Add0~55\ $ (GND))) # (!sa(28) & (!\Add0~55\ & VCC))
-- \Add0~57\ = CARRY((sa(28) & !\Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sa(28),
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: FF_X16_Y11_N25
\sa[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sa(28));

-- Location: LCCOMB_X16_Y11_N26
\Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (sa(29) & (!\Add0~57\)) # (!sa(29) & ((\Add0~57\) # (GND)))
-- \Add0~59\ = CARRY((!\Add0~57\) # (!sa(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sa(29),
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: FF_X16_Y11_N27
\sa[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sa(29));

-- Location: LCCOMB_X16_Y11_N28
\Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = (sa(30) & (\Add0~59\ $ (GND))) # (!sa(30) & (!\Add0~59\ & VCC))
-- \Add0~61\ = CARRY((sa(30) & !\Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sa(30),
	datad => VCC,
	cin => \Add0~59\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: FF_X16_Y11_N29
\sa[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sa(30));

-- Location: LCCOMB_X16_Y11_N30
\Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = sa(31) $ (\Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sa(31),
	cin => \Add0~61\,
	combout => \Add0~62_combout\);

-- Location: FF_X16_Y11_N31
\sa[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sa(31));

-- Location: LCCOMB_X15_Y12_N20
\Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (!sa(31) & (!sa(28) & (!sa(29) & !sa(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sa(31),
	datab => sa(28),
	datac => sa(29),
	datad => sa(30),
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X15_Y11_N30
\Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!sa(18) & (sa(16) & (!sa(17) & !sa(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sa(18),
	datab => sa(16),
	datac => sa(17),
	datad => sa(19),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X15_Y11_N28
\Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!sa(21) & !sa(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sa(21),
	datad => sa(20),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X15_Y11_N14
\Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!sa(23) & (!sa(22) & (\Equal0~5_combout\ & \Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sa(23),
	datab => sa(22),
	datac => \Equal0~5_combout\,
	datad => \Equal0~6_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X15_Y12_N10
\Equal0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (\Equal0~4_combout\ & (\Equal0~8_combout\ & (\Equal0~9_combout\ & \Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \Equal0~8_combout\,
	datac => \Equal0~9_combout\,
	datad => \Equal0~7_combout\,
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X17_Y9_N0
\t1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \t1~0_combout\ = \t1~q\ $ (\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t1~q\,
	datad => \Equal0~10_combout\,
	combout => \t1~0_combout\);

-- Location: FF_X17_Y9_N1
t1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \t1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1~q\);

-- Location: IOIBUF_X6_Y0_N8
\SW3~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW3,
	o => \SW3~input_o\);

-- Location: LCCOMB_X17_Y8_N0
\Add7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~0_combout\ = saa(0) $ (VCC)
-- \Add7~1\ = CARRY(saa(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => saa(0),
	datad => VCC,
	combout => \Add7~0_combout\,
	cout => \Add7~1\);

-- Location: FF_X17_Y8_N1
\saa[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => saa(0));

-- Location: LCCOMB_X20_Y5_N2
\Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (re(1) & (saa(0) $ (VCC))) # (!re(1) & (saa(0) & VCC))
-- \Add1~1\ = CARRY((re(1) & saa(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => re(1),
	datab => saa(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X19_Y5_N16
\re~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \re~0_combout\ = (!\Equal1~10_combout\ & \Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~10_combout\,
	datad => \Add1~0_combout\,
	combout => \re~0_combout\);

-- Location: FF_X19_Y5_N17
\re[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \re~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => re(1));

-- Location: LCCOMB_X20_Y5_N4
\Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (re(2) & (!\Add1~1\)) # (!re(2) & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!re(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => re(2),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: FF_X20_Y5_N5
\re[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => re(2));

-- Location: LCCOMB_X20_Y5_N6
\Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (re(3) & (\Add1~3\ $ (GND))) # (!re(3) & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((re(3) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => re(3),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: FF_X20_Y5_N7
\re[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => re(3));

-- Location: LCCOMB_X20_Y5_N8
\Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (re(4) & (!\Add1~5\)) # (!re(4) & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!re(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => re(4),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X19_Y5_N12
\re~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \re~1_combout\ = (\Add1~6_combout\ & !\Equal1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~6_combout\,
	datad => \Equal1~10_combout\,
	combout => \re~1_combout\);

-- Location: FF_X19_Y5_N13
\re[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \re~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => re(4));

-- Location: LCCOMB_X20_Y5_N10
\Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (re(5) & (\Add1~7\ $ (GND))) # (!re(5) & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((re(5) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => re(5),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X19_Y5_N6
\re~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \re~2_combout\ = (\Add1~8_combout\ & !\Equal1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~8_combout\,
	datad => \Equal1~10_combout\,
	combout => \re~2_combout\);

-- Location: FF_X19_Y5_N7
\re[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \re~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => re(5));

-- Location: LCCOMB_X20_Y5_N12
\Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (re(6) & (!\Add1~9\)) # (!re(6) & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!re(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => re(6),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: FF_X20_Y5_N13
\re[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => re(6));

-- Location: LCCOMB_X20_Y5_N14
\Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (re(7) & (\Add1~11\ $ (GND))) # (!re(7) & (!\Add1~11\ & VCC))
-- \Add1~13\ = CARRY((re(7) & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => re(7),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X20_Y5_N0
\re~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \re~3_combout\ = (\Add1~12_combout\ & !\Equal1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~12_combout\,
	datad => \Equal1~10_combout\,
	combout => \re~3_combout\);

-- Location: FF_X20_Y5_N1
\re[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \re~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => re(7));

-- Location: LCCOMB_X20_Y5_N16
\Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (re(8) & (!\Add1~13\)) # (!re(8) & ((\Add1~13\) # (GND)))
-- \Add1~15\ = CARRY((!\Add1~13\) # (!re(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => re(8),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X19_Y5_N26
\re~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \re~4_combout\ = (!\Equal1~10_combout\ & \Add1~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~10_combout\,
	datad => \Add1~14_combout\,
	combout => \re~4_combout\);

-- Location: FF_X19_Y5_N27
\re[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \re~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => re(8));

-- Location: LCCOMB_X20_Y5_N18
\Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (re(9) & (\Add1~15\ $ (GND))) # (!re(9) & (!\Add1~15\ & VCC))
-- \Add1~17\ = CARRY((re(9) & !\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => re(9),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: FF_X20_Y5_N19
\re[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => re(9));

-- Location: LCCOMB_X20_Y5_N20
\Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (re(10) & (!\Add1~17\)) # (!re(10) & ((\Add1~17\) # (GND)))
-- \Add1~19\ = CARRY((!\Add1~17\) # (!re(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => re(10),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: FF_X20_Y5_N21
\re[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add1~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => re(10));

-- Location: LCCOMB_X20_Y5_N22
\Add1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (re(11) & (\Add1~19\ $ (GND))) # (!re(11) & (!\Add1~19\ & VCC))
-- \Add1~21\ = CARRY((re(11) & !\Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => re(11),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: LCCOMB_X19_Y5_N28
\re~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \re~5_combout\ = (!\Equal1~10_combout\ & \Add1~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~10_combout\,
	datad => \Add1~20_combout\,
	combout => \re~5_combout\);

-- Location: FF_X19_Y5_N29
\re[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \re~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => re(11));

-- Location: LCCOMB_X19_Y5_N30
\Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (re(8) & (re(11) & (!re(10) & !re(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => re(8),
	datab => re(11),
	datac => re(10),
	datad => re(9),
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X19_Y5_N4
\Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (re(5) & (re(7) & (!re(6) & re(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => re(5),
	datab => re(7),
	datac => re(6),
	datad => re(4),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X20_Y5_N24
\Add1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (re(12) & (!\Add1~21\)) # (!re(12) & ((\Add1~21\) # (GND)))
-- \Add1~23\ = CARRY((!\Add1~21\) # (!re(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => re(12),
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: FF_X20_Y5_N25
\re[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add1~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => re(12));

-- Location: LCCOMB_X20_Y5_N26
\Add1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = (re(13) & (\Add1~23\ $ (GND))) # (!re(13) & (!\Add1~23\ & VCC))
-- \Add1~25\ = CARRY((re(13) & !\Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => re(13),
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: LCCOMB_X19_Y5_N20
\re~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \re~6_combout\ = (!\Equal1~10_combout\ & \Add1~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~10_combout\,
	datad => \Add1~24_combout\,
	combout => \re~6_combout\);

-- Location: FF_X19_Y5_N21
\re[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \re~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => re(13));

-- Location: LCCOMB_X20_Y5_N28
\Add1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (re(14) & (!\Add1~25\)) # (!re(14) & ((\Add1~25\) # (GND)))
-- \Add1~27\ = CARRY((!\Add1~25\) # (!re(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => re(14),
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: LCCOMB_X19_Y5_N14
\re~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \re~7_combout\ = (!\Equal1~10_combout\ & \Add1~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~10_combout\,
	datad => \Add1~26_combout\,
	combout => \re~7_combout\);

-- Location: FF_X19_Y5_N15
\re[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \re~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => re(14));

-- Location: LCCOMB_X20_Y5_N30
\Add1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = (re(15) & (\Add1~27\ $ (GND))) # (!re(15) & (!\Add1~27\ & VCC))
-- \Add1~29\ = CARRY((re(15) & !\Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => re(15),
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: FF_X20_Y5_N31
\re[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add1~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => re(15));

-- Location: LCCOMB_X19_Y5_N8
\Equal1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (!re(15) & (re(13) & (re(14) & !re(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => re(15),
	datab => re(13),
	datac => re(14),
	datad => re(12),
	combout => \Equal1~3_combout\);

-- Location: LCCOMB_X19_Y5_N18
\Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!re(2) & (!re(1) & (saa(0) & !re(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => re(2),
	datab => re(1),
	datac => saa(0),
	datad => re(3),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X19_Y5_N22
\Equal1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (\Equal1~2_combout\ & (\Equal1~1_combout\ & (\Equal1~3_combout\ & \Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~2_combout\,
	datab => \Equal1~1_combout\,
	datac => \Equal1~3_combout\,
	datad => \Equal1~0_combout\,
	combout => \Equal1~4_combout\);

-- Location: LCCOMB_X20_Y4_N0
\Add1~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (re(16) & (!\Add1~29\)) # (!re(16) & ((\Add1~29\) # (GND)))
-- \Add1~31\ = CARRY((!\Add1~29\) # (!re(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => re(16),
	datad => VCC,
	cin => \Add1~29\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

-- Location: LCCOMB_X19_Y5_N24
\re~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \re~8_combout\ = (!\Equal1~10_combout\ & \Add1~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~10_combout\,
	datad => \Add1~30_combout\,
	combout => \re~8_combout\);

-- Location: FF_X19_Y5_N25
\re[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \re~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => re(16));

-- Location: LCCOMB_X20_Y4_N2
\Add1~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = (re(17) & (\Add1~31\ $ (GND))) # (!re(17) & (!\Add1~31\ & VCC))
-- \Add1~33\ = CARRY((re(17) & !\Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => re(17),
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~32_combout\,
	cout => \Add1~33\);

-- Location: FF_X20_Y4_N3
\re[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add1~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => re(17));

-- Location: LCCOMB_X20_Y4_N4
\Add1~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~34_combout\ = (re(18) & (!\Add1~33\)) # (!re(18) & ((\Add1~33\) # (GND)))
-- \Add1~35\ = CARRY((!\Add1~33\) # (!re(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => re(18),
	datad => VCC,
	cin => \Add1~33\,
	combout => \Add1~34_combout\,
	cout => \Add1~35\);

-- Location: FF_X20_Y4_N5
\re[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add1~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => re(18));

-- Location: LCCOMB_X20_Y4_N6
\Add1~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = (re(19) & (\Add1~35\ $ (GND))) # (!re(19) & (!\Add1~35\ & VCC))
-- \Add1~37\ = CARRY((re(19) & !\Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => re(19),
	datad => VCC,
	cin => \Add1~35\,
	combout => \Add1~36_combout\,
	cout => \Add1~37\);

-- Location: FF_X20_Y4_N7
\re[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add1~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => re(19));

-- Location: LCCOMB_X20_Y4_N8
\Add1~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~38_combout\ = (re(20) & (!\Add1~37\)) # (!re(20) & ((\Add1~37\) # (GND)))
-- \Add1~39\ = CARRY((!\Add1~37\) # (!re(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => re(20),
	datad => VCC,
	cin => \Add1~37\,
	combout => \Add1~38_combout\,
	cout => \Add1~39\);

-- Location: FF_X20_Y4_N9
\re[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add1~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => re(20));

-- Location: LCCOMB_X20_Y4_N10
\Add1~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~40_combout\ = (re(21) & (\Add1~39\ $ (GND))) # (!re(21) & (!\Add1~39\ & VCC))
-- \Add1~41\ = CARRY((re(21) & !\Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => re(21),
	datad => VCC,
	cin => \Add1~39\,
	combout => \Add1~40_combout\,
	cout => \Add1~41\);

-- Location: FF_X20_Y4_N11
\re[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add1~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => re(21));

-- Location: LCCOMB_X20_Y4_N12
\Add1~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~42_combout\ = (re(22) & (!\Add1~41\)) # (!re(22) & ((\Add1~41\) # (GND)))
-- \Add1~43\ = CARRY((!\Add1~41\) # (!re(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => re(22),
	datad => VCC,
	cin => \Add1~41\,
	combout => \Add1~42_combout\,
	cout => \Add1~43\);

-- Location: FF_X20_Y4_N13
\re[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add1~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => re(22));

-- Location: LCCOMB_X20_Y4_N14
\Add1~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~44_combout\ = (re(23) & (\Add1~43\ $ (GND))) # (!re(23) & (!\Add1~43\ & VCC))
-- \Add1~45\ = CARRY((re(23) & !\Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => re(23),
	datad => VCC,
	cin => \Add1~43\,
	combout => \Add1~44_combout\,
	cout => \Add1~45\);

-- Location: FF_X20_Y4_N15
\re[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add1~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => re(23));

-- Location: LCCOMB_X20_Y4_N16
\Add1~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~46_combout\ = (re(24) & (!\Add1~45\)) # (!re(24) & ((\Add1~45\) # (GND)))
-- \Add1~47\ = CARRY((!\Add1~45\) # (!re(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => re(24),
	datad => VCC,
	cin => \Add1~45\,
	combout => \Add1~46_combout\,
	cout => \Add1~47\);

-- Location: FF_X20_Y4_N17
\re[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add1~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => re(24));

-- Location: LCCOMB_X20_Y4_N18
\Add1~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~48_combout\ = (re(25) & (\Add1~47\ $ (GND))) # (!re(25) & (!\Add1~47\ & VCC))
-- \Add1~49\ = CARRY((re(25) & !\Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => re(25),
	datad => VCC,
	cin => \Add1~47\,
	combout => \Add1~48_combout\,
	cout => \Add1~49\);

-- Location: FF_X20_Y4_N19
\re[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add1~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => re(25));

-- Location: LCCOMB_X20_Y4_N20
\Add1~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~50_combout\ = (re(26) & (!\Add1~49\)) # (!re(26) & ((\Add1~49\) # (GND)))
-- \Add1~51\ = CARRY((!\Add1~49\) # (!re(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => re(26),
	datad => VCC,
	cin => \Add1~49\,
	combout => \Add1~50_combout\,
	cout => \Add1~51\);

-- Location: FF_X20_Y4_N21
\re[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add1~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => re(26));

-- Location: LCCOMB_X20_Y4_N22
\Add1~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~52_combout\ = (re(27) & (\Add1~51\ $ (GND))) # (!re(27) & (!\Add1~51\ & VCC))
-- \Add1~53\ = CARRY((re(27) & !\Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => re(27),
	datad => VCC,
	cin => \Add1~51\,
	combout => \Add1~52_combout\,
	cout => \Add1~53\);

-- Location: FF_X20_Y4_N23
\re[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add1~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => re(27));

-- Location: LCCOMB_X21_Y4_N0
\Equal1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~8_combout\ = (!re(24) & (!re(26) & (!re(27) & !re(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => re(24),
	datab => re(26),
	datac => re(27),
	datad => re(25),
	combout => \Equal1~8_combout\);

-- Location: LCCOMB_X20_Y4_N24
\Add1~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~54_combout\ = (re(28) & (!\Add1~53\)) # (!re(28) & ((\Add1~53\) # (GND)))
-- \Add1~55\ = CARRY((!\Add1~53\) # (!re(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => re(28),
	datad => VCC,
	cin => \Add1~53\,
	combout => \Add1~54_combout\,
	cout => \Add1~55\);

-- Location: FF_X20_Y4_N25
\re[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add1~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => re(28));

-- Location: LCCOMB_X20_Y4_N26
\Add1~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~56_combout\ = (re(29) & (\Add1~55\ $ (GND))) # (!re(29) & (!\Add1~55\ & VCC))
-- \Add1~57\ = CARRY((re(29) & !\Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => re(29),
	datad => VCC,
	cin => \Add1~55\,
	combout => \Add1~56_combout\,
	cout => \Add1~57\);

-- Location: FF_X20_Y4_N27
\re[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add1~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => re(29));

-- Location: LCCOMB_X20_Y4_N28
\Add1~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~58_combout\ = (re(30) & (!\Add1~57\)) # (!re(30) & ((\Add1~57\) # (GND)))
-- \Add1~59\ = CARRY((!\Add1~57\) # (!re(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => re(30),
	datad => VCC,
	cin => \Add1~57\,
	combout => \Add1~58_combout\,
	cout => \Add1~59\);

-- Location: FF_X20_Y4_N29
\re[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add1~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => re(30));

-- Location: LCCOMB_X20_Y4_N30
\Add1~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~60_combout\ = re(31) $ (!\Add1~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => re(31),
	cin => \Add1~59\,
	combout => \Add1~60_combout\);

-- Location: FF_X20_Y4_N31
\re[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add1~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => re(31));

-- Location: LCCOMB_X19_Y4_N22
\Equal1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~9_combout\ = (!re(31) & (!re(30) & (!re(29) & !re(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => re(31),
	datab => re(30),
	datac => re(29),
	datad => re(28),
	combout => \Equal1~9_combout\);

-- Location: LCCOMB_X19_Y4_N2
\Equal1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~6_combout\ = (!re(23) & (!re(21) & (!re(20) & !re(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => re(23),
	datab => re(21),
	datac => re(20),
	datad => re(22),
	combout => \Equal1~6_combout\);

-- Location: LCCOMB_X19_Y4_N8
\Equal1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = (!re(17) & re(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => re(17),
	datad => re(16),
	combout => \Equal1~5_combout\);

-- Location: LCCOMB_X19_Y4_N0
\Equal1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~7_combout\ = (!re(18) & (\Equal1~6_combout\ & (\Equal1~5_combout\ & !re(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => re(18),
	datab => \Equal1~6_combout\,
	datac => \Equal1~5_combout\,
	datad => re(19),
	combout => \Equal1~7_combout\);

-- Location: LCCOMB_X19_Y5_N10
\Equal1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~10_combout\ = (\Equal1~4_combout\ & (\Equal1~8_combout\ & (\Equal1~9_combout\ & \Equal1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~4_combout\,
	datab => \Equal1~8_combout\,
	datac => \Equal1~9_combout\,
	datad => \Equal1~7_combout\,
	combout => \Equal1~10_combout\);

-- Location: LCCOMB_X19_Y9_N14
\t2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \t2~0_combout\ = \t2~q\ $ (\Equal1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t2~q\,
	datad => \Equal1~10_combout\,
	combout => \t2~0_combout\);

-- Location: FF_X19_Y9_N15
t2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \t2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t2~q\);

-- Location: IOIBUF_X8_Y0_N15
\SW5~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW5,
	o => \SW5~input_o\);

-- Location: IOIBUF_X6_Y0_N1
\SW4~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW4,
	o => \SW4~input_o\);

-- Location: LCCOMB_X14_Y12_N2
\Add3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = (saa(0) & (ma(1) $ (VCC))) # (!saa(0) & (ma(1) & VCC))
-- \Add3~1\ = CARRY((saa(0) & ma(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saa(0),
	datab => ma(1),
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: LCCOMB_X13_Y12_N6
\ma~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ma~2_combout\ = (\Add3~0_combout\ & !\Equal3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~0_combout\,
	datac => \Equal3~10_combout\,
	combout => \ma~2_combout\);

-- Location: FF_X13_Y12_N7
\ma[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \ma~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ma(1));

-- Location: LCCOMB_X14_Y12_N4
\Add3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (ma(2) & (!\Add3~1\)) # (!ma(2) & ((\Add3~1\) # (GND)))
-- \Add3~3\ = CARRY((!\Add3~1\) # (!ma(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ma(2),
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: LCCOMB_X13_Y12_N8
\ma~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ma~0_combout\ = (!\Equal3~10_combout\ & \Add3~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal3~10_combout\,
	datad => \Add3~2_combout\,
	combout => \ma~0_combout\);

-- Location: FF_X13_Y12_N9
\ma[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \ma~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ma(2));

-- Location: LCCOMB_X14_Y12_N6
\Add3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = (ma(3) & (\Add3~3\ $ (GND))) # (!ma(3) & (!\Add3~3\ & VCC))
-- \Add3~5\ = CARRY((ma(3) & !\Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ma(3),
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: LCCOMB_X14_Y12_N0
\ma~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ma~1_combout\ = (!\Equal3~10_combout\ & \Add3~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal3~10_combout\,
	datad => \Add3~4_combout\,
	combout => \ma~1_combout\);

-- Location: FF_X14_Y12_N1
\ma[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \ma~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ma(3));

-- Location: LCCOMB_X14_Y12_N8
\Add3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (ma(4) & (!\Add3~5\)) # (!ma(4) & ((\Add3~5\) # (GND)))
-- \Add3~7\ = CARRY((!\Add3~5\) # (!ma(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ma(4),
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: FF_X14_Y12_N9
\ma[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add3~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ma(4));

-- Location: LCCOMB_X14_Y12_N10
\Add3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = (ma(5) & (\Add3~7\ $ (GND))) # (!ma(5) & (!\Add3~7\ & VCC))
-- \Add3~9\ = CARRY((ma(5) & !\Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ma(5),
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: LCCOMB_X13_Y12_N10
\ma~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ma~3_combout\ = (!\Equal3~10_combout\ & \Add3~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~10_combout\,
	datac => \Add3~8_combout\,
	combout => \ma~3_combout\);

-- Location: FF_X13_Y12_N11
\ma[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \ma~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ma(5));

-- Location: LCCOMB_X14_Y12_N12
\Add3~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (ma(6) & (!\Add3~9\)) # (!ma(6) & ((\Add3~9\) # (GND)))
-- \Add3~11\ = CARRY((!\Add3~9\) # (!ma(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ma(6),
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~10_combout\,
	cout => \Add3~11\);

-- Location: FF_X14_Y12_N13
\ma[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add3~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ma(6));

-- Location: LCCOMB_X14_Y12_N14
\Add3~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = (ma(7) & (\Add3~11\ $ (GND))) # (!ma(7) & (!\Add3~11\ & VCC))
-- \Add3~13\ = CARRY((ma(7) & !\Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ma(7),
	datad => VCC,
	cin => \Add3~11\,
	combout => \Add3~12_combout\,
	cout => \Add3~13\);

-- Location: FF_X14_Y12_N15
\ma[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add3~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ma(7));

-- Location: LCCOMB_X14_Y12_N16
\Add3~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = (ma(8) & (!\Add3~13\)) # (!ma(8) & ((\Add3~13\) # (GND)))
-- \Add3~15\ = CARRY((!\Add3~13\) # (!ma(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ma(8),
	datad => VCC,
	cin => \Add3~13\,
	combout => \Add3~14_combout\,
	cout => \Add3~15\);

-- Location: LCCOMB_X13_Y12_N22
\ma~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ma~4_combout\ = (!\Equal3~10_combout\ & \Add3~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal3~10_combout\,
	datad => \Add3~14_combout\,
	combout => \ma~4_combout\);

-- Location: FF_X13_Y12_N23
\ma[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \ma~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ma(8));

-- Location: LCCOMB_X14_Y12_N18
\Add3~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~16_combout\ = (ma(9) & (\Add3~15\ $ (GND))) # (!ma(9) & (!\Add3~15\ & VCC))
-- \Add3~17\ = CARRY((ma(9) & !\Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ma(9),
	datad => VCC,
	cin => \Add3~15\,
	combout => \Add3~16_combout\,
	cout => \Add3~17\);

-- Location: FF_X14_Y12_N19
\ma[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add3~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ma(9));

-- Location: LCCOMB_X14_Y12_N20
\Add3~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~18_combout\ = (ma(10) & (!\Add3~17\)) # (!ma(10) & ((\Add3~17\) # (GND)))
-- \Add3~19\ = CARRY((!\Add3~17\) # (!ma(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ma(10),
	datad => VCC,
	cin => \Add3~17\,
	combout => \Add3~18_combout\,
	cout => \Add3~19\);

-- Location: FF_X14_Y12_N21
\ma[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add3~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ma(10));

-- Location: LCCOMB_X14_Y12_N22
\Add3~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~20_combout\ = (ma(11) & (\Add3~19\ $ (GND))) # (!ma(11) & (!\Add3~19\ & VCC))
-- \Add3~21\ = CARRY((ma(11) & !\Add3~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ma(11),
	datad => VCC,
	cin => \Add3~19\,
	combout => \Add3~20_combout\,
	cout => \Add3~21\);

-- Location: FF_X14_Y12_N23
\ma[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add3~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ma(11));

-- Location: LCCOMB_X14_Y12_N24
\Add3~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~22_combout\ = (ma(12) & (!\Add3~21\)) # (!ma(12) & ((\Add3~21\) # (GND)))
-- \Add3~23\ = CARRY((!\Add3~21\) # (!ma(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ma(12),
	datad => VCC,
	cin => \Add3~21\,
	combout => \Add3~22_combout\,
	cout => \Add3~23\);

-- Location: LCCOMB_X13_Y12_N14
\ma~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ma~5_combout\ = (!\Equal3~10_combout\ & \Add3~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal3~10_combout\,
	datad => \Add3~22_combout\,
	combout => \ma~5_combout\);

-- Location: FF_X13_Y12_N15
\ma[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \ma~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ma(12));

-- Location: LCCOMB_X14_Y12_N26
\Add3~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~24_combout\ = (ma(13) & (\Add3~23\ $ (GND))) # (!ma(13) & (!\Add3~23\ & VCC))
-- \Add3~25\ = CARRY((ma(13) & !\Add3~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ma(13),
	datad => VCC,
	cin => \Add3~23\,
	combout => \Add3~24_combout\,
	cout => \Add3~25\);

-- Location: LCCOMB_X13_Y12_N12
\ma~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ma~6_combout\ = (!\Equal3~10_combout\ & \Add3~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal3~10_combout\,
	datad => \Add3~24_combout\,
	combout => \ma~6_combout\);

-- Location: FF_X13_Y12_N13
\ma[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \ma~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ma(13));

-- Location: LCCOMB_X14_Y12_N28
\Add3~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~26_combout\ = (ma(14) & (!\Add3~25\)) # (!ma(14) & ((\Add3~25\) # (GND)))
-- \Add3~27\ = CARRY((!\Add3~25\) # (!ma(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ma(14),
	datad => VCC,
	cin => \Add3~25\,
	combout => \Add3~26_combout\,
	cout => \Add3~27\);

-- Location: FF_X14_Y12_N29
\ma[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add3~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ma(14));

-- Location: LCCOMB_X14_Y12_N30
\Add3~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~28_combout\ = (ma(15) & (\Add3~27\ $ (GND))) # (!ma(15) & (!\Add3~27\ & VCC))
-- \Add3~29\ = CARRY((ma(15) & !\Add3~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ma(15),
	datad => VCC,
	cin => \Add3~27\,
	combout => \Add3~28_combout\,
	cout => \Add3~29\);

-- Location: FF_X14_Y12_N31
\ma[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add3~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ma(15));

-- Location: LCCOMB_X14_Y11_N0
\Add3~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~30_combout\ = (ma(16) & (!\Add3~29\)) # (!ma(16) & ((\Add3~29\) # (GND)))
-- \Add3~31\ = CARRY((!\Add3~29\) # (!ma(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ma(16),
	datad => VCC,
	cin => \Add3~29\,
	combout => \Add3~30_combout\,
	cout => \Add3~31\);

-- Location: LCCOMB_X13_Y12_N18
\ma~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ma~7_combout\ = (!\Equal3~10_combout\ & \Add3~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal3~10_combout\,
	datad => \Add3~30_combout\,
	combout => \ma~7_combout\);

-- Location: FF_X13_Y12_N19
\ma[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \ma~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ma(16));

-- Location: LCCOMB_X14_Y11_N2
\Add3~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~32_combout\ = (ma(17) & (\Add3~31\ $ (GND))) # (!ma(17) & (!\Add3~31\ & VCC))
-- \Add3~33\ = CARRY((ma(17) & !\Add3~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ma(17),
	datad => VCC,
	cin => \Add3~31\,
	combout => \Add3~32_combout\,
	cout => \Add3~33\);

-- Location: FF_X14_Y11_N3
\ma[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add3~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ma(17));

-- Location: LCCOMB_X14_Y11_N4
\Add3~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~34_combout\ = (ma(18) & (!\Add3~33\)) # (!ma(18) & ((\Add3~33\) # (GND)))
-- \Add3~35\ = CARRY((!\Add3~33\) # (!ma(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ma(18),
	datad => VCC,
	cin => \Add3~33\,
	combout => \Add3~34_combout\,
	cout => \Add3~35\);

-- Location: FF_X14_Y11_N5
\ma[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add3~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ma(18));

-- Location: LCCOMB_X14_Y11_N6
\Add3~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~36_combout\ = (ma(19) & (\Add3~35\ $ (GND))) # (!ma(19) & (!\Add3~35\ & VCC))
-- \Add3~37\ = CARRY((ma(19) & !\Add3~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ma(19),
	datad => VCC,
	cin => \Add3~35\,
	combout => \Add3~36_combout\,
	cout => \Add3~37\);

-- Location: FF_X14_Y11_N7
\ma[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add3~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ma(19));

-- Location: LCCOMB_X13_Y12_N4
\Equal3~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~5_combout\ = (ma(16) & !ma(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ma(16),
	datad => ma(17),
	combout => \Equal3~5_combout\);

-- Location: LCCOMB_X14_Y11_N8
\Add3~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~38_combout\ = (ma(20) & (!\Add3~37\)) # (!ma(20) & ((\Add3~37\) # (GND)))
-- \Add3~39\ = CARRY((!\Add3~37\) # (!ma(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ma(20),
	datad => VCC,
	cin => \Add3~37\,
	combout => \Add3~38_combout\,
	cout => \Add3~39\);

-- Location: FF_X14_Y11_N9
\ma[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add3~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ma(20));

-- Location: LCCOMB_X14_Y11_N10
\Add3~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~40_combout\ = (ma(21) & (\Add3~39\ $ (GND))) # (!ma(21) & (!\Add3~39\ & VCC))
-- \Add3~41\ = CARRY((ma(21) & !\Add3~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ma(21),
	datad => VCC,
	cin => \Add3~39\,
	combout => \Add3~40_combout\,
	cout => \Add3~41\);

-- Location: FF_X14_Y11_N11
\ma[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add3~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ma(21));

-- Location: LCCOMB_X14_Y11_N12
\Add3~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~42_combout\ = (ma(22) & (!\Add3~41\)) # (!ma(22) & ((\Add3~41\) # (GND)))
-- \Add3~43\ = CARRY((!\Add3~41\) # (!ma(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ma(22),
	datad => VCC,
	cin => \Add3~41\,
	combout => \Add3~42_combout\,
	cout => \Add3~43\);

-- Location: FF_X14_Y11_N13
\ma[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add3~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ma(22));

-- Location: LCCOMB_X14_Y11_N14
\Add3~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~44_combout\ = (ma(23) & (\Add3~43\ $ (GND))) # (!ma(23) & (!\Add3~43\ & VCC))
-- \Add3~45\ = CARRY((ma(23) & !\Add3~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ma(23),
	datad => VCC,
	cin => \Add3~43\,
	combout => \Add3~44_combout\,
	cout => \Add3~45\);

-- Location: FF_X14_Y11_N15
\ma[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add3~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ma(23));

-- Location: LCCOMB_X13_Y11_N0
\Equal3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~6_combout\ = (!ma(21) & (!ma(22) & (!ma(23) & !ma(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ma(21),
	datab => ma(22),
	datac => ma(23),
	datad => ma(20),
	combout => \Equal3~6_combout\);

-- Location: LCCOMB_X13_Y12_N30
\Equal3~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~7_combout\ = (!ma(19) & (!ma(18) & (\Equal3~5_combout\ & \Equal3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ma(19),
	datab => ma(18),
	datac => \Equal3~5_combout\,
	datad => \Equal3~6_combout\,
	combout => \Equal3~7_combout\);

-- Location: LCCOMB_X14_Y11_N16
\Add3~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~46_combout\ = (ma(24) & (!\Add3~45\)) # (!ma(24) & ((\Add3~45\) # (GND)))
-- \Add3~47\ = CARRY((!\Add3~45\) # (!ma(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ma(24),
	datad => VCC,
	cin => \Add3~45\,
	combout => \Add3~46_combout\,
	cout => \Add3~47\);

-- Location: FF_X14_Y11_N17
\ma[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add3~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ma(24));

-- Location: LCCOMB_X14_Y11_N18
\Add3~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~48_combout\ = (ma(25) & (\Add3~47\ $ (GND))) # (!ma(25) & (!\Add3~47\ & VCC))
-- \Add3~49\ = CARRY((ma(25) & !\Add3~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ma(25),
	datad => VCC,
	cin => \Add3~47\,
	combout => \Add3~48_combout\,
	cout => \Add3~49\);

-- Location: FF_X14_Y11_N19
\ma[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add3~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ma(25));

-- Location: LCCOMB_X14_Y11_N20
\Add3~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~50_combout\ = (ma(26) & (!\Add3~49\)) # (!ma(26) & ((\Add3~49\) # (GND)))
-- \Add3~51\ = CARRY((!\Add3~49\) # (!ma(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ma(26),
	datad => VCC,
	cin => \Add3~49\,
	combout => \Add3~50_combout\,
	cout => \Add3~51\);

-- Location: FF_X14_Y11_N21
\ma[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add3~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ma(26));

-- Location: LCCOMB_X14_Y11_N22
\Add3~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~52_combout\ = (ma(27) & (\Add3~51\ $ (GND))) # (!ma(27) & (!\Add3~51\ & VCC))
-- \Add3~53\ = CARRY((ma(27) & !\Add3~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ma(27),
	datad => VCC,
	cin => \Add3~51\,
	combout => \Add3~52_combout\,
	cout => \Add3~53\);

-- Location: FF_X14_Y11_N23
\ma[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add3~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ma(27));

-- Location: LCCOMB_X13_Y11_N22
\Equal3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~8_combout\ = (!ma(26) & (!ma(24) & (!ma(27) & !ma(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ma(26),
	datab => ma(24),
	datac => ma(27),
	datad => ma(25),
	combout => \Equal3~8_combout\);

-- Location: LCCOMB_X14_Y11_N24
\Add3~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~54_combout\ = (ma(28) & (!\Add3~53\)) # (!ma(28) & ((\Add3~53\) # (GND)))
-- \Add3~55\ = CARRY((!\Add3~53\) # (!ma(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ma(28),
	datad => VCC,
	cin => \Add3~53\,
	combout => \Add3~54_combout\,
	cout => \Add3~55\);

-- Location: FF_X14_Y11_N25
\ma[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add3~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ma(28));

-- Location: LCCOMB_X14_Y11_N26
\Add3~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~56_combout\ = (ma(29) & (\Add3~55\ $ (GND))) # (!ma(29) & (!\Add3~55\ & VCC))
-- \Add3~57\ = CARRY((ma(29) & !\Add3~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ma(29),
	datad => VCC,
	cin => \Add3~55\,
	combout => \Add3~56_combout\,
	cout => \Add3~57\);

-- Location: FF_X14_Y11_N27
\ma[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add3~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ma(29));

-- Location: LCCOMB_X14_Y11_N28
\Add3~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~58_combout\ = (ma(30) & (!\Add3~57\)) # (!ma(30) & ((\Add3~57\) # (GND)))
-- \Add3~59\ = CARRY((!\Add3~57\) # (!ma(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ma(30),
	datad => VCC,
	cin => \Add3~57\,
	combout => \Add3~58_combout\,
	cout => \Add3~59\);

-- Location: FF_X14_Y11_N29
\ma[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add3~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ma(30));

-- Location: LCCOMB_X14_Y11_N30
\Add3~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~60_combout\ = ma(31) $ (!\Add3~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ma(31),
	cin => \Add3~59\,
	combout => \Add3~60_combout\);

-- Location: FF_X14_Y11_N31
\ma[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add3~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ma(31));

-- Location: LCCOMB_X15_Y11_N22
\Equal3~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~9_combout\ = (!ma(29) & (!ma(30) & (!ma(28) & !ma(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ma(29),
	datab => ma(30),
	datac => ma(28),
	datad => ma(31),
	combout => \Equal3~9_combout\);

-- Location: LCCOMB_X13_Y12_N26
\Equal3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~3_combout\ = (ma(13) & (ma(12) & (!ma(15) & !ma(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ma(13),
	datab => ma(12),
	datac => ma(15),
	datad => ma(14),
	combout => \Equal3~3_combout\);

-- Location: LCCOMB_X13_Y12_N20
\Equal3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~2_combout\ = (ma(8) & (!ma(11) & (!ma(10) & !ma(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ma(8),
	datab => ma(11),
	datac => ma(10),
	datad => ma(9),
	combout => \Equal3~2_combout\);

-- Location: LCCOMB_X13_Y12_N28
\Equal3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = (ma(5) & (!ma(6) & (!ma(4) & !ma(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ma(5),
	datab => ma(6),
	datac => ma(4),
	datad => ma(7),
	combout => \Equal3~1_combout\);

-- Location: LCCOMB_X13_Y12_N0
\Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (!ma(1) & (ma(3) & (ma(2) & saa(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ma(1),
	datab => ma(3),
	datac => ma(2),
	datad => saa(0),
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X13_Y12_N24
\Equal3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~4_combout\ = (\Equal3~3_combout\ & (\Equal3~2_combout\ & (\Equal3~1_combout\ & \Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~3_combout\,
	datab => \Equal3~2_combout\,
	datac => \Equal3~1_combout\,
	datad => \Equal3~0_combout\,
	combout => \Equal3~4_combout\);

-- Location: LCCOMB_X13_Y12_N16
\Equal3~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~10_combout\ = (\Equal3~7_combout\ & (\Equal3~8_combout\ & (\Equal3~9_combout\ & \Equal3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~7_combout\,
	datab => \Equal3~8_combout\,
	datac => \Equal3~9_combout\,
	datad => \Equal3~4_combout\,
	combout => \Equal3~10_combout\);

-- Location: LCCOMB_X19_Y9_N30
\t4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \t4~0_combout\ = \t4~q\ $ (\Equal3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t4~q\,
	datad => \Equal3~10_combout\,
	combout => \t4~0_combout\);

-- Location: FF_X19_Y9_N31
t4 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \t4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t4~q\);

-- Location: LCCOMB_X21_Y9_N2
\Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = (saa(0) & (ga(1) $ (VCC))) # (!saa(0) & (ga(1) & VCC))
-- \Add2~1\ = CARRY((saa(0) & ga(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saa(0),
	datab => ga(1),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X20_Y9_N12
\ga~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ga~1_combout\ = (\Add2~0_combout\ & !\Equal2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~0_combout\,
	datac => \Equal2~10_combout\,
	combout => \ga~1_combout\);

-- Location: FF_X20_Y9_N13
\ga[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \ga~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ga(1));

-- Location: LCCOMB_X21_Y9_N4
\Add2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (ga(2) & (!\Add2~1\)) # (!ga(2) & ((\Add2~1\) # (GND)))
-- \Add2~3\ = CARRY((!\Add2~1\) # (!ga(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ga(2),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X21_Y9_N0
\ga~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ga~0_combout\ = (\Add2~2_combout\ & !\Equal2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~2_combout\,
	datad => \Equal2~10_combout\,
	combout => \ga~0_combout\);

-- Location: FF_X21_Y9_N1
\ga[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \ga~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ga(2));

-- Location: LCCOMB_X21_Y9_N6
\Add2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (ga(3) & (\Add2~3\ $ (GND))) # (!ga(3) & (!\Add2~3\ & VCC))
-- \Add2~5\ = CARRY((ga(3) & !\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ga(3),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: FF_X21_Y9_N7
\ga[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ga(3));

-- Location: LCCOMB_X21_Y9_N8
\Add2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (ga(4) & (!\Add2~5\)) # (!ga(4) & ((\Add2~5\) # (GND)))
-- \Add2~7\ = CARRY((!\Add2~5\) # (!ga(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ga(4),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: FF_X21_Y9_N9
\ga[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ga(4));

-- Location: LCCOMB_X21_Y9_N10
\Add2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (ga(5) & (\Add2~7\ $ (GND))) # (!ga(5) & (!\Add2~7\ & VCC))
-- \Add2~9\ = CARRY((ga(5) & !\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ga(5),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: FF_X21_Y9_N11
\ga[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add2~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ga(5));

-- Location: LCCOMB_X21_Y9_N12
\Add2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (ga(6) & (!\Add2~9\)) # (!ga(6) & ((\Add2~9\) # (GND)))
-- \Add2~11\ = CARRY((!\Add2~9\) # (!ga(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ga(6),
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: FF_X21_Y9_N13
\ga[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ga(6));

-- Location: LCCOMB_X21_Y9_N14
\Add2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (ga(7) & (\Add2~11\ $ (GND))) # (!ga(7) & (!\Add2~11\ & VCC))
-- \Add2~13\ = CARRY((ga(7) & !\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ga(7),
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X20_Y9_N16
\ga~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ga~2_combout\ = (!\Equal2~10_combout\ & \Add2~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~10_combout\,
	datac => \Add2~12_combout\,
	combout => \ga~2_combout\);

-- Location: FF_X20_Y9_N17
\ga[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \ga~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ga(7));

-- Location: LCCOMB_X20_Y9_N10
\Equal2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (!ga(5) & (!ga(6) & (!ga(4) & ga(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ga(5),
	datab => ga(6),
	datac => ga(4),
	datad => ga(7),
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X21_Y9_N16
\Add2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (ga(8) & (!\Add2~13\)) # (!ga(8) & ((\Add2~13\) # (GND)))
-- \Add2~15\ = CARRY((!\Add2~13\) # (!ga(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ga(8),
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: LCCOMB_X20_Y9_N8
\ga~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ga~3_combout\ = (!\Equal2~10_combout\ & \Add2~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal2~10_combout\,
	datad => \Add2~14_combout\,
	combout => \ga~3_combout\);

-- Location: FF_X20_Y9_N9
\ga[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \ga~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ga(8));

-- Location: LCCOMB_X21_Y9_N18
\Add2~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = (ga(9) & (\Add2~15\ $ (GND))) # (!ga(9) & (!\Add2~15\ & VCC))
-- \Add2~17\ = CARRY((ga(9) & !\Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ga(9),
	datad => VCC,
	cin => \Add2~15\,
	combout => \Add2~16_combout\,
	cout => \Add2~17\);

-- Location: FF_X21_Y9_N19
\ga[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add2~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ga(9));

-- Location: LCCOMB_X21_Y9_N20
\Add2~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = (ga(10) & (!\Add2~17\)) # (!ga(10) & ((\Add2~17\) # (GND)))
-- \Add2~19\ = CARRY((!\Add2~17\) # (!ga(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ga(10),
	datad => VCC,
	cin => \Add2~17\,
	combout => \Add2~18_combout\,
	cout => \Add2~19\);

-- Location: LCCOMB_X20_Y9_N6
\ga~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ga~4_combout\ = (!\Equal2~10_combout\ & \Add2~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~10_combout\,
	datac => \Add2~18_combout\,
	combout => \ga~4_combout\);

-- Location: FF_X20_Y9_N7
\ga[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \ga~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ga(10));

-- Location: LCCOMB_X21_Y9_N22
\Add2~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~20_combout\ = (ga(11) & (\Add2~19\ $ (GND))) # (!ga(11) & (!\Add2~19\ & VCC))
-- \Add2~21\ = CARRY((ga(11) & !\Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ga(11),
	datad => VCC,
	cin => \Add2~19\,
	combout => \Add2~20_combout\,
	cout => \Add2~21\);

-- Location: FF_X21_Y9_N23
\ga[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add2~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ga(11));

-- Location: LCCOMB_X20_Y9_N24
\Equal2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = (ga(10) & (!ga(11) & (ga(8) & !ga(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ga(10),
	datab => ga(11),
	datac => ga(8),
	datad => ga(9),
	combout => \Equal2~2_combout\);

-- Location: LCCOMB_X21_Y9_N24
\Add2~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~22_combout\ = (ga(12) & (!\Add2~21\)) # (!ga(12) & ((\Add2~21\) # (GND)))
-- \Add2~23\ = CARRY((!\Add2~21\) # (!ga(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ga(12),
	datad => VCC,
	cin => \Add2~21\,
	combout => \Add2~22_combout\,
	cout => \Add2~23\);

-- Location: FF_X21_Y9_N25
\ga[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add2~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ga(12));

-- Location: LCCOMB_X21_Y9_N26
\Add2~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~24_combout\ = (ga(13) & (\Add2~23\ $ (GND))) # (!ga(13) & (!\Add2~23\ & VCC))
-- \Add2~25\ = CARRY((ga(13) & !\Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ga(13),
	datad => VCC,
	cin => \Add2~23\,
	combout => \Add2~24_combout\,
	cout => \Add2~25\);

-- Location: FF_X21_Y9_N27
\ga[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add2~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ga(13));

-- Location: LCCOMB_X21_Y9_N28
\Add2~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~26_combout\ = (ga(14) & (!\Add2~25\)) # (!ga(14) & ((\Add2~25\) # (GND)))
-- \Add2~27\ = CARRY((!\Add2~25\) # (!ga(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ga(14),
	datad => VCC,
	cin => \Add2~25\,
	combout => \Add2~26_combout\,
	cout => \Add2~27\);

-- Location: LCCOMB_X20_Y9_N14
\ga~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ga~5_combout\ = (!\Equal2~10_combout\ & \Add2~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal2~10_combout\,
	datad => \Add2~26_combout\,
	combout => \ga~5_combout\);

-- Location: FF_X20_Y9_N15
\ga[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \ga~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ga(14));

-- Location: LCCOMB_X21_Y9_N30
\Add2~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~28_combout\ = (ga(15) & (\Add2~27\ $ (GND))) # (!ga(15) & (!\Add2~27\ & VCC))
-- \Add2~29\ = CARRY((ga(15) & !\Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ga(15),
	datad => VCC,
	cin => \Add2~27\,
	combout => \Add2~28_combout\,
	cout => \Add2~29\);

-- Location: FF_X21_Y9_N31
\ga[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add2~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ga(15));

-- Location: LCCOMB_X20_Y9_N4
\Equal2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~3_combout\ = (!ga(13) & (ga(14) & (!ga(15) & !ga(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ga(13),
	datab => ga(14),
	datac => ga(15),
	datad => ga(12),
	combout => \Equal2~3_combout\);

-- Location: LCCOMB_X20_Y9_N18
\Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!ga(1) & (ga(2) & (saa(0) & !ga(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ga(1),
	datab => ga(2),
	datac => saa(0),
	datad => ga(3),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X20_Y9_N26
\Equal2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~4_combout\ = (\Equal2~1_combout\ & (\Equal2~2_combout\ & (\Equal2~3_combout\ & \Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~1_combout\,
	datab => \Equal2~2_combout\,
	datac => \Equal2~3_combout\,
	datad => \Equal2~0_combout\,
	combout => \Equal2~4_combout\);

-- Location: LCCOMB_X21_Y8_N0
\Add2~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~30_combout\ = (ga(16) & (!\Add2~29\)) # (!ga(16) & ((\Add2~29\) # (GND)))
-- \Add2~31\ = CARRY((!\Add2~29\) # (!ga(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ga(16),
	datad => VCC,
	cin => \Add2~29\,
	combout => \Add2~30_combout\,
	cout => \Add2~31\);

-- Location: LCCOMB_X20_Y9_N20
\ga~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ga~6_combout\ = (!\Equal2~10_combout\ & \Add2~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal2~10_combout\,
	datad => \Add2~30_combout\,
	combout => \ga~6_combout\);

-- Location: FF_X20_Y9_N21
\ga[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \ga~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ga(16));

-- Location: LCCOMB_X21_Y8_N2
\Add2~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~32_combout\ = (ga(17) & (\Add2~31\ $ (GND))) # (!ga(17) & (!\Add2~31\ & VCC))
-- \Add2~33\ = CARRY((ga(17) & !\Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ga(17),
	datad => VCC,
	cin => \Add2~31\,
	combout => \Add2~32_combout\,
	cout => \Add2~33\);

-- Location: FF_X21_Y8_N3
\ga[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add2~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ga(17));

-- Location: LCCOMB_X20_Y9_N30
\Equal2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~5_combout\ = (!ga(17) & ga(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ga(17),
	datad => ga(16),
	combout => \Equal2~5_combout\);

-- Location: LCCOMB_X21_Y8_N4
\Add2~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~34_combout\ = (ga(18) & (!\Add2~33\)) # (!ga(18) & ((\Add2~33\) # (GND)))
-- \Add2~35\ = CARRY((!\Add2~33\) # (!ga(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ga(18),
	datad => VCC,
	cin => \Add2~33\,
	combout => \Add2~34_combout\,
	cout => \Add2~35\);

-- Location: FF_X21_Y8_N5
\ga[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add2~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ga(18));

-- Location: LCCOMB_X21_Y8_N6
\Add2~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~36_combout\ = (ga(19) & (\Add2~35\ $ (GND))) # (!ga(19) & (!\Add2~35\ & VCC))
-- \Add2~37\ = CARRY((ga(19) & !\Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ga(19),
	datad => VCC,
	cin => \Add2~35\,
	combout => \Add2~36_combout\,
	cout => \Add2~37\);

-- Location: FF_X21_Y8_N7
\ga[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add2~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ga(19));

-- Location: LCCOMB_X21_Y8_N8
\Add2~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~38_combout\ = (ga(20) & (!\Add2~37\)) # (!ga(20) & ((\Add2~37\) # (GND)))
-- \Add2~39\ = CARRY((!\Add2~37\) # (!ga(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ga(20),
	datad => VCC,
	cin => \Add2~37\,
	combout => \Add2~38_combout\,
	cout => \Add2~39\);

-- Location: FF_X21_Y8_N9
\ga[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add2~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ga(20));

-- Location: LCCOMB_X21_Y8_N10
\Add2~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~40_combout\ = (ga(21) & (\Add2~39\ $ (GND))) # (!ga(21) & (!\Add2~39\ & VCC))
-- \Add2~41\ = CARRY((ga(21) & !\Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ga(21),
	datad => VCC,
	cin => \Add2~39\,
	combout => \Add2~40_combout\,
	cout => \Add2~41\);

-- Location: FF_X21_Y8_N11
\ga[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add2~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ga(21));

-- Location: LCCOMB_X21_Y8_N12
\Add2~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~42_combout\ = (ga(22) & (!\Add2~41\)) # (!ga(22) & ((\Add2~41\) # (GND)))
-- \Add2~43\ = CARRY((!\Add2~41\) # (!ga(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ga(22),
	datad => VCC,
	cin => \Add2~41\,
	combout => \Add2~42_combout\,
	cout => \Add2~43\);

-- Location: FF_X21_Y8_N13
\ga[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add2~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ga(22));

-- Location: LCCOMB_X21_Y8_N14
\Add2~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~44_combout\ = (ga(23) & (\Add2~43\ $ (GND))) # (!ga(23) & (!\Add2~43\ & VCC))
-- \Add2~45\ = CARRY((ga(23) & !\Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ga(23),
	datad => VCC,
	cin => \Add2~43\,
	combout => \Add2~44_combout\,
	cout => \Add2~45\);

-- Location: FF_X21_Y8_N15
\ga[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add2~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ga(23));

-- Location: LCCOMB_X20_Y8_N0
\Equal2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~6_combout\ = (!ga(23) & (!ga(22) & (!ga(20) & !ga(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ga(23),
	datab => ga(22),
	datac => ga(20),
	datad => ga(21),
	combout => \Equal2~6_combout\);

-- Location: LCCOMB_X20_Y9_N0
\Equal2~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~7_combout\ = (\Equal2~5_combout\ & (!ga(19) & (!ga(18) & \Equal2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~5_combout\,
	datab => ga(19),
	datac => ga(18),
	datad => \Equal2~6_combout\,
	combout => \Equal2~7_combout\);

-- Location: LCCOMB_X21_Y8_N16
\Add2~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~46_combout\ = (ga(24) & (!\Add2~45\)) # (!ga(24) & ((\Add2~45\) # (GND)))
-- \Add2~47\ = CARRY((!\Add2~45\) # (!ga(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ga(24),
	datad => VCC,
	cin => \Add2~45\,
	combout => \Add2~46_combout\,
	cout => \Add2~47\);

-- Location: FF_X21_Y8_N17
\ga[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add2~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ga(24));

-- Location: LCCOMB_X21_Y8_N18
\Add2~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~48_combout\ = (ga(25) & (\Add2~47\ $ (GND))) # (!ga(25) & (!\Add2~47\ & VCC))
-- \Add2~49\ = CARRY((ga(25) & !\Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ga(25),
	datad => VCC,
	cin => \Add2~47\,
	combout => \Add2~48_combout\,
	cout => \Add2~49\);

-- Location: FF_X21_Y8_N19
\ga[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add2~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ga(25));

-- Location: LCCOMB_X21_Y8_N20
\Add2~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~50_combout\ = (ga(26) & (!\Add2~49\)) # (!ga(26) & ((\Add2~49\) # (GND)))
-- \Add2~51\ = CARRY((!\Add2~49\) # (!ga(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ga(26),
	datad => VCC,
	cin => \Add2~49\,
	combout => \Add2~50_combout\,
	cout => \Add2~51\);

-- Location: FF_X21_Y8_N21
\ga[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add2~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ga(26));

-- Location: LCCOMB_X21_Y8_N22
\Add2~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~52_combout\ = (ga(27) & (\Add2~51\ $ (GND))) # (!ga(27) & (!\Add2~51\ & VCC))
-- \Add2~53\ = CARRY((ga(27) & !\Add2~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ga(27),
	datad => VCC,
	cin => \Add2~51\,
	combout => \Add2~52_combout\,
	cout => \Add2~53\);

-- Location: FF_X21_Y8_N23
\ga[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add2~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ga(27));

-- Location: LCCOMB_X21_Y8_N24
\Add2~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~54_combout\ = (ga(28) & (!\Add2~53\)) # (!ga(28) & ((\Add2~53\) # (GND)))
-- \Add2~55\ = CARRY((!\Add2~53\) # (!ga(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ga(28),
	datad => VCC,
	cin => \Add2~53\,
	combout => \Add2~54_combout\,
	cout => \Add2~55\);

-- Location: FF_X21_Y8_N25
\ga[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add2~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ga(28));

-- Location: LCCOMB_X21_Y8_N26
\Add2~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~56_combout\ = (ga(29) & (\Add2~55\ $ (GND))) # (!ga(29) & (!\Add2~55\ & VCC))
-- \Add2~57\ = CARRY((ga(29) & !\Add2~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ga(29),
	datad => VCC,
	cin => \Add2~55\,
	combout => \Add2~56_combout\,
	cout => \Add2~57\);

-- Location: FF_X21_Y8_N27
\ga[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add2~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ga(29));

-- Location: LCCOMB_X21_Y8_N28
\Add2~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~58_combout\ = (ga(30) & (!\Add2~57\)) # (!ga(30) & ((\Add2~57\) # (GND)))
-- \Add2~59\ = CARRY((!\Add2~57\) # (!ga(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ga(30),
	datad => VCC,
	cin => \Add2~57\,
	combout => \Add2~58_combout\,
	cout => \Add2~59\);

-- Location: FF_X21_Y8_N29
\ga[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add2~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ga(30));

-- Location: LCCOMB_X21_Y8_N30
\Add2~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~60_combout\ = ga(31) $ (!\Add2~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ga(31),
	cin => \Add2~59\,
	combout => \Add2~60_combout\);

-- Location: FF_X21_Y8_N31
\ga[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add2~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ga(31));

-- Location: LCCOMB_X22_Y8_N26
\Equal2~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~9_combout\ = (!ga(29) & (!ga(30) & (!ga(28) & !ga(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ga(29),
	datab => ga(30),
	datac => ga(28),
	datad => ga(31),
	combout => \Equal2~9_combout\);

-- Location: LCCOMB_X22_Y8_N0
\Equal2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~8_combout\ = (!ga(27) & (!ga(26) & (!ga(24) & !ga(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ga(27),
	datab => ga(26),
	datac => ga(24),
	datad => ga(25),
	combout => \Equal2~8_combout\);

-- Location: LCCOMB_X20_Y9_N22
\Equal2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~10_combout\ = (\Equal2~4_combout\ & (\Equal2~7_combout\ & (\Equal2~9_combout\ & \Equal2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~4_combout\,
	datab => \Equal2~7_combout\,
	datac => \Equal2~9_combout\,
	datad => \Equal2~8_combout\,
	combout => \Equal2~10_combout\);

-- Location: LCCOMB_X19_Y9_N24
\t3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \t3~0_combout\ = \t3~q\ $ (\Equal2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t3~q\,
	datad => \Equal2~10_combout\,
	combout => \t3~0_combout\);

-- Location: FF_X19_Y9_N25
t3 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \t3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t3~q\);

-- Location: LCCOMB_X19_Y9_N20
\clk_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_out~0_combout\ = (\SW4~input_o\ & (!\SW5~input_o\ & (\t4~q\))) # (!\SW4~input_o\ & (((\t3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW5~input_o\,
	datab => \SW4~input_o\,
	datac => \t4~q\,
	datad => \t3~q\,
	combout => \clk_out~0_combout\);

-- Location: LCCOMB_X19_Y9_N16
\clk_out~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_out~1_combout\ = (\SW2~input_o\ & ((\SW3~input_o\ & ((\clk_out~0_combout\))) # (!\SW3~input_o\ & (\t2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW2~input_o\,
	datab => \SW3~input_o\,
	datac => \t2~q\,
	datad => \clk_out~0_combout\,
	combout => \clk_out~1_combout\);

-- Location: LCCOMB_X19_Y9_N10
\proc~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \proc~0_combout\ = (\SW4~input_o\ & (\SW3~input_o\ & (\SW5~input_o\ & \SW2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW4~input_o\,
	datab => \SW3~input_o\,
	datac => \SW5~input_o\,
	datad => \SW2~input_o\,
	combout => \proc~0_combout\);

-- Location: IOIBUF_X8_Y0_N8
\SW6~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW6,
	o => \SW6~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\SW8~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW8,
	o => \SW8~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\SW7~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW7,
	o => \SW7~input_o\);

-- Location: LCCOMB_X17_Y8_N2
\Add7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~2_combout\ = (saa(1) & (!\Add7~1\)) # (!saa(1) & ((\Add7~1\) # (GND)))
-- \Add7~3\ = CARRY((!\Add7~1\) # (!saa(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => saa(1),
	datad => VCC,
	cin => \Add7~1\,
	combout => \Add7~2_combout\,
	cout => \Add7~3\);

-- Location: FF_X17_Y8_N3
\saa[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => saa(1));

-- Location: LCCOMB_X17_Y8_N4
\Add7~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~4_combout\ = (saa(2) & (\Add7~3\ $ (GND))) # (!saa(2) & (!\Add7~3\ & VCC))
-- \Add7~5\ = CARRY((saa(2) & !\Add7~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => saa(2),
	datad => VCC,
	cin => \Add7~3\,
	combout => \Add7~4_combout\,
	cout => \Add7~5\);

-- Location: LCCOMB_X19_Y8_N8
\saa~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \saa~0_combout\ = (\Add7~4_combout\ & !\Equal7~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~4_combout\,
	datad => \Equal7~10_combout\,
	combout => \saa~0_combout\);

-- Location: FF_X19_Y8_N9
\saa[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \saa~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => saa(2));

-- Location: LCCOMB_X17_Y8_N6
\Add7~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~6_combout\ = (saa(3) & (!\Add7~5\)) # (!saa(3) & ((\Add7~5\) # (GND)))
-- \Add7~7\ = CARRY((!\Add7~5\) # (!saa(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => saa(3),
	datad => VCC,
	cin => \Add7~5\,
	combout => \Add7~6_combout\,
	cout => \Add7~7\);

-- Location: FF_X17_Y8_N7
\saa[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add7~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => saa(3));

-- Location: LCCOMB_X17_Y8_N8
\Add7~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~8_combout\ = (saa(4) & (\Add7~7\ $ (GND))) # (!saa(4) & (!\Add7~7\ & VCC))
-- \Add7~9\ = CARRY((saa(4) & !\Add7~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => saa(4),
	datad => VCC,
	cin => \Add7~7\,
	combout => \Add7~8_combout\,
	cout => \Add7~9\);

-- Location: LCCOMB_X19_Y8_N20
\saa~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \saa~1_combout\ = (\Add7~8_combout\ & !\Equal7~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~8_combout\,
	datad => \Equal7~10_combout\,
	combout => \saa~1_combout\);

-- Location: FF_X19_Y8_N21
\saa[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \saa~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => saa(4));

-- Location: LCCOMB_X17_Y8_N10
\Add7~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~10_combout\ = (saa(5) & (!\Add7~9\)) # (!saa(5) & ((\Add7~9\) # (GND)))
-- \Add7~11\ = CARRY((!\Add7~9\) # (!saa(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => saa(5),
	datad => VCC,
	cin => \Add7~9\,
	combout => \Add7~10_combout\,
	cout => \Add7~11\);

-- Location: LCCOMB_X19_Y8_N14
\saa~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \saa~2_combout\ = (\Add7~10_combout\ & !\Equal7~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~10_combout\,
	datad => \Equal7~10_combout\,
	combout => \saa~2_combout\);

-- Location: FF_X19_Y8_N15
\saa[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \saa~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => saa(5));

-- Location: LCCOMB_X17_Y8_N12
\Add7~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~12_combout\ = (saa(6) & (\Add7~11\ $ (GND))) # (!saa(6) & (!\Add7~11\ & VCC))
-- \Add7~13\ = CARRY((saa(6) & !\Add7~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => saa(6),
	datad => VCC,
	cin => \Add7~11\,
	combout => \Add7~12_combout\,
	cout => \Add7~13\);

-- Location: LCCOMB_X19_Y8_N24
\saa~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \saa~3_combout\ = (\Add7~12_combout\ & !\Equal7~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~12_combout\,
	datad => \Equal7~10_combout\,
	combout => \saa~3_combout\);

-- Location: FF_X19_Y8_N25
\saa[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \saa~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => saa(6));

-- Location: LCCOMB_X17_Y8_N14
\Add7~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~14_combout\ = (saa(7) & (!\Add7~13\)) # (!saa(7) & ((\Add7~13\) # (GND)))
-- \Add7~15\ = CARRY((!\Add7~13\) # (!saa(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => saa(7),
	datad => VCC,
	cin => \Add7~13\,
	combout => \Add7~14_combout\,
	cout => \Add7~15\);

-- Location: FF_X17_Y8_N15
\saa[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add7~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => saa(7));

-- Location: LCCOMB_X17_Y8_N16
\Add7~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~16_combout\ = (saa(8) & (\Add7~15\ $ (GND))) # (!saa(8) & (!\Add7~15\ & VCC))
-- \Add7~17\ = CARRY((saa(8) & !\Add7~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => saa(8),
	datad => VCC,
	cin => \Add7~15\,
	combout => \Add7~16_combout\,
	cout => \Add7~17\);

-- Location: LCCOMB_X19_Y8_N4
\saa~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \saa~4_combout\ = (\Add7~16_combout\ & !\Equal7~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~16_combout\,
	datad => \Equal7~10_combout\,
	combout => \saa~4_combout\);

-- Location: FF_X19_Y8_N5
\saa[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \saa~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => saa(8));

-- Location: LCCOMB_X17_Y8_N18
\Add7~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~18_combout\ = (saa(9) & (!\Add7~17\)) # (!saa(9) & ((\Add7~17\) # (GND)))
-- \Add7~19\ = CARRY((!\Add7~17\) # (!saa(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => saa(9),
	datad => VCC,
	cin => \Add7~17\,
	combout => \Add7~18_combout\,
	cout => \Add7~19\);

-- Location: LCCOMB_X19_Y8_N30
\saa~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \saa~5_combout\ = (\Add7~18_combout\ & !\Equal7~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~18_combout\,
	datad => \Equal7~10_combout\,
	combout => \saa~5_combout\);

-- Location: FF_X19_Y8_N31
\saa[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \saa~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => saa(9));

-- Location: LCCOMB_X17_Y8_N20
\Add7~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~20_combout\ = (saa(10) & (\Add7~19\ $ (GND))) # (!saa(10) & (!\Add7~19\ & VCC))
-- \Add7~21\ = CARRY((saa(10) & !\Add7~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => saa(10),
	datad => VCC,
	cin => \Add7~19\,
	combout => \Add7~20_combout\,
	cout => \Add7~21\);

-- Location: FF_X17_Y8_N21
\saa[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add7~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => saa(10));

-- Location: LCCOMB_X17_Y8_N22
\Add7~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~22_combout\ = (saa(11) & (!\Add7~21\)) # (!saa(11) & ((\Add7~21\) # (GND)))
-- \Add7~23\ = CARRY((!\Add7~21\) # (!saa(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => saa(11),
	datad => VCC,
	cin => \Add7~21\,
	combout => \Add7~22_combout\,
	cout => \Add7~23\);

-- Location: LCCOMB_X19_Y8_N28
\saa~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \saa~6_combout\ = (\Add7~22_combout\ & !\Equal7~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~22_combout\,
	datad => \Equal7~10_combout\,
	combout => \saa~6_combout\);

-- Location: FF_X19_Y8_N29
\saa[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \saa~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => saa(11));

-- Location: LCCOMB_X19_Y8_N22
\Equal7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal7~2_combout\ = (saa(9) & (saa(11) & (saa(8) & !saa(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saa(9),
	datab => saa(11),
	datac => saa(8),
	datad => saa(10),
	combout => \Equal7~2_combout\);

-- Location: LCCOMB_X19_Y8_N18
\Equal7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal7~1_combout\ = (!saa(7) & (saa(6) & (saa(5) & saa(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saa(7),
	datab => saa(6),
	datac => saa(5),
	datad => saa(4),
	combout => \Equal7~1_combout\);

-- Location: LCCOMB_X19_Y8_N26
\Equal7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal7~0_combout\ = (saa(0) & (saa(1) & (!saa(2) & !saa(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saa(0),
	datab => saa(1),
	datac => saa(2),
	datad => saa(3),
	combout => \Equal7~0_combout\);

-- Location: LCCOMB_X17_Y8_N24
\Add7~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~24_combout\ = (saa(12) & (\Add7~23\ $ (GND))) # (!saa(12) & (!\Add7~23\ & VCC))
-- \Add7~25\ = CARRY((saa(12) & !\Add7~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => saa(12),
	datad => VCC,
	cin => \Add7~23\,
	combout => \Add7~24_combout\,
	cout => \Add7~25\);

-- Location: FF_X17_Y8_N25
\saa[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add7~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => saa(12));

-- Location: LCCOMB_X17_Y8_N26
\Add7~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~26_combout\ = (saa(13) & (!\Add7~25\)) # (!saa(13) & ((\Add7~25\) # (GND)))
-- \Add7~27\ = CARRY((!\Add7~25\) # (!saa(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => saa(13),
	datad => VCC,
	cin => \Add7~25\,
	combout => \Add7~26_combout\,
	cout => \Add7~27\);

-- Location: FF_X17_Y8_N27
\saa[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add7~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => saa(13));

-- Location: LCCOMB_X17_Y8_N28
\Add7~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~28_combout\ = (saa(14) & (\Add7~27\ $ (GND))) # (!saa(14) & (!\Add7~27\ & VCC))
-- \Add7~29\ = CARRY((saa(14) & !\Add7~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => saa(14),
	datad => VCC,
	cin => \Add7~27\,
	combout => \Add7~28_combout\,
	cout => \Add7~29\);

-- Location: LCCOMB_X19_Y8_N12
\saa~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \saa~7_combout\ = (!\Equal7~10_combout\ & \Add7~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal7~10_combout\,
	datad => \Add7~28_combout\,
	combout => \saa~7_combout\);

-- Location: FF_X19_Y8_N13
\saa[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \saa~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => saa(14));

-- Location: LCCOMB_X17_Y8_N30
\Add7~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~30_combout\ = (saa(15) & (!\Add7~29\)) # (!saa(15) & ((\Add7~29\) # (GND)))
-- \Add7~31\ = CARRY((!\Add7~29\) # (!saa(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => saa(15),
	datad => VCC,
	cin => \Add7~29\,
	combout => \Add7~30_combout\,
	cout => \Add7~31\);

-- Location: LCCOMB_X19_Y8_N2
\saa~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \saa~8_combout\ = (\Add7~30_combout\ & !\Equal7~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~30_combout\,
	datad => \Equal7~10_combout\,
	combout => \saa~8_combout\);

-- Location: FF_X19_Y8_N3
\saa[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \saa~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => saa(15));

-- Location: LCCOMB_X19_Y8_N16
\Equal7~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal7~3_combout\ = (saa(14) & (!saa(12) & (!saa(13) & saa(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saa(14),
	datab => saa(12),
	datac => saa(13),
	datad => saa(15),
	combout => \Equal7~3_combout\);

-- Location: LCCOMB_X19_Y8_N10
\Equal7~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal7~4_combout\ = (\Equal7~2_combout\ & (\Equal7~1_combout\ & (\Equal7~0_combout\ & \Equal7~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~2_combout\,
	datab => \Equal7~1_combout\,
	datac => \Equal7~0_combout\,
	datad => \Equal7~3_combout\,
	combout => \Equal7~4_combout\);

-- Location: LCCOMB_X17_Y7_N0
\Add7~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~32_combout\ = (saa(16) & (\Add7~31\ $ (GND))) # (!saa(16) & (!\Add7~31\ & VCC))
-- \Add7~33\ = CARRY((saa(16) & !\Add7~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => saa(16),
	datad => VCC,
	cin => \Add7~31\,
	combout => \Add7~32_combout\,
	cout => \Add7~33\);

-- Location: FF_X17_Y7_N1
\saa[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add7~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => saa(16));

-- Location: LCCOMB_X17_Y7_N2
\Add7~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~34_combout\ = (saa(17) & (!\Add7~33\)) # (!saa(17) & ((\Add7~33\) # (GND)))
-- \Add7~35\ = CARRY((!\Add7~33\) # (!saa(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => saa(17),
	datad => VCC,
	cin => \Add7~33\,
	combout => \Add7~34_combout\,
	cout => \Add7~35\);

-- Location: FF_X17_Y7_N3
\saa[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add7~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => saa(17));

-- Location: LCCOMB_X17_Y7_N4
\Add7~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~36_combout\ = (saa(18) & (\Add7~35\ $ (GND))) # (!saa(18) & (!\Add7~35\ & VCC))
-- \Add7~37\ = CARRY((saa(18) & !\Add7~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => saa(18),
	datad => VCC,
	cin => \Add7~35\,
	combout => \Add7~36_combout\,
	cout => \Add7~37\);

-- Location: FF_X17_Y7_N5
\saa[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add7~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => saa(18));

-- Location: LCCOMB_X17_Y7_N6
\Add7~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~38_combout\ = (saa(19) & (!\Add7~37\)) # (!saa(19) & ((\Add7~37\) # (GND)))
-- \Add7~39\ = CARRY((!\Add7~37\) # (!saa(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => saa(19),
	datad => VCC,
	cin => \Add7~37\,
	combout => \Add7~38_combout\,
	cout => \Add7~39\);

-- Location: FF_X17_Y7_N7
\saa[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add7~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => saa(19));

-- Location: LCCOMB_X16_Y7_N28
\Equal7~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal7~5_combout\ = (!saa(18) & (!saa(16) & (!saa(19) & !saa(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saa(18),
	datab => saa(16),
	datac => saa(19),
	datad => saa(17),
	combout => \Equal7~5_combout\);

-- Location: LCCOMB_X17_Y7_N8
\Add7~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~40_combout\ = (saa(20) & (\Add7~39\ $ (GND))) # (!saa(20) & (!\Add7~39\ & VCC))
-- \Add7~41\ = CARRY((saa(20) & !\Add7~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => saa(20),
	datad => VCC,
	cin => \Add7~39\,
	combout => \Add7~40_combout\,
	cout => \Add7~41\);

-- Location: FF_X17_Y7_N9
\saa[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add7~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => saa(20));

-- Location: LCCOMB_X17_Y7_N10
\Add7~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~42_combout\ = (saa(21) & (!\Add7~41\)) # (!saa(21) & ((\Add7~41\) # (GND)))
-- \Add7~43\ = CARRY((!\Add7~41\) # (!saa(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => saa(21),
	datad => VCC,
	cin => \Add7~41\,
	combout => \Add7~42_combout\,
	cout => \Add7~43\);

-- Location: FF_X17_Y7_N11
\saa[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add7~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => saa(21));

-- Location: LCCOMB_X17_Y7_N12
\Add7~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~44_combout\ = (saa(22) & (\Add7~43\ $ (GND))) # (!saa(22) & (!\Add7~43\ & VCC))
-- \Add7~45\ = CARRY((saa(22) & !\Add7~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => saa(22),
	datad => VCC,
	cin => \Add7~43\,
	combout => \Add7~44_combout\,
	cout => \Add7~45\);

-- Location: FF_X17_Y7_N13
\saa[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add7~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => saa(22));

-- Location: LCCOMB_X17_Y7_N14
\Add7~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~46_combout\ = (saa(23) & (!\Add7~45\)) # (!saa(23) & ((\Add7~45\) # (GND)))
-- \Add7~47\ = CARRY((!\Add7~45\) # (!saa(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => saa(23),
	datad => VCC,
	cin => \Add7~45\,
	combout => \Add7~46_combout\,
	cout => \Add7~47\);

-- Location: FF_X17_Y7_N15
\saa[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add7~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => saa(23));

-- Location: LCCOMB_X16_Y7_N30
\Equal7~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal7~6_combout\ = (!saa(21) & (!saa(20) & (!saa(22) & !saa(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saa(21),
	datab => saa(20),
	datac => saa(22),
	datad => saa(23),
	combout => \Equal7~6_combout\);

-- Location: LCCOMB_X17_Y7_N16
\Add7~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~48_combout\ = (saa(24) & (\Add7~47\ $ (GND))) # (!saa(24) & (!\Add7~47\ & VCC))
-- \Add7~49\ = CARRY((saa(24) & !\Add7~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => saa(24),
	datad => VCC,
	cin => \Add7~47\,
	combout => \Add7~48_combout\,
	cout => \Add7~49\);

-- Location: FF_X17_Y7_N17
\saa[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add7~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => saa(24));

-- Location: LCCOMB_X17_Y7_N18
\Add7~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~50_combout\ = (saa(25) & (!\Add7~49\)) # (!saa(25) & ((\Add7~49\) # (GND)))
-- \Add7~51\ = CARRY((!\Add7~49\) # (!saa(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => saa(25),
	datad => VCC,
	cin => \Add7~49\,
	combout => \Add7~50_combout\,
	cout => \Add7~51\);

-- Location: FF_X17_Y7_N19
\saa[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add7~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => saa(25));

-- Location: LCCOMB_X17_Y7_N20
\Add7~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~52_combout\ = (saa(26) & (\Add7~51\ $ (GND))) # (!saa(26) & (!\Add7~51\ & VCC))
-- \Add7~53\ = CARRY((saa(26) & !\Add7~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => saa(26),
	datad => VCC,
	cin => \Add7~51\,
	combout => \Add7~52_combout\,
	cout => \Add7~53\);

-- Location: FF_X17_Y7_N21
\saa[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add7~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => saa(26));

-- Location: LCCOMB_X17_Y7_N22
\Add7~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~54_combout\ = (saa(27) & (!\Add7~53\)) # (!saa(27) & ((\Add7~53\) # (GND)))
-- \Add7~55\ = CARRY((!\Add7~53\) # (!saa(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => saa(27),
	datad => VCC,
	cin => \Add7~53\,
	combout => \Add7~54_combout\,
	cout => \Add7~55\);

-- Location: FF_X17_Y7_N23
\saa[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add7~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => saa(27));

-- Location: LCCOMB_X16_Y7_N4
\Equal7~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal7~7_combout\ = (!saa(25) & !saa(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => saa(25),
	datad => saa(24),
	combout => \Equal7~7_combout\);

-- Location: LCCOMB_X17_Y7_N24
\Add7~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~56_combout\ = (saa(28) & (\Add7~55\ $ (GND))) # (!saa(28) & (!\Add7~55\ & VCC))
-- \Add7~57\ = CARRY((saa(28) & !\Add7~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => saa(28),
	datad => VCC,
	cin => \Add7~55\,
	combout => \Add7~56_combout\,
	cout => \Add7~57\);

-- Location: FF_X17_Y7_N25
\saa[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add7~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => saa(28));

-- Location: LCCOMB_X17_Y7_N26
\Add7~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~58_combout\ = (saa(29) & (!\Add7~57\)) # (!saa(29) & ((\Add7~57\) # (GND)))
-- \Add7~59\ = CARRY((!\Add7~57\) # (!saa(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => saa(29),
	datad => VCC,
	cin => \Add7~57\,
	combout => \Add7~58_combout\,
	cout => \Add7~59\);

-- Location: FF_X17_Y7_N27
\saa[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add7~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => saa(29));

-- Location: LCCOMB_X17_Y7_N28
\Add7~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~60_combout\ = (saa(30) & (\Add7~59\ $ (GND))) # (!saa(30) & (!\Add7~59\ & VCC))
-- \Add7~61\ = CARRY((saa(30) & !\Add7~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => saa(30),
	datad => VCC,
	cin => \Add7~59\,
	combout => \Add7~60_combout\,
	cout => \Add7~61\);

-- Location: FF_X17_Y7_N29
\saa[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add7~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => saa(30));

-- Location: LCCOMB_X17_Y7_N30
\Add7~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~62_combout\ = saa(31) $ (\Add7~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => saa(31),
	cin => \Add7~61\,
	combout => \Add7~62_combout\);

-- Location: FF_X17_Y7_N31
\saa[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add7~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => saa(31));

-- Location: LCCOMB_X16_Y7_N18
\Equal7~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal7~8_combout\ = (!saa(31) & (!saa(30) & (!saa(29) & !saa(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saa(31),
	datab => saa(30),
	datac => saa(29),
	datad => saa(28),
	combout => \Equal7~8_combout\);

-- Location: LCCOMB_X16_Y7_N0
\Equal7~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal7~9_combout\ = (!saa(26) & (!saa(27) & (\Equal7~7_combout\ & \Equal7~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saa(26),
	datab => saa(27),
	datac => \Equal7~7_combout\,
	datad => \Equal7~8_combout\,
	combout => \Equal7~9_combout\);

-- Location: LCCOMB_X19_Y8_N0
\Equal7~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal7~10_combout\ = (\Equal7~4_combout\ & (\Equal7~5_combout\ & (\Equal7~6_combout\ & \Equal7~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~4_combout\,
	datab => \Equal7~5_combout\,
	datac => \Equal7~6_combout\,
	datad => \Equal7~9_combout\,
	combout => \Equal7~10_combout\);

-- Location: LCCOMB_X17_Y9_N14
\t8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \t8~0_combout\ = \Equal7~10_combout\ $ (\t8~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~10_combout\,
	datac => \t8~q\,
	combout => \t8~0_combout\);

-- Location: FF_X17_Y9_N15
t8 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \t8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t8~q\);

-- Location: LCCOMB_X11_Y8_N0
\Add6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~0_combout\ = ni(0) $ (VCC)
-- \Add6~1\ = CARRY(ni(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ni(0),
	datad => VCC,
	combout => \Add6~0_combout\,
	cout => \Add6~1\);

-- Location: LCCOMB_X12_Y8_N6
\ni~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ni~1_combout\ = (\Add6~0_combout\ & !\Equal6~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add6~0_combout\,
	datad => \Equal6~10_combout\,
	combout => \ni~1_combout\);

-- Location: FF_X12_Y8_N7
\ni[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \ni~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ni(0));

-- Location: LCCOMB_X11_Y8_N2
\Add6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~2_combout\ = (ni(1) & (!\Add6~1\)) # (!ni(1) & ((\Add6~1\) # (GND)))
-- \Add6~3\ = CARRY((!\Add6~1\) # (!ni(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ni(1),
	datad => VCC,
	cin => \Add6~1\,
	combout => \Add6~2_combout\,
	cout => \Add6~3\);

-- Location: FF_X11_Y8_N3
\ni[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ni(1));

-- Location: LCCOMB_X11_Y8_N4
\Add6~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~4_combout\ = (ni(2) & (\Add6~3\ $ (GND))) # (!ni(2) & (!\Add6~3\ & VCC))
-- \Add6~5\ = CARRY((ni(2) & !\Add6~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ni(2),
	datad => VCC,
	cin => \Add6~3\,
	combout => \Add6~4_combout\,
	cout => \Add6~5\);

-- Location: LCCOMB_X12_Y8_N20
\ni~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ni~0_combout\ = (\Add6~4_combout\ & !\Equal6~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add6~4_combout\,
	datad => \Equal6~10_combout\,
	combout => \ni~0_combout\);

-- Location: FF_X12_Y8_N21
\ni[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \ni~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ni(2));

-- Location: LCCOMB_X11_Y8_N6
\Add6~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~6_combout\ = (ni(3) & (!\Add6~5\)) # (!ni(3) & ((\Add6~5\) # (GND)))
-- \Add6~7\ = CARRY((!\Add6~5\) # (!ni(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ni(3),
	datad => VCC,
	cin => \Add6~5\,
	combout => \Add6~6_combout\,
	cout => \Add6~7\);

-- Location: FF_X11_Y8_N7
\ni[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ni(3));

-- Location: LCCOMB_X11_Y8_N8
\Add6~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~8_combout\ = (ni(4) & (\Add6~7\ $ (GND))) # (!ni(4) & (!\Add6~7\ & VCC))
-- \Add6~9\ = CARRY((ni(4) & !\Add6~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ni(4),
	datad => VCC,
	cin => \Add6~7\,
	combout => \Add6~8_combout\,
	cout => \Add6~9\);

-- Location: FF_X11_Y8_N9
\ni[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add6~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ni(4));

-- Location: LCCOMB_X11_Y8_N10
\Add6~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~10_combout\ = (ni(5) & (!\Add6~9\)) # (!ni(5) & ((\Add6~9\) # (GND)))
-- \Add6~11\ = CARRY((!\Add6~9\) # (!ni(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ni(5),
	datad => VCC,
	cin => \Add6~9\,
	combout => \Add6~10_combout\,
	cout => \Add6~11\);

-- Location: FF_X11_Y8_N11
\ni[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add6~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ni(5));

-- Location: LCCOMB_X11_Y8_N12
\Add6~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~12_combout\ = (ni(6) & (\Add6~11\ $ (GND))) # (!ni(6) & (!\Add6~11\ & VCC))
-- \Add6~13\ = CARRY((ni(6) & !\Add6~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ni(6),
	datad => VCC,
	cin => \Add6~11\,
	combout => \Add6~12_combout\,
	cout => \Add6~13\);

-- Location: FF_X11_Y8_N13
\ni[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add6~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ni(6));

-- Location: LCCOMB_X11_Y8_N14
\Add6~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~14_combout\ = (ni(7) & (!\Add6~13\)) # (!ni(7) & ((\Add6~13\) # (GND)))
-- \Add6~15\ = CARRY((!\Add6~13\) # (!ni(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ni(7),
	datad => VCC,
	cin => \Add6~13\,
	combout => \Add6~14_combout\,
	cout => \Add6~15\);

-- Location: FF_X11_Y8_N15
\ni[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add6~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ni(7));

-- Location: LCCOMB_X11_Y8_N16
\Add6~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~16_combout\ = (ni(8) & (\Add6~15\ $ (GND))) # (!ni(8) & (!\Add6~15\ & VCC))
-- \Add6~17\ = CARRY((ni(8) & !\Add6~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ni(8),
	datad => VCC,
	cin => \Add6~15\,
	combout => \Add6~16_combout\,
	cout => \Add6~17\);

-- Location: LCCOMB_X12_Y8_N12
\ni~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ni~2_combout\ = (\Add6~16_combout\ & !\Equal6~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add6~16_combout\,
	datad => \Equal6~10_combout\,
	combout => \ni~2_combout\);

-- Location: FF_X12_Y8_N13
\ni[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \ni~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ni(8));

-- Location: LCCOMB_X11_Y8_N18
\Add6~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~18_combout\ = (ni(9) & (!\Add6~17\)) # (!ni(9) & ((\Add6~17\) # (GND)))
-- \Add6~19\ = CARRY((!\Add6~17\) # (!ni(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ni(9),
	datad => VCC,
	cin => \Add6~17\,
	combout => \Add6~18_combout\,
	cout => \Add6~19\);

-- Location: FF_X11_Y8_N19
\ni[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add6~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ni(9));

-- Location: LCCOMB_X11_Y8_N20
\Add6~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~20_combout\ = (ni(10) & (\Add6~19\ $ (GND))) # (!ni(10) & (!\Add6~19\ & VCC))
-- \Add6~21\ = CARRY((ni(10) & !\Add6~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ni(10),
	datad => VCC,
	cin => \Add6~19\,
	combout => \Add6~20_combout\,
	cout => \Add6~21\);

-- Location: FF_X11_Y8_N21
\ni[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add6~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ni(10));

-- Location: LCCOMB_X11_Y8_N22
\Add6~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~22_combout\ = (ni(11) & (!\Add6~21\)) # (!ni(11) & ((\Add6~21\) # (GND)))
-- \Add6~23\ = CARRY((!\Add6~21\) # (!ni(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ni(11),
	datad => VCC,
	cin => \Add6~21\,
	combout => \Add6~22_combout\,
	cout => \Add6~23\);

-- Location: LCCOMB_X12_Y8_N26
\ni~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ni~3_combout\ = (!\Equal6~10_combout\ & \Add6~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~10_combout\,
	datad => \Add6~22_combout\,
	combout => \ni~3_combout\);

-- Location: FF_X12_Y8_N27
\ni[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \ni~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ni(11));

-- Location: LCCOMB_X11_Y8_N24
\Add6~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~24_combout\ = (ni(12) & (\Add6~23\ $ (GND))) # (!ni(12) & (!\Add6~23\ & VCC))
-- \Add6~25\ = CARRY((ni(12) & !\Add6~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ni(12),
	datad => VCC,
	cin => \Add6~23\,
	combout => \Add6~24_combout\,
	cout => \Add6~25\);

-- Location: LCCOMB_X12_Y8_N14
\ni~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ni~4_combout\ = (!\Equal6~10_combout\ & \Add6~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~10_combout\,
	datad => \Add6~24_combout\,
	combout => \ni~4_combout\);

-- Location: FF_X12_Y8_N15
\ni[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \ni~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ni(12));

-- Location: LCCOMB_X11_Y8_N26
\Add6~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~26_combout\ = (ni(13) & (!\Add6~25\)) # (!ni(13) & ((\Add6~25\) # (GND)))
-- \Add6~27\ = CARRY((!\Add6~25\) # (!ni(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ni(13),
	datad => VCC,
	cin => \Add6~25\,
	combout => \Add6~26_combout\,
	cout => \Add6~27\);

-- Location: FF_X11_Y8_N27
\ni[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add6~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ni(13));

-- Location: LCCOMB_X11_Y8_N28
\Add6~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~28_combout\ = (ni(14) & (\Add6~27\ $ (GND))) # (!ni(14) & (!\Add6~27\ & VCC))
-- \Add6~29\ = CARRY((ni(14) & !\Add6~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ni(14),
	datad => VCC,
	cin => \Add6~27\,
	combout => \Add6~28_combout\,
	cout => \Add6~29\);

-- Location: LCCOMB_X12_Y8_N0
\ni~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ni~5_combout\ = (!\Equal6~10_combout\ & \Add6~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~10_combout\,
	datad => \Add6~28_combout\,
	combout => \ni~5_combout\);

-- Location: FF_X12_Y8_N1
\ni[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \ni~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ni(14));

-- Location: LCCOMB_X11_Y8_N30
\Add6~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~30_combout\ = (ni(15) & (!\Add6~29\)) # (!ni(15) & ((\Add6~29\) # (GND)))
-- \Add6~31\ = CARRY((!\Add6~29\) # (!ni(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ni(15),
	datad => VCC,
	cin => \Add6~29\,
	combout => \Add6~30_combout\,
	cout => \Add6~31\);

-- Location: LCCOMB_X12_Y8_N2
\ni~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ni~6_combout\ = (!\Equal6~10_combout\ & \Add6~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~10_combout\,
	datad => \Add6~30_combout\,
	combout => \ni~6_combout\);

-- Location: FF_X12_Y8_N3
\ni[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \ni~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ni(15));

-- Location: LCCOMB_X11_Y7_N0
\Add6~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~32_combout\ = (ni(16) & (\Add6~31\ $ (GND))) # (!ni(16) & (!\Add6~31\ & VCC))
-- \Add6~33\ = CARRY((ni(16) & !\Add6~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ni(16),
	datad => VCC,
	cin => \Add6~31\,
	combout => \Add6~32_combout\,
	cout => \Add6~33\);

-- Location: FF_X11_Y7_N1
\ni[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add6~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ni(16));

-- Location: LCCOMB_X11_Y7_N2
\Add6~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~34_combout\ = (ni(17) & (!\Add6~33\)) # (!ni(17) & ((\Add6~33\) # (GND)))
-- \Add6~35\ = CARRY((!\Add6~33\) # (!ni(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ni(17),
	datad => VCC,
	cin => \Add6~33\,
	combout => \Add6~34_combout\,
	cout => \Add6~35\);

-- Location: FF_X11_Y7_N3
\ni[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add6~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ni(17));

-- Location: LCCOMB_X11_Y7_N4
\Add6~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~36_combout\ = (ni(18) & (\Add6~35\ $ (GND))) # (!ni(18) & (!\Add6~35\ & VCC))
-- \Add6~37\ = CARRY((ni(18) & !\Add6~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ni(18),
	datad => VCC,
	cin => \Add6~35\,
	combout => \Add6~36_combout\,
	cout => \Add6~37\);

-- Location: FF_X11_Y7_N5
\ni[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add6~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ni(18));

-- Location: LCCOMB_X11_Y7_N6
\Add6~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~38_combout\ = (ni(19) & (!\Add6~37\)) # (!ni(19) & ((\Add6~37\) # (GND)))
-- \Add6~39\ = CARRY((!\Add6~37\) # (!ni(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ni(19),
	datad => VCC,
	cin => \Add6~37\,
	combout => \Add6~38_combout\,
	cout => \Add6~39\);

-- Location: FF_X11_Y7_N7
\ni[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add6~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ni(19));

-- Location: LCCOMB_X11_Y7_N8
\Add6~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~40_combout\ = (ni(20) & (\Add6~39\ $ (GND))) # (!ni(20) & (!\Add6~39\ & VCC))
-- \Add6~41\ = CARRY((ni(20) & !\Add6~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ni(20),
	datad => VCC,
	cin => \Add6~39\,
	combout => \Add6~40_combout\,
	cout => \Add6~41\);

-- Location: FF_X11_Y7_N9
\ni[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add6~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ni(20));

-- Location: LCCOMB_X11_Y7_N10
\Add6~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~42_combout\ = (ni(21) & (!\Add6~41\)) # (!ni(21) & ((\Add6~41\) # (GND)))
-- \Add6~43\ = CARRY((!\Add6~41\) # (!ni(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ni(21),
	datad => VCC,
	cin => \Add6~41\,
	combout => \Add6~42_combout\,
	cout => \Add6~43\);

-- Location: FF_X11_Y7_N11
\ni[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add6~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ni(21));

-- Location: LCCOMB_X11_Y7_N12
\Add6~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~44_combout\ = (ni(22) & (\Add6~43\ $ (GND))) # (!ni(22) & (!\Add6~43\ & VCC))
-- \Add6~45\ = CARRY((ni(22) & !\Add6~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ni(22),
	datad => VCC,
	cin => \Add6~43\,
	combout => \Add6~44_combout\,
	cout => \Add6~45\);

-- Location: FF_X11_Y7_N13
\ni[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add6~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ni(22));

-- Location: LCCOMB_X11_Y7_N14
\Add6~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~46_combout\ = (ni(23) & (!\Add6~45\)) # (!ni(23) & ((\Add6~45\) # (GND)))
-- \Add6~47\ = CARRY((!\Add6~45\) # (!ni(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ni(23),
	datad => VCC,
	cin => \Add6~45\,
	combout => \Add6~46_combout\,
	cout => \Add6~47\);

-- Location: FF_X11_Y7_N15
\ni[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add6~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ni(23));

-- Location: LCCOMB_X11_Y7_N16
\Add6~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~48_combout\ = (ni(24) & (\Add6~47\ $ (GND))) # (!ni(24) & (!\Add6~47\ & VCC))
-- \Add6~49\ = CARRY((ni(24) & !\Add6~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ni(24),
	datad => VCC,
	cin => \Add6~47\,
	combout => \Add6~48_combout\,
	cout => \Add6~49\);

-- Location: FF_X11_Y7_N17
\ni[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add6~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ni(24));

-- Location: LCCOMB_X11_Y7_N18
\Add6~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~50_combout\ = (ni(25) & (!\Add6~49\)) # (!ni(25) & ((\Add6~49\) # (GND)))
-- \Add6~51\ = CARRY((!\Add6~49\) # (!ni(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ni(25),
	datad => VCC,
	cin => \Add6~49\,
	combout => \Add6~50_combout\,
	cout => \Add6~51\);

-- Location: FF_X11_Y7_N19
\ni[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add6~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ni(25));

-- Location: LCCOMB_X11_Y7_N20
\Add6~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~52_combout\ = (ni(26) & (\Add6~51\ $ (GND))) # (!ni(26) & (!\Add6~51\ & VCC))
-- \Add6~53\ = CARRY((ni(26) & !\Add6~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ni(26),
	datad => VCC,
	cin => \Add6~51\,
	combout => \Add6~52_combout\,
	cout => \Add6~53\);

-- Location: FF_X11_Y7_N21
\ni[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add6~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ni(26));

-- Location: LCCOMB_X11_Y7_N22
\Add6~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~54_combout\ = (ni(27) & (!\Add6~53\)) # (!ni(27) & ((\Add6~53\) # (GND)))
-- \Add6~55\ = CARRY((!\Add6~53\) # (!ni(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ni(27),
	datad => VCC,
	cin => \Add6~53\,
	combout => \Add6~54_combout\,
	cout => \Add6~55\);

-- Location: FF_X11_Y7_N23
\ni[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add6~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ni(27));

-- Location: LCCOMB_X11_Y7_N24
\Add6~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~56_combout\ = (ni(28) & (\Add6~55\ $ (GND))) # (!ni(28) & (!\Add6~55\ & VCC))
-- \Add6~57\ = CARRY((ni(28) & !\Add6~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ni(28),
	datad => VCC,
	cin => \Add6~55\,
	combout => \Add6~56_combout\,
	cout => \Add6~57\);

-- Location: FF_X11_Y7_N25
\ni[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add6~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ni(28));

-- Location: LCCOMB_X11_Y7_N26
\Add6~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~58_combout\ = (ni(29) & (!\Add6~57\)) # (!ni(29) & ((\Add6~57\) # (GND)))
-- \Add6~59\ = CARRY((!\Add6~57\) # (!ni(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ni(29),
	datad => VCC,
	cin => \Add6~57\,
	combout => \Add6~58_combout\,
	cout => \Add6~59\);

-- Location: FF_X11_Y7_N27
\ni[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add6~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ni(29));

-- Location: LCCOMB_X11_Y7_N28
\Add6~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~60_combout\ = (ni(30) & (\Add6~59\ $ (GND))) # (!ni(30) & (!\Add6~59\ & VCC))
-- \Add6~61\ = CARRY((ni(30) & !\Add6~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ni(30),
	datad => VCC,
	cin => \Add6~59\,
	combout => \Add6~60_combout\,
	cout => \Add6~61\);

-- Location: FF_X11_Y7_N29
\ni[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add6~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ni(30));

-- Location: LCCOMB_X11_Y7_N30
\Add6~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~62_combout\ = ni(31) $ (\Add6~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ni(31),
	cin => \Add6~61\,
	combout => \Add6~62_combout\);

-- Location: FF_X11_Y7_N31
\ni[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add6~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ni(31));

-- Location: LCCOMB_X12_Y7_N14
\Equal6~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal6~9_combout\ = (!ni(29) & (!ni(28) & (!ni(31) & !ni(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ni(29),
	datab => ni(28),
	datac => ni(31),
	datad => ni(30),
	combout => \Equal6~9_combout\);

-- Location: LCCOMB_X12_Y7_N0
\Equal6~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal6~8_combout\ = (!ni(24) & (!ni(26) & (!ni(27) & !ni(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ni(24),
	datab => ni(26),
	datac => ni(27),
	datad => ni(25),
	combout => \Equal6~8_combout\);

-- Location: LCCOMB_X12_Y8_N30
\Equal6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal6~1_combout\ = (!ni(7) & (!ni(4) & (!ni(6) & !ni(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ni(7),
	datab => ni(4),
	datac => ni(6),
	datad => ni(5),
	combout => \Equal6~1_combout\);

-- Location: LCCOMB_X12_Y8_N16
\Equal6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal6~2_combout\ = (ni(8) & (!ni(9) & (ni(11) & !ni(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ni(8),
	datab => ni(9),
	datac => ni(11),
	datad => ni(10),
	combout => \Equal6~2_combout\);

-- Location: LCCOMB_X12_Y8_N8
\Equal6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = (!ni(0) & (ni(2) & (!ni(3) & !ni(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ni(0),
	datab => ni(2),
	datac => ni(3),
	datad => ni(1),
	combout => \Equal6~0_combout\);

-- Location: LCCOMB_X12_Y8_N24
\Equal6~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal6~3_combout\ = (!ni(13) & (ni(15) & (ni(12) & ni(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ni(13),
	datab => ni(15),
	datac => ni(12),
	datad => ni(14),
	combout => \Equal6~3_combout\);

-- Location: LCCOMB_X12_Y8_N22
\Equal6~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal6~4_combout\ = (\Equal6~1_combout\ & (\Equal6~2_combout\ & (\Equal6~0_combout\ & \Equal6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~1_combout\,
	datab => \Equal6~2_combout\,
	datac => \Equal6~0_combout\,
	datad => \Equal6~3_combout\,
	combout => \Equal6~4_combout\);

-- Location: LCCOMB_X12_Y8_N4
\Equal6~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal6~5_combout\ = (!ni(16) & !ni(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ni(16),
	datad => ni(17),
	combout => \Equal6~5_combout\);

-- Location: LCCOMB_X12_Y8_N18
\Equal6~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal6~6_combout\ = (!ni(21) & (!ni(20) & (!ni(22) & !ni(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ni(21),
	datab => ni(20),
	datac => ni(22),
	datad => ni(23),
	combout => \Equal6~6_combout\);

-- Location: LCCOMB_X12_Y8_N28
\Equal6~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal6~7_combout\ = (!ni(19) & (!ni(18) & (\Equal6~5_combout\ & \Equal6~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ni(19),
	datab => ni(18),
	datac => \Equal6~5_combout\,
	datad => \Equal6~6_combout\,
	combout => \Equal6~7_combout\);

-- Location: LCCOMB_X12_Y8_N10
\Equal6~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal6~10_combout\ = (\Equal6~9_combout\ & (\Equal6~8_combout\ & (\Equal6~4_combout\ & \Equal6~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~9_combout\,
	datab => \Equal6~8_combout\,
	datac => \Equal6~4_combout\,
	datad => \Equal6~7_combout\,
	combout => \Equal6~10_combout\);

-- Location: LCCOMB_X17_Y9_N8
\t7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \t7~0_combout\ = \t7~q\ $ (\Equal6~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t7~q\,
	datad => \Equal6~10_combout\,
	combout => \t7~0_combout\);

-- Location: FF_X17_Y9_N9
t7 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \t7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t7~q\);

-- Location: LCCOMB_X16_Y9_N0
\Add5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~0_combout\ = dha(0) $ (VCC)
-- \Add5~1\ = CARRY(dha(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => dha(0),
	datad => VCC,
	combout => \Add5~0_combout\,
	cout => \Add5~1\);

-- Location: LCCOMB_X15_Y9_N6
\dha~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dha~1_combout\ = (\Add5~0_combout\ & !\Equal5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add5~0_combout\,
	datad => \Equal5~10_combout\,
	combout => \dha~1_combout\);

-- Location: FF_X15_Y9_N7
\dha[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \dha~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dha(0));

-- Location: LCCOMB_X16_Y9_N2
\Add5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~2_combout\ = (dha(1) & (!\Add5~1\)) # (!dha(1) & ((\Add5~1\) # (GND)))
-- \Add5~3\ = CARRY((!\Add5~1\) # (!dha(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => dha(1),
	datad => VCC,
	cin => \Add5~1\,
	combout => \Add5~2_combout\,
	cout => \Add5~3\);

-- Location: FF_X16_Y9_N3
\dha[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dha(1));

-- Location: LCCOMB_X16_Y9_N4
\Add5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~4_combout\ = (dha(2) & (\Add5~3\ $ (GND))) # (!dha(2) & (!\Add5~3\ & VCC))
-- \Add5~5\ = CARRY((dha(2) & !\Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => dha(2),
	datad => VCC,
	cin => \Add5~3\,
	combout => \Add5~4_combout\,
	cout => \Add5~5\);

-- Location: LCCOMB_X15_Y9_N16
\dha~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dha~0_combout\ = (\Add5~4_combout\ & !\Equal5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~4_combout\,
	datad => \Equal5~10_combout\,
	combout => \dha~0_combout\);

-- Location: FF_X15_Y9_N17
\dha[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \dha~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dha(2));

-- Location: LCCOMB_X16_Y9_N6
\Add5~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~6_combout\ = (dha(3) & (!\Add5~5\)) # (!dha(3) & ((\Add5~5\) # (GND)))
-- \Add5~7\ = CARRY((!\Add5~5\) # (!dha(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => dha(3),
	datad => VCC,
	cin => \Add5~5\,
	combout => \Add5~6_combout\,
	cout => \Add5~7\);

-- Location: FF_X16_Y9_N7
\dha[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add5~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dha(3));

-- Location: LCCOMB_X16_Y9_N8
\Add5~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~8_combout\ = (dha(4) & (\Add5~7\ $ (GND))) # (!dha(4) & (!\Add5~7\ & VCC))
-- \Add5~9\ = CARRY((dha(4) & !\Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => dha(4),
	datad => VCC,
	cin => \Add5~7\,
	combout => \Add5~8_combout\,
	cout => \Add5~9\);

-- Location: FF_X16_Y9_N9
\dha[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add5~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dha(4));

-- Location: LCCOMB_X16_Y9_N10
\Add5~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~10_combout\ = (dha(5) & (!\Add5~9\)) # (!dha(5) & ((\Add5~9\) # (GND)))
-- \Add5~11\ = CARRY((!\Add5~9\) # (!dha(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => dha(5),
	datad => VCC,
	cin => \Add5~9\,
	combout => \Add5~10_combout\,
	cout => \Add5~11\);

-- Location: LCCOMB_X15_Y9_N10
\dha~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dha~2_combout\ = (\Add5~10_combout\ & !\Equal5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add5~10_combout\,
	datad => \Equal5~10_combout\,
	combout => \dha~2_combout\);

-- Location: FF_X15_Y9_N11
\dha[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \dha~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dha(5));

-- Location: LCCOMB_X16_Y9_N12
\Add5~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~12_combout\ = (dha(6) & (\Add5~11\ $ (GND))) # (!dha(6) & (!\Add5~11\ & VCC))
-- \Add5~13\ = CARRY((dha(6) & !\Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => dha(6),
	datad => VCC,
	cin => \Add5~11\,
	combout => \Add5~12_combout\,
	cout => \Add5~13\);

-- Location: FF_X16_Y9_N13
\dha[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add5~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dha(6));

-- Location: LCCOMB_X16_Y9_N14
\Add5~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~14_combout\ = (dha(7) & (!\Add5~13\)) # (!dha(7) & ((\Add5~13\) # (GND)))
-- \Add5~15\ = CARRY((!\Add5~13\) # (!dha(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => dha(7),
	datad => VCC,
	cin => \Add5~13\,
	combout => \Add5~14_combout\,
	cout => \Add5~15\);

-- Location: FF_X16_Y9_N15
\dha[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add5~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dha(7));

-- Location: LCCOMB_X16_Y9_N16
\Add5~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~16_combout\ = (dha(8) & (\Add5~15\ $ (GND))) # (!dha(8) & (!\Add5~15\ & VCC))
-- \Add5~17\ = CARRY((dha(8) & !\Add5~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => dha(8),
	datad => VCC,
	cin => \Add5~15\,
	combout => \Add5~16_combout\,
	cout => \Add5~17\);

-- Location: FF_X16_Y9_N17
\dha[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add5~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dha(8));

-- Location: LCCOMB_X16_Y9_N18
\Add5~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~18_combout\ = (dha(9) & (!\Add5~17\)) # (!dha(9) & ((\Add5~17\) # (GND)))
-- \Add5~19\ = CARRY((!\Add5~17\) # (!dha(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => dha(9),
	datad => VCC,
	cin => \Add5~17\,
	combout => \Add5~18_combout\,
	cout => \Add5~19\);

-- Location: FF_X16_Y9_N19
\dha[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add5~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dha(9));

-- Location: LCCOMB_X16_Y9_N20
\Add5~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~20_combout\ = (dha(10) & (\Add5~19\ $ (GND))) # (!dha(10) & (!\Add5~19\ & VCC))
-- \Add5~21\ = CARRY((dha(10) & !\Add5~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => dha(10),
	datad => VCC,
	cin => \Add5~19\,
	combout => \Add5~20_combout\,
	cout => \Add5~21\);

-- Location: LCCOMB_X15_Y9_N30
\dha~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dha~3_combout\ = (\Add5~20_combout\ & !\Equal5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add5~20_combout\,
	datad => \Equal5~10_combout\,
	combout => \dha~3_combout\);

-- Location: FF_X15_Y9_N31
\dha[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \dha~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dha(10));

-- Location: LCCOMB_X16_Y9_N22
\Add5~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~22_combout\ = (dha(11) & (!\Add5~21\)) # (!dha(11) & ((\Add5~21\) # (GND)))
-- \Add5~23\ = CARRY((!\Add5~21\) # (!dha(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => dha(11),
	datad => VCC,
	cin => \Add5~21\,
	combout => \Add5~22_combout\,
	cout => \Add5~23\);

-- Location: FF_X16_Y9_N23
\dha[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add5~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dha(11));

-- Location: LCCOMB_X16_Y9_N24
\Add5~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~24_combout\ = (dha(12) & (\Add5~23\ $ (GND))) # (!dha(12) & (!\Add5~23\ & VCC))
-- \Add5~25\ = CARRY((dha(12) & !\Add5~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => dha(12),
	datad => VCC,
	cin => \Add5~23\,
	combout => \Add5~24_combout\,
	cout => \Add5~25\);

-- Location: LCCOMB_X15_Y9_N22
\dha~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dha~4_combout\ = (!\Equal5~10_combout\ & \Add5~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal5~10_combout\,
	datad => \Add5~24_combout\,
	combout => \dha~4_combout\);

-- Location: FF_X15_Y9_N23
\dha[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \dha~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dha(12));

-- Location: LCCOMB_X16_Y9_N26
\Add5~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~26_combout\ = (dha(13) & (!\Add5~25\)) # (!dha(13) & ((\Add5~25\) # (GND)))
-- \Add5~27\ = CARRY((!\Add5~25\) # (!dha(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => dha(13),
	datad => VCC,
	cin => \Add5~25\,
	combout => \Add5~26_combout\,
	cout => \Add5~27\);

-- Location: LCCOMB_X17_Y9_N4
\dha~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dha~5_combout\ = (\Add5~26_combout\ & !\Equal5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add5~26_combout\,
	datad => \Equal5~10_combout\,
	combout => \dha~5_combout\);

-- Location: FF_X17_Y9_N5
\dha[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \dha~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dha(13));

-- Location: LCCOMB_X16_Y9_N28
\Add5~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~28_combout\ = (dha(14) & (\Add5~27\ $ (GND))) # (!dha(14) & (!\Add5~27\ & VCC))
-- \Add5~29\ = CARRY((dha(14) & !\Add5~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => dha(14),
	datad => VCC,
	cin => \Add5~27\,
	combout => \Add5~28_combout\,
	cout => \Add5~29\);

-- Location: LCCOMB_X17_Y9_N22
\dha~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dha~6_combout\ = (!\Equal5~10_combout\ & \Add5~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal5~10_combout\,
	datad => \Add5~28_combout\,
	combout => \dha~6_combout\);

-- Location: FF_X17_Y9_N23
\dha[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \dha~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dha(14));

-- Location: LCCOMB_X16_Y9_N30
\Add5~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~30_combout\ = (dha(15) & (!\Add5~29\)) # (!dha(15) & ((\Add5~29\) # (GND)))
-- \Add5~31\ = CARRY((!\Add5~29\) # (!dha(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => dha(15),
	datad => VCC,
	cin => \Add5~29\,
	combout => \Add5~30_combout\,
	cout => \Add5~31\);

-- Location: LCCOMB_X15_Y9_N20
\dha~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dha~7_combout\ = (\Add5~30_combout\ & !\Equal5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add5~30_combout\,
	datad => \Equal5~10_combout\,
	combout => \dha~7_combout\);

-- Location: FF_X15_Y9_N21
\dha[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \dha~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dha(15));

-- Location: LCCOMB_X16_Y8_N0
\Add5~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~32_combout\ = (dha(16) & (\Add5~31\ $ (GND))) # (!dha(16) & (!\Add5~31\ & VCC))
-- \Add5~33\ = CARRY((dha(16) & !\Add5~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => dha(16),
	datad => VCC,
	cin => \Add5~31\,
	combout => \Add5~32_combout\,
	cout => \Add5~33\);

-- Location: FF_X16_Y8_N1
\dha[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add5~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dha(16));

-- Location: LCCOMB_X16_Y8_N2
\Add5~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~34_combout\ = (dha(17) & (!\Add5~33\)) # (!dha(17) & ((\Add5~33\) # (GND)))
-- \Add5~35\ = CARRY((!\Add5~33\) # (!dha(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => dha(17),
	datad => VCC,
	cin => \Add5~33\,
	combout => \Add5~34_combout\,
	cout => \Add5~35\);

-- Location: FF_X16_Y8_N3
\dha[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add5~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dha(17));

-- Location: LCCOMB_X16_Y8_N4
\Add5~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~36_combout\ = (dha(18) & (\Add5~35\ $ (GND))) # (!dha(18) & (!\Add5~35\ & VCC))
-- \Add5~37\ = CARRY((dha(18) & !\Add5~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => dha(18),
	datad => VCC,
	cin => \Add5~35\,
	combout => \Add5~36_combout\,
	cout => \Add5~37\);

-- Location: FF_X16_Y8_N5
\dha[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add5~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dha(18));

-- Location: LCCOMB_X16_Y8_N6
\Add5~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~38_combout\ = (dha(19) & (!\Add5~37\)) # (!dha(19) & ((\Add5~37\) # (GND)))
-- \Add5~39\ = CARRY((!\Add5~37\) # (!dha(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => dha(19),
	datad => VCC,
	cin => \Add5~37\,
	combout => \Add5~38_combout\,
	cout => \Add5~39\);

-- Location: FF_X16_Y8_N7
\dha[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add5~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dha(19));

-- Location: LCCOMB_X16_Y8_N8
\Add5~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~40_combout\ = (dha(20) & (\Add5~39\ $ (GND))) # (!dha(20) & (!\Add5~39\ & VCC))
-- \Add5~41\ = CARRY((dha(20) & !\Add5~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => dha(20),
	datad => VCC,
	cin => \Add5~39\,
	combout => \Add5~40_combout\,
	cout => \Add5~41\);

-- Location: FF_X16_Y8_N9
\dha[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add5~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dha(20));

-- Location: LCCOMB_X16_Y8_N10
\Add5~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~42_combout\ = (dha(21) & (!\Add5~41\)) # (!dha(21) & ((\Add5~41\) # (GND)))
-- \Add5~43\ = CARRY((!\Add5~41\) # (!dha(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => dha(21),
	datad => VCC,
	cin => \Add5~41\,
	combout => \Add5~42_combout\,
	cout => \Add5~43\);

-- Location: FF_X16_Y8_N11
\dha[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add5~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dha(21));

-- Location: LCCOMB_X16_Y8_N12
\Add5~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~44_combout\ = (dha(22) & (\Add5~43\ $ (GND))) # (!dha(22) & (!\Add5~43\ & VCC))
-- \Add5~45\ = CARRY((dha(22) & !\Add5~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => dha(22),
	datad => VCC,
	cin => \Add5~43\,
	combout => \Add5~44_combout\,
	cout => \Add5~45\);

-- Location: FF_X16_Y8_N13
\dha[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add5~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dha(22));

-- Location: LCCOMB_X16_Y8_N14
\Add5~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~46_combout\ = (dha(23) & (!\Add5~45\)) # (!dha(23) & ((\Add5~45\) # (GND)))
-- \Add5~47\ = CARRY((!\Add5~45\) # (!dha(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => dha(23),
	datad => VCC,
	cin => \Add5~45\,
	combout => \Add5~46_combout\,
	cout => \Add5~47\);

-- Location: FF_X16_Y8_N15
\dha[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add5~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dha(23));

-- Location: LCCOMB_X16_Y8_N16
\Add5~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~48_combout\ = (dha(24) & (\Add5~47\ $ (GND))) # (!dha(24) & (!\Add5~47\ & VCC))
-- \Add5~49\ = CARRY((dha(24) & !\Add5~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => dha(24),
	datad => VCC,
	cin => \Add5~47\,
	combout => \Add5~48_combout\,
	cout => \Add5~49\);

-- Location: FF_X16_Y8_N17
\dha[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add5~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dha(24));

-- Location: LCCOMB_X16_Y8_N18
\Add5~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~50_combout\ = (dha(25) & (!\Add5~49\)) # (!dha(25) & ((\Add5~49\) # (GND)))
-- \Add5~51\ = CARRY((!\Add5~49\) # (!dha(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => dha(25),
	datad => VCC,
	cin => \Add5~49\,
	combout => \Add5~50_combout\,
	cout => \Add5~51\);

-- Location: FF_X16_Y8_N19
\dha[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add5~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dha(25));

-- Location: LCCOMB_X16_Y8_N20
\Add5~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~52_combout\ = (dha(26) & (\Add5~51\ $ (GND))) # (!dha(26) & (!\Add5~51\ & VCC))
-- \Add5~53\ = CARRY((dha(26) & !\Add5~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => dha(26),
	datad => VCC,
	cin => \Add5~51\,
	combout => \Add5~52_combout\,
	cout => \Add5~53\);

-- Location: FF_X16_Y8_N21
\dha[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add5~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dha(26));

-- Location: LCCOMB_X16_Y8_N22
\Add5~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~54_combout\ = (dha(27) & (!\Add5~53\)) # (!dha(27) & ((\Add5~53\) # (GND)))
-- \Add5~55\ = CARRY((!\Add5~53\) # (!dha(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => dha(27),
	datad => VCC,
	cin => \Add5~53\,
	combout => \Add5~54_combout\,
	cout => \Add5~55\);

-- Location: FF_X16_Y8_N23
\dha[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add5~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dha(27));

-- Location: LCCOMB_X15_Y9_N26
\Equal5~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal5~8_combout\ = (!dha(26) & (!dha(27) & (!dha(24) & !dha(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dha(26),
	datab => dha(27),
	datac => dha(24),
	datad => dha(25),
	combout => \Equal5~8_combout\);

-- Location: LCCOMB_X16_Y8_N24
\Add5~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~56_combout\ = (dha(28) & (\Add5~55\ $ (GND))) # (!dha(28) & (!\Add5~55\ & VCC))
-- \Add5~57\ = CARRY((dha(28) & !\Add5~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => dha(28),
	datad => VCC,
	cin => \Add5~55\,
	combout => \Add5~56_combout\,
	cout => \Add5~57\);

-- Location: FF_X16_Y8_N25
\dha[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add5~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dha(28));

-- Location: LCCOMB_X16_Y8_N26
\Add5~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~58_combout\ = (dha(29) & (!\Add5~57\)) # (!dha(29) & ((\Add5~57\) # (GND)))
-- \Add5~59\ = CARRY((!\Add5~57\) # (!dha(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => dha(29),
	datad => VCC,
	cin => \Add5~57\,
	combout => \Add5~58_combout\,
	cout => \Add5~59\);

-- Location: FF_X16_Y8_N27
\dha[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add5~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dha(29));

-- Location: LCCOMB_X16_Y8_N28
\Add5~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~60_combout\ = (dha(30) & (\Add5~59\ $ (GND))) # (!dha(30) & (!\Add5~59\ & VCC))
-- \Add5~61\ = CARRY((dha(30) & !\Add5~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => dha(30),
	datad => VCC,
	cin => \Add5~59\,
	combout => \Add5~60_combout\,
	cout => \Add5~61\);

-- Location: FF_X16_Y8_N29
\dha[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add5~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dha(30));

-- Location: LCCOMB_X16_Y8_N30
\Add5~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~62_combout\ = dha(31) $ (\Add5~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => dha(31),
	cin => \Add5~61\,
	combout => \Add5~62_combout\);

-- Location: FF_X16_Y8_N31
\dha[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add5~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dha(31));

-- Location: LCCOMB_X15_Y8_N20
\Equal5~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal5~9_combout\ = (!dha(31) & (!dha(28) & (!dha(29) & !dha(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dha(31),
	datab => dha(28),
	datac => dha(29),
	datad => dha(30),
	combout => \Equal5~9_combout\);

-- Location: LCCOMB_X15_Y9_N12
\Equal5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (!dha(0) & (dha(2) & (!dha(1) & !dha(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dha(0),
	datab => dha(2),
	datac => dha(1),
	datad => dha(3),
	combout => \Equal5~0_combout\);

-- Location: LCCOMB_X15_Y9_N24
\Equal5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal5~2_combout\ = (!dha(9) & (!dha(8) & (dha(10) & !dha(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dha(9),
	datab => dha(8),
	datac => dha(10),
	datad => dha(11),
	combout => \Equal5~2_combout\);

-- Location: LCCOMB_X15_Y9_N8
\Equal5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal5~1_combout\ = (dha(5) & (!dha(7) & (!dha(6) & !dha(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dha(5),
	datab => dha(7),
	datac => dha(6),
	datad => dha(4),
	combout => \Equal5~1_combout\);

-- Location: LCCOMB_X17_Y9_N20
\Equal5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal5~3_combout\ = (dha(14) & (dha(13) & (dha(12) & dha(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dha(14),
	datab => dha(13),
	datac => dha(12),
	datad => dha(15),
	combout => \Equal5~3_combout\);

-- Location: LCCOMB_X15_Y9_N14
\Equal5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal5~4_combout\ = (\Equal5~0_combout\ & (\Equal5~2_combout\ & (\Equal5~1_combout\ & \Equal5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datab => \Equal5~2_combout\,
	datac => \Equal5~1_combout\,
	datad => \Equal5~3_combout\,
	combout => \Equal5~4_combout\);

-- Location: LCCOMB_X15_Y8_N22
\Equal5~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal5~6_combout\ = (!dha(22) & (!dha(20) & (!dha(21) & !dha(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dha(22),
	datab => dha(20),
	datac => dha(21),
	datad => dha(23),
	combout => \Equal5~6_combout\);

-- Location: LCCOMB_X15_Y8_N0
\Equal5~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal5~5_combout\ = (!dha(18) & (!dha(16) & (!dha(19) & !dha(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dha(18),
	datab => dha(16),
	datac => dha(19),
	datad => dha(17),
	combout => \Equal5~5_combout\);

-- Location: LCCOMB_X15_Y9_N0
\Equal5~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal5~7_combout\ = (\Equal5~6_combout\ & \Equal5~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal5~6_combout\,
	datad => \Equal5~5_combout\,
	combout => \Equal5~7_combout\);

-- Location: LCCOMB_X15_Y9_N28
\Equal5~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal5~10_combout\ = (\Equal5~8_combout\ & (\Equal5~9_combout\ & (\Equal5~4_combout\ & \Equal5~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~8_combout\,
	datab => \Equal5~9_combout\,
	datac => \Equal5~4_combout\,
	datad => \Equal5~7_combout\,
	combout => \Equal5~10_combout\);

-- Location: LCCOMB_X17_Y9_N6
\t6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \t6~0_combout\ = \t6~q\ $ (\Equal5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t6~q\,
	datad => \Equal5~10_combout\,
	combout => \t6~0_combout\);

-- Location: FF_X17_Y9_N7
t6 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \t6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t6~q\);

-- Location: LCCOMB_X17_Y9_N24
\clk_out~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_out~2_combout\ = (\SW7~input_o\ & (\t7~q\)) # (!\SW7~input_o\ & ((\t6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW7~input_o\,
	datac => \t7~q\,
	datad => \t6~q\,
	combout => \clk_out~2_combout\);

-- Location: LCCOMB_X17_Y9_N30
\clk_out~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_out~3_combout\ = (\SW8~input_o\ & ((\SW7~input_o\ & (\t8~q\)) # (!\SW7~input_o\ & ((\clk_out~2_combout\))))) # (!\SW8~input_o\ & (((\clk_out~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW8~input_o\,
	datab => \SW7~input_o\,
	datac => \t8~q\,
	datad => \clk_out~2_combout\,
	combout => \clk_out~3_combout\);

-- Location: LCCOMB_X28_Y10_N0
\Add4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = pa(0) $ (VCC)
-- \Add4~1\ = CARRY(pa(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pa(0),
	datad => VCC,
	combout => \Add4~0_combout\,
	cout => \Add4~1\);

-- Location: LCCOMB_X27_Y10_N16
\pa~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pa~1_combout\ = (\Add4~0_combout\ & !\Equal4~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add4~0_combout\,
	datad => \Equal4~10_combout\,
	combout => \pa~1_combout\);

-- Location: FF_X28_Y10_N13
\pa[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \pa~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pa(0));

-- Location: LCCOMB_X28_Y10_N2
\Add4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~2_combout\ = (pa(1) & (!\Add4~1\)) # (!pa(1) & ((\Add4~1\) # (GND)))
-- \Add4~3\ = CARRY((!\Add4~1\) # (!pa(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pa(1),
	datad => VCC,
	cin => \Add4~1\,
	combout => \Add4~2_combout\,
	cout => \Add4~3\);

-- Location: FF_X28_Y10_N3
\pa[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pa(1));

-- Location: LCCOMB_X28_Y10_N4
\Add4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~4_combout\ = (pa(2) & (\Add4~3\ $ (GND))) # (!pa(2) & (!\Add4~3\ & VCC))
-- \Add4~5\ = CARRY((pa(2) & !\Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pa(2),
	datad => VCC,
	cin => \Add4~3\,
	combout => \Add4~4_combout\,
	cout => \Add4~5\);

-- Location: LCCOMB_X27_Y10_N0
\pa~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pa~0_combout\ = (\Add4~4_combout\ & !\Equal4~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~4_combout\,
	datac => \Equal4~10_combout\,
	combout => \pa~0_combout\);

-- Location: FF_X27_Y10_N1
\pa[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \pa~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pa(2));

-- Location: LCCOMB_X28_Y10_N6
\Add4~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~6_combout\ = (pa(3) & (!\Add4~5\)) # (!pa(3) & ((\Add4~5\) # (GND)))
-- \Add4~7\ = CARRY((!\Add4~5\) # (!pa(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pa(3),
	datad => VCC,
	cin => \Add4~5\,
	combout => \Add4~6_combout\,
	cout => \Add4~7\);

-- Location: FF_X28_Y10_N7
\pa[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add4~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pa(3));

-- Location: LCCOMB_X28_Y10_N8
\Add4~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~8_combout\ = (pa(4) & (\Add4~7\ $ (GND))) # (!pa(4) & (!\Add4~7\ & VCC))
-- \Add4~9\ = CARRY((pa(4) & !\Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pa(4),
	datad => VCC,
	cin => \Add4~7\,
	combout => \Add4~8_combout\,
	cout => \Add4~9\);

-- Location: FF_X28_Y10_N9
\pa[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add4~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pa(4));

-- Location: LCCOMB_X28_Y10_N10
\Add4~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~10_combout\ = (pa(5) & (!\Add4~9\)) # (!pa(5) & ((\Add4~9\) # (GND)))
-- \Add4~11\ = CARRY((!\Add4~9\) # (!pa(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pa(5),
	datad => VCC,
	cin => \Add4~9\,
	combout => \Add4~10_combout\,
	cout => \Add4~11\);

-- Location: FF_X28_Y10_N11
\pa[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add4~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pa(5));

-- Location: LCCOMB_X28_Y10_N12
\Add4~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~12_combout\ = (pa(6) & (\Add4~11\ $ (GND))) # (!pa(6) & (!\Add4~11\ & VCC))
-- \Add4~13\ = CARRY((pa(6) & !\Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pa(6),
	datad => VCC,
	cin => \Add4~11\,
	combout => \Add4~12_combout\,
	cout => \Add4~13\);

-- Location: LCCOMB_X27_Y10_N8
\pa~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pa~2_combout\ = (\Add4~12_combout\ & !\Equal4~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add4~12_combout\,
	datad => \Equal4~10_combout\,
	combout => \pa~2_combout\);

-- Location: FF_X27_Y10_N9
\pa[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \pa~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pa(6));

-- Location: LCCOMB_X28_Y10_N14
\Add4~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~14_combout\ = (pa(7) & (!\Add4~13\)) # (!pa(7) & ((\Add4~13\) # (GND)))
-- \Add4~15\ = CARRY((!\Add4~13\) # (!pa(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pa(7),
	datad => VCC,
	cin => \Add4~13\,
	combout => \Add4~14_combout\,
	cout => \Add4~15\);

-- Location: FF_X28_Y10_N15
\pa[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add4~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pa(7));

-- Location: LCCOMB_X28_Y10_N16
\Add4~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~16_combout\ = (pa(8) & (\Add4~15\ $ (GND))) # (!pa(8) & (!\Add4~15\ & VCC))
-- \Add4~17\ = CARRY((pa(8) & !\Add4~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pa(8),
	datad => VCC,
	cin => \Add4~15\,
	combout => \Add4~16_combout\,
	cout => \Add4~17\);

-- Location: LCCOMB_X27_Y10_N12
\pa~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pa~3_combout\ = (!\Equal4~10_combout\ & \Add4~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal4~10_combout\,
	datad => \Add4~16_combout\,
	combout => \pa~3_combout\);

-- Location: FF_X27_Y10_N13
\pa[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \pa~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pa(8));

-- Location: LCCOMB_X28_Y10_N18
\Add4~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~18_combout\ = (pa(9) & (!\Add4~17\)) # (!pa(9) & ((\Add4~17\) # (GND)))
-- \Add4~19\ = CARRY((!\Add4~17\) # (!pa(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pa(9),
	datad => VCC,
	cin => \Add4~17\,
	combout => \Add4~18_combout\,
	cout => \Add4~19\);

-- Location: LCCOMB_X27_Y10_N22
\pa~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pa~4_combout\ = (!\Equal4~10_combout\ & \Add4~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal4~10_combout\,
	datad => \Add4~18_combout\,
	combout => \pa~4_combout\);

-- Location: FF_X27_Y10_N23
\pa[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \pa~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pa(9));

-- Location: LCCOMB_X28_Y10_N20
\Add4~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~20_combout\ = (pa(10) & (\Add4~19\ $ (GND))) # (!pa(10) & (!\Add4~19\ & VCC))
-- \Add4~21\ = CARRY((pa(10) & !\Add4~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pa(10),
	datad => VCC,
	cin => \Add4~19\,
	combout => \Add4~20_combout\,
	cout => \Add4~21\);

-- Location: LCCOMB_X27_Y10_N24
\pa~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pa~5_combout\ = (\Add4~20_combout\ & !\Equal4~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add4~20_combout\,
	datad => \Equal4~10_combout\,
	combout => \pa~5_combout\);

-- Location: FF_X27_Y10_N25
\pa[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \pa~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pa(10));

-- Location: LCCOMB_X28_Y10_N22
\Add4~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~22_combout\ = (pa(11) & (!\Add4~21\)) # (!pa(11) & ((\Add4~21\) # (GND)))
-- \Add4~23\ = CARRY((!\Add4~21\) # (!pa(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pa(11),
	datad => VCC,
	cin => \Add4~21\,
	combout => \Add4~22_combout\,
	cout => \Add4~23\);

-- Location: LCCOMB_X27_Y10_N10
\pa~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pa~6_combout\ = (!\Equal4~10_combout\ & \Add4~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal4~10_combout\,
	datad => \Add4~22_combout\,
	combout => \pa~6_combout\);

-- Location: FF_X27_Y10_N11
\pa[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \pa~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pa(11));

-- Location: LCCOMB_X28_Y10_N24
\Add4~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~24_combout\ = (pa(12) & (\Add4~23\ $ (GND))) # (!pa(12) & (!\Add4~23\ & VCC))
-- \Add4~25\ = CARRY((pa(12) & !\Add4~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pa(12),
	datad => VCC,
	cin => \Add4~23\,
	combout => \Add4~24_combout\,
	cout => \Add4~25\);

-- Location: FF_X28_Y10_N25
\pa[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add4~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pa(12));

-- Location: LCCOMB_X28_Y10_N26
\Add4~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~26_combout\ = (pa(13) & (!\Add4~25\)) # (!pa(13) & ((\Add4~25\) # (GND)))
-- \Add4~27\ = CARRY((!\Add4~25\) # (!pa(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pa(13),
	datad => VCC,
	cin => \Add4~25\,
	combout => \Add4~26_combout\,
	cout => \Add4~27\);

-- Location: FF_X28_Y10_N27
\pa[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add4~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pa(13));

-- Location: LCCOMB_X28_Y10_N28
\Add4~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~28_combout\ = (pa(14) & (\Add4~27\ $ (GND))) # (!pa(14) & (!\Add4~27\ & VCC))
-- \Add4~29\ = CARRY((pa(14) & !\Add4~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pa(14),
	datad => VCC,
	cin => \Add4~27\,
	combout => \Add4~28_combout\,
	cout => \Add4~29\);

-- Location: FF_X28_Y10_N29
\pa[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add4~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pa(14));

-- Location: LCCOMB_X28_Y10_N30
\Add4~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~30_combout\ = (pa(15) & (!\Add4~29\)) # (!pa(15) & ((\Add4~29\) # (GND)))
-- \Add4~31\ = CARRY((!\Add4~29\) # (!pa(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pa(15),
	datad => VCC,
	cin => \Add4~29\,
	combout => \Add4~30_combout\,
	cout => \Add4~31\);

-- Location: FF_X28_Y10_N31
\pa[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add4~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pa(15));

-- Location: LCCOMB_X28_Y9_N0
\Add4~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~32_combout\ = (pa(16) & (\Add4~31\ $ (GND))) # (!pa(16) & (!\Add4~31\ & VCC))
-- \Add4~33\ = CARRY((pa(16) & !\Add4~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pa(16),
	datad => VCC,
	cin => \Add4~31\,
	combout => \Add4~32_combout\,
	cout => \Add4~33\);

-- Location: LCCOMB_X27_Y10_N30
\pa~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pa~7_combout\ = (!\Equal4~10_combout\ & \Add4~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal4~10_combout\,
	datad => \Add4~32_combout\,
	combout => \pa~7_combout\);

-- Location: FF_X27_Y10_N31
\pa[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \pa~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pa(16));

-- Location: LCCOMB_X28_Y9_N2
\Add4~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~34_combout\ = (pa(17) & (!\Add4~33\)) # (!pa(17) & ((\Add4~33\) # (GND)))
-- \Add4~35\ = CARRY((!\Add4~33\) # (!pa(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pa(17),
	datad => VCC,
	cin => \Add4~33\,
	combout => \Add4~34_combout\,
	cout => \Add4~35\);

-- Location: FF_X28_Y9_N3
\pa[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add4~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pa(17));

-- Location: LCCOMB_X28_Y9_N4
\Add4~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~36_combout\ = (pa(18) & (\Add4~35\ $ (GND))) # (!pa(18) & (!\Add4~35\ & VCC))
-- \Add4~37\ = CARRY((pa(18) & !\Add4~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pa(18),
	datad => VCC,
	cin => \Add4~35\,
	combout => \Add4~36_combout\,
	cout => \Add4~37\);

-- Location: FF_X28_Y9_N5
\pa[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add4~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pa(18));

-- Location: LCCOMB_X28_Y9_N6
\Add4~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~38_combout\ = (pa(19) & (!\Add4~37\)) # (!pa(19) & ((\Add4~37\) # (GND)))
-- \Add4~39\ = CARRY((!\Add4~37\) # (!pa(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pa(19),
	datad => VCC,
	cin => \Add4~37\,
	combout => \Add4~38_combout\,
	cout => \Add4~39\);

-- Location: FF_X28_Y9_N7
\pa[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add4~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pa(19));

-- Location: LCCOMB_X28_Y9_N8
\Add4~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~40_combout\ = (pa(20) & (\Add4~39\ $ (GND))) # (!pa(20) & (!\Add4~39\ & VCC))
-- \Add4~41\ = CARRY((pa(20) & !\Add4~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pa(20),
	datad => VCC,
	cin => \Add4~39\,
	combout => \Add4~40_combout\,
	cout => \Add4~41\);

-- Location: FF_X28_Y9_N9
\pa[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add4~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pa(20));

-- Location: LCCOMB_X28_Y9_N10
\Add4~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~42_combout\ = (pa(21) & (!\Add4~41\)) # (!pa(21) & ((\Add4~41\) # (GND)))
-- \Add4~43\ = CARRY((!\Add4~41\) # (!pa(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pa(21),
	datad => VCC,
	cin => \Add4~41\,
	combout => \Add4~42_combout\,
	cout => \Add4~43\);

-- Location: FF_X28_Y9_N11
\pa[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add4~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pa(21));

-- Location: LCCOMB_X28_Y9_N12
\Add4~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~44_combout\ = (pa(22) & (\Add4~43\ $ (GND))) # (!pa(22) & (!\Add4~43\ & VCC))
-- \Add4~45\ = CARRY((pa(22) & !\Add4~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pa(22),
	datad => VCC,
	cin => \Add4~43\,
	combout => \Add4~44_combout\,
	cout => \Add4~45\);

-- Location: FF_X28_Y9_N13
\pa[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add4~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pa(22));

-- Location: LCCOMB_X28_Y9_N14
\Add4~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~46_combout\ = (pa(23) & (!\Add4~45\)) # (!pa(23) & ((\Add4~45\) # (GND)))
-- \Add4~47\ = CARRY((!\Add4~45\) # (!pa(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pa(23),
	datad => VCC,
	cin => \Add4~45\,
	combout => \Add4~46_combout\,
	cout => \Add4~47\);

-- Location: FF_X28_Y9_N15
\pa[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add4~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pa(23));

-- Location: LCCOMB_X27_Y9_N0
\Equal4~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~6_combout\ = (!pa(21) & (!pa(20) & (!pa(23) & !pa(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pa(21),
	datab => pa(20),
	datac => pa(23),
	datad => pa(22),
	combout => \Equal4~6_combout\);

-- Location: LCCOMB_X27_Y10_N26
\Equal4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (!pa(1) & (pa(2) & (!pa(3) & !pa(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pa(1),
	datab => pa(2),
	datac => pa(3),
	datad => pa(0),
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X27_Y10_N28
\Equal4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~2_combout\ = (pa(8) & (pa(11) & (pa(9) & pa(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pa(8),
	datab => pa(11),
	datac => pa(9),
	datad => pa(10),
	combout => \Equal4~2_combout\);

-- Location: LCCOMB_X27_Y10_N14
\Equal4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~1_combout\ = (!pa(4) & (!pa(5) & (!pa(7) & pa(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pa(4),
	datab => pa(5),
	datac => pa(7),
	datad => pa(6),
	combout => \Equal4~1_combout\);

-- Location: LCCOMB_X27_Y10_N2
\Equal4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~3_combout\ = (!pa(15) & (!pa(14) & (!pa(13) & !pa(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pa(15),
	datab => pa(14),
	datac => pa(13),
	datad => pa(12),
	combout => \Equal4~3_combout\);

-- Location: LCCOMB_X27_Y10_N20
\Equal4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~4_combout\ = (\Equal4~0_combout\ & (\Equal4~2_combout\ & (\Equal4~1_combout\ & \Equal4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~0_combout\,
	datab => \Equal4~2_combout\,
	datac => \Equal4~1_combout\,
	datad => \Equal4~3_combout\,
	combout => \Equal4~4_combout\);

-- Location: LCCOMB_X27_Y10_N4
\Equal4~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~5_combout\ = (!pa(19) & (pa(16) & (!pa(17) & !pa(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pa(19),
	datab => pa(16),
	datac => pa(17),
	datad => pa(18),
	combout => \Equal4~5_combout\);

-- Location: LCCOMB_X28_Y9_N16
\Add4~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~48_combout\ = (pa(24) & (\Add4~47\ $ (GND))) # (!pa(24) & (!\Add4~47\ & VCC))
-- \Add4~49\ = CARRY((pa(24) & !\Add4~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pa(24),
	datad => VCC,
	cin => \Add4~47\,
	combout => \Add4~48_combout\,
	cout => \Add4~49\);

-- Location: FF_X28_Y9_N17
\pa[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add4~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pa(24));

-- Location: LCCOMB_X28_Y9_N18
\Add4~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~50_combout\ = (pa(25) & (!\Add4~49\)) # (!pa(25) & ((\Add4~49\) # (GND)))
-- \Add4~51\ = CARRY((!\Add4~49\) # (!pa(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pa(25),
	datad => VCC,
	cin => \Add4~49\,
	combout => \Add4~50_combout\,
	cout => \Add4~51\);

-- Location: FF_X28_Y9_N19
\pa[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add4~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pa(25));

-- Location: LCCOMB_X28_Y9_N20
\Add4~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~52_combout\ = (pa(26) & (\Add4~51\ $ (GND))) # (!pa(26) & (!\Add4~51\ & VCC))
-- \Add4~53\ = CARRY((pa(26) & !\Add4~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pa(26),
	datad => VCC,
	cin => \Add4~51\,
	combout => \Add4~52_combout\,
	cout => \Add4~53\);

-- Location: FF_X28_Y9_N21
\pa[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add4~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pa(26));

-- Location: LCCOMB_X28_Y9_N22
\Add4~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~54_combout\ = (pa(27) & (!\Add4~53\)) # (!pa(27) & ((\Add4~53\) # (GND)))
-- \Add4~55\ = CARRY((!\Add4~53\) # (!pa(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pa(27),
	datad => VCC,
	cin => \Add4~53\,
	combout => \Add4~54_combout\,
	cout => \Add4~55\);

-- Location: FF_X28_Y9_N23
\pa[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add4~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pa(27));

-- Location: LCCOMB_X27_Y9_N30
\Equal4~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~7_combout\ = (!pa(26) & (!pa(24) & (!pa(27) & !pa(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pa(26),
	datab => pa(24),
	datac => pa(27),
	datad => pa(25),
	combout => \Equal4~7_combout\);

-- Location: LCCOMB_X28_Y9_N24
\Add4~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~56_combout\ = (pa(28) & (\Add4~55\ $ (GND))) # (!pa(28) & (!\Add4~55\ & VCC))
-- \Add4~57\ = CARRY((pa(28) & !\Add4~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pa(28),
	datad => VCC,
	cin => \Add4~55\,
	combout => \Add4~56_combout\,
	cout => \Add4~57\);

-- Location: FF_X28_Y9_N25
\pa[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add4~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pa(28));

-- Location: LCCOMB_X28_Y9_N26
\Add4~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~58_combout\ = (pa(29) & (!\Add4~57\)) # (!pa(29) & ((\Add4~57\) # (GND)))
-- \Add4~59\ = CARRY((!\Add4~57\) # (!pa(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pa(29),
	datad => VCC,
	cin => \Add4~57\,
	combout => \Add4~58_combout\,
	cout => \Add4~59\);

-- Location: FF_X28_Y9_N27
\pa[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add4~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pa(29));

-- Location: LCCOMB_X28_Y9_N28
\Add4~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~60_combout\ = (pa(30) & (\Add4~59\ $ (GND))) # (!pa(30) & (!\Add4~59\ & VCC))
-- \Add4~61\ = CARRY((pa(30) & !\Add4~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pa(30),
	datad => VCC,
	cin => \Add4~59\,
	combout => \Add4~60_combout\,
	cout => \Add4~61\);

-- Location: FF_X28_Y9_N29
\pa[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add4~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pa(30));

-- Location: LCCOMB_X28_Y9_N30
\Add4~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~62_combout\ = pa(31) $ (\Add4~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pa(31),
	cin => \Add4~61\,
	combout => \Add4~62_combout\);

-- Location: FF_X28_Y9_N31
\pa[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add4~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pa(31));

-- Location: LCCOMB_X27_Y9_N28
\Equal4~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~8_combout\ = (!pa(28) & (!pa(30) & (!pa(31) & !pa(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pa(28),
	datab => pa(30),
	datac => pa(31),
	datad => pa(29),
	combout => \Equal4~8_combout\);

-- Location: LCCOMB_X27_Y9_N10
\Equal4~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~9_combout\ = (\Equal4~7_combout\ & \Equal4~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal4~7_combout\,
	datad => \Equal4~8_combout\,
	combout => \Equal4~9_combout\);

-- Location: LCCOMB_X27_Y10_N6
\Equal4~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~10_combout\ = (\Equal4~6_combout\ & (\Equal4~4_combout\ & (\Equal4~5_combout\ & \Equal4~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~6_combout\,
	datab => \Equal4~4_combout\,
	datac => \Equal4~5_combout\,
	datad => \Equal4~9_combout\,
	combout => \Equal4~10_combout\);

-- Location: LCCOMB_X26_Y9_N12
\t5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \t5~0_combout\ = \t5~q\ $ (\Equal4~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t5~q\,
	datad => \Equal4~10_combout\,
	combout => \t5~0_combout\);

-- Location: FF_X26_Y9_N13
t5 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \t5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t5~q\);

-- Location: LCCOMB_X17_Y9_N28
\clk_out~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_out~4_combout\ = (\proc~0_combout\ & ((\SW6~input_o\ & (\clk_out~3_combout\)) # (!\SW6~input_o\ & ((\t5~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc~0_combout\,
	datab => \SW6~input_o\,
	datac => \clk_out~3_combout\,
	datad => \t5~q\,
	combout => \clk_out~4_combout\);

-- Location: LCCOMB_X17_Y9_N10
\clk_out~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_out~5_combout\ = (\clk_out~1_combout\) # ((\clk_out~4_combout\) # ((!\SW2~input_o\ & \t1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW2~input_o\,
	datab => \t1~q\,
	datac => \clk_out~1_combout\,
	datad => \clk_out~4_combout\,
	combout => \clk_out~5_combout\);

-- Location: LCCOMB_X17_Y9_N26
\clk_out$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_out$latch~combout\ = (\SW1~input_o\ & ((\clk_out~5_combout\))) # (!\SW1~input_o\ & (\clk_out$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_out$latch~combout\,
	datac => \SW1~input_o\,
	datad => \clk_out~5_combout\,
	combout => \clk_out$latch~combout\);

-- Location: LCCOMB_X19_Y9_N28
\proc~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \proc~1_combout\ = (\SW1~input_o\ & \SW2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW1~input_o\,
	datad => \SW2~input_o\,
	combout => \proc~1_combout\);

-- Location: LCCOMB_X19_Y9_N22
\comb~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = (\SW2~input_o\) # (!\SW1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW1~input_o\,
	datad => \SW2~input_o\,
	combout => \comb~0_combout\);

-- Location: LCCOMB_X19_Y9_N0
\L1$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \L1$latch~combout\ = (!\proc~1_combout\ & ((\L1$latch~combout\) # (!\comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc~1_combout\,
	datac => \comb~0_combout\,
	datad => \L1$latch~combout\,
	combout => \L1$latch~combout\);

-- Location: LCCOMB_X19_Y9_N26
\L2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \L2~0_combout\ = (!\SW3~input_o\ & (\SW1~input_o\ & \SW2~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW3~input_o\,
	datac => \SW1~input_o\,
	datad => \SW2~input_o\,
	combout => \L2~0_combout\);

-- Location: LCCOMB_X19_Y9_N4
\comb~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = (\SW1~input_o\ & ((\SW3~input_o\) # (!\SW2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW3~input_o\,
	datac => \SW1~input_o\,
	datad => \SW2~input_o\,
	combout => \comb~1_combout\);

-- Location: LCCOMB_X19_Y9_N2
\L2$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \L2$latch~combout\ = (!\comb~1_combout\ & ((\L2~0_combout\) # (\L2$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L2~0_combout\,
	datac => \comb~1_combout\,
	datad => \L2$latch~combout\,
	combout => \L2$latch~combout\);

-- Location: LCCOMB_X19_Y9_N12
\comb~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = (\SW1~input_o\ & (((\SW4~input_o\) # (!\SW2~input_o\)) # (!\SW3~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW1~input_o\,
	datab => \SW3~input_o\,
	datac => \SW4~input_o\,
	datad => \SW2~input_o\,
	combout => \comb~2_combout\);

-- Location: LCCOMB_X19_Y9_N6
\L3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \L3~0_combout\ = (\SW1~input_o\ & (\SW3~input_o\ & (!\SW4~input_o\ & \SW2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW1~input_o\,
	datab => \SW3~input_o\,
	datac => \SW4~input_o\,
	datad => \SW2~input_o\,
	combout => \L3~0_combout\);

-- Location: LCCOMB_X20_Y9_N28
\L3$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \L3$latch~combout\ = (!\comb~2_combout\ & ((\L3~0_combout\) # (\L3$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~2_combout\,
	datac => \L3~0_combout\,
	datad => \L3$latch~combout\,
	combout => \L3$latch~combout\);

-- Location: LCCOMB_X19_Y9_N8
\L4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \L4~0_combout\ = (\SW4~input_o\ & (\SW3~input_o\ & (!\SW5~input_o\ & \proc~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW4~input_o\,
	datab => \SW3~input_o\,
	datac => \SW5~input_o\,
	datad => \proc~1_combout\,
	combout => \L4~0_combout\);

-- Location: LCCOMB_X17_Y4_N4
\comb~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~3_combout\ = (\SW1~input_o\ & !\L4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW1~input_o\,
	datad => \L4~0_combout\,
	combout => \comb~3_combout\);

-- Location: LCCOMB_X17_Y4_N20
\L4$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \L4$latch~combout\ = (!\comb~3_combout\ & ((\L4~0_combout\) # (\L4$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L4~0_combout\,
	datac => \comb~3_combout\,
	datad => \L4$latch~combout\,
	combout => \L4$latch~combout\);

-- Location: LCCOMB_X19_Y9_N18
\proc~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \proc~2_combout\ = (\SW4~input_o\ & (\SW3~input_o\ & (\SW5~input_o\ & \proc~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW4~input_o\,
	datab => \SW3~input_o\,
	datac => \SW5~input_o\,
	datad => \proc~1_combout\,
	combout => \proc~2_combout\);

-- Location: LCCOMB_X17_Y4_N8
\comb~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~5_combout\ = (\SW1~input_o\ & (\proc~2_combout\ & !\SW6~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW1~input_o\,
	datac => \proc~2_combout\,
	datad => \SW6~input_o\,
	combout => \comb~5_combout\);

-- Location: LCCOMB_X17_Y4_N14
\comb~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~4_combout\ = (\SW1~input_o\ & ((\SW6~input_o\) # (!\proc~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW1~input_o\,
	datac => \proc~2_combout\,
	datad => \SW6~input_o\,
	combout => \comb~4_combout\);

-- Location: LCCOMB_X17_Y4_N6
\L5$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \L5$latch~combout\ = (!\comb~4_combout\ & ((\comb~5_combout\) # (\L5$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb~5_combout\,
	datac => \comb~4_combout\,
	datad => \L5$latch~combout\,
	combout => \L5$latch~combout\);

-- Location: LCCOMB_X17_Y4_N16
\comb~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~7_combout\ = (\SW1~input_o\ & (\SW6~input_o\ & (\proc~2_combout\ & !\SW7~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW1~input_o\,
	datab => \SW6~input_o\,
	datac => \proc~2_combout\,
	datad => \SW7~input_o\,
	combout => \comb~7_combout\);

-- Location: LCCOMB_X17_Y4_N26
\comb~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~6_combout\ = (\SW1~input_o\ & (((\SW7~input_o\) # (!\proc~2_combout\)) # (!\SW6~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW1~input_o\,
	datab => \SW6~input_o\,
	datac => \proc~2_combout\,
	datad => \SW7~input_o\,
	combout => \comb~6_combout\);

-- Location: LCCOMB_X17_Y4_N24
\L6$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \L6$latch~combout\ = (!\comb~6_combout\ & ((\comb~7_combout\) # (\L6$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb~7_combout\,
	datac => \comb~6_combout\,
	datad => \L6$latch~combout\,
	combout => \L6$latch~combout\);

-- Location: LCCOMB_X17_Y4_N12
\comb~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~10_combout\ = (\SW8~input_o\) # (((!\SW7~input_o\) # (!\proc~2_combout\)) # (!\SW6~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW8~input_o\,
	datab => \SW6~input_o\,
	datac => \proc~2_combout\,
	datad => \SW7~input_o\,
	combout => \comb~10_combout\);

-- Location: LCCOMB_X17_Y4_N28
\comb~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~8_combout\ = (\SW1~input_o\ & (((!\SW7~input_o\) # (!\proc~2_combout\)) # (!\SW6~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW1~input_o\,
	datab => \SW6~input_o\,
	datac => \proc~2_combout\,
	datad => \SW7~input_o\,
	combout => \comb~8_combout\);

-- Location: LCCOMB_X17_Y4_N30
\proc~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \proc~3_combout\ = (\SW8~input_o\ & (\SW6~input_o\ & (\proc~2_combout\ & \SW7~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW8~input_o\,
	datab => \SW6~input_o\,
	datac => \proc~2_combout\,
	datad => \SW7~input_o\,
	combout => \proc~3_combout\);

-- Location: LCCOMB_X17_Y4_N22
\comb~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~9_combout\ = (\comb~8_combout\) # (\proc~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb~8_combout\,
	datac => \proc~3_combout\,
	combout => \comb~9_combout\);

-- Location: LCCOMB_X17_Y4_N10
\L7$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \L7$latch~combout\ = (!\comb~9_combout\ & ((\L7$latch~combout\) # (!\comb~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~10_combout\,
	datac => \comb~9_combout\,
	datad => \L7$latch~combout\,
	combout => \L7$latch~combout\);

-- Location: LCCOMB_X17_Y4_N18
\comb~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~11_combout\ = (\proc~3_combout\) # (!\SW1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc~3_combout\,
	datac => \SW1~input_o\,
	combout => \comb~11_combout\);

-- Location: LCCOMB_X17_Y4_N0
\L8$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \L8$latch~combout\ = (\comb~11_combout\ & ((\proc~3_combout\) # (\L8$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb~11_combout\,
	datac => \proc~3_combout\,
	datad => \L8$latch~combout\,
	combout => \L8$latch~combout\);

-- Location: UNVM_X0_Y22_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X25_Y34_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X25_Y33_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_clk_out <= \clk_out~output_o\;

ww_L1 <= \L1~output_o\;

ww_L2 <= \L2~output_o\;

ww_L3 <= \L3~output_o\;

ww_L4 <= \L4~output_o\;

ww_L5 <= \L5~output_o\;

ww_L6 <= \L6~output_o\;

ww_L7 <= \L7~output_o\;

ww_L8 <= \L8~output_o\;
END structure;


