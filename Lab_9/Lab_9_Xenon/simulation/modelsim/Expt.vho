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

-- DATE "10/13/2022 15:49:56"

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
	clk_50 : IN std_logic;
	resetn : IN std_logic
	);
END clock_divider;

-- Design Ports Information
-- clk_out	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resetn	=>  Location: PIN_47,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_clk_50 : std_logic;
SIGNAL ww_resetn : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \clk_out~output_o\ : std_logic;
SIGNAL \clk_50~input_o\ : std_logic;
SIGNAL \clk_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \resetn~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \a~12_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \a~11_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \a~10_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \a~9_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \a~8_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \a~7_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \a~6_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \a~5_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \a~4_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \a~3_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \a~2_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \a~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \a~0_combout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \temp~0_combout\ : std_logic;
SIGNAL \temp~q\ : std_logic;
SIGNAL a : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_resetn~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

clk_out <= ww_clk_out;
ww_clk_50 <= clk_50;
ww_resetn <= resetn;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_50~input_o\);
\ALT_INV_resetn~input_o\ <= NOT \resetn~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X26_Y24_N12
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

-- Location: IOOBUF_X24_Y0_N2
\clk_out~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp~q\,
	devoe => ww_devoe,
	o => \clk_out~output_o\);

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

-- Location: IOIBUF_X14_Y0_N1
\resetn~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_resetn,
	o => \resetn~input_o\);

-- Location: LCCOMB_X20_Y2_N0
\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = a(0) $ (VCC)
-- \Add0~1\ = CARRY(a(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => a(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X21_Y2_N0
\a~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a~12_combout\ = (\Add0~0_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~0_combout\,
	datad => \Equal0~10_combout\,
	combout => \a~12_combout\);

-- Location: FF_X20_Y2_N31
\a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \a~12_combout\,
	clrn => \ALT_INV_resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a(0));

-- Location: LCCOMB_X20_Y2_N2
\Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (a(1) & (!\Add0~1\)) # (!a(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!a(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => a(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: FF_X20_Y2_N3
\a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~2_combout\,
	clrn => \ALT_INV_resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a(1));

-- Location: LCCOMB_X20_Y2_N4
\Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (a(2) & (\Add0~3\ $ (GND))) # (!a(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((a(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => a(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X20_Y2_N5
\a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~4_combout\,
	clrn => \ALT_INV_resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a(2));

-- Location: LCCOMB_X20_Y2_N6
\Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (a(3) & (!\Add0~5\)) # (!a(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!a(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => a(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: FF_X20_Y2_N7
\a[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~6_combout\,
	clrn => \ALT_INV_resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a(3));

-- Location: LCCOMB_X21_Y2_N22
\Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (!a(1) & (!a(3) & (!a(2) & !a(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => a(1),
	datab => a(3),
	datac => a(2),
	datad => a(0),
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X20_Y2_N8
\Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (a(4) & (\Add0~7\ $ (GND))) # (!a(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((a(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => a(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: FF_X20_Y2_N9
\a[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~8_combout\,
	clrn => \ALT_INV_resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a(4));

-- Location: LCCOMB_X20_Y2_N10
\Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (a(5) & (!\Add0~9\)) # (!a(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!a(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => a(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: FF_X20_Y2_N11
\a[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~10_combout\,
	clrn => \ALT_INV_resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a(5));

-- Location: LCCOMB_X20_Y2_N12
\Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (a(6) & (\Add0~11\ $ (GND))) # (!a(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((a(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => a(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: FF_X20_Y2_N13
\a[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~12_combout\,
	clrn => \ALT_INV_resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a(6));

-- Location: LCCOMB_X20_Y2_N14
\Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (a(7) & (!\Add0~13\)) # (!a(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!a(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => a(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X21_Y2_N10
\a~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a~11_combout\ = (!\Equal0~10_combout\ & \Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~10_combout\,
	datad => \Add0~14_combout\,
	combout => \a~11_combout\);

-- Location: FF_X20_Y2_N27
\a[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \a~11_combout\,
	clrn => \ALT_INV_resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a(7));

-- Location: LCCOMB_X21_Y2_N4
\Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!a(5) & (!a(4) & (a(7) & !a(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => a(5),
	datab => a(4),
	datac => a(7),
	datad => a(6),
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X20_Y2_N16
\Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (a(8) & (\Add0~15\ $ (GND))) # (!a(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((a(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => a(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: FF_X20_Y2_N17
\a[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~16_combout\,
	clrn => \ALT_INV_resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a(8));

-- Location: LCCOMB_X20_Y2_N18
\Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (a(9) & (!\Add0~17\)) # (!a(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!a(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => a(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: FF_X20_Y2_N19
\a[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~18_combout\,
	clrn => \ALT_INV_resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a(9));

-- Location: LCCOMB_X20_Y2_N20
\Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (a(10) & (\Add0~19\ $ (GND))) # (!a(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((a(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => a(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: FF_X20_Y2_N21
\a[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~20_combout\,
	clrn => \ALT_INV_resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a(10));

-- Location: LCCOMB_X20_Y2_N22
\Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (a(11) & (!\Add0~21\)) # (!a(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!a(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => a(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: FF_X20_Y2_N23
\a[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~22_combout\,
	clrn => \ALT_INV_resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a(11));

-- Location: LCCOMB_X20_Y2_N24
\Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (a(12) & (\Add0~23\ $ (GND))) # (!a(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((a(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => a(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X21_Y2_N20
\a~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a~10_combout\ = (!\Equal0~10_combout\ & \Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datad => \Add0~24_combout\,
	combout => \a~10_combout\);

-- Location: FF_X21_Y2_N21
\a[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \a~10_combout\,
	clrn => \ALT_INV_resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a(12));

-- Location: LCCOMB_X20_Y2_N26
\Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (a(13) & (!\Add0~25\)) # (!a(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!a(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => a(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X21_Y2_N26
\a~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a~9_combout\ = (\Add0~26_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~26_combout\,
	datad => \Equal0~10_combout\,
	combout => \a~9_combout\);

-- Location: FF_X21_Y2_N27
\a[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \a~9_combout\,
	clrn => \ALT_INV_resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a(13));

-- Location: LCCOMB_X20_Y2_N28
\Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (a(14) & (\Add0~27\ $ (GND))) # (!a(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((a(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => a(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X21_Y2_N16
\a~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a~8_combout\ = (!\Equal0~10_combout\ & \Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datad => \Add0~28_combout\,
	combout => \a~8_combout\);

-- Location: FF_X21_Y2_N17
\a[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \a~8_combout\,
	clrn => \ALT_INV_resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a(14));

-- Location: LCCOMB_X20_Y2_N30
\Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (a(15) & (!\Add0~29\)) # (!a(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!a(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => a(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X21_Y2_N30
\a~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a~7_combout\ = (!\Equal0~10_combout\ & \Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datad => \Add0~30_combout\,
	combout => \a~7_combout\);

-- Location: FF_X21_Y2_N31
\a[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \a~7_combout\,
	clrn => \ALT_INV_resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a(15));

-- Location: LCCOMB_X21_Y2_N14
\Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (a(15) & (a(12) & (a(13) & a(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => a(15),
	datab => a(12),
	datac => a(13),
	datad => a(14),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X21_Y2_N28
\Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!a(11) & !a(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => a(11),
	datad => a(10),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X21_Y2_N18
\Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!a(8) & (!a(9) & (\Equal0~5_combout\ & \Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => a(8),
	datab => a(9),
	datac => \Equal0~5_combout\,
	datad => \Equal0~6_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X20_Y1_N0
\Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (a(16) & (\Add0~31\ $ (GND))) # (!a(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((a(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => a(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: FF_X20_Y1_N1
\a[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~32_combout\,
	clrn => \ALT_INV_resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a(16));

-- Location: LCCOMB_X20_Y1_N2
\Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (a(17) & (!\Add0~33\)) # (!a(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!a(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => a(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X21_Y1_N30
\a~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a~6_combout\ = (!\Equal0~10_combout\ & \Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~10_combout\,
	datad => \Add0~34_combout\,
	combout => \a~6_combout\);

-- Location: FF_X21_Y1_N31
\a[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \a~6_combout\,
	clrn => \ALT_INV_resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a(17));

-- Location: LCCOMB_X20_Y1_N4
\Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (a(18) & (\Add0~35\ $ (GND))) # (!a(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((a(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => a(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: FF_X20_Y1_N5
\a[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~36_combout\,
	clrn => \ALT_INV_resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a(18));

-- Location: LCCOMB_X20_Y1_N6
\Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (a(19) & (!\Add0~37\)) # (!a(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!a(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => a(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X21_Y1_N28
\a~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a~5_combout\ = (\Add0~38_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~38_combout\,
	datad => \Equal0~10_combout\,
	combout => \a~5_combout\);

-- Location: FF_X21_Y1_N29
\a[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \a~5_combout\,
	clrn => \ALT_INV_resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a(19));

-- Location: LCCOMB_X20_Y1_N8
\Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (a(20) & (\Add0~39\ $ (GND))) # (!a(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((a(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => a(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X21_Y1_N16
\a~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a~4_combout\ = (!\Equal0~10_combout\ & \Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~10_combout\,
	datad => \Add0~40_combout\,
	combout => \a~4_combout\);

-- Location: FF_X21_Y1_N17
\a[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \a~4_combout\,
	clrn => \ALT_INV_resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a(20));

-- Location: LCCOMB_X20_Y1_N10
\Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (a(21) & (!\Add0~41\)) # (!a(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!a(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => a(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X21_Y1_N10
\a~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a~3_combout\ = (!\Equal0~10_combout\ & \Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~10_combout\,
	datad => \Add0~42_combout\,
	combout => \a~3_combout\);

-- Location: FF_X21_Y1_N11
\a[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \a~3_combout\,
	clrn => \ALT_INV_resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a(21));

-- Location: LCCOMB_X20_Y1_N12
\Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (a(22) & (\Add0~43\ $ (GND))) # (!a(22) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((a(22) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => a(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X21_Y1_N20
\a~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a~2_combout\ = (!\Equal0~10_combout\ & \Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~10_combout\,
	datad => \Add0~44_combout\,
	combout => \a~2_combout\);

-- Location: FF_X21_Y1_N21
\a[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \a~2_combout\,
	clrn => \ALT_INV_resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a(22));

-- Location: LCCOMB_X20_Y1_N14
\Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (a(23) & (!\Add0~45\)) # (!a(23) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!a(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => a(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: LCCOMB_X21_Y1_N18
\a~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a~1_combout\ = (!\Equal0~10_combout\ & \Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~10_combout\,
	datad => \Add0~46_combout\,
	combout => \a~1_combout\);

-- Location: FF_X21_Y1_N19
\a[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \a~1_combout\,
	clrn => \ALT_INV_resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a(23));

-- Location: LCCOMB_X21_Y1_N26
\Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (a(21) & (a(23) & (a(22) & a(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => a(21),
	datab => a(23),
	datac => a(22),
	datad => a(20),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X20_Y1_N16
\Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (a(24) & (\Add0~47\ $ (GND))) # (!a(24) & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((a(24) & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => a(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: FF_X20_Y1_N17
\a[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~48_combout\,
	clrn => \ALT_INV_resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a(24));

-- Location: LCCOMB_X20_Y1_N18
\Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (a(25) & (!\Add0~49\)) # (!a(25) & ((\Add0~49\) # (GND)))
-- \Add0~51\ = CARRY((!\Add0~49\) # (!a(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => a(25),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: LCCOMB_X21_Y1_N22
\a~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a~0_combout\ = (!\Equal0~10_combout\ & \Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~10_combout\,
	datad => \Add0~50_combout\,
	combout => \a~0_combout\);

-- Location: FF_X21_Y1_N23
\a[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \a~0_combout\,
	clrn => \ALT_INV_resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a(25));

-- Location: LCCOMB_X20_Y1_N20
\Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (a(26) & (\Add0~51\ $ (GND))) # (!a(26) & (!\Add0~51\ & VCC))
-- \Add0~53\ = CARRY((a(26) & !\Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => a(26),
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: FF_X20_Y1_N21
\a[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~52_combout\,
	clrn => \ALT_INV_resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a(26));

-- Location: LCCOMB_X20_Y1_N22
\Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (a(27) & (!\Add0~53\)) # (!a(27) & ((\Add0~53\) # (GND)))
-- \Add0~55\ = CARRY((!\Add0~53\) # (!a(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => a(27),
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: FF_X20_Y1_N23
\a[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~54_combout\,
	clrn => \ALT_INV_resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a(27));

-- Location: LCCOMB_X21_Y1_N4
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (a(25) & (!a(26) & (!a(24) & !a(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => a(25),
	datab => a(26),
	datac => a(24),
	datad => a(27),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X20_Y1_N24
\Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (a(28) & (\Add0~55\ $ (GND))) # (!a(28) & (!\Add0~55\ & VCC))
-- \Add0~57\ = CARRY((a(28) & !\Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => a(28),
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: FF_X20_Y1_N25
\a[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~56_combout\,
	clrn => \ALT_INV_resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a(28));

-- Location: LCCOMB_X20_Y1_N26
\Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (a(29) & (!\Add0~57\)) # (!a(29) & ((\Add0~57\) # (GND)))
-- \Add0~59\ = CARRY((!\Add0~57\) # (!a(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => a(29),
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: FF_X20_Y1_N27
\a[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~58_combout\,
	clrn => \ALT_INV_resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a(29));

-- Location: LCCOMB_X20_Y1_N28
\Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = (a(30) & (\Add0~59\ $ (GND))) # (!a(30) & (!\Add0~59\ & VCC))
-- \Add0~61\ = CARRY((a(30) & !\Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => a(30),
	datad => VCC,
	cin => \Add0~59\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: FF_X20_Y1_N29
\a[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~60_combout\,
	clrn => \ALT_INV_resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a(30));

-- Location: LCCOMB_X20_Y1_N30
\Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = a(31) $ (\Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => a(31),
	cin => \Add0~61\,
	combout => \Add0~62_combout\);

-- Location: FF_X20_Y1_N31
\a[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~62_combout\,
	clrn => \ALT_INV_resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a(31));

-- Location: LCCOMB_X21_Y1_N8
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!a(29) & (!a(28) & (!a(31) & !a(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => a(29),
	datab => a(28),
	datac => a(31),
	datad => a(30),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X21_Y1_N24
\Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (a(17) & (!a(18) & (!a(16) & a(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => a(17),
	datab => a(18),
	datac => a(16),
	datad => a(19),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X21_Y1_N2
\Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~2_combout\ & (\Equal0~1_combout\ & (\Equal0~0_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X21_Y2_N8
\Equal0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (\Equal0~9_combout\ & (\Equal0~8_combout\ & (\Equal0~7_combout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datab => \Equal0~8_combout\,
	datac => \Equal0~7_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X21_Y2_N24
\temp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp~0_combout\ = \temp~q\ $ (((!\resetn~input_o\ & \Equal0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \resetn~input_o\,
	datac => \temp~q\,
	datad => \Equal0~10_combout\,
	combout => \temp~0_combout\);

-- Location: FF_X21_Y2_N25
temp : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \temp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp~q\);

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
END structure;


