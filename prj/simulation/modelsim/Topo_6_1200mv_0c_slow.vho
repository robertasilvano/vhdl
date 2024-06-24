-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "06/07/2024 10:00:45"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Counter_time IS
    PORT (
	clkt : IN std_logic;
	R : IN std_logic;
	E : IN std_logic;
	tempo : OUT std_logic_vector(3 DOWNTO 0);
	end_time : OUT std_logic
	);
END Counter_time;

-- Design Ports Information
-- tempo[0]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempo[1]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempo[2]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempo[3]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- end_time	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clkt	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Counter_time IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clkt : std_logic;
SIGNAL ww_R : std_logic;
SIGNAL ww_E : std_logic;
SIGNAL ww_tempo : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_end_time : std_logic;
SIGNAL \clkt~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \R~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \tempo[0]~output_o\ : std_logic;
SIGNAL \tempo[1]~output_o\ : std_logic;
SIGNAL \tempo[2]~output_o\ : std_logic;
SIGNAL \tempo[3]~output_o\ : std_logic;
SIGNAL \end_time~output_o\ : std_logic;
SIGNAL \clkt~input_o\ : std_logic;
SIGNAL \clkt~inputclkctrl_outclk\ : std_logic;
SIGNAL \tempo[0]~3_combout\ : std_logic;
SIGNAL \R~input_o\ : std_logic;
SIGNAL \R~inputclkctrl_outclk\ : std_logic;
SIGNAL \E~input_o\ : std_logic;
SIGNAL \tempo[0]~reg0_q\ : std_logic;
SIGNAL \tempo[2]~1_combout\ : std_logic;
SIGNAL \tempo[2]~reg0_q\ : std_logic;
SIGNAL \tempo~2_combout\ : std_logic;
SIGNAL \tempo[3]~reg0_q\ : std_logic;
SIGNAL \tempo~0_combout\ : std_logic;
SIGNAL \tempo[1]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_R~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clkt <= clkt;
ww_R <= R;
ww_E <= E;
tempo <= ww_tempo;
end_time <= ww_end_time;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clkt~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clkt~input_o\);

\R~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \R~input_o\);
\ALT_INV_R~inputclkctrl_outclk\ <= NOT \R~inputclkctrl_outclk\;

-- Location: IOOBUF_X5_Y0_N30
\tempo[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tempo[0]~reg0_q\,
	devoe => ww_devoe,
	o => \tempo[0]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\tempo[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tempo[1]~reg0_q\,
	devoe => ww_devoe,
	o => \tempo[1]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\tempo[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tempo[2]~reg0_q\,
	devoe => ww_devoe,
	o => \tempo[2]~output_o\);

-- Location: IOOBUF_X3_Y0_N9
\tempo[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tempo[3]~reg0_q\,
	devoe => ww_devoe,
	o => \tempo[3]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\end_time~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \end_time~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\clkt~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clkt,
	o => \clkt~input_o\);

-- Location: CLKCTRL_G4
\clkt~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clkt~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clkt~inputclkctrl_outclk\);

-- Location: LCCOMB_X5_Y1_N16
\tempo[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tempo[0]~3_combout\ = !\tempo[0]~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tempo[0]~reg0_q\,
	combout => \tempo[0]~3_combout\);

-- Location: IOIBUF_X0_Y14_N8
\R~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R,
	o => \R~input_o\);

-- Location: CLKCTRL_G2
\R~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \R~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \R~inputclkctrl_outclk\);

-- Location: IOIBUF_X5_Y0_N1
\E~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_E,
	o => \E~input_o\);

-- Location: FF_X5_Y1_N17
\tempo[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkt~inputclkctrl_outclk\,
	d => \tempo[0]~3_combout\,
	clrn => \ALT_INV_R~inputclkctrl_outclk\,
	ena => \E~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tempo[0]~reg0_q\);

-- Location: LCCOMB_X5_Y1_N28
\tempo[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tempo[2]~1_combout\ = \tempo[2]~reg0_q\ $ (((\E~input_o\ & (\tempo[0]~reg0_q\ & \tempo[1]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E~input_o\,
	datab => \tempo[0]~reg0_q\,
	datac => \tempo[2]~reg0_q\,
	datad => \tempo[1]~reg0_q\,
	combout => \tempo[2]~1_combout\);

-- Location: FF_X5_Y1_N29
\tempo[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkt~inputclkctrl_outclk\,
	d => \tempo[2]~1_combout\,
	clrn => \ALT_INV_R~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tempo[2]~reg0_q\);

-- Location: LCCOMB_X5_Y1_N30
\tempo~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tempo~2_combout\ = (\tempo[1]~reg0_q\ & (\tempo[3]~reg0_q\ $ (((\tempo[2]~reg0_q\ & \tempo[0]~reg0_q\))))) # (!\tempo[1]~reg0_q\ & (\tempo[3]~reg0_q\ & ((\tempo[2]~reg0_q\) # (!\tempo[0]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempo[1]~reg0_q\,
	datab => \tempo[2]~reg0_q\,
	datac => \tempo[3]~reg0_q\,
	datad => \tempo[0]~reg0_q\,
	combout => \tempo~2_combout\);

-- Location: FF_X5_Y1_N31
\tempo[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkt~inputclkctrl_outclk\,
	d => \tempo~2_combout\,
	clrn => \ALT_INV_R~inputclkctrl_outclk\,
	ena => \E~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tempo[3]~reg0_q\);

-- Location: LCCOMB_X5_Y1_N6
\tempo~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tempo~0_combout\ = (\tempo[1]~reg0_q\ & (((!\tempo[0]~reg0_q\)))) # (!\tempo[1]~reg0_q\ & (\tempo[0]~reg0_q\ & ((\tempo[2]~reg0_q\) # (!\tempo[3]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempo[3]~reg0_q\,
	datab => \tempo[2]~reg0_q\,
	datac => \tempo[1]~reg0_q\,
	datad => \tempo[0]~reg0_q\,
	combout => \tempo~0_combout\);

-- Location: FF_X5_Y1_N7
\tempo[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkt~inputclkctrl_outclk\,
	d => \tempo~0_combout\,
	clrn => \ALT_INV_R~inputclkctrl_outclk\,
	ena => \E~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tempo[1]~reg0_q\);

ww_tempo(0) <= \tempo[0]~output_o\;

ww_tempo(1) <= \tempo[1]~output_o\;

ww_tempo(2) <= \tempo[2]~output_o\;

ww_tempo(3) <= \tempo[3]~output_o\;

ww_end_time <= \end_time~output_o\;
END structure;


