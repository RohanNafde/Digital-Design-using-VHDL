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

-- DATE "10/29/2022 18:44:19"

-- 
-- Device: Altera 10M08SAE144C8G Package EQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
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

ENTITY 	server IS
    PORT (
	inp : IN std_logic_vector(3 DOWNTO 0);
	clock : IN std_logic;
	reset : IN std_logic;
	outp : OUT std_logic_vector(4 DOWNTO 0)
	);
END server;

-- Design Ports Information
-- outp[0]	=>  Location: PIN_56,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outp[1]	=>  Location: PIN_57,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outp[2]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outp[3]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outp[4]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inp[1]	=>  Location: PIN_41,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_47,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inp[2]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inp[3]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inp[0]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF server IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_inp : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_clock : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_outp : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \outp[0]~output_o\ : std_logic;
SIGNAL \outp[1]~output_o\ : std_logic;
SIGNAL \outp[2]~output_o\ : std_logic;
SIGNAL \outp[3]~output_o\ : std_logic;
SIGNAL \outp[4]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \inp[3]~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \inp[1]~input_o\ : std_logic;
SIGNAL \inp[2]~input_o\ : std_logic;
SIGNAL \p~10_combout\ : std_logic;
SIGNAL \p~23_combout\ : std_logic;
SIGNAL \p~24_combout\ : std_logic;
SIGNAL \p.admin~q\ : std_logic;
SIGNAL \p~15_combout\ : std_logic;
SIGNAL \p~12_combout\ : std_logic;
SIGNAL \inp[0]~input_o\ : std_logic;
SIGNAL \outp~0_combout\ : std_logic;
SIGNAL \p~17_combout\ : std_logic;
SIGNAL \p.stu~q\ : std_logic;
SIGNAL \p~13_combout\ : std_logic;
SIGNAL \p.prof_req~q\ : std_logic;
SIGNAL \p~16_combout\ : std_logic;
SIGNAL \p.prof~q\ : std_logic;
SIGNAL \p~20_combout\ : std_logic;
SIGNAL \p~21_combout\ : std_logic;
SIGNAL \p~22_combout\ : std_logic;
SIGNAL \p.idle~q\ : std_logic;
SIGNAL \p~18_combout\ : std_logic;
SIGNAL \p~11_combout\ : std_logic;
SIGNAL \p.res_req~q\ : std_logic;
SIGNAL \p~19_combout\ : std_logic;
SIGNAL \p.res~q\ : std_logic;
SIGNAL \WideOr6~1_combout\ : std_logic;
SIGNAL \p~14_combout\ : std_logic;
SIGNAL \p.admin_req~q\ : std_logic;
SIGNAL \WideOr8~0_combout\ : std_logic;
SIGNAL \WideOr7~combout\ : std_logic;
SIGNAL \WideOr6~0_combout\ : std_logic;
SIGNAL \ALT_INV_outp~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr7~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_inp <= inp;
ww_clock <= clock;
ww_reset <= reset;
outp <= ww_outp;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\ALT_INV_outp~0_combout\ <= NOT \outp~0_combout\;
\ALT_INV_WideOr7~combout\ <= NOT \WideOr7~combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X11_Y12_N16
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

-- Location: IOOBUF_X15_Y0_N16
\outp[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr8~0_combout\,
	devoe => ww_devoe,
	o => \outp[0]~output_o\);

-- Location: IOOBUF_X17_Y0_N30
\outp[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr7~combout\,
	devoe => ww_devoe,
	o => \outp[1]~output_o\);

-- Location: IOOBUF_X17_Y0_N23
\outp[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr6~0_combout\,
	devoe => ww_devoe,
	o => \outp[2]~output_o\);

-- Location: IOOBUF_X17_Y0_N2
\outp[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_outp~0_combout\,
	devoe => ww_devoe,
	o => \outp[3]~output_o\);

-- Location: IOOBUF_X19_Y0_N30
\outp[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \p.idle~q\,
	devoe => ww_devoe,
	o => \outp[4]~output_o\);

-- Location: IOIBUF_X0_Y7_N15
\clock~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G2
\clock~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: IOIBUF_X3_Y0_N15
\inp[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp(3),
	o => \inp[3]~input_o\);

-- Location: IOIBUF_X11_Y0_N29
\reset~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X6_Y0_N22
\inp[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp(1),
	o => \inp[1]~input_o\);

-- Location: IOIBUF_X3_Y0_N8
\inp[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp(2),
	o => \inp[2]~input_o\);

-- Location: LCCOMB_X13_Y3_N6
\p~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \p~10_combout\ = (!\inp[3]~input_o\ & (!\inp[2]~input_o\ & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inp[3]~input_o\,
	datab => \inp[2]~input_o\,
	datac => \reset~input_o\,
	combout => \p~10_combout\);

-- Location: LCCOMB_X13_Y3_N2
\p~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \p~23_combout\ = (!\reset~input_o\ & (\inp[3]~input_o\ & ((\p.admin~q\) # (!\p.idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \p.admin~q\,
	datac => \inp[3]~input_o\,
	datad => \p.idle~q\,
	combout => \p~23_combout\);

-- Location: LCCOMB_X13_Y3_N8
\p~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \p~24_combout\ = (\p~23_combout\) # ((\p.admin_req~q\ & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p.admin_req~q\,
	datac => \reset~input_o\,
	datad => \p~23_combout\,
	combout => \p~24_combout\);

-- Location: FF_X13_Y3_N9
\p.admin\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \p~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p.admin~q\);

-- Location: LCCOMB_X13_Y3_N4
\p~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \p~15_combout\ = (!\inp[3]~input_o\ & (\inp[2]~input_o\ & ((\p.prof~q\) # (!\p.idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inp[3]~input_o\,
	datab => \p.idle~q\,
	datac => \inp[2]~input_o\,
	datad => \p.prof~q\,
	combout => \p~15_combout\);

-- Location: LCCOMB_X13_Y3_N20
\p~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \p~12_combout\ = (!\inp[3]~input_o\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inp[3]~input_o\,
	datac => \reset~input_o\,
	combout => \p~12_combout\);

-- Location: IOIBUF_X6_Y0_N15
\inp[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp(0),
	o => \inp[0]~input_o\);

-- Location: LCCOMB_X13_Y3_N0
\outp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \outp~0_combout\ = (\p.stu~q\) # (!\p.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \p.stu~q\,
	datad => \p.idle~q\,
	combout => \outp~0_combout\);

-- Location: LCCOMB_X13_Y3_N30
\p~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \p~17_combout\ = (!\inp[1]~input_o\ & (\inp[0]~input_o\ & (\p~10_combout\ & \outp~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inp[1]~input_o\,
	datab => \inp[0]~input_o\,
	datac => \p~10_combout\,
	datad => \outp~0_combout\,
	combout => \p~17_combout\);

-- Location: FF_X13_Y3_N31
\p.stu\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \p~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p.stu~q\);

-- Location: LCCOMB_X14_Y3_N24
\p~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \p~13_combout\ = (\p~12_combout\ & (\inp[2]~input_o\ & ((\p.stu~q\) # (\p.res~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p~12_combout\,
	datab => \inp[2]~input_o\,
	datac => \p.stu~q\,
	datad => \p.res~q\,
	combout => \p~13_combout\);

-- Location: FF_X14_Y3_N25
\p.prof_req\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \p~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p.prof_req~q\);

-- Location: LCCOMB_X13_Y3_N12
\p~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \p~16_combout\ = (!\reset~input_o\ & ((\p~15_combout\) # (\p.prof_req~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \p~15_combout\,
	datad => \p.prof_req~q\,
	combout => \p~16_combout\);

-- Location: FF_X13_Y3_N13
\p.prof\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \p~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p.prof~q\);

-- Location: LCCOMB_X13_Y3_N10
\p~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \p~20_combout\ = (\p.res~q\) # ((!\inp[0]~input_o\ & ((\p.stu~q\) # (!\p.idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p.stu~q\,
	datab => \inp[0]~input_o\,
	datac => \p.idle~q\,
	datad => \p.res~q\,
	combout => \p~20_combout\);

-- Location: LCCOMB_X13_Y3_N16
\p~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \p~21_combout\ = (!\inp[2]~input_o\ & ((\p.prof~q\) # ((!\inp[1]~input_o\ & \p~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p.prof~q\,
	datab => \inp[1]~input_o\,
	datac => \inp[2]~input_o\,
	datad => \p~20_combout\,
	combout => \p~21_combout\);

-- Location: LCCOMB_X13_Y3_N14
\p~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \p~22_combout\ = (!\reset~input_o\ & ((\inp[3]~input_o\) # ((!\p.admin~q\ & !\p~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inp[3]~input_o\,
	datab => \p.admin~q\,
	datac => \reset~input_o\,
	datad => \p~21_combout\,
	combout => \p~22_combout\);

-- Location: FF_X13_Y3_N15
\p.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \p~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p.idle~q\);

-- Location: LCCOMB_X13_Y3_N18
\p~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \p~18_combout\ = (\inp[1]~input_o\ & (\p~10_combout\ & ((\p.res~q\) # (!\p.idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inp[1]~input_o\,
	datab => \p~10_combout\,
	datac => \p.res~q\,
	datad => \p.idle~q\,
	combout => \p~18_combout\);

-- Location: LCCOMB_X13_Y3_N24
\p~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \p~11_combout\ = (\p.stu~q\ & (\inp[1]~input_o\ & \p~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p.stu~q\,
	datac => \inp[1]~input_o\,
	datad => \p~10_combout\,
	combout => \p~11_combout\);

-- Location: FF_X13_Y3_N25
\p.res_req\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \p~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p.res_req~q\);

-- Location: LCCOMB_X13_Y3_N28
\p~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \p~19_combout\ = (\p~18_combout\) # ((!\reset~input_o\ & \p.res_req~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \p~18_combout\,
	datad => \p.res_req~q\,
	combout => \p~19_combout\);

-- Location: FF_X13_Y3_N29
\p.res\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \p~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p.res~q\);

-- Location: LCCOMB_X13_Y3_N26
\WideOr6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr6~1_combout\ = (!\p.res~q\ & !\p.stu~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \p.res~q\,
	datad => \p.stu~q\,
	combout => \WideOr6~1_combout\);

-- Location: LCCOMB_X13_Y3_N22
\p~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \p~14_combout\ = (\inp[3]~input_o\ & (!\reset~input_o\ & ((\p.prof~q\) # (!\WideOr6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inp[3]~input_o\,
	datab => \reset~input_o\,
	datac => \WideOr6~1_combout\,
	datad => \p.prof~q\,
	combout => \p~14_combout\);

-- Location: FF_X13_Y3_N23
\p.admin_req\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \p~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p.admin_req~q\);

-- Location: LCCOMB_X14_Y3_N2
\WideOr8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr8~0_combout\ = (\p.admin_req~q\) # ((\p.prof_req~q\) # (\p.res_req~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p.admin_req~q\,
	datac => \p.prof_req~q\,
	datad => \p.res_req~q\,
	combout => \WideOr8~0_combout\);

-- Location: LCCOMB_X14_Y3_N12
WideOr7 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr7~combout\ = ((\p.res~q\) # ((\p.stu~q\) # (\p.prof~q\))) # (!\p.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p.idle~q\,
	datab => \p.res~q\,
	datac => \p.stu~q\,
	datad => \p.prof~q\,
	combout => \WideOr7~combout\);

-- Location: LCCOMB_X14_Y3_N26
\WideOr6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr6~0_combout\ = (!\p.res~q\ & (!\p.stu~q\ & \p.idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p.res~q\,
	datac => \p.stu~q\,
	datad => \p.idle~q\,
	combout => \WideOr6~0_combout\);

-- Location: UNVM_X0_Y11_N40
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

-- Location: ADCBLOCK_X10_Y24_N0
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

ww_outp(0) <= \outp[0]~output_o\;

ww_outp(1) <= \outp[1]~output_o\;

ww_outp(2) <= \outp[2]~output_o\;

ww_outp(3) <= \outp[3]~output_o\;

ww_outp(4) <= \outp[4]~output_o\;
END structure;


