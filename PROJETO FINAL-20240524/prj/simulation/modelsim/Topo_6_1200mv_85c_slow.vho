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

-- DATE "06/25/2024 17:41:08"

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

ENTITY 	Topo IS
    PORT (
	clock_50 : IN std_logic;
	key : IN std_logic_vector(3 DOWNTO 0);
	sw : IN std_logic_vector(9 DOWNTO 0);
	ledr : BUFFER std_logic_vector(7 DOWNTO 0);
	hex0 : BUFFER std_logic_vector(6 DOWNTO 0);
	hex1 : BUFFER std_logic_vector(6 DOWNTO 0);
	hex2 : BUFFER std_logic_vector(6 DOWNTO 0);
	hex3 : BUFFER std_logic_vector(6 DOWNTO 0);
	hex4 : BUFFER std_logic_vector(6 DOWNTO 0);
	hex5 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END Topo;

-- Design Ports Information
-- ledr[0]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[1]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[2]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[3]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[4]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[5]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[6]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[7]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[0]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[1]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[2]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[3]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[4]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[5]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[6]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[0]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[1]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[2]	=>  Location: PIN_M19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[3]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[4]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[5]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[6]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[0]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[1]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[2]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[3]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[4]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[5]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[6]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[0]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[1]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[2]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[3]	=>  Location: PIN_R19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[4]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[5]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[6]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex4[0]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex4[1]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex4[2]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex4[3]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex4[4]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex4[5]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex4[6]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex5[0]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex5[1]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex5[2]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex5[3]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex5[4]	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex5[5]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex5[6]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[0]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[1]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[2]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[3]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock_50	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[8]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[9]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[6]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[7]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[5]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[4]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Topo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock_50 : std_logic;
SIGNAL ww_key : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sw : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_ledr : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_hex0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex5 : std_logic_vector(6 DOWNTO 0);
SIGNAL \U0_DP|e2_and_ntnb~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U1_FSM|state.play_FPGA~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U0_DP|R_SETUP|setup[7]~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ledr[0]~output_o\ : std_logic;
SIGNAL \ledr[1]~output_o\ : std_logic;
SIGNAL \ledr[2]~output_o\ : std_logic;
SIGNAL \ledr[3]~output_o\ : std_logic;
SIGNAL \ledr[4]~output_o\ : std_logic;
SIGNAL \ledr[5]~output_o\ : std_logic;
SIGNAL \ledr[6]~output_o\ : std_logic;
SIGNAL \ledr[7]~output_o\ : std_logic;
SIGNAL \hex0[0]~output_o\ : std_logic;
SIGNAL \hex0[1]~output_o\ : std_logic;
SIGNAL \hex0[2]~output_o\ : std_logic;
SIGNAL \hex0[3]~output_o\ : std_logic;
SIGNAL \hex0[4]~output_o\ : std_logic;
SIGNAL \hex0[5]~output_o\ : std_logic;
SIGNAL \hex0[6]~output_o\ : std_logic;
SIGNAL \hex1[0]~output_o\ : std_logic;
SIGNAL \hex1[1]~output_o\ : std_logic;
SIGNAL \hex1[2]~output_o\ : std_logic;
SIGNAL \hex1[3]~output_o\ : std_logic;
SIGNAL \hex1[4]~output_o\ : std_logic;
SIGNAL \hex1[5]~output_o\ : std_logic;
SIGNAL \hex1[6]~output_o\ : std_logic;
SIGNAL \hex2[0]~output_o\ : std_logic;
SIGNAL \hex2[1]~output_o\ : std_logic;
SIGNAL \hex2[2]~output_o\ : std_logic;
SIGNAL \hex2[3]~output_o\ : std_logic;
SIGNAL \hex2[4]~output_o\ : std_logic;
SIGNAL \hex2[5]~output_o\ : std_logic;
SIGNAL \hex2[6]~output_o\ : std_logic;
SIGNAL \hex3[0]~output_o\ : std_logic;
SIGNAL \hex3[1]~output_o\ : std_logic;
SIGNAL \hex3[2]~output_o\ : std_logic;
SIGNAL \hex3[3]~output_o\ : std_logic;
SIGNAL \hex3[4]~output_o\ : std_logic;
SIGNAL \hex3[5]~output_o\ : std_logic;
SIGNAL \hex3[6]~output_o\ : std_logic;
SIGNAL \hex4[0]~output_o\ : std_logic;
SIGNAL \hex4[1]~output_o\ : std_logic;
SIGNAL \hex4[2]~output_o\ : std_logic;
SIGNAL \hex4[3]~output_o\ : std_logic;
SIGNAL \hex4[4]~output_o\ : std_logic;
SIGNAL \hex4[5]~output_o\ : std_logic;
SIGNAL \hex4[6]~output_o\ : std_logic;
SIGNAL \hex5[0]~output_o\ : std_logic;
SIGNAL \hex5[1]~output_o\ : std_logic;
SIGNAL \hex5[2]~output_o\ : std_logic;
SIGNAL \hex5[3]~output_o\ : std_logic;
SIGNAL \hex5[4]~output_o\ : std_logic;
SIGNAL \hex5[5]~output_o\ : std_logic;
SIGNAL \hex5[6]~output_o\ : std_logic;
SIGNAL \key[0]~input_o\ : std_logic;
SIGNAL \key[1]~input_o\ : std_logic;
SIGNAL \key[2]~input_o\ : std_logic;
SIGNAL \key[3]~input_o\ : std_logic;
SIGNAL \clock_50~input_o\ : std_logic;
SIGNAL \clock_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \U0_DP|CT|tempo[0]~3_combout\ : std_logic;
SIGNAL \U0_DP|BTN|btn2state.EsperaApertar~0_combout\ : std_logic;
SIGNAL \U0_DP|BTN|btn2state.EsperaApertar~q\ : std_logic;
SIGNAL \U0_DP|BTN|btn2next.SaidaAtiva~0_combout\ : std_logic;
SIGNAL \U0_DP|BTN|btn2state.SaidaAtiva~q\ : std_logic;
SIGNAL \U0_DP|BTN|btn0state.EsperaApertar~0_combout\ : std_logic;
SIGNAL \U0_DP|BTN|btn0state.EsperaApertar~q\ : std_logic;
SIGNAL \U0_DP|BTN|btn0next.SaidaAtiva~0_combout\ : std_logic;
SIGNAL \U0_DP|BTN|btn0state.SaidaAtiva~q\ : std_logic;
SIGNAL \U0_DP|BTN|btn1state.EsperaApertar~0_combout\ : std_logic;
SIGNAL \U0_DP|BTN|btn1state.EsperaApertar~q\ : std_logic;
SIGNAL \U0_DP|BTN|btn1next.SaidaAtiva~0_combout\ : std_logic;
SIGNAL \U0_DP|BTN|btn1state.SaidaAtiva~q\ : std_logic;
SIGNAL \U0_DP|BTN|btn3state.EsperaApertar~0_combout\ : std_logic;
SIGNAL \U0_DP|BTN|btn3state.EsperaApertar~q\ : std_logic;
SIGNAL \U0_DP|BTN|btn3next.SaidaAtiva~0_combout\ : std_logic;
SIGNAL \U0_DP|BTN|btn3state.SaidaAtiva~q\ : std_logic;
SIGNAL \U0_DP|e2_and_ntnb~2_combout\ : std_logic;
SIGNAL \U0_DP|C_USER|Add0~0_combout\ : std_logic;
SIGNAL \U0_DP|C_USER|total~3_combout\ : std_logic;
SIGNAL \U0_DP|e2_and_ntnb~0_combout\ : std_logic;
SIGNAL \U0_DP|e2_and_ntnb~1_combout\ : std_logic;
SIGNAL \U0_DP|C_USER|total~2_combout\ : std_logic;
SIGNAL \U0_DP|CR|round[2]~2_combout\ : std_logic;
SIGNAL \U0_DP|C_USER|Equal0~1_combout\ : std_logic;
SIGNAL \U0_DP|C_USER|total~1_combout\ : std_logic;
SIGNAL \U0_DP|C_USER|total~0_combout\ : std_logic;
SIGNAL \U0_DP|C_USER|Equal0~0_combout\ : std_logic;
SIGNAL \U0_DP|C_USER|Equal0~2_combout\ : std_logic;
SIGNAL \U0_DP|C_USER|tc~0_combout\ : std_logic;
SIGNAL \U0_DP|C_USER|tc~q\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \U1_FSM|state~24_combout\ : std_logic;
SIGNAL \U1_FSM|state.setup~feeder_combout\ : std_logic;
SIGNAL \U1_FSM|state.setup~q\ : std_logic;
SIGNAL \U1_FSM|state~16_combout\ : std_logic;
SIGNAL \U1_FSM|state~17_combout\ : std_logic;
SIGNAL \U1_FSM|state~20_combout\ : std_logic;
SIGNAL \U1_FSM|state~21_combout\ : std_logic;
SIGNAL \U1_FSM|state.play_user~q\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \U0_DP|R_SETUP|setup[0]~6_combout\ : std_logic;
SIGNAL \U0_DP|R_SETUP|setup[7]~1_combout\ : std_logic;
SIGNAL \U0_DP|R_SETUP|setup[7]~1clkctrl_outclk\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \U0_DP|R_SETUP|setup[1]~5_combout\ : std_logic;
SIGNAL \U0_DP|CR|Equal0~0_combout\ : std_logic;
SIGNAL \sw[4]~input_o\ : std_logic;
SIGNAL \U0_DP|R_SETUP|setup[2]~8_combout\ : std_logic;
SIGNAL \sw[5]~input_o\ : std_logic;
SIGNAL \U0_DP|R_SETUP|setup[3]~7_combout\ : std_logic;
SIGNAL \U0_DP|CR|Equal0~1_combout\ : std_logic;
SIGNAL \U0_DP|CR|tc~0_combout\ : std_logic;
SIGNAL \U0_DP|CR|tc~q\ : std_logic;
SIGNAL \U0_DP|e2_and_ntnb~1clkctrl_outclk\ : std_logic;
SIGNAL \U0_DP|CFPGA|total~0_combout\ : std_logic;
SIGNAL \U0_DP|CFPGA|Equal0~0_combout\ : std_logic;
SIGNAL \U0_DP|CFPGA|total~1_combout\ : std_logic;
SIGNAL \U0_DP|CFPGA|Add0~0_combout\ : std_logic;
SIGNAL \U0_DP|CFPGA|total~2_combout\ : std_logic;
SIGNAL \U0_DP|CFPGA|Add0~1_combout\ : std_logic;
SIGNAL \U0_DP|CFPGA|total~3_combout\ : std_logic;
SIGNAL \U0_DP|S4|WideOr2~0_combout\ : std_logic;
SIGNAL \sw[6]~input_o\ : std_logic;
SIGNAL \U0_DP|R_SETUP|setup[4]~3_combout\ : std_logic;
SIGNAL \sw[7]~input_o\ : std_logic;
SIGNAL \U0_DP|R_SETUP|setup[5]~4_combout\ : std_logic;
SIGNAL \U0_DP|S3|WideOr1~0_combout\ : std_logic;
SIGNAL \U0_DP|S1|WideOr2~0_combout\ : std_logic;
SIGNAL \U0_DP|MUX11|out[1]~2_combout\ : std_logic;
SIGNAL \U0_DP|MUX11|out[1]~3_combout\ : std_logic;
SIGNAL \U0_DP|match~2_combout\ : std_logic;
SIGNAL \U0_DP|match~0_combout\ : std_logic;
SIGNAL \U0_DP|S4|WideOr1~0_combout\ : std_logic;
SIGNAL \U0_DP|S1|WideOr1~0_combout\ : std_logic;
SIGNAL \U0_DP|S3|WideOr0~0_combout\ : std_logic;
SIGNAL \U0_DP|MUX11|out[2]~4_combout\ : std_logic;
SIGNAL \U0_DP|MUX11|out[2]~5_combout\ : std_logic;
SIGNAL \U0_DP|S4|WideOr0~0_combout\ : std_logic;
SIGNAL \U0_DP|S1|WideOr0~0_combout\ : std_logic;
SIGNAL \U0_DP|MUX11|out[3]~6_combout\ : std_logic;
SIGNAL \U0_DP|MUX11|out[3]~7_combout\ : std_logic;
SIGNAL \U0_DP|MUX11|out[3]~8_combout\ : std_logic;
SIGNAL \U0_DP|match~1_combout\ : std_logic;
SIGNAL \U0_DP|match~3_combout\ : std_logic;
SIGNAL \U0_DP|match~4_combout\ : std_logic;
SIGNAL \U0_DP|match~8_combout\ : std_logic;
SIGNAL \U0_DP|match~7_combout\ : std_logic;
SIGNAL \U0_DP|match~5_combout\ : std_logic;
SIGNAL \U0_DP|match~6_combout\ : std_logic;
SIGNAL \U0_DP|match~9_combout\ : std_logic;
SIGNAL \U0_DP|match~20_combout\ : std_logic;
SIGNAL \U0_DP|match~18_combout\ : std_logic;
SIGNAL \U0_DP|match~16_combout\ : std_logic;
SIGNAL \U0_DP|match~17_combout\ : std_logic;
SIGNAL \U0_DP|match~15_combout\ : std_logic;
SIGNAL \U0_DP|match~19_combout\ : std_logic;
SIGNAL \U0_DP|match~23_combout\ : std_logic;
SIGNAL \U0_DP|match~22_combout\ : std_logic;
SIGNAL \U0_DP|match~21_combout\ : std_logic;
SIGNAL \U0_DP|match~24_combout\ : std_logic;
SIGNAL \U0_DP|match~10_combout\ : std_logic;
SIGNAL \U0_DP|match~13_combout\ : std_logic;
SIGNAL \U0_DP|match~11_combout\ : std_logic;
SIGNAL \U0_DP|match~12_combout\ : std_logic;
SIGNAL \U0_DP|match~14_combout\ : std_logic;
SIGNAL \U0_DP|match~25_combout\ : std_logic;
SIGNAL \U0_DP|match~27_combout\ : std_logic;
SIGNAL \U0_DP|match~26_combout\ : std_logic;
SIGNAL \U0_DP|match~29_combout\ : std_logic;
SIGNAL \U0_DP|match~28_combout\ : std_logic;
SIGNAL \U0_DP|match~30_combout\ : std_logic;
SIGNAL \U0_DP|match~38_combout\ : std_logic;
SIGNAL \U0_DP|match~37_combout\ : std_logic;
SIGNAL \U0_DP|match~36_combout\ : std_logic;
SIGNAL \U0_DP|match~39_combout\ : std_logic;
SIGNAL \U0_DP|match~40_combout\ : std_logic;
SIGNAL \U0_DP|match~32_combout\ : std_logic;
SIGNAL \U0_DP|match~34_combout\ : std_logic;
SIGNAL \U0_DP|match~31_combout\ : std_logic;
SIGNAL \U0_DP|match~33_combout\ : std_logic;
SIGNAL \U0_DP|match~35_combout\ : std_logic;
SIGNAL \U0_DP|match~41_combout\ : std_logic;
SIGNAL \U0_DP|match~42_combout\ : std_logic;
SIGNAL \U1_FSM|state~22_combout\ : std_logic;
SIGNAL \U1_FSM|state.next_round~q\ : std_logic;
SIGNAL \U1_FSM|state~12_combout\ : std_logic;
SIGNAL \U1_FSM|state~13_combout\ : std_logic;
SIGNAL \U1_FSM|state.result~q\ : std_logic;
SIGNAL \U1_FSM|state~23_combout\ : std_logic;
SIGNAL \U1_FSM|state.init~q\ : std_logic;
SIGNAL \U1_FSM|r2~combout\ : std_logic;
SIGNAL \U0_DP|CT|tempo[2]~1_combout\ : std_logic;
SIGNAL \U0_DP|CT|tempo~2_combout\ : std_logic;
SIGNAL \U0_DP|CT|tempo~0_combout\ : std_logic;
SIGNAL \U0_DP|CT|Equal0~0_combout\ : std_logic;
SIGNAL \U0_DP|CT|end_time~q\ : std_logic;
SIGNAL \U1_FSM|state~18_combout\ : std_logic;
SIGNAL \U1_FSM|state~19_combout\ : std_logic;
SIGNAL \U1_FSM|state.check~q\ : std_logic;
SIGNAL \U0_DP|CR|round[0]~0_combout\ : std_logic;
SIGNAL \U0_DP|CR|round[1]~1_combout\ : std_logic;
SIGNAL \U0_DP|CR|round[3]~3_combout\ : std_logic;
SIGNAL \U0_DP|CR|round[3]~4_combout\ : std_logic;
SIGNAL \U0_DP|CFPGA|Equal0~1_combout\ : std_logic;
SIGNAL \U0_DP|CFPGA|tc~0_combout\ : std_logic;
SIGNAL \U0_DP|CFPGA|tc~combout\ : std_logic;
SIGNAL \U1_FSM|state~14_combout\ : std_logic;
SIGNAL \U1_FSM|state~15_combout\ : std_logic;
SIGNAL \U1_FSM|state.play_FPGA~feeder_combout\ : std_logic;
SIGNAL \U1_FSM|state.play_FPGA~q\ : std_logic;
SIGNAL \U1_FSM|state.play_FPGA~clkctrl_outclk\ : std_logic;
SIGNAL \U0_DP|S1|WideOr3~0_combout\ : std_logic;
SIGNAL \U0_DP|S3|WideOr2~0_combout\ : std_logic;
SIGNAL \U0_DP|MUX11|out[0]~0_combout\ : std_logic;
SIGNAL \U0_DP|MUX11|out[0]~1_combout\ : std_logic;
SIGNAL \U0_DP|DEC3|WideOr6~0_combout\ : std_logic;
SIGNAL \U0_DP|DEC3|WideOr6~1_combout\ : std_logic;
SIGNAL \U0_DP|DEC3|WideOr5~0_combout\ : std_logic;
SIGNAL \U0_DP|DEC3|WideOr5~1_combout\ : std_logic;
SIGNAL \U0_DP|DEC3|WideOr4~0_combout\ : std_logic;
SIGNAL \U0_DP|DEC3|WideOr4~1_combout\ : std_logic;
SIGNAL \U0_DP|DEC3|WideOr3~0_combout\ : std_logic;
SIGNAL \U0_DP|DEC3|WideOr3~1_combout\ : std_logic;
SIGNAL \U0_DP|DEC3|WideOr2~0_combout\ : std_logic;
SIGNAL \U0_DP|DEC3|WideOr2~1_combout\ : std_logic;
SIGNAL \U0_DP|DEC3|WideOr1~0_combout\ : std_logic;
SIGNAL \U0_DP|DEC3|WideOr1~1_combout\ : std_logic;
SIGNAL \U0_DP|DEC3|WideOr0~0_combout\ : std_logic;
SIGNAL \U0_DP|DEC3|WideOr0~1_combout\ : std_logic;
SIGNAL \U0_DP|DEC1|WideOr6~0_combout\ : std_logic;
SIGNAL \U0_DP|DEC1|WideOr6~1_combout\ : std_logic;
SIGNAL \U0_DP|DEC1|WideOr5~0_combout\ : std_logic;
SIGNAL \U0_DP|DEC1|WideOr5~1_combout\ : std_logic;
SIGNAL \U0_DP|DEC1|WideOr4~0_combout\ : std_logic;
SIGNAL \U0_DP|MUX7|out[2]~8_combout\ : std_logic;
SIGNAL \U0_DP|DEC1|WideOr3~0_combout\ : std_logic;
SIGNAL \U0_DP|MUX7|out[3]~9_combout\ : std_logic;
SIGNAL \U0_DP|DEC1|WideOr2~0_combout\ : std_logic;
SIGNAL \U0_DP|MUX7|out[4]~10_combout\ : std_logic;
SIGNAL \U0_DP|DEC1|WideOr1~0_combout\ : std_logic;
SIGNAL \U0_DP|MUX7|out[5]~11_combout\ : std_logic;
SIGNAL \U0_DP|DEC1|WideOr0~0_combout\ : std_logic;
SIGNAL \U0_DP|DEC1|WideOr0~1_combout\ : std_logic;
SIGNAL \U0_DP|MUX5|out[2]~0_combout\ : std_logic;
SIGNAL \sw[9]~input_o\ : std_logic;
SIGNAL \U0_DP|R_SETUP|setup[7]~2_combout\ : std_logic;
SIGNAL \sw[8]~input_o\ : std_logic;
SIGNAL \U0_DP|R_SETUP|setup[6]~0_combout\ : std_logic;
SIGNAL \U0_DP|MUX3|out[0]~0_combout\ : std_logic;
SIGNAL \U0_DP|MUX3|out[2]~1_combout\ : std_logic;
SIGNAL \U0_DP|MUX3|out[3]~2_combout\ : std_logic;
SIGNAL \U0_DP|MUX3|out[4]~3_combout\ : std_logic;
SIGNAL \U0_DP|MUX3|out[5]~4_combout\ : std_logic;
SIGNAL \U0_DP|MUX3|out[2]~5_combout\ : std_logic;
SIGNAL \U0_DP|MUX1|out[2]~0_combout\ : std_logic;
SIGNAL \U0_DP|R_USER|q\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \U0_DP|CT|tempo\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U0_DP|CR|round\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U0_DP|CFPGA|total\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U0_DP|R_SETUP|setup\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U0_DP|C_USER|total\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U0_DP|R_FPGA|q\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \U1_FSM|ALT_INV_r2~combout\ : std_logic;
SIGNAL \U1_FSM|ALT_INV_state.result~q\ : std_logic;
SIGNAL \U0_DP|MUX3|ALT_INV_out[2]~5_combout\ : std_logic;
SIGNAL \U0_DP|MUX1|ALT_INV_out[2]~0_combout\ : std_logic;
SIGNAL \U0_DP|MUX5|ALT_INV_out[2]~0_combout\ : std_logic;

BEGIN

ww_clock_50 <= clock_50;
ww_key <= key;
ww_sw <= sw;
ledr <= ww_ledr;
hex0 <= ww_hex0;
hex1 <= ww_hex1;
hex2 <= ww_hex2;
hex3 <= ww_hex3;
hex4 <= ww_hex4;
hex5 <= ww_hex5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\U0_DP|e2_and_ntnb~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U0_DP|e2_and_ntnb~1_combout\);

\U1_FSM|state.play_FPGA~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U1_FSM|state.play_FPGA~q\);

\U0_DP|R_SETUP|setup[7]~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U0_DP|R_SETUP|setup[7]~1_combout\);

\clock_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock_50~input_o\);
\U1_FSM|ALT_INV_r2~combout\ <= NOT \U1_FSM|r2~combout\;
\U1_FSM|ALT_INV_state.result~q\ <= NOT \U1_FSM|state.result~q\;
\U0_DP|MUX3|ALT_INV_out[2]~5_combout\ <= NOT \U0_DP|MUX3|out[2]~5_combout\;
\U0_DP|MUX1|ALT_INV_out[2]~0_combout\ <= NOT \U0_DP|MUX1|out[2]~0_combout\;
\U0_DP|MUX5|ALT_INV_out[2]~0_combout\ <= NOT \U0_DP|MUX5|out[2]~0_combout\;

-- Location: IOOBUF_X9_Y29_N30
\ledr[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \key[0]~input_o\,
	devoe => ww_devoe,
	o => \ledr[0]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\ledr[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \key[1]~input_o\,
	devoe => ww_devoe,
	o => \ledr[1]~output_o\);

-- Location: IOOBUF_X5_Y29_N23
\ledr[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \key[2]~input_o\,
	devoe => ww_devoe,
	o => \ledr[2]~output_o\);

-- Location: IOOBUF_X19_Y29_N30
\ledr[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \key[3]~input_o\,
	devoe => ww_devoe,
	o => \ledr[3]~output_o\);

-- Location: IOOBUF_X16_Y29_N23
\ledr[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0_DP|R_FPGA|q\(60),
	devoe => ww_devoe,
	o => \ledr[4]~output_o\);

-- Location: IOOBUF_X41_Y18_N9
\ledr[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0_DP|R_FPGA|q\(61),
	devoe => ww_devoe,
	o => \ledr[5]~output_o\);

-- Location: IOOBUF_X0_Y13_N16
\ledr[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0_DP|R_FPGA|q\(62),
	devoe => ww_devoe,
	o => \ledr[6]~output_o\);

-- Location: IOOBUF_X16_Y29_N30
\ledr[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0_DP|R_FPGA|q\(63),
	devoe => ww_devoe,
	o => \ledr[7]~output_o\);

-- Location: IOOBUF_X11_Y29_N30
\hex0[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0_DP|DEC3|WideOr6~1_combout\,
	devoe => ww_devoe,
	o => \hex0[0]~output_o\);

-- Location: IOOBUF_X9_Y29_N9
\hex0[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0_DP|DEC3|WideOr5~1_combout\,
	devoe => ww_devoe,
	o => \hex0[1]~output_o\);

-- Location: IOOBUF_X14_Y29_N23
\hex0[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0_DP|DEC3|WideOr4~1_combout\,
	devoe => ww_devoe,
	o => \hex0[2]~output_o\);

-- Location: IOOBUF_X11_Y29_N23
\hex0[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0_DP|DEC3|WideOr3~1_combout\,
	devoe => ww_devoe,
	o => \hex0[3]~output_o\);

-- Location: IOOBUF_X14_Y29_N16
\hex0[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0_DP|DEC3|WideOr2~1_combout\,
	devoe => ww_devoe,
	o => \hex0[4]~output_o\);

-- Location: IOOBUF_X0_Y22_N16
\hex0[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0_DP|DEC3|WideOr1~1_combout\,
	devoe => ww_devoe,
	o => \hex0[5]~output_o\);

-- Location: IOOBUF_X14_Y29_N9
\hex0[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0_DP|DEC3|WideOr0~1_combout\,
	devoe => ww_devoe,
	o => \hex0[6]~output_o\);

-- Location: IOOBUF_X0_Y22_N23
\hex1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1_FSM|state.result~q\,
	devoe => ww_devoe,
	o => \hex1[0]~output_o\);

-- Location: IOOBUF_X0_Y12_N9
\hex1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1_FSM|state.result~q\,
	devoe => ww_devoe,
	o => \hex1[1]~output_o\);

-- Location: IOOBUF_X41_Y14_N9
\hex1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \hex1[2]~output_o\);

-- Location: IOOBUF_X5_Y0_N2
\hex1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1_FSM|state.result~q\,
	devoe => ww_devoe,
	o => \hex1[3]~output_o\);

-- Location: IOOBUF_X0_Y4_N9
\hex1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1_FSM|state.result~q\,
	devoe => ww_devoe,
	o => \hex1[4]~output_o\);

-- Location: IOOBUF_X41_Y20_N2
\hex1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \hex1[5]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\hex1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \hex1[6]~output_o\);

-- Location: IOOBUF_X14_Y29_N2
\hex2[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0_DP|DEC1|WideOr6~1_combout\,
	devoe => ww_devoe,
	o => \hex2[0]~output_o\);

-- Location: IOOBUF_X9_Y29_N16
\hex2[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0_DP|DEC1|WideOr5~1_combout\,
	devoe => ww_devoe,
	o => \hex2[1]~output_o\);

-- Location: IOOBUF_X9_Y29_N2
\hex2[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0_DP|MUX7|out[2]~8_combout\,
	devoe => ww_devoe,
	o => \hex2[2]~output_o\);

-- Location: IOOBUF_X16_Y29_N9
\hex2[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0_DP|MUX7|out[3]~9_combout\,
	devoe => ww_devoe,
	o => \hex2[3]~output_o\);

-- Location: IOOBUF_X0_Y20_N9
\hex2[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0_DP|MUX7|out[4]~10_combout\,
	devoe => ww_devoe,
	o => \hex2[4]~output_o\);

-- Location: IOOBUF_X14_Y0_N23
\hex2[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0_DP|MUX7|out[5]~11_combout\,
	devoe => ww_devoe,
	o => \hex2[5]~output_o\);

-- Location: IOOBUF_X0_Y11_N9
\hex2[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0_DP|DEC1|WideOr0~1_combout\,
	devoe => ww_devoe,
	o => \hex2[6]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\hex3[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \hex3[0]~output_o\);

-- Location: IOOBUF_X41_Y7_N2
\hex3[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \hex3[1]~output_o\);

-- Location: IOOBUF_X5_Y29_N30
\hex3[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0_DP|MUX5|out[2]~0_combout\,
	devoe => ww_devoe,
	o => \hex3[2]~output_o\);

-- Location: IOOBUF_X41_Y9_N16
\hex3[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \hex3[3]~output_o\);

-- Location: IOOBUF_X7_Y29_N30
\hex3[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0_DP|MUX5|ALT_INV_out[2]~0_combout\,
	devoe => ww_devoe,
	o => \hex3[4]~output_o\);

-- Location: IOOBUF_X7_Y29_N9
\hex3[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0_DP|MUX5|ALT_INV_out[2]~0_combout\,
	devoe => ww_devoe,
	o => \hex3[5]~output_o\);

-- Location: IOOBUF_X0_Y12_N23
\hex3[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1_FSM|ALT_INV_state.result~q\,
	devoe => ww_devoe,
	o => \hex3[6]~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\hex4[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0_DP|MUX3|out[0]~0_combout\,
	devoe => ww_devoe,
	o => \hex4[0]~output_o\);

-- Location: IOOBUF_X0_Y8_N9
\hex4[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1_FSM|ALT_INV_state.result~q\,
	devoe => ww_devoe,
	o => \hex4[1]~output_o\);

-- Location: IOOBUF_X11_Y29_N2
\hex4[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0_DP|MUX3|out[2]~1_combout\,
	devoe => ww_devoe,
	o => \hex4[2]~output_o\);

-- Location: IOOBUF_X41_Y20_N9
\hex4[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0_DP|MUX3|out[3]~2_combout\,
	devoe => ww_devoe,
	o => \hex4[3]~output_o\);

-- Location: IOOBUF_X11_Y29_N9
\hex4[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0_DP|MUX3|out[4]~3_combout\,
	devoe => ww_devoe,
	o => \hex4[4]~output_o\);

-- Location: IOOBUF_X16_Y29_N2
\hex4[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0_DP|MUX3|out[5]~4_combout\,
	devoe => ww_devoe,
	o => \hex4[5]~output_o\);

-- Location: IOOBUF_X0_Y23_N9
\hex4[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0_DP|MUX3|ALT_INV_out[2]~5_combout\,
	devoe => ww_devoe,
	o => \hex4[6]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\hex5[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1_FSM|ALT_INV_state.result~q\,
	devoe => ww_devoe,
	o => \hex5[0]~output_o\);

-- Location: IOOBUF_X37_Y29_N30
\hex5[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \hex5[1]~output_o\);

-- Location: IOOBUF_X0_Y21_N2
\hex5[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0_DP|MUX1|out[2]~0_combout\,
	devoe => ww_devoe,
	o => \hex5[2]~output_o\);

-- Location: IOOBUF_X5_Y29_N16
\hex5[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0_DP|MUX5|out[2]~0_combout\,
	devoe => ww_devoe,
	o => \hex5[3]~output_o\);

-- Location: IOOBUF_X0_Y21_N9
\hex5[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0_DP|MUX1|ALT_INV_out[2]~0_combout\,
	devoe => ww_devoe,
	o => \hex5[4]~output_o\);

-- Location: IOOBUF_X0_Y7_N16
\hex5[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \hex5[5]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\hex5[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1_FSM|ALT_INV_state.result~q\,
	devoe => ww_devoe,
	o => \hex5[6]~output_o\);

-- Location: IOIBUF_X11_Y29_N15
\key[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(0),
	o => \key[0]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\key[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(1),
	o => \key[1]~input_o\);

-- Location: IOIBUF_X7_Y29_N22
\key[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(2),
	o => \key[2]~input_o\);

-- Location: IOIBUF_X21_Y29_N15
\key[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(3),
	o => \key[3]~input_o\);

-- Location: IOIBUF_X41_Y15_N1
\clock_50~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock_50,
	o => \clock_50~input_o\);

-- Location: CLKCTRL_G9
\clock_50~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock_50~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y22_N1
\sw[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(1),
	o => \sw[1]~input_o\);

-- Location: LCCOMB_X14_Y16_N24
\U0_DP|CT|tempo[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|CT|tempo[0]~3_combout\ = !\U0_DP|CT|tempo\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0_DP|CT|tempo\(0),
	combout => \U0_DP|CT|tempo[0]~3_combout\);

-- Location: LCCOMB_X15_Y15_N26
\U0_DP|BTN|btn2state.EsperaApertar~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|BTN|btn2state.EsperaApertar~0_combout\ = !\key[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \key[2]~input_o\,
	combout => \U0_DP|BTN|btn2state.EsperaApertar~0_combout\);

-- Location: FF_X15_Y15_N27
\U0_DP|BTN|btn2state.EsperaApertar\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \U0_DP|BTN|btn2state.EsperaApertar~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0_DP|BTN|btn2state.EsperaApertar~q\);

-- Location: LCCOMB_X15_Y15_N20
\U0_DP|BTN|btn2next.SaidaAtiva~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|BTN|btn2next.SaidaAtiva~0_combout\ = (!\key[2]~input_o\ & !\U0_DP|BTN|btn2state.EsperaApertar~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \key[2]~input_o\,
	datad => \U0_DP|BTN|btn2state.EsperaApertar~q\,
	combout => \U0_DP|BTN|btn2next.SaidaAtiva~0_combout\);

-- Location: FF_X15_Y15_N21
\U0_DP|BTN|btn2state.SaidaAtiva\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \U0_DP|BTN|btn2next.SaidaAtiva~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0_DP|BTN|btn2state.SaidaAtiva~q\);

-- Location: LCCOMB_X15_Y15_N30
\U0_DP|BTN|btn0state.EsperaApertar~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|BTN|btn0state.EsperaApertar~0_combout\ = !\key[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \key[0]~input_o\,
	combout => \U0_DP|BTN|btn0state.EsperaApertar~0_combout\);

-- Location: FF_X15_Y15_N31
\U0_DP|BTN|btn0state.EsperaApertar\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \U0_DP|BTN|btn0state.EsperaApertar~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0_DP|BTN|btn0state.EsperaApertar~q\);

-- Location: LCCOMB_X15_Y15_N16
\U0_DP|BTN|btn0next.SaidaAtiva~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|BTN|btn0next.SaidaAtiva~0_combout\ = (!\key[0]~input_o\ & !\U0_DP|BTN|btn0state.EsperaApertar~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key[0]~input_o\,
	datad => \U0_DP|BTN|btn0state.EsperaApertar~q\,
	combout => \U0_DP|BTN|btn0next.SaidaAtiva~0_combout\);

-- Location: FF_X15_Y15_N17
\U0_DP|BTN|btn0state.SaidaAtiva\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \U0_DP|BTN|btn0next.SaidaAtiva~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0_DP|BTN|btn0state.SaidaAtiva~q\);

-- Location: LCCOMB_X15_Y15_N0
\U0_DP|BTN|btn1state.EsperaApertar~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|BTN|btn1state.EsperaApertar~0_combout\ = !\key[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \key[1]~input_o\,
	combout => \U0_DP|BTN|btn1state.EsperaApertar~0_combout\);

-- Location: FF_X15_Y15_N1
\U0_DP|BTN|btn1state.EsperaApertar\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \U0_DP|BTN|btn1state.EsperaApertar~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0_DP|BTN|btn1state.EsperaApertar~q\);

-- Location: LCCOMB_X15_Y15_N12
\U0_DP|BTN|btn1next.SaidaAtiva~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|BTN|btn1next.SaidaAtiva~0_combout\ = (!\key[1]~input_o\ & !\U0_DP|BTN|btn1state.EsperaApertar~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \key[1]~input_o\,
	datad => \U0_DP|BTN|btn1state.EsperaApertar~q\,
	combout => \U0_DP|BTN|btn1next.SaidaAtiva~0_combout\);

-- Location: FF_X15_Y15_N13
\U0_DP|BTN|btn1state.SaidaAtiva\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \U0_DP|BTN|btn1next.SaidaAtiva~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0_DP|BTN|btn1state.SaidaAtiva~q\);

-- Location: LCCOMB_X15_Y15_N10
\U0_DP|BTN|btn3state.EsperaApertar~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|BTN|btn3state.EsperaApertar~0_combout\ = !\key[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \key[3]~input_o\,
	combout => \U0_DP|BTN|btn3state.EsperaApertar~0_combout\);

-- Location: FF_X15_Y15_N11
\U0_DP|BTN|btn3state.EsperaApertar\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \U0_DP|BTN|btn3state.EsperaApertar~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0_DP|BTN|btn3state.EsperaApertar~q\);

-- Location: LCCOMB_X15_Y15_N24
\U0_DP|BTN|btn3next.SaidaAtiva~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|BTN|btn3next.SaidaAtiva~0_combout\ = (!\U0_DP|BTN|btn3state.EsperaApertar~q\ & !\key[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|BTN|btn3state.EsperaApertar~q\,
	datad => \key[3]~input_o\,
	combout => \U0_DP|BTN|btn3next.SaidaAtiva~0_combout\);

-- Location: FF_X15_Y15_N25
\U0_DP|BTN|btn3state.SaidaAtiva\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \U0_DP|BTN|btn3next.SaidaAtiva~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0_DP|BTN|btn3state.SaidaAtiva~q\);

-- Location: LCCOMB_X15_Y15_N14
\U0_DP|e2_and_ntnb~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|e2_and_ntnb~2_combout\ = (((!\U0_DP|BTN|btn3state.SaidaAtiva~q\) # (!\U0_DP|BTN|btn1state.SaidaAtiva~q\)) # (!\U0_DP|BTN|btn0state.SaidaAtiva~q\)) # (!\U0_DP|BTN|btn2state.SaidaAtiva~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|BTN|btn2state.SaidaAtiva~q\,
	datab => \U0_DP|BTN|btn0state.SaidaAtiva~q\,
	datac => \U0_DP|BTN|btn1state.SaidaAtiva~q\,
	datad => \U0_DP|BTN|btn3state.SaidaAtiva~q\,
	combout => \U0_DP|e2_and_ntnb~2_combout\);

-- Location: LCCOMB_X16_Y15_N28
\U0_DP|C_USER|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|C_USER|Add0~0_combout\ = (\U0_DP|C_USER|total\(0) & \U0_DP|C_USER|total\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0_DP|C_USER|total\(0),
	datac => \U0_DP|C_USER|total\(1),
	combout => \U0_DP|C_USER|Add0~0_combout\);

-- Location: LCCOMB_X16_Y15_N8
\U0_DP|C_USER|total~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|C_USER|total~3_combout\ = (\U0_DP|C_USER|Equal0~0_combout\ & (!\U0_DP|C_USER|Equal0~1_combout\ & (\U0_DP|C_USER|Add0~0_combout\ $ (\U0_DP|C_USER|total\(2))))) # (!\U0_DP|C_USER|Equal0~0_combout\ & (\U0_DP|C_USER|Add0~0_combout\ $ 
-- ((\U0_DP|C_USER|total\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|C_USER|Equal0~0_combout\,
	datab => \U0_DP|C_USER|Add0~0_combout\,
	datac => \U0_DP|C_USER|total\(2),
	datad => \U0_DP|C_USER|Equal0~1_combout\,
	combout => \U0_DP|C_USER|total~3_combout\);

-- Location: LCCOMB_X15_Y15_N22
\U0_DP|e2_and_ntnb~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|e2_and_ntnb~0_combout\ = (!\U0_DP|BTN|btn3state.SaidaAtiva~q\) # (!\U0_DP|BTN|btn2state.SaidaAtiva~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0_DP|BTN|btn2state.SaidaAtiva~q\,
	datad => \U0_DP|BTN|btn3state.SaidaAtiva~q\,
	combout => \U0_DP|e2_and_ntnb~0_combout\);

-- Location: LCCOMB_X15_Y15_N18
\U0_DP|e2_and_ntnb~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|e2_and_ntnb~1_combout\ = (\U1_FSM|state.play_user~q\ & ((\U0_DP|e2_and_ntnb~0_combout\) # ((!\U0_DP|BTN|btn0state.SaidaAtiva~q\) # (!\U0_DP|BTN|btn1state.SaidaAtiva~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|e2_and_ntnb~0_combout\,
	datab => \U0_DP|BTN|btn1state.SaidaAtiva~q\,
	datac => \U1_FSM|state.play_user~q\,
	datad => \U0_DP|BTN|btn0state.SaidaAtiva~q\,
	combout => \U0_DP|e2_and_ntnb~1_combout\);

-- Location: FF_X16_Y15_N9
\U0_DP|C_USER|total[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \U0_DP|C_USER|total~3_combout\,
	clrn => \U1_FSM|ALT_INV_r2~combout\,
	ena => \U0_DP|e2_and_ntnb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0_DP|C_USER|total\(2));

-- Location: LCCOMB_X16_Y15_N24
\U0_DP|C_USER|total~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|C_USER|total~2_combout\ = (!\U0_DP|C_USER|Equal0~2_combout\ & (\U0_DP|C_USER|total\(3) $ (((\U0_DP|C_USER|total\(2) & \U0_DP|C_USER|Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|C_USER|total\(2),
	datab => \U0_DP|C_USER|Add0~0_combout\,
	datac => \U0_DP|C_USER|total\(3),
	datad => \U0_DP|C_USER|Equal0~2_combout\,
	combout => \U0_DP|C_USER|total~2_combout\);

-- Location: FF_X16_Y15_N25
\U0_DP|C_USER|total[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \U0_DP|C_USER|total~2_combout\,
	clrn => \U1_FSM|ALT_INV_r2~combout\,
	ena => \U0_DP|e2_and_ntnb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0_DP|C_USER|total\(3));

-- Location: LCCOMB_X15_Y17_N14
\U0_DP|CR|round[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|CR|round[2]~2_combout\ = \U0_DP|CR|round\(2) $ (((\U0_DP|CR|round\(0) & (\U0_DP|CR|round\(1) & \U1_FSM|state.check~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|CR|round\(2),
	datab => \U0_DP|CR|round\(0),
	datac => \U0_DP|CR|round\(1),
	datad => \U1_FSM|state.check~q\,
	combout => \U0_DP|CR|round[2]~2_combout\);

-- Location: FF_X15_Y17_N29
\U0_DP|CR|round[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \U0_DP|CR|round[2]~2_combout\,
	clrn => \U1_FSM|state.init~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0_DP|CR|round\(2));

-- Location: LCCOMB_X16_Y15_N18
\U0_DP|C_USER|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|C_USER|Equal0~1_combout\ = (\U0_DP|C_USER|total\(2) & (\U0_DP|CR|round\(2) & (\U0_DP|C_USER|total\(3) $ (!\U0_DP|CR|round\(3))))) # (!\U0_DP|C_USER|total\(2) & (!\U0_DP|CR|round\(2) & (\U0_DP|C_USER|total\(3) $ (!\U0_DP|CR|round\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|C_USER|total\(2),
	datab => \U0_DP|C_USER|total\(3),
	datac => \U0_DP|CR|round\(2),
	datad => \U0_DP|CR|round\(3),
	combout => \U0_DP|C_USER|Equal0~1_combout\);

-- Location: LCCOMB_X16_Y15_N4
\U0_DP|C_USER|total~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|C_USER|total~1_combout\ = (!\U0_DP|C_USER|total\(0) & ((!\U0_DP|C_USER|Equal0~1_combout\) # (!\U0_DP|C_USER|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|C_USER|Equal0~0_combout\,
	datac => \U0_DP|C_USER|total\(0),
	datad => \U0_DP|C_USER|Equal0~1_combout\,
	combout => \U0_DP|C_USER|total~1_combout\);

-- Location: FF_X16_Y15_N5
\U0_DP|C_USER|total[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \U0_DP|C_USER|total~1_combout\,
	clrn => \U1_FSM|ALT_INV_r2~combout\,
	ena => \U0_DP|e2_and_ntnb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0_DP|C_USER|total\(0));

-- Location: LCCOMB_X16_Y15_N22
\U0_DP|C_USER|total~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|C_USER|total~0_combout\ = (\U0_DP|C_USER|Equal0~0_combout\ & (!\U0_DP|C_USER|Equal0~1_combout\ & (\U0_DP|C_USER|total\(0) $ (\U0_DP|C_USER|total\(1))))) # (!\U0_DP|C_USER|Equal0~0_combout\ & (\U0_DP|C_USER|total\(0) $ ((\U0_DP|C_USER|total\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|C_USER|Equal0~0_combout\,
	datab => \U0_DP|C_USER|total\(0),
	datac => \U0_DP|C_USER|total\(1),
	datad => \U0_DP|C_USER|Equal0~1_combout\,
	combout => \U0_DP|C_USER|total~0_combout\);

-- Location: FF_X16_Y15_N23
\U0_DP|C_USER|total[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \U0_DP|C_USER|total~0_combout\,
	clrn => \U1_FSM|ALT_INV_r2~combout\,
	ena => \U0_DP|e2_and_ntnb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0_DP|C_USER|total\(1));

-- Location: LCCOMB_X16_Y15_N26
\U0_DP|C_USER|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|C_USER|Equal0~0_combout\ = (\U0_DP|C_USER|total\(1) & (\U0_DP|CR|round\(1) & (\U0_DP|C_USER|total\(0) $ (!\U0_DP|CR|round\(0))))) # (!\U0_DP|C_USER|total\(1) & (!\U0_DP|CR|round\(1) & (\U0_DP|C_USER|total\(0) $ (!\U0_DP|CR|round\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|C_USER|total\(1),
	datab => \U0_DP|C_USER|total\(0),
	datac => \U0_DP|CR|round\(1),
	datad => \U0_DP|CR|round\(0),
	combout => \U0_DP|C_USER|Equal0~0_combout\);

-- Location: LCCOMB_X16_Y15_N16
\U0_DP|C_USER|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|C_USER|Equal0~2_combout\ = (\U0_DP|C_USER|Equal0~0_combout\ & \U0_DP|C_USER|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0_DP|C_USER|Equal0~0_combout\,
	datad => \U0_DP|C_USER|Equal0~1_combout\,
	combout => \U0_DP|C_USER|Equal0~2_combout\);

-- Location: LCCOMB_X16_Y15_N0
\U0_DP|C_USER|tc~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|C_USER|tc~0_combout\ = (\U0_DP|C_USER|tc~q\) # ((\U0_DP|e2_and_ntnb~2_combout\ & (\U0_DP|C_USER|Equal0~2_combout\ & \U1_FSM|state.play_user~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|e2_and_ntnb~2_combout\,
	datab => \U0_DP|C_USER|Equal0~2_combout\,
	datac => \U0_DP|C_USER|tc~q\,
	datad => \U1_FSM|state.play_user~q\,
	combout => \U0_DP|C_USER|tc~0_combout\);

-- Location: FF_X16_Y15_N1
\U0_DP|C_USER|tc\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \U0_DP|C_USER|tc~0_combout\,
	clrn => \U1_FSM|ALT_INV_r2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0_DP|C_USER|tc~q\);

-- Location: IOIBUF_X0_Y21_N15
\sw[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(0),
	o => \sw[0]~input_o\);

-- Location: LCCOMB_X17_Y17_N8
\U1_FSM|state~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_FSM|state~24_combout\ = (!\sw[1]~input_o\ & (((!\sw[0]~input_o\ & \U1_FSM|state.setup~q\)) # (!\U1_FSM|state.init~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \sw[1]~input_o\,
	datac => \U1_FSM|state.setup~q\,
	datad => \U1_FSM|state.init~q\,
	combout => \U1_FSM|state~24_combout\);

-- Location: LCCOMB_X17_Y17_N30
\U1_FSM|state.setup~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_FSM|state.setup~feeder_combout\ = \U1_FSM|state~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_FSM|state~24_combout\,
	combout => \U1_FSM|state.setup~feeder_combout\);

-- Location: FF_X17_Y17_N31
\U1_FSM|state.setup\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \U1_FSM|state.setup~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1_FSM|state.setup~q\);

-- Location: LCCOMB_X16_Y19_N18
\U1_FSM|state~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_FSM|state~16_combout\ = (\sw[0]~input_o\ & (!\U1_FSM|state.setup~q\ & ((!\U0_DP|CFPGA|tc~combout\) # (!\U1_FSM|state.play_FPGA~q\)))) # (!\sw[0]~input_o\ & (((!\U0_DP|CFPGA|tc~combout\)) # (!\U1_FSM|state.play_FPGA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \U1_FSM|state.play_FPGA~q\,
	datac => \U0_DP|CFPGA|tc~combout\,
	datad => \U1_FSM|state.setup~q\,
	combout => \U1_FSM|state~16_combout\);

-- Location: LCCOMB_X16_Y19_N24
\U1_FSM|state~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_FSM|state~17_combout\ = (\U1_FSM|state~16_combout\ & ((\U1_FSM|state.setup~q\) # ((\U1_FSM|state.play_FPGA~q\) # (\U1_FSM|state.play_user~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_FSM|state.setup~q\,
	datab => \U1_FSM|state.play_FPGA~q\,
	datac => \U1_FSM|state.play_user~q\,
	datad => \U1_FSM|state~16_combout\,
	combout => \U1_FSM|state~17_combout\);

-- Location: LCCOMB_X16_Y15_N12
\U1_FSM|state~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_FSM|state~20_combout\ = (\U1_FSM|state.play_user~q\ & (!\U0_DP|C_USER|tc~q\ & (!\U0_DP|CT|end_time~q\ & \U1_FSM|state~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_FSM|state.play_user~q\,
	datab => \U0_DP|C_USER|tc~q\,
	datac => \U0_DP|CT|end_time~q\,
	datad => \U1_FSM|state~17_combout\,
	combout => \U1_FSM|state~20_combout\);

-- Location: LCCOMB_X16_Y15_N20
\U1_FSM|state~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_FSM|state~21_combout\ = (!\sw[1]~input_o\ & ((\U1_FSM|state~20_combout\) # ((\U0_DP|CFPGA|tc~combout\ & \U1_FSM|state.play_FPGA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|CFPGA|tc~combout\,
	datab => \sw[1]~input_o\,
	datac => \U1_FSM|state.play_FPGA~q\,
	datad => \U1_FSM|state~20_combout\,
	combout => \U1_FSM|state~21_combout\);

-- Location: FF_X16_Y15_N21
\U1_FSM|state.play_user\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \U1_FSM|state~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1_FSM|state.play_user~q\);

-- Location: IOIBUF_X0_Y21_N22
\sw[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(2),
	o => \sw[2]~input_o\);

-- Location: LCCOMB_X14_Y17_N30
\U0_DP|R_SETUP|setup[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_SETUP|setup[0]~6_combout\ = (\U1_FSM|state.setup~q\ & \sw[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1_FSM|state.setup~q\,
	datad => \sw[2]~input_o\,
	combout => \U0_DP|R_SETUP|setup[0]~6_combout\);

-- Location: LCCOMB_X15_Y16_N16
\U0_DP|R_SETUP|setup[7]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_SETUP|setup[7]~1_combout\ = (\U1_FSM|state.setup~q\) # (!\U1_FSM|state.init~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1_FSM|state.setup~q\,
	datad => \U1_FSM|state.init~q\,
	combout => \U0_DP|R_SETUP|setup[7]~1_combout\);

-- Location: CLKCTRL_G12
\U0_DP|R_SETUP|setup[7]~1clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U0_DP|R_SETUP|setup[7]~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U0_DP|R_SETUP|setup[7]~1clkctrl_outclk\);

-- Location: LCCOMB_X14_Y17_N26
\U0_DP|R_SETUP|setup[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_SETUP|setup\(0) = (GLOBAL(\U0_DP|R_SETUP|setup[7]~1clkctrl_outclk\) & ((\U0_DP|R_SETUP|setup[0]~6_combout\))) # (!GLOBAL(\U0_DP|R_SETUP|setup[7]~1clkctrl_outclk\) & (\U0_DP|R_SETUP|setup\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_SETUP|setup\(0),
	datac => \U0_DP|R_SETUP|setup[0]~6_combout\,
	datad => \U0_DP|R_SETUP|setup[7]~1clkctrl_outclk\,
	combout => \U0_DP|R_SETUP|setup\(0));

-- Location: IOIBUF_X14_Y29_N29
\sw[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(3),
	o => \sw[3]~input_o\);

-- Location: LCCOMB_X14_Y17_N28
\U0_DP|R_SETUP|setup[1]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_SETUP|setup[1]~5_combout\ = (\U1_FSM|state.setup~q\ & \sw[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1_FSM|state.setup~q\,
	datad => \sw[3]~input_o\,
	combout => \U0_DP|R_SETUP|setup[1]~5_combout\);

-- Location: LCCOMB_X14_Y17_N24
\U0_DP|R_SETUP|setup[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_SETUP|setup\(1) = (GLOBAL(\U0_DP|R_SETUP|setup[7]~1clkctrl_outclk\) & ((\U0_DP|R_SETUP|setup[1]~5_combout\))) # (!GLOBAL(\U0_DP|R_SETUP|setup[7]~1clkctrl_outclk\) & (\U0_DP|R_SETUP|setup\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0_DP|R_SETUP|setup\(1),
	datac => \U0_DP|R_SETUP|setup[7]~1clkctrl_outclk\,
	datad => \U0_DP|R_SETUP|setup[1]~5_combout\,
	combout => \U0_DP|R_SETUP|setup\(1));

-- Location: LCCOMB_X14_Y17_N12
\U0_DP|CR|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|CR|Equal0~0_combout\ = (\U0_DP|CR|round\(1) & (\U0_DP|R_SETUP|setup\(1) & (\U0_DP|CR|round\(0) $ (!\U0_DP|R_SETUP|setup\(0))))) # (!\U0_DP|CR|round\(1) & (!\U0_DP|R_SETUP|setup\(1) & (\U0_DP|CR|round\(0) $ (!\U0_DP|R_SETUP|setup\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|CR|round\(1),
	datab => \U0_DP|CR|round\(0),
	datac => \U0_DP|R_SETUP|setup\(0),
	datad => \U0_DP|R_SETUP|setup\(1),
	combout => \U0_DP|CR|Equal0~0_combout\);

-- Location: IOIBUF_X0_Y13_N8
\sw[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(4),
	o => \sw[4]~input_o\);

-- Location: LCCOMB_X14_Y17_N22
\U0_DP|R_SETUP|setup[2]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_SETUP|setup[2]~8_combout\ = (\U1_FSM|state.setup~q\ & \sw[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1_FSM|state.setup~q\,
	datad => \sw[4]~input_o\,
	combout => \U0_DP|R_SETUP|setup[2]~8_combout\);

-- Location: LCCOMB_X14_Y17_N14
\U0_DP|R_SETUP|setup[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_SETUP|setup\(2) = (GLOBAL(\U0_DP|R_SETUP|setup[7]~1clkctrl_outclk\) & ((\U0_DP|R_SETUP|setup[2]~8_combout\))) # (!GLOBAL(\U0_DP|R_SETUP|setup[7]~1clkctrl_outclk\) & (\U0_DP|R_SETUP|setup\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0_DP|R_SETUP|setup\(2),
	datac => \U0_DP|R_SETUP|setup[2]~8_combout\,
	datad => \U0_DP|R_SETUP|setup[7]~1clkctrl_outclk\,
	combout => \U0_DP|R_SETUP|setup\(2));

-- Location: IOIBUF_X9_Y29_N22
\sw[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(5),
	o => \sw[5]~input_o\);

-- Location: LCCOMB_X14_Y17_N8
\U0_DP|R_SETUP|setup[3]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_SETUP|setup[3]~7_combout\ = (\U1_FSM|state.setup~q\ & \sw[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1_FSM|state.setup~q\,
	datad => \sw[5]~input_o\,
	combout => \U0_DP|R_SETUP|setup[3]~7_combout\);

-- Location: LCCOMB_X14_Y17_N20
\U0_DP|R_SETUP|setup[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_SETUP|setup\(3) = (GLOBAL(\U0_DP|R_SETUP|setup[7]~1clkctrl_outclk\) & ((\U0_DP|R_SETUP|setup[3]~7_combout\))) # (!GLOBAL(\U0_DP|R_SETUP|setup[7]~1clkctrl_outclk\) & (\U0_DP|R_SETUP|setup\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0_DP|R_SETUP|setup\(3),
	datac => \U0_DP|R_SETUP|setup[3]~7_combout\,
	datad => \U0_DP|R_SETUP|setup[7]~1clkctrl_outclk\,
	combout => \U0_DP|R_SETUP|setup\(3));

-- Location: LCCOMB_X14_Y17_N10
\U0_DP|CR|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|CR|Equal0~1_combout\ = (\U0_DP|CR|round\(3) & (\U0_DP|R_SETUP|setup\(3) & (\U0_DP|CR|round\(2) $ (!\U0_DP|R_SETUP|setup\(2))))) # (!\U0_DP|CR|round\(3) & (!\U0_DP|R_SETUP|setup\(3) & (\U0_DP|CR|round\(2) $ (!\U0_DP|R_SETUP|setup\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|CR|round\(3),
	datab => \U0_DP|CR|round\(2),
	datac => \U0_DP|R_SETUP|setup\(2),
	datad => \U0_DP|R_SETUP|setup\(3),
	combout => \U0_DP|CR|Equal0~1_combout\);

-- Location: LCCOMB_X14_Y17_N18
\U0_DP|CR|tc~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|CR|tc~0_combout\ = (\U0_DP|CR|tc~q\) # ((\U0_DP|CR|Equal0~0_combout\ & \U0_DP|CR|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|CR|Equal0~0_combout\,
	datac => \U0_DP|CR|tc~q\,
	datad => \U0_DP|CR|Equal0~1_combout\,
	combout => \U0_DP|CR|tc~0_combout\);

-- Location: FF_X14_Y17_N19
\U0_DP|CR|tc\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \U0_DP|CR|tc~0_combout\,
	clrn => \U1_FSM|state.init~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0_DP|CR|tc~q\);

-- Location: LCCOMB_X15_Y19_N22
\U0_DP|R_FPGA|q[56]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_FPGA|q\(56) = (GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & ((\U0_DP|R_FPGA|q\(60)))) # (!GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & (\U0_DP|R_FPGA|q\(56)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_FPGA|q\(56),
	datab => \U0_DP|R_FPGA|q\(60),
	datac => \U1_FSM|state.play_FPGA~clkctrl_outclk\,
	combout => \U0_DP|R_FPGA|q\(56));

-- Location: LCCOMB_X15_Y19_N26
\U0_DP|R_FPGA|q[52]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_FPGA|q\(52) = (GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & ((\U0_DP|R_FPGA|q\(56)))) # (!GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & (\U0_DP|R_FPGA|q\(52)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_FPGA|q\(52),
	datab => \U1_FSM|state.play_FPGA~clkctrl_outclk\,
	datac => \U0_DP|R_FPGA|q\(56),
	combout => \U0_DP|R_FPGA|q\(52));

-- Location: LCCOMB_X15_Y19_N6
\U0_DP|R_FPGA|q[48]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_FPGA|q\(48) = (GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & ((\U0_DP|R_FPGA|q\(52)))) # (!GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & (\U0_DP|R_FPGA|q\(48)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_FPGA|q\(48),
	datac => \U1_FSM|state.play_FPGA~clkctrl_outclk\,
	datad => \U0_DP|R_FPGA|q\(52),
	combout => \U0_DP|R_FPGA|q\(48));

-- Location: LCCOMB_X15_Y18_N14
\U0_DP|R_FPGA|q[44]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_FPGA|q\(44) = (GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & (\U0_DP|R_FPGA|q\(48))) # (!GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & ((\U0_DP|R_FPGA|q\(44))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_FPGA|q\(48),
	datac => \U0_DP|R_FPGA|q\(44),
	datad => \U1_FSM|state.play_FPGA~clkctrl_outclk\,
	combout => \U0_DP|R_FPGA|q\(44));

-- Location: CLKCTRL_G6
\U0_DP|e2_and_ntnb~1clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U0_DP|e2_and_ntnb~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U0_DP|e2_and_ntnb~1clkctrl_outclk\);

-- Location: LCCOMB_X15_Y19_N30
\U0_DP|R_USER|q[60]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_USER|q\(60) = (!\U1_FSM|r2~combout\ & ((GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & ((!\U0_DP|BTN|btn0state.SaidaAtiva~q\))) # (!GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & (\U0_DP|R_USER|q\(60)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_USER|q\(60),
	datab => \U1_FSM|r2~combout\,
	datac => \U0_DP|e2_and_ntnb~1clkctrl_outclk\,
	datad => \U0_DP|BTN|btn0state.SaidaAtiva~q\,
	combout => \U0_DP|R_USER|q\(60));

-- Location: LCCOMB_X15_Y19_N0
\U0_DP|R_USER|q[56]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_USER|q\(56) = (!\U1_FSM|r2~combout\ & ((GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & (\U0_DP|R_USER|q\(60))) # (!GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & ((\U0_DP|R_USER|q\(56))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_USER|q\(60),
	datab => \U0_DP|R_USER|q\(56),
	datac => \U1_FSM|r2~combout\,
	datad => \U0_DP|e2_and_ntnb~1clkctrl_outclk\,
	combout => \U0_DP|R_USER|q\(56));

-- Location: LCCOMB_X15_Y19_N12
\U0_DP|R_USER|q[52]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_USER|q\(52) = (!\U1_FSM|r2~combout\ & ((GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & ((\U0_DP|R_USER|q\(56)))) # (!GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & (\U0_DP|R_USER|q\(52)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_FSM|r2~combout\,
	datab => \U0_DP|R_USER|q\(52),
	datac => \U0_DP|e2_and_ntnb~1clkctrl_outclk\,
	datad => \U0_DP|R_USER|q\(56),
	combout => \U0_DP|R_USER|q\(52));

-- Location: LCCOMB_X16_Y18_N8
\U0_DP|R_USER|q[48]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_USER|q\(48) = (!\U1_FSM|r2~combout\ & ((GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & ((\U0_DP|R_USER|q\(52)))) # (!GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & (\U0_DP|R_USER|q\(48)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_FSM|r2~combout\,
	datab => \U0_DP|R_USER|q\(48),
	datac => \U0_DP|e2_and_ntnb~1clkctrl_outclk\,
	datad => \U0_DP|R_USER|q\(52),
	combout => \U0_DP|R_USER|q\(48));

-- Location: LCCOMB_X16_Y18_N4
\U0_DP|R_USER|q[44]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_USER|q\(44) = (!\U1_FSM|r2~combout\ & ((GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & ((\U0_DP|R_USER|q\(48)))) # (!GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & (\U0_DP|R_USER|q\(44)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_FSM|r2~combout\,
	datab => \U0_DP|R_USER|q\(44),
	datac => \U0_DP|R_USER|q\(48),
	datad => \U0_DP|e2_and_ntnb~1clkctrl_outclk\,
	combout => \U0_DP|R_USER|q\(44));

-- Location: LCCOMB_X15_Y19_N8
\U0_DP|R_USER|q[61]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_USER|q\(61) = (!\U1_FSM|r2~combout\ & ((GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & ((!\U0_DP|BTN|btn1state.SaidaAtiva~q\))) # (!GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & (\U0_DP|R_USER|q\(61)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_FSM|r2~combout\,
	datab => \U0_DP|R_USER|q\(61),
	datac => \U0_DP|e2_and_ntnb~1clkctrl_outclk\,
	datad => \U0_DP|BTN|btn1state.SaidaAtiva~q\,
	combout => \U0_DP|R_USER|q\(61));

-- Location: LCCOMB_X15_Y19_N14
\U0_DP|R_USER|q[57]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_USER|q\(57) = (!\U1_FSM|r2~combout\ & ((GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & (\U0_DP|R_USER|q\(61))) # (!GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & ((\U0_DP|R_USER|q\(57))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_USER|q\(61),
	datab => \U0_DP|R_USER|q\(57),
	datac => \U1_FSM|r2~combout\,
	datad => \U0_DP|e2_and_ntnb~1clkctrl_outclk\,
	combout => \U0_DP|R_USER|q\(57));

-- Location: LCCOMB_X15_Y19_N10
\U0_DP|R_USER|q[53]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_USER|q\(53) = (!\U1_FSM|r2~combout\ & ((GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & ((\U0_DP|R_USER|q\(57)))) # (!GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & (\U0_DP|R_USER|q\(53)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_USER|q\(53),
	datab => \U0_DP|R_USER|q\(57),
	datac => \U1_FSM|r2~combout\,
	datad => \U0_DP|e2_and_ntnb~1clkctrl_outclk\,
	combout => \U0_DP|R_USER|q\(53));

-- Location: LCCOMB_X16_Y18_N22
\U0_DP|R_USER|q[49]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_USER|q\(49) = (!\U1_FSM|r2~combout\ & ((GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & ((\U0_DP|R_USER|q\(53)))) # (!GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & (\U0_DP|R_USER|q\(49)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_FSM|r2~combout\,
	datab => \U0_DP|R_USER|q\(49),
	datac => \U0_DP|R_USER|q\(53),
	datad => \U0_DP|e2_and_ntnb~1clkctrl_outclk\,
	combout => \U0_DP|R_USER|q\(49));

-- Location: LCCOMB_X16_Y18_N10
\U0_DP|R_USER|q[45]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_USER|q\(45) = (!\U1_FSM|r2~combout\ & ((GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & ((\U0_DP|R_USER|q\(49)))) # (!GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & (\U0_DP|R_USER|q\(45)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_FSM|r2~combout\,
	datab => \U0_DP|R_USER|q\(45),
	datac => \U0_DP|R_USER|q\(49),
	datad => \U0_DP|e2_and_ntnb~1clkctrl_outclk\,
	combout => \U0_DP|R_USER|q\(45));

-- Location: LCCOMB_X15_Y17_N12
\U0_DP|CFPGA|total~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|CFPGA|total~0_combout\ = (\U0_DP|CFPGA|total\(0)) # ((\U0_DP|CFPGA|Equal0~0_combout\ & \U0_DP|CFPGA|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0_DP|CFPGA|Equal0~0_combout\,
	datac => \U0_DP|CFPGA|total\(0),
	datad => \U0_DP|CFPGA|Equal0~1_combout\,
	combout => \U0_DP|CFPGA|total~0_combout\);

-- Location: LCCOMB_X15_Y17_N16
\U0_DP|CFPGA|total[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|CFPGA|total\(0) = (!\U1_FSM|r2~combout\ & ((GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & ((!\U0_DP|CFPGA|total~0_combout\))) # (!GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & (\U0_DP|CFPGA|total\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|CFPGA|total\(0),
	datab => \U1_FSM|r2~combout\,
	datac => \U1_FSM|state.play_FPGA~clkctrl_outclk\,
	datad => \U0_DP|CFPGA|total~0_combout\,
	combout => \U0_DP|CFPGA|total\(0));

-- Location: LCCOMB_X15_Y17_N20
\U0_DP|CFPGA|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|CFPGA|Equal0~0_combout\ = (\U0_DP|CFPGA|total\(1) & (\U0_DP|CR|round\(1) & (\U0_DP|CR|round\(0) $ (!\U0_DP|CFPGA|total\(0))))) # (!\U0_DP|CFPGA|total\(1) & (!\U0_DP|CR|round\(1) & (\U0_DP|CR|round\(0) $ (!\U0_DP|CFPGA|total\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|CFPGA|total\(1),
	datab => \U0_DP|CR|round\(1),
	datac => \U0_DP|CR|round\(0),
	datad => \U0_DP|CFPGA|total\(0),
	combout => \U0_DP|CFPGA|Equal0~0_combout\);

-- Location: LCCOMB_X15_Y17_N22
\U0_DP|CFPGA|total~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|CFPGA|total~1_combout\ = (\U0_DP|CFPGA|Equal0~0_combout\ & (!\U0_DP|CFPGA|Equal0~1_combout\ & (\U0_DP|CFPGA|total\(1) $ (\U0_DP|CFPGA|total\(0))))) # (!\U0_DP|CFPGA|Equal0~0_combout\ & (\U0_DP|CFPGA|total\(1) $ ((\U0_DP|CFPGA|total\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|CFPGA|total\(1),
	datab => \U0_DP|CFPGA|Equal0~0_combout\,
	datac => \U0_DP|CFPGA|total\(0),
	datad => \U0_DP|CFPGA|Equal0~1_combout\,
	combout => \U0_DP|CFPGA|total~1_combout\);

-- Location: LCCOMB_X15_Y17_N10
\U0_DP|CFPGA|total[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|CFPGA|total\(1) = (!\U1_FSM|r2~combout\ & ((GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & ((\U0_DP|CFPGA|total~1_combout\))) # (!GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & (\U0_DP|CFPGA|total\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|CFPGA|total\(1),
	datab => \U1_FSM|state.play_FPGA~clkctrl_outclk\,
	datac => \U0_DP|CFPGA|total~1_combout\,
	datad => \U1_FSM|r2~combout\,
	combout => \U0_DP|CFPGA|total\(1));

-- Location: LCCOMB_X15_Y17_N0
\U0_DP|CFPGA|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|CFPGA|Add0~0_combout\ = \U0_DP|CFPGA|total\(2) $ (((\U0_DP|CFPGA|total\(1) & \U0_DP|CFPGA|total\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|CFPGA|total\(1),
	datac => \U0_DP|CFPGA|total\(2),
	datad => \U0_DP|CFPGA|total\(0),
	combout => \U0_DP|CFPGA|Add0~0_combout\);

-- Location: LCCOMB_X15_Y17_N30
\U0_DP|CFPGA|total~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|CFPGA|total~2_combout\ = (\U0_DP|CFPGA|Add0~0_combout\ & ((!\U0_DP|CFPGA|Equal0~1_combout\) # (!\U0_DP|CFPGA|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0_DP|CFPGA|Add0~0_combout\,
	datac => \U0_DP|CFPGA|Equal0~0_combout\,
	datad => \U0_DP|CFPGA|Equal0~1_combout\,
	combout => \U0_DP|CFPGA|total~2_combout\);

-- Location: LCCOMB_X15_Y17_N8
\U0_DP|CFPGA|total[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|CFPGA|total\(2) = (!\U1_FSM|r2~combout\ & ((GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & ((\U0_DP|CFPGA|total~2_combout\))) # (!GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & (\U0_DP|CFPGA|total\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|CFPGA|total\(2),
	datab => \U1_FSM|state.play_FPGA~clkctrl_outclk\,
	datac => \U0_DP|CFPGA|total~2_combout\,
	datad => \U1_FSM|r2~combout\,
	combout => \U0_DP|CFPGA|total\(2));

-- Location: LCCOMB_X15_Y17_N4
\U0_DP|CFPGA|Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|CFPGA|Add0~1_combout\ = \U0_DP|CFPGA|total\(3) $ (((\U0_DP|CFPGA|total\(1) & (\U0_DP|CFPGA|total\(2) & \U0_DP|CFPGA|total\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|CFPGA|total\(3),
	datab => \U0_DP|CFPGA|total\(1),
	datac => \U0_DP|CFPGA|total\(2),
	datad => \U0_DP|CFPGA|total\(0),
	combout => \U0_DP|CFPGA|Add0~1_combout\);

-- Location: LCCOMB_X15_Y17_N18
\U0_DP|CFPGA|total~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|CFPGA|total~3_combout\ = (\U0_DP|CFPGA|Add0~1_combout\ & ((!\U0_DP|CFPGA|Equal0~1_combout\) # (!\U0_DP|CFPGA|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0_DP|CFPGA|Equal0~0_combout\,
	datac => \U0_DP|CFPGA|Add0~1_combout\,
	datad => \U0_DP|CFPGA|Equal0~1_combout\,
	combout => \U0_DP|CFPGA|total~3_combout\);

-- Location: LCCOMB_X15_Y17_N6
\U0_DP|CFPGA|total[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|CFPGA|total\(3) = (!\U1_FSM|r2~combout\ & ((GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & ((\U0_DP|CFPGA|total~3_combout\))) # (!GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & (\U0_DP|CFPGA|total\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|CFPGA|total\(3),
	datab => \U1_FSM|r2~combout\,
	datac => \U1_FSM|state.play_FPGA~clkctrl_outclk\,
	datad => \U0_DP|CFPGA|total~3_combout\,
	combout => \U0_DP|CFPGA|total\(3));

-- Location: LCCOMB_X16_Y17_N12
\U0_DP|S4|WideOr2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|S4|WideOr2~0_combout\ = (\U0_DP|CFPGA|total\(0) & (\U0_DP|CFPGA|total\(3) $ (((\U0_DP|CFPGA|total\(2) & !\U0_DP|CFPGA|total\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|CFPGA|total\(2),
	datab => \U0_DP|CFPGA|total\(0),
	datac => \U0_DP|CFPGA|total\(3),
	datad => \U0_DP|CFPGA|total\(1),
	combout => \U0_DP|S4|WideOr2~0_combout\);

-- Location: IOIBUF_X21_Y29_N8
\sw[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(6),
	o => \sw[6]~input_o\);

-- Location: LCCOMB_X17_Y17_N28
\U0_DP|R_SETUP|setup[4]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_SETUP|setup[4]~3_combout\ = (\U1_FSM|state.setup~q\ & \sw[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1_FSM|state.setup~q\,
	datad => \sw[6]~input_o\,
	combout => \U0_DP|R_SETUP|setup[4]~3_combout\);

-- Location: LCCOMB_X17_Y17_N20
\U0_DP|R_SETUP|setup[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_SETUP|setup\(4) = (GLOBAL(\U0_DP|R_SETUP|setup[7]~1clkctrl_outclk\) & ((\U0_DP|R_SETUP|setup[4]~3_combout\))) # (!GLOBAL(\U0_DP|R_SETUP|setup[7]~1clkctrl_outclk\) & (\U0_DP|R_SETUP|setup\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0_DP|R_SETUP|setup\(4),
	datac => \U0_DP|R_SETUP|setup[7]~1clkctrl_outclk\,
	datad => \U0_DP|R_SETUP|setup[4]~3_combout\,
	combout => \U0_DP|R_SETUP|setup\(4));

-- Location: IOIBUF_X0_Y13_N22
\sw[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(7),
	o => \sw[7]~input_o\);

-- Location: LCCOMB_X17_Y17_N26
\U0_DP|R_SETUP|setup[5]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_SETUP|setup[5]~4_combout\ = (\U1_FSM|state.setup~q\ & \sw[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_FSM|state.setup~q\,
	datad => \sw[7]~input_o\,
	combout => \U0_DP|R_SETUP|setup[5]~4_combout\);

-- Location: LCCOMB_X17_Y17_N16
\U0_DP|R_SETUP|setup[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_SETUP|setup\(5) = (GLOBAL(\U0_DP|R_SETUP|setup[7]~1clkctrl_outclk\) & ((\U0_DP|R_SETUP|setup[5]~4_combout\))) # (!GLOBAL(\U0_DP|R_SETUP|setup[7]~1clkctrl_outclk\) & (\U0_DP|R_SETUP|setup\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0_DP|R_SETUP|setup\(5),
	datac => \U0_DP|R_SETUP|setup[7]~1clkctrl_outclk\,
	datad => \U0_DP|R_SETUP|setup[5]~4_combout\,
	combout => \U0_DP|R_SETUP|setup\(5));

-- Location: LCCOMB_X15_Y17_N2
\U0_DP|S3|WideOr1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|S3|WideOr1~0_combout\ = (!\U0_DP|CFPGA|total\(1) & ((\U0_DP|CFPGA|total\(0) & ((\U0_DP|CFPGA|total\(3)))) # (!\U0_DP|CFPGA|total\(0) & (\U0_DP|CFPGA|total\(2) & !\U0_DP|CFPGA|total\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|CFPGA|total\(1),
	datab => \U0_DP|CFPGA|total\(0),
	datac => \U0_DP|CFPGA|total\(2),
	datad => \U0_DP|CFPGA|total\(3),
	combout => \U0_DP|S3|WideOr1~0_combout\);

-- Location: LCCOMB_X16_Y17_N8
\U0_DP|S1|WideOr2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|S1|WideOr2~0_combout\ = (\U0_DP|CFPGA|total\(0) & (\U0_DP|CFPGA|total\(1) & (\U0_DP|CFPGA|total\(3)))) # (!\U0_DP|CFPGA|total\(0) & (!\U0_DP|CFPGA|total\(2) & (\U0_DP|CFPGA|total\(1) $ (\U0_DP|CFPGA|total\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|CFPGA|total\(1),
	datab => \U0_DP|CFPGA|total\(3),
	datac => \U0_DP|CFPGA|total\(0),
	datad => \U0_DP|CFPGA|total\(2),
	combout => \U0_DP|S1|WideOr2~0_combout\);

-- Location: LCCOMB_X16_Y17_N18
\U0_DP|MUX11|out[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|MUX11|out[1]~2_combout\ = (!\U0_DP|R_SETUP|setup\(4) & ((\U0_DP|R_SETUP|setup\(5) & (\U0_DP|S3|WideOr1~0_combout\)) # (!\U0_DP|R_SETUP|setup\(5) & ((\U0_DP|S1|WideOr2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|S3|WideOr1~0_combout\,
	datab => \U0_DP|S1|WideOr2~0_combout\,
	datac => \U0_DP|R_SETUP|setup\(4),
	datad => \U0_DP|R_SETUP|setup\(5),
	combout => \U0_DP|MUX11|out[1]~2_combout\);

-- Location: LCCOMB_X16_Y17_N6
\U0_DP|MUX11|out[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|MUX11|out[1]~3_combout\ = (\U0_DP|MUX11|out[1]~2_combout\) # ((\U0_DP|S4|WideOr2~0_combout\ & (\U0_DP|R_SETUP|setup\(4) & \U0_DP|R_SETUP|setup\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|S4|WideOr2~0_combout\,
	datab => \U0_DP|R_SETUP|setup\(4),
	datac => \U0_DP|R_SETUP|setup\(5),
	datad => \U0_DP|MUX11|out[1]~2_combout\,
	combout => \U0_DP|MUX11|out[1]~3_combout\);

-- Location: LCCOMB_X16_Y17_N16
\U0_DP|R_FPGA|q[61]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_FPGA|q\(61) = (GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & ((\U0_DP|MUX11|out[1]~3_combout\))) # (!GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & (\U0_DP|R_FPGA|q\(61)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0_DP|R_FPGA|q\(61),
	datac => \U1_FSM|state.play_FPGA~clkctrl_outclk\,
	datad => \U0_DP|MUX11|out[1]~3_combout\,
	combout => \U0_DP|R_FPGA|q\(61));

-- Location: LCCOMB_X15_Y19_N28
\U0_DP|R_FPGA|q[57]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_FPGA|q\(57) = (GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & (\U0_DP|R_FPGA|q\(61))) # (!GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & ((\U0_DP|R_FPGA|q\(57))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_FPGA|q\(61),
	datab => \U0_DP|R_FPGA|q\(57),
	datac => \U1_FSM|state.play_FPGA~clkctrl_outclk\,
	combout => \U0_DP|R_FPGA|q\(57));

-- Location: LCCOMB_X15_Y19_N4
\U0_DP|R_FPGA|q[53]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_FPGA|q\(53) = (GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & ((\U0_DP|R_FPGA|q\(57)))) # (!GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & (\U0_DP|R_FPGA|q\(53)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1_FSM|state.play_FPGA~clkctrl_outclk\,
	datac => \U0_DP|R_FPGA|q\(53),
	datad => \U0_DP|R_FPGA|q\(57),
	combout => \U0_DP|R_FPGA|q\(53));

-- Location: LCCOMB_X15_Y19_N20
\U0_DP|R_FPGA|q[49]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_FPGA|q\(49) = (GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & ((\U0_DP|R_FPGA|q\(53)))) # (!GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & (\U0_DP|R_FPGA|q\(49)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0_DP|R_FPGA|q\(49),
	datac => \U1_FSM|state.play_FPGA~clkctrl_outclk\,
	datad => \U0_DP|R_FPGA|q\(53),
	combout => \U0_DP|R_FPGA|q\(49));

-- Location: LCCOMB_X15_Y19_N2
\U0_DP|R_FPGA|q[45]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_FPGA|q\(45) = (GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & (\U0_DP|R_FPGA|q\(49))) # (!GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & ((\U0_DP|R_FPGA|q\(45))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0_DP|R_FPGA|q\(49),
	datac => \U1_FSM|state.play_FPGA~clkctrl_outclk\,
	datad => \U0_DP|R_FPGA|q\(45),
	combout => \U0_DP|R_FPGA|q\(45));

-- Location: LCCOMB_X16_Y18_N6
\U0_DP|match~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|match~2_combout\ = (\U0_DP|R_FPGA|q\(44) & (\U0_DP|R_USER|q\(44) & (\U0_DP|R_USER|q\(45) $ (!\U0_DP|R_FPGA|q\(45))))) # (!\U0_DP|R_FPGA|q\(44) & (!\U0_DP|R_USER|q\(44) & (\U0_DP|R_USER|q\(45) $ (!\U0_DP|R_FPGA|q\(45)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_FPGA|q\(44),
	datab => \U0_DP|R_USER|q\(44),
	datac => \U0_DP|R_USER|q\(45),
	datad => \U0_DP|R_FPGA|q\(45),
	combout => \U0_DP|match~2_combout\);

-- Location: LCCOMB_X16_Y18_N26
\U0_DP|R_FPGA|q[40]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_FPGA|q\(40) = (GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & (\U0_DP|R_FPGA|q\(44))) # (!GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & ((\U0_DP|R_FPGA|q\(40))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_FPGA|q\(44),
	datac => \U0_DP|R_FPGA|q\(40),
	datad => \U1_FSM|state.play_FPGA~clkctrl_outclk\,
	combout => \U0_DP|R_FPGA|q\(40));

-- Location: LCCOMB_X15_Y18_N20
\U0_DP|R_FPGA|q[41]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_FPGA|q\(41) = (GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & (\U0_DP|R_FPGA|q\(45))) # (!GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & ((\U0_DP|R_FPGA|q\(41))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_FPGA|q\(45),
	datab => \U0_DP|R_FPGA|q\(41),
	datad => \U1_FSM|state.play_FPGA~clkctrl_outclk\,
	combout => \U0_DP|R_FPGA|q\(41));

-- Location: LCCOMB_X16_Y18_N30
\U0_DP|R_USER|q[40]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_USER|q\(40) = (!\U1_FSM|r2~combout\ & ((GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & ((\U0_DP|R_USER|q\(44)))) # (!GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & (\U0_DP|R_USER|q\(40)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_FSM|r2~combout\,
	datab => \U0_DP|R_USER|q\(40),
	datac => \U0_DP|R_USER|q\(44),
	datad => \U0_DP|e2_and_ntnb~1clkctrl_outclk\,
	combout => \U0_DP|R_USER|q\(40));

-- Location: LCCOMB_X16_Y18_N0
\U0_DP|R_USER|q[41]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_USER|q\(41) = (!\U1_FSM|r2~combout\ & ((GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & ((\U0_DP|R_USER|q\(45)))) # (!GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & (\U0_DP|R_USER|q\(41)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_FSM|r2~combout\,
	datab => \U0_DP|R_USER|q\(41),
	datac => \U0_DP|R_USER|q\(45),
	datad => \U0_DP|e2_and_ntnb~1clkctrl_outclk\,
	combout => \U0_DP|R_USER|q\(41));

-- Location: LCCOMB_X16_Y18_N16
\U0_DP|match~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|match~0_combout\ = (\U0_DP|R_FPGA|q\(40) & (\U0_DP|R_USER|q\(40) & (\U0_DP|R_FPGA|q\(41) $ (!\U0_DP|R_USER|q\(41))))) # (!\U0_DP|R_FPGA|q\(40) & (!\U0_DP|R_USER|q\(40) & (\U0_DP|R_FPGA|q\(41) $ (!\U0_DP|R_USER|q\(41)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_FPGA|q\(40),
	datab => \U0_DP|R_FPGA|q\(41),
	datac => \U0_DP|R_USER|q\(40),
	datad => \U0_DP|R_USER|q\(41),
	combout => \U0_DP|match~0_combout\);

-- Location: LCCOMB_X17_Y17_N22
\U0_DP|S4|WideOr1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|S4|WideOr1~0_combout\ = (!\U0_DP|CFPGA|total\(0) & (\U0_DP|CFPGA|total\(1) & ((\U0_DP|CFPGA|total\(2)) # (!\U0_DP|CFPGA|total\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|CFPGA|total\(0),
	datab => \U0_DP|CFPGA|total\(1),
	datac => \U0_DP|CFPGA|total\(3),
	datad => \U0_DP|CFPGA|total\(2),
	combout => \U0_DP|S4|WideOr1~0_combout\);

-- Location: LCCOMB_X17_Y17_N10
\U0_DP|S1|WideOr1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|S1|WideOr1~0_combout\ = (\U0_DP|CFPGA|total\(0) & (!\U0_DP|CFPGA|total\(3) & (!\U0_DP|CFPGA|total\(1) & !\U0_DP|CFPGA|total\(2)))) # (!\U0_DP|CFPGA|total\(0) & (((\U0_DP|CFPGA|total\(1) & \U0_DP|CFPGA|total\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|CFPGA|total\(3),
	datab => \U0_DP|CFPGA|total\(0),
	datac => \U0_DP|CFPGA|total\(1),
	datad => \U0_DP|CFPGA|total\(2),
	combout => \U0_DP|S1|WideOr1~0_combout\);

-- Location: LCCOMB_X16_Y17_N20
\U0_DP|S3|WideOr0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|S3|WideOr0~0_combout\ = (\U0_DP|CFPGA|total\(3) & (!\U0_DP|CFPGA|total\(1) & (!\U0_DP|CFPGA|total\(0) & \U0_DP|CFPGA|total\(2)))) # (!\U0_DP|CFPGA|total\(3) & (\U0_DP|CFPGA|total\(0) & (\U0_DP|CFPGA|total\(1) $ (!\U0_DP|CFPGA|total\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|CFPGA|total\(1),
	datab => \U0_DP|CFPGA|total\(3),
	datac => \U0_DP|CFPGA|total\(0),
	datad => \U0_DP|CFPGA|total\(2),
	combout => \U0_DP|S3|WideOr0~0_combout\);

-- Location: LCCOMB_X17_Y17_N6
\U0_DP|MUX11|out[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|MUX11|out[2]~4_combout\ = (!\U0_DP|R_SETUP|setup\(4) & ((\U0_DP|R_SETUP|setup\(5) & ((\U0_DP|S3|WideOr0~0_combout\))) # (!\U0_DP|R_SETUP|setup\(5) & (\U0_DP|S1|WideOr1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|S1|WideOr1~0_combout\,
	datab => \U0_DP|R_SETUP|setup\(5),
	datac => \U0_DP|R_SETUP|setup\(4),
	datad => \U0_DP|S3|WideOr0~0_combout\,
	combout => \U0_DP|MUX11|out[2]~4_combout\);

-- Location: LCCOMB_X17_Y17_N24
\U0_DP|MUX11|out[2]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|MUX11|out[2]~5_combout\ = (\U0_DP|MUX11|out[2]~4_combout\) # ((\U0_DP|R_SETUP|setup\(4) & (\U0_DP|R_SETUP|setup\(5) & \U0_DP|S4|WideOr1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_SETUP|setup\(4),
	datab => \U0_DP|R_SETUP|setup\(5),
	datac => \U0_DP|S4|WideOr1~0_combout\,
	datad => \U0_DP|MUX11|out[2]~4_combout\,
	combout => \U0_DP|MUX11|out[2]~5_combout\);

-- Location: LCCOMB_X17_Y17_N4
\U0_DP|R_FPGA|q[62]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_FPGA|q\(62) = (GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & ((\U0_DP|MUX11|out[2]~5_combout\))) # (!GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & (\U0_DP|R_FPGA|q\(62)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_FPGA|q\(62),
	datac => \U1_FSM|state.play_FPGA~clkctrl_outclk\,
	datad => \U0_DP|MUX11|out[2]~5_combout\,
	combout => \U0_DP|R_FPGA|q\(62));

-- Location: LCCOMB_X16_Y16_N12
\U0_DP|R_FPGA|q[58]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_FPGA|q\(58) = (GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & ((\U0_DP|R_FPGA|q\(62)))) # (!GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & (\U0_DP|R_FPGA|q\(58)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_FPGA|q\(58),
	datab => \U0_DP|R_FPGA|q\(62),
	datad => \U1_FSM|state.play_FPGA~clkctrl_outclk\,
	combout => \U0_DP|R_FPGA|q\(58));

-- Location: LCCOMB_X16_Y16_N2
\U0_DP|R_FPGA|q[54]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_FPGA|q\(54) = (GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & (\U0_DP|R_FPGA|q\(58))) # (!GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & ((\U0_DP|R_FPGA|q\(54))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_FPGA|q\(58),
	datab => \U0_DP|R_FPGA|q\(54),
	datad => \U1_FSM|state.play_FPGA~clkctrl_outclk\,
	combout => \U0_DP|R_FPGA|q\(54));

-- Location: LCCOMB_X17_Y18_N28
\U0_DP|R_FPGA|q[50]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_FPGA|q\(50) = (GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & (\U0_DP|R_FPGA|q\(54))) # (!GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & ((\U0_DP|R_FPGA|q\(50))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_FPGA|q\(54),
	datac => \U0_DP|R_FPGA|q\(50),
	datad => \U1_FSM|state.play_FPGA~clkctrl_outclk\,
	combout => \U0_DP|R_FPGA|q\(50));

-- Location: LCCOMB_X17_Y18_N24
\U0_DP|R_FPGA|q[46]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_FPGA|q\(46) = (GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & ((\U0_DP|R_FPGA|q\(50)))) # (!GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & (\U0_DP|R_FPGA|q\(46)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0_DP|R_FPGA|q\(46),
	datac => \U0_DP|R_FPGA|q\(50),
	datad => \U1_FSM|state.play_FPGA~clkctrl_outclk\,
	combout => \U0_DP|R_FPGA|q\(46));

-- Location: LCCOMB_X17_Y18_N20
\U0_DP|R_FPGA|q[42]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_FPGA|q\(42) = (GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & (\U0_DP|R_FPGA|q\(46))) # (!GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & ((\U0_DP|R_FPGA|q\(42))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0_DP|R_FPGA|q\(46),
	datac => \U0_DP|R_FPGA|q\(42),
	datad => \U1_FSM|state.play_FPGA~clkctrl_outclk\,
	combout => \U0_DP|R_FPGA|q\(42));

-- Location: LCCOMB_X16_Y17_N10
\U0_DP|S4|WideOr0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|S4|WideOr0~0_combout\ = (\U0_DP|CFPGA|total\(0) & (\U0_DP|CFPGA|total\(3) $ (((\U0_DP|CFPGA|total\(1)) # (!\U0_DP|CFPGA|total\(2)))))) # (!\U0_DP|CFPGA|total\(0) & (\U0_DP|CFPGA|total\(1) & (\U0_DP|CFPGA|total\(3) & !\U0_DP|CFPGA|total\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|CFPGA|total\(1),
	datab => \U0_DP|CFPGA|total\(3),
	datac => \U0_DP|CFPGA|total\(0),
	datad => \U0_DP|CFPGA|total\(2),
	combout => \U0_DP|S4|WideOr0~0_combout\);

-- Location: LCCOMB_X16_Y17_N4
\U0_DP|S1|WideOr0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|S1|WideOr0~0_combout\ = (\U0_DP|CFPGA|total\(3) & (!\U0_DP|CFPGA|total\(1) & (\U0_DP|CFPGA|total\(0) $ (\U0_DP|CFPGA|total\(2))))) # (!\U0_DP|CFPGA|total\(3) & (\U0_DP|CFPGA|total\(0) & ((\U0_DP|CFPGA|total\(1)) # (\U0_DP|CFPGA|total\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|CFPGA|total\(1),
	datab => \U0_DP|CFPGA|total\(3),
	datac => \U0_DP|CFPGA|total\(0),
	datad => \U0_DP|CFPGA|total\(2),
	combout => \U0_DP|S1|WideOr0~0_combout\);

-- Location: LCCOMB_X16_Y17_N30
\U0_DP|MUX11|out[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|MUX11|out[3]~6_combout\ = (\U0_DP|R_SETUP|setup\(4) & (\U0_DP|S4|WideOr0~0_combout\ & ((\U0_DP|R_SETUP|setup\(5))))) # (!\U0_DP|R_SETUP|setup\(4) & (((\U0_DP|S1|WideOr0~0_combout\ & !\U0_DP|R_SETUP|setup\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|S4|WideOr0~0_combout\,
	datab => \U0_DP|S1|WideOr0~0_combout\,
	datac => \U0_DP|R_SETUP|setup\(4),
	datad => \U0_DP|R_SETUP|setup\(5),
	combout => \U0_DP|MUX11|out[3]~6_combout\);

-- Location: LCCOMB_X16_Y17_N28
\U0_DP|MUX11|out[3]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|MUX11|out[3]~7_combout\ = (!\U0_DP|R_SETUP|setup\(4) & (\U0_DP|R_SETUP|setup\(5) & (\U0_DP|CFPGA|total\(2) $ (\U0_DP|CFPGA|total\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|CFPGA|total\(2),
	datab => \U0_DP|CFPGA|total\(0),
	datac => \U0_DP|R_SETUP|setup\(4),
	datad => \U0_DP|R_SETUP|setup\(5),
	combout => \U0_DP|MUX11|out[3]~7_combout\);

-- Location: LCCOMB_X16_Y17_N2
\U0_DP|MUX11|out[3]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|MUX11|out[3]~8_combout\ = (\U0_DP|MUX11|out[3]~6_combout\) # ((\U0_DP|CFPGA|total\(1) & \U0_DP|MUX11|out[3]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|CFPGA|total\(1),
	datac => \U0_DP|MUX11|out[3]~6_combout\,
	datad => \U0_DP|MUX11|out[3]~7_combout\,
	combout => \U0_DP|MUX11|out[3]~8_combout\);

-- Location: LCCOMB_X16_Y17_N14
\U0_DP|R_FPGA|q[63]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_FPGA|q\(63) = (GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & ((\U0_DP|MUX11|out[3]~8_combout\))) # (!GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & (\U0_DP|R_FPGA|q\(63)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_FPGA|q\(63),
	datac => \U1_FSM|state.play_FPGA~clkctrl_outclk\,
	datad => \U0_DP|MUX11|out[3]~8_combout\,
	combout => \U0_DP|R_FPGA|q\(63));

-- Location: LCCOMB_X16_Y16_N30
\U0_DP|R_FPGA|q[59]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_FPGA|q\(59) = (GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & (\U0_DP|R_FPGA|q\(63))) # (!GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & ((\U0_DP|R_FPGA|q\(59))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0_DP|R_FPGA|q\(63),
	datac => \U0_DP|R_FPGA|q\(59),
	datad => \U1_FSM|state.play_FPGA~clkctrl_outclk\,
	combout => \U0_DP|R_FPGA|q\(59));

-- Location: LCCOMB_X16_Y16_N0
\U0_DP|R_FPGA|q[55]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_FPGA|q\(55) = (GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & ((\U0_DP|R_FPGA|q\(59)))) # (!GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & (\U0_DP|R_FPGA|q\(55)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0_DP|R_FPGA|q\(55),
	datac => \U0_DP|R_FPGA|q\(59),
	datad => \U1_FSM|state.play_FPGA~clkctrl_outclk\,
	combout => \U0_DP|R_FPGA|q\(55));

-- Location: LCCOMB_X17_Y18_N22
\U0_DP|R_FPGA|q[51]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_FPGA|q\(51) = (GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & (\U0_DP|R_FPGA|q\(55))) # (!GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & ((\U0_DP|R_FPGA|q\(51))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_FPGA|q\(55),
	datac => \U0_DP|R_FPGA|q\(51),
	datad => \U1_FSM|state.play_FPGA~clkctrl_outclk\,
	combout => \U0_DP|R_FPGA|q\(51));

-- Location: LCCOMB_X17_Y18_N14
\U0_DP|R_FPGA|q[47]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_FPGA|q\(47) = (GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & ((\U0_DP|R_FPGA|q\(51)))) # (!GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & (\U0_DP|R_FPGA|q\(47)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0_DP|R_FPGA|q\(47),
	datac => \U0_DP|R_FPGA|q\(51),
	datad => \U1_FSM|state.play_FPGA~clkctrl_outclk\,
	combout => \U0_DP|R_FPGA|q\(47));

-- Location: LCCOMB_X17_Y18_N18
\U0_DP|R_FPGA|q[43]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_FPGA|q\(43) = (GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & ((\U0_DP|R_FPGA|q\(47)))) # (!GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & (\U0_DP|R_FPGA|q\(43)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0_DP|R_FPGA|q\(43),
	datac => \U0_DP|R_FPGA|q\(47),
	datad => \U1_FSM|state.play_FPGA~clkctrl_outclk\,
	combout => \U0_DP|R_FPGA|q\(43));

-- Location: LCCOMB_X16_Y16_N22
\U0_DP|R_USER|q[62]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_USER|q\(62) = (!\U1_FSM|r2~combout\ & ((GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & ((!\U0_DP|BTN|btn2state.SaidaAtiva~q\))) # (!GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & (\U0_DP|R_USER|q\(62)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_FSM|r2~combout\,
	datab => \U0_DP|R_USER|q\(62),
	datac => \U0_DP|e2_and_ntnb~1clkctrl_outclk\,
	datad => \U0_DP|BTN|btn2state.SaidaAtiva~q\,
	combout => \U0_DP|R_USER|q\(62));

-- Location: LCCOMB_X16_Y16_N14
\U0_DP|R_USER|q[58]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_USER|q\(58) = (!\U1_FSM|r2~combout\ & ((GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & ((\U0_DP|R_USER|q\(62)))) # (!GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & (\U0_DP|R_USER|q\(58)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_FSM|r2~combout\,
	datab => \U0_DP|R_USER|q\(58),
	datac => \U0_DP|R_USER|q\(62),
	datad => \U0_DP|e2_and_ntnb~1clkctrl_outclk\,
	combout => \U0_DP|R_USER|q\(58));

-- Location: LCCOMB_X16_Y16_N24
\U0_DP|R_USER|q[54]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_USER|q\(54) = (!\U1_FSM|r2~combout\ & ((GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & ((\U0_DP|R_USER|q\(58)))) # (!GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & (\U0_DP|R_USER|q\(54)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_FSM|r2~combout\,
	datab => \U0_DP|R_USER|q\(54),
	datac => \U0_DP|R_USER|q\(58),
	datad => \U0_DP|e2_and_ntnb~1clkctrl_outclk\,
	combout => \U0_DP|R_USER|q\(54));

-- Location: LCCOMB_X17_Y18_N30
\U0_DP|R_USER|q[50]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_USER|q\(50) = (!\U1_FSM|r2~combout\ & ((GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & ((\U0_DP|R_USER|q\(54)))) # (!GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & (\U0_DP|R_USER|q\(50)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|e2_and_ntnb~1clkctrl_outclk\,
	datab => \U0_DP|R_USER|q\(50),
	datac => \U0_DP|R_USER|q\(54),
	datad => \U1_FSM|r2~combout\,
	combout => \U0_DP|R_USER|q\(50));

-- Location: LCCOMB_X17_Y18_N10
\U0_DP|R_USER|q[46]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_USER|q\(46) = (!\U1_FSM|r2~combout\ & ((GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & ((\U0_DP|R_USER|q\(50)))) # (!GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & (\U0_DP|R_USER|q\(46)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_USER|q\(46),
	datab => \U0_DP|e2_and_ntnb~1clkctrl_outclk\,
	datac => \U0_DP|R_USER|q\(50),
	datad => \U1_FSM|r2~combout\,
	combout => \U0_DP|R_USER|q\(46));

-- Location: LCCOMB_X17_Y18_N26
\U0_DP|R_USER|q[42]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_USER|q\(42) = (!\U1_FSM|r2~combout\ & ((GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & (\U0_DP|R_USER|q\(46))) # (!GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & ((\U0_DP|R_USER|q\(42))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_USER|q\(46),
	datab => \U0_DP|R_USER|q\(42),
	datac => \U0_DP|e2_and_ntnb~1clkctrl_outclk\,
	datad => \U1_FSM|r2~combout\,
	combout => \U0_DP|R_USER|q\(42));

-- Location: LCCOMB_X16_Y16_N4
\U0_DP|R_USER|q[63]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_USER|q\(63) = (!\U1_FSM|r2~combout\ & ((GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & ((!\U0_DP|BTN|btn3state.SaidaAtiva~q\))) # (!GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & (\U0_DP|R_USER|q\(63)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_FSM|r2~combout\,
	datab => \U0_DP|R_USER|q\(63),
	datac => \U0_DP|e2_and_ntnb~1clkctrl_outclk\,
	datad => \U0_DP|BTN|btn3state.SaidaAtiva~q\,
	combout => \U0_DP|R_USER|q\(63));

-- Location: LCCOMB_X16_Y16_N8
\U0_DP|R_USER|q[59]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_USER|q\(59) = (!\U1_FSM|r2~combout\ & ((GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & ((\U0_DP|R_USER|q\(63)))) # (!GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & (\U0_DP|R_USER|q\(59)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_FSM|r2~combout\,
	datab => \U0_DP|R_USER|q\(59),
	datac => \U0_DP|R_USER|q\(63),
	datad => \U0_DP|e2_and_ntnb~1clkctrl_outclk\,
	combout => \U0_DP|R_USER|q\(59));

-- Location: LCCOMB_X16_Y16_N18
\U0_DP|R_USER|q[55]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_USER|q\(55) = (!\U1_FSM|r2~combout\ & ((GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & ((\U0_DP|R_USER|q\(59)))) # (!GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & (\U0_DP|R_USER|q\(55)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_FSM|r2~combout\,
	datab => \U0_DP|R_USER|q\(55),
	datac => \U0_DP|R_USER|q\(59),
	datad => \U0_DP|e2_and_ntnb~1clkctrl_outclk\,
	combout => \U0_DP|R_USER|q\(55));

-- Location: LCCOMB_X17_Y18_N8
\U0_DP|R_USER|q[51]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_USER|q\(51) = (!\U1_FSM|r2~combout\ & ((GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & ((\U0_DP|R_USER|q\(55)))) # (!GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & (\U0_DP|R_USER|q\(51)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|e2_and_ntnb~1clkctrl_outclk\,
	datab => \U0_DP|R_USER|q\(51),
	datac => \U0_DP|R_USER|q\(55),
	datad => \U1_FSM|r2~combout\,
	combout => \U0_DP|R_USER|q\(51));

-- Location: LCCOMB_X17_Y18_N4
\U0_DP|R_USER|q[47]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_USER|q\(47) = (!\U1_FSM|r2~combout\ & ((GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & ((\U0_DP|R_USER|q\(51)))) # (!GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & (\U0_DP|R_USER|q\(47)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|e2_and_ntnb~1clkctrl_outclk\,
	datab => \U0_DP|R_USER|q\(47),
	datac => \U0_DP|R_USER|q\(51),
	datad => \U1_FSM|r2~combout\,
	combout => \U0_DP|R_USER|q\(47));

-- Location: LCCOMB_X17_Y18_N12
\U0_DP|R_USER|q[43]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_USER|q\(43) = (!\U1_FSM|r2~combout\ & ((GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & ((\U0_DP|R_USER|q\(47)))) # (!GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & (\U0_DP|R_USER|q\(43)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_USER|q\(43),
	datab => \U0_DP|R_USER|q\(47),
	datac => \U0_DP|e2_and_ntnb~1clkctrl_outclk\,
	datad => \U1_FSM|r2~combout\,
	combout => \U0_DP|R_USER|q\(43));

-- Location: LCCOMB_X17_Y18_N0
\U0_DP|match~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|match~1_combout\ = (\U0_DP|R_FPGA|q\(42) & (\U0_DP|R_USER|q\(42) & (\U0_DP|R_FPGA|q\(43) $ (!\U0_DP|R_USER|q\(43))))) # (!\U0_DP|R_FPGA|q\(42) & (!\U0_DP|R_USER|q\(42) & (\U0_DP|R_FPGA|q\(43) $ (!\U0_DP|R_USER|q\(43)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_FPGA|q\(42),
	datab => \U0_DP|R_FPGA|q\(43),
	datac => \U0_DP|R_USER|q\(42),
	datad => \U0_DP|R_USER|q\(43),
	combout => \U0_DP|match~1_combout\);

-- Location: LCCOMB_X17_Y18_N6
\U0_DP|match~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|match~3_combout\ = (\U0_DP|R_FPGA|q\(47) & (\U0_DP|R_USER|q\(47) & (\U0_DP|R_FPGA|q\(46) $ (!\U0_DP|R_USER|q\(46))))) # (!\U0_DP|R_FPGA|q\(47) & (!\U0_DP|R_USER|q\(47) & (\U0_DP|R_FPGA|q\(46) $ (!\U0_DP|R_USER|q\(46)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_FPGA|q\(47),
	datab => \U0_DP|R_FPGA|q\(46),
	datac => \U0_DP|R_USER|q\(47),
	datad => \U0_DP|R_USER|q\(46),
	combout => \U0_DP|match~3_combout\);

-- Location: LCCOMB_X16_Y18_N24
\U0_DP|match~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|match~4_combout\ = (\U0_DP|match~2_combout\ & (\U0_DP|match~0_combout\ & (\U0_DP|match~1_combout\ & \U0_DP|match~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|match~2_combout\,
	datab => \U0_DP|match~0_combout\,
	datac => \U0_DP|match~1_combout\,
	datad => \U0_DP|match~3_combout\,
	combout => \U0_DP|match~4_combout\);

-- Location: LCCOMB_X15_Y18_N22
\U0_DP|R_FPGA|q[39]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_FPGA|q\(39) = (GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & (\U0_DP|R_FPGA|q\(43))) # (!GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & ((\U0_DP|R_FPGA|q\(39))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_FPGA|q\(43),
	datac => \U0_DP|R_FPGA|q\(39),
	datad => \U1_FSM|state.play_FPGA~clkctrl_outclk\,
	combout => \U0_DP|R_FPGA|q\(39));

-- Location: LCCOMB_X15_Y18_N10
\U0_DP|R_FPGA|q[35]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_FPGA|q\(35) = (GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & ((\U0_DP|R_FPGA|q\(39)))) # (!GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & (\U0_DP|R_FPGA|q\(35)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_FPGA|q\(35),
	datac => \U0_DP|R_FPGA|q\(39),
	datad => \U1_FSM|state.play_FPGA~clkctrl_outclk\,
	combout => \U0_DP|R_FPGA|q\(35));

-- Location: LCCOMB_X14_Y18_N30
\U0_DP|R_FPGA|q[31]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_FPGA|q\(31) = (GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & ((\U0_DP|R_FPGA|q\(35)))) # (!GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & (\U0_DP|R_FPGA|q\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_FPGA|q\(31),
	datab => \U0_DP|R_FPGA|q\(35),
	datac => \U1_FSM|state.play_FPGA~clkctrl_outclk\,
	combout => \U0_DP|R_FPGA|q\(31));

-- Location: LCCOMB_X15_Y18_N4
\U0_DP|R_FPGA|q[38]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_FPGA|q\(38) = (GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & (\U0_DP|R_FPGA|q\(42))) # (!GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & ((\U0_DP|R_FPGA|q\(38))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0_DP|R_FPGA|q\(42),
	datac => \U0_DP|R_FPGA|q\(38),
	datad => \U1_FSM|state.play_FPGA~clkctrl_outclk\,
	combout => \U0_DP|R_FPGA|q\(38));

-- Location: LCCOMB_X15_Y18_N12
\U0_DP|R_FPGA|q[34]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_FPGA|q\(34) = (GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & ((\U0_DP|R_FPGA|q\(38)))) # (!GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & (\U0_DP|R_FPGA|q\(34)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_FPGA|q\(34),
	datac => \U0_DP|R_FPGA|q\(38),
	datad => \U1_FSM|state.play_FPGA~clkctrl_outclk\,
	combout => \U0_DP|R_FPGA|q\(34));

-- Location: LCCOMB_X14_Y18_N0
\U0_DP|R_FPGA|q[30]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_FPGA|q\(30) = (GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & (\U0_DP|R_FPGA|q\(34))) # (!GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & ((\U0_DP|R_FPGA|q\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_FPGA|q\(34),
	datab => \U0_DP|R_FPGA|q\(30),
	datac => \U1_FSM|state.play_FPGA~clkctrl_outclk\,
	combout => \U0_DP|R_FPGA|q\(30));

-- Location: LCCOMB_X15_Y18_N8
\U0_DP|R_USER|q[39]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_USER|q\(39) = (!\U1_FSM|r2~combout\ & ((GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & ((\U0_DP|R_USER|q\(43)))) # (!GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & (\U0_DP|R_USER|q\(39)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_FSM|r2~combout\,
	datab => \U0_DP|R_USER|q\(39),
	datac => \U0_DP|R_USER|q\(43),
	datad => \U0_DP|e2_and_ntnb~1clkctrl_outclk\,
	combout => \U0_DP|R_USER|q\(39));

-- Location: LCCOMB_X15_Y18_N16
\U0_DP|R_USER|q[35]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_USER|q\(35) = (!\U1_FSM|r2~combout\ & ((GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & ((\U0_DP|R_USER|q\(39)))) # (!GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & (\U0_DP|R_USER|q\(35)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_USER|q\(35),
	datab => \U1_FSM|r2~combout\,
	datac => \U0_DP|R_USER|q\(39),
	datad => \U0_DP|e2_and_ntnb~1clkctrl_outclk\,
	combout => \U0_DP|R_USER|q\(35));

-- Location: LCCOMB_X14_Y18_N4
\U0_DP|R_USER|q[31]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_USER|q\(31) = (!\U1_FSM|r2~combout\ & ((GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & ((\U0_DP|R_USER|q\(35)))) # (!GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & (\U0_DP|R_USER|q\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|e2_and_ntnb~1clkctrl_outclk\,
	datab => \U1_FSM|r2~combout\,
	datac => \U0_DP|R_USER|q\(31),
	datad => \U0_DP|R_USER|q\(35),
	combout => \U0_DP|R_USER|q\(31));

-- Location: LCCOMB_X15_Y18_N30
\U0_DP|R_USER|q[38]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_USER|q\(38) = (!\U1_FSM|r2~combout\ & ((GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & ((\U0_DP|R_USER|q\(42)))) # (!GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & (\U0_DP|R_USER|q\(38)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_USER|q\(38),
	datab => \U1_FSM|r2~combout\,
	datac => \U0_DP|R_USER|q\(42),
	datad => \U0_DP|e2_and_ntnb~1clkctrl_outclk\,
	combout => \U0_DP|R_USER|q\(38));

-- Location: LCCOMB_X15_Y18_N26
\U0_DP|R_USER|q[34]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_USER|q\(34) = (!\U1_FSM|r2~combout\ & ((GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & ((\U0_DP|R_USER|q\(38)))) # (!GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & (\U0_DP|R_USER|q\(34)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_USER|q\(34),
	datab => \U1_FSM|r2~combout\,
	datac => \U0_DP|R_USER|q\(38),
	datad => \U0_DP|e2_and_ntnb~1clkctrl_outclk\,
	combout => \U0_DP|R_USER|q\(34));

-- Location: LCCOMB_X15_Y18_N24
\U0_DP|R_USER|q[30]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_USER|q\(30) = (!\U1_FSM|r2~combout\ & ((GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & ((\U0_DP|R_USER|q\(34)))) # (!GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & (\U0_DP|R_USER|q\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_FSM|r2~combout\,
	datab => \U0_DP|R_USER|q\(30),
	datac => \U0_DP|R_USER|q\(34),
	datad => \U0_DP|e2_and_ntnb~1clkctrl_outclk\,
	combout => \U0_DP|R_USER|q\(30));

-- Location: LCCOMB_X14_Y18_N22
\U0_DP|match~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|match~8_combout\ = (\U0_DP|R_FPGA|q\(31) & (\U0_DP|R_USER|q\(31) & (\U0_DP|R_FPGA|q\(30) $ (!\U0_DP|R_USER|q\(30))))) # (!\U0_DP|R_FPGA|q\(31) & (!\U0_DP|R_USER|q\(31) & (\U0_DP|R_FPGA|q\(30) $ (!\U0_DP|R_USER|q\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_FPGA|q\(31),
	datab => \U0_DP|R_FPGA|q\(30),
	datac => \U0_DP|R_USER|q\(31),
	datad => \U0_DP|R_USER|q\(30),
	combout => \U0_DP|match~8_combout\);

-- Location: LCCOMB_X14_Y18_N26
\U0_DP|R_FPGA|q[26]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_FPGA|q\(26) = (GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & (\U0_DP|R_FPGA|q\(30))) # (!GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & ((\U0_DP|R_FPGA|q\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_FSM|state.play_FPGA~clkctrl_outclk\,
	datab => \U0_DP|R_FPGA|q\(30),
	datac => \U0_DP|R_FPGA|q\(26),
	combout => \U0_DP|R_FPGA|q\(26));

-- Location: LCCOMB_X14_Y18_N24
\U0_DP|R_FPGA|q[27]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_FPGA|q\(27) = (GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & ((\U0_DP|R_FPGA|q\(31)))) # (!GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & (\U0_DP|R_FPGA|q\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_FSM|state.play_FPGA~clkctrl_outclk\,
	datab => \U0_DP|R_FPGA|q\(27),
	datac => \U0_DP|R_FPGA|q\(31),
	combout => \U0_DP|R_FPGA|q\(27));

-- Location: LCCOMB_X14_Y18_N8
\U0_DP|R_USER|q[26]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_USER|q\(26) = (!\U1_FSM|r2~combout\ & ((GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & ((\U0_DP|R_USER|q\(30)))) # (!GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & (\U0_DP|R_USER|q\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_USER|q\(26),
	datab => \U0_DP|R_USER|q\(30),
	datac => \U1_FSM|r2~combout\,
	datad => \U0_DP|e2_and_ntnb~1clkctrl_outclk\,
	combout => \U0_DP|R_USER|q\(26));

-- Location: LCCOMB_X14_Y18_N6
\U0_DP|R_USER|q[27]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_USER|q\(27) = (!\U1_FSM|r2~combout\ & ((GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & ((\U0_DP|R_USER|q\(31)))) # (!GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & (\U0_DP|R_USER|q\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_USER|q\(27),
	datab => \U1_FSM|r2~combout\,
	datac => \U0_DP|R_USER|q\(31),
	datad => \U0_DP|e2_and_ntnb~1clkctrl_outclk\,
	combout => \U0_DP|R_USER|q\(27));

-- Location: LCCOMB_X14_Y18_N20
\U0_DP|match~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|match~7_combout\ = (\U0_DP|R_FPGA|q\(26) & (\U0_DP|R_USER|q\(26) & (\U0_DP|R_FPGA|q\(27) $ (!\U0_DP|R_USER|q\(27))))) # (!\U0_DP|R_FPGA|q\(26) & (!\U0_DP|R_USER|q\(26) & (\U0_DP|R_FPGA|q\(27) $ (!\U0_DP|R_USER|q\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_FPGA|q\(26),
	datab => \U0_DP|R_FPGA|q\(27),
	datac => \U0_DP|R_USER|q\(26),
	datad => \U0_DP|R_USER|q\(27),
	combout => \U0_DP|match~7_combout\);

-- Location: LCCOMB_X17_Y18_N16
\U0_DP|match~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|match~5_combout\ = (\U0_DP|R_FPGA|q\(51) & (\U0_DP|R_USER|q\(51) & (\U0_DP|R_FPGA|q\(50) $ (!\U0_DP|R_USER|q\(50))))) # (!\U0_DP|R_FPGA|q\(51) & (!\U0_DP|R_USER|q\(51) & (\U0_DP|R_FPGA|q\(50) $ (!\U0_DP|R_USER|q\(50)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_FPGA|q\(51),
	datab => \U0_DP|R_FPGA|q\(50),
	datac => \U0_DP|R_USER|q\(50),
	datad => \U0_DP|R_USER|q\(51),
	combout => \U0_DP|match~5_combout\);

-- Location: LCCOMB_X15_Y19_N24
\U0_DP|match~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|match~6_combout\ = (\U0_DP|R_FPGA|q\(52) & (\U0_DP|R_USER|q\(52) & (\U0_DP|R_USER|q\(53) $ (!\U0_DP|R_FPGA|q\(53))))) # (!\U0_DP|R_FPGA|q\(52) & (!\U0_DP|R_USER|q\(52) & (\U0_DP|R_USER|q\(53) $ (!\U0_DP|R_FPGA|q\(53)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_FPGA|q\(52),
	datab => \U0_DP|R_USER|q\(53),
	datac => \U0_DP|R_FPGA|q\(53),
	datad => \U0_DP|R_USER|q\(52),
	combout => \U0_DP|match~6_combout\);

-- Location: LCCOMB_X14_Y18_N28
\U0_DP|match~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|match~9_combout\ = (\U0_DP|match~8_combout\ & (\U0_DP|match~7_combout\ & (\U0_DP|match~5_combout\ & \U0_DP|match~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|match~8_combout\,
	datab => \U0_DP|match~7_combout\,
	datac => \U0_DP|match~5_combout\,
	datad => \U0_DP|match~6_combout\,
	combout => \U0_DP|match~9_combout\);

-- Location: LCCOMB_X16_Y18_N20
\U0_DP|match~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|match~20_combout\ = (\U0_DP|R_USER|q\(49) & (\U0_DP|R_FPGA|q\(49) & (\U0_DP|R_USER|q\(48) $ (!\U0_DP|R_FPGA|q\(48))))) # (!\U0_DP|R_USER|q\(49) & (!\U0_DP|R_FPGA|q\(49) & (\U0_DP|R_USER|q\(48) $ (!\U0_DP|R_FPGA|q\(48)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_USER|q\(49),
	datab => \U0_DP|R_USER|q\(48),
	datac => \U0_DP|R_FPGA|q\(49),
	datad => \U0_DP|R_FPGA|q\(48),
	combout => \U0_DP|match~20_combout\);

-- Location: LCCOMB_X14_Y18_N18
\U0_DP|R_FPGA|q[23]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_FPGA|q\(23) = (GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & (\U0_DP|R_FPGA|q\(27))) # (!GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & ((\U0_DP|R_FPGA|q\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_FSM|state.play_FPGA~clkctrl_outclk\,
	datab => \U0_DP|R_FPGA|q\(27),
	datac => \U0_DP|R_FPGA|q\(23),
	combout => \U0_DP|R_FPGA|q\(23));

-- Location: LCCOMB_X14_Y16_N28
\U0_DP|R_FPGA|q[19]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_FPGA|q\(19) = (GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & (\U0_DP|R_FPGA|q\(23))) # (!GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & ((\U0_DP|R_FPGA|q\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_FPGA|q\(23),
	datab => \U0_DP|R_FPGA|q\(19),
	datac => \U1_FSM|state.play_FPGA~clkctrl_outclk\,
	combout => \U0_DP|R_FPGA|q\(19));

-- Location: LCCOMB_X14_Y16_N12
\U0_DP|R_FPGA|q[15]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_FPGA|q\(15) = (GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & ((\U0_DP|R_FPGA|q\(19)))) # (!GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & (\U0_DP|R_FPGA|q\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_FPGA|q\(15),
	datab => \U0_DP|R_FPGA|q\(19),
	datac => \U1_FSM|state.play_FPGA~clkctrl_outclk\,
	combout => \U0_DP|R_FPGA|q\(15));

-- Location: LCCOMB_X14_Y18_N12
\U0_DP|R_FPGA|q[22]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_FPGA|q\(22) = (GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & ((\U0_DP|R_FPGA|q\(26)))) # (!GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & (\U0_DP|R_FPGA|q\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_FPGA|q\(22),
	datac => \U1_FSM|state.play_FPGA~clkctrl_outclk\,
	datad => \U0_DP|R_FPGA|q\(26),
	combout => \U0_DP|R_FPGA|q\(22));

-- Location: LCCOMB_X14_Y16_N22
\U0_DP|R_FPGA|q[18]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_FPGA|q\(18) = (GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & ((\U0_DP|R_FPGA|q\(22)))) # (!GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & (\U0_DP|R_FPGA|q\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_FPGA|q\(18),
	datab => \U0_DP|R_FPGA|q\(22),
	datac => \U1_FSM|state.play_FPGA~clkctrl_outclk\,
	combout => \U0_DP|R_FPGA|q\(18));

-- Location: LCCOMB_X14_Y16_N30
\U0_DP|R_FPGA|q[14]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_FPGA|q\(14) = (GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & ((\U0_DP|R_FPGA|q\(18)))) # (!GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & (\U0_DP|R_FPGA|q\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_FPGA|q\(14),
	datab => \U1_FSM|state.play_FPGA~clkctrl_outclk\,
	datac => \U0_DP|R_FPGA|q\(18),
	combout => \U0_DP|R_FPGA|q\(14));

-- Location: LCCOMB_X14_Y18_N16
\U0_DP|R_USER|q[23]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_USER|q\(23) = (!\U1_FSM|r2~combout\ & ((GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & ((\U0_DP|R_USER|q\(27)))) # (!GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & (\U0_DP|R_USER|q\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_USER|q\(23),
	datab => \U1_FSM|r2~combout\,
	datac => \U0_DP|e2_and_ntnb~1clkctrl_outclk\,
	datad => \U0_DP|R_USER|q\(27),
	combout => \U0_DP|R_USER|q\(23));

-- Location: LCCOMB_X14_Y16_N14
\U0_DP|R_USER|q[19]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_USER|q\(19) = (!\U1_FSM|r2~combout\ & ((GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & ((\U0_DP|R_USER|q\(23)))) # (!GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & (\U0_DP|R_USER|q\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_USER|q\(19),
	datab => \U1_FSM|r2~combout\,
	datac => \U0_DP|e2_and_ntnb~1clkctrl_outclk\,
	datad => \U0_DP|R_USER|q\(23),
	combout => \U0_DP|R_USER|q\(19));

-- Location: LCCOMB_X14_Y16_N26
\U0_DP|R_USER|q[15]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_USER|q\(15) = (!\U1_FSM|r2~combout\ & ((GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & ((\U0_DP|R_USER|q\(19)))) # (!GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & (\U0_DP|R_USER|q\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_USER|q\(15),
	datab => \U1_FSM|r2~combout\,
	datac => \U0_DP|R_USER|q\(19),
	datad => \U0_DP|e2_and_ntnb~1clkctrl_outclk\,
	combout => \U0_DP|R_USER|q\(15));

-- Location: LCCOMB_X14_Y18_N14
\U0_DP|R_USER|q[22]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_USER|q\(22) = (!\U1_FSM|r2~combout\ & ((GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & ((\U0_DP|R_USER|q\(26)))) # (!GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & (\U0_DP|R_USER|q\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_USER|q\(22),
	datab => \U0_DP|R_USER|q\(26),
	datac => \U1_FSM|r2~combout\,
	datad => \U0_DP|e2_and_ntnb~1clkctrl_outclk\,
	combout => \U0_DP|R_USER|q\(22));

-- Location: LCCOMB_X14_Y16_N8
\U0_DP|R_USER|q[18]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_USER|q\(18) = (!\U1_FSM|r2~combout\ & ((GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & ((\U0_DP|R_USER|q\(22)))) # (!GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & (\U0_DP|R_USER|q\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_USER|q\(18),
	datab => \U1_FSM|r2~combout\,
	datac => \U0_DP|e2_and_ntnb~1clkctrl_outclk\,
	datad => \U0_DP|R_USER|q\(22),
	combout => \U0_DP|R_USER|q\(18));

-- Location: LCCOMB_X14_Y16_N4
\U0_DP|R_USER|q[14]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_USER|q\(14) = (!\U1_FSM|r2~combout\ & ((GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & ((\U0_DP|R_USER|q\(18)))) # (!GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & (\U0_DP|R_USER|q\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_USER|q\(14),
	datab => \U1_FSM|r2~combout\,
	datac => \U0_DP|R_USER|q\(18),
	datad => \U0_DP|e2_and_ntnb~1clkctrl_outclk\,
	combout => \U0_DP|R_USER|q\(14));

-- Location: LCCOMB_X14_Y16_N16
\U0_DP|match~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|match~18_combout\ = (\U0_DP|R_FPGA|q\(15) & (\U0_DP|R_USER|q\(15) & (\U0_DP|R_FPGA|q\(14) $ (!\U0_DP|R_USER|q\(14))))) # (!\U0_DP|R_FPGA|q\(15) & (!\U0_DP|R_USER|q\(15) & (\U0_DP|R_FPGA|q\(14) $ (!\U0_DP|R_USER|q\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_FPGA|q\(15),
	datab => \U0_DP|R_FPGA|q\(14),
	datac => \U0_DP|R_USER|q\(15),
	datad => \U0_DP|R_USER|q\(14),
	combout => \U0_DP|match~18_combout\);

-- Location: LCCOMB_X14_Y16_N10
\U0_DP|R_USER|q[11]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_USER|q\(11) = (!\U1_FSM|r2~combout\ & ((GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & ((\U0_DP|R_USER|q\(15)))) # (!GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & (\U0_DP|R_USER|q\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_USER|q\(11),
	datab => \U1_FSM|r2~combout\,
	datac => \U0_DP|R_USER|q\(15),
	datad => \U0_DP|e2_and_ntnb~1clkctrl_outclk\,
	combout => \U0_DP|R_USER|q\(11));

-- Location: LCCOMB_X14_Y16_N0
\U0_DP|R_FPGA|q[11]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_FPGA|q\(11) = (GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & (\U0_DP|R_FPGA|q\(15))) # (!GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & ((\U0_DP|R_FPGA|q\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_FPGA|q\(15),
	datab => \U0_DP|R_FPGA|q\(11),
	datac => \U1_FSM|state.play_FPGA~clkctrl_outclk\,
	combout => \U0_DP|R_FPGA|q\(11));

-- Location: LCCOMB_X14_Y16_N2
\U0_DP|R_FPGA|q[10]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_FPGA|q\(10) = (GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & ((\U0_DP|R_FPGA|q\(14)))) # (!GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & (\U0_DP|R_FPGA|q\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0_DP|R_FPGA|q\(10),
	datac => \U1_FSM|state.play_FPGA~clkctrl_outclk\,
	datad => \U0_DP|R_FPGA|q\(14),
	combout => \U0_DP|R_FPGA|q\(10));

-- Location: LCCOMB_X14_Y16_N20
\U0_DP|R_USER|q[10]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_USER|q\(10) = (!\U1_FSM|r2~combout\ & ((GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & ((\U0_DP|R_USER|q\(14)))) # (!GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & (\U0_DP|R_USER|q\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_USER|q\(10),
	datab => \U1_FSM|r2~combout\,
	datac => \U0_DP|R_USER|q\(14),
	datad => \U0_DP|e2_and_ntnb~1clkctrl_outclk\,
	combout => \U0_DP|R_USER|q\(10));

-- Location: LCCOMB_X14_Y16_N18
\U0_DP|match~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|match~16_combout\ = (\U0_DP|R_USER|q\(11) & (\U0_DP|R_FPGA|q\(11) & (\U0_DP|R_FPGA|q\(10) $ (!\U0_DP|R_USER|q\(10))))) # (!\U0_DP|R_USER|q\(11) & (!\U0_DP|R_FPGA|q\(11) & (\U0_DP|R_FPGA|q\(10) $ (!\U0_DP|R_USER|q\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_USER|q\(11),
	datab => \U0_DP|R_FPGA|q\(11),
	datac => \U0_DP|R_FPGA|q\(10),
	datad => \U0_DP|R_USER|q\(10),
	combout => \U0_DP|match~16_combout\);

-- Location: LCCOMB_X16_Y18_N2
\U0_DP|R_FPGA|q[36]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_FPGA|q\(36) = (GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & ((\U0_DP|R_FPGA|q\(40)))) # (!GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & (\U0_DP|R_FPGA|q\(36)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0_DP|R_FPGA|q\(36),
	datac => \U0_DP|R_FPGA|q\(40),
	datad => \U1_FSM|state.play_FPGA~clkctrl_outclk\,
	combout => \U0_DP|R_FPGA|q\(36));

-- Location: LCCOMB_X17_Y16_N24
\U0_DP|R_FPGA|q[32]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_FPGA|q\(32) = (GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & ((\U0_DP|R_FPGA|q\(36)))) # (!GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & (\U0_DP|R_FPGA|q\(32)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0_DP|R_FPGA|q\(32),
	datac => \U0_DP|R_FPGA|q\(36),
	datad => \U1_FSM|state.play_FPGA~clkctrl_outclk\,
	combout => \U0_DP|R_FPGA|q\(32));

-- Location: LCCOMB_X17_Y16_N28
\U0_DP|R_FPGA|q[28]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_FPGA|q\(28) = (GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & ((\U0_DP|R_FPGA|q\(32)))) # (!GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & (\U0_DP|R_FPGA|q\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0_DP|R_FPGA|q\(28),
	datac => \U0_DP|R_FPGA|q\(32),
	datad => \U1_FSM|state.play_FPGA~clkctrl_outclk\,
	combout => \U0_DP|R_FPGA|q\(28));

-- Location: LCCOMB_X17_Y16_N0
\U0_DP|R_FPGA|q[24]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_FPGA|q\(24) = (GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & (\U0_DP|R_FPGA|q\(28))) # (!GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & ((\U0_DP|R_FPGA|q\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0_DP|R_FPGA|q\(28),
	datac => \U0_DP|R_FPGA|q\(24),
	datad => \U1_FSM|state.play_FPGA~clkctrl_outclk\,
	combout => \U0_DP|R_FPGA|q\(24));

-- Location: LCCOMB_X19_Y16_N26
\U0_DP|R_FPGA|q[20]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_FPGA|q\(20) = (GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & (\U0_DP|R_FPGA|q\(24))) # (!GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & ((\U0_DP|R_FPGA|q\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_FPGA|q\(24),
	datac => \U0_DP|R_FPGA|q\(20),
	datad => \U1_FSM|state.play_FPGA~clkctrl_outclk\,
	combout => \U0_DP|R_FPGA|q\(20));

-- Location: LCCOMB_X19_Y16_N30
\U0_DP|R_FPGA|q[16]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_FPGA|q\(16) = (GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & ((\U0_DP|R_FPGA|q\(20)))) # (!GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & (\U0_DP|R_FPGA|q\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_FPGA|q\(16),
	datac => \U0_DP|R_FPGA|q\(20),
	datad => \U1_FSM|state.play_FPGA~clkctrl_outclk\,
	combout => \U0_DP|R_FPGA|q\(16));

-- Location: LCCOMB_X19_Y16_N16
\U0_DP|R_FPGA|q[12]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_FPGA|q\(12) = (GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & ((\U0_DP|R_FPGA|q\(16)))) # (!GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & (\U0_DP|R_FPGA|q\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0_DP|R_FPGA|q\(12),
	datac => \U0_DP|R_FPGA|q\(16),
	datad => \U1_FSM|state.play_FPGA~clkctrl_outclk\,
	combout => \U0_DP|R_FPGA|q\(12));

-- Location: LCCOMB_X16_Y18_N12
\U0_DP|R_FPGA|q[37]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_FPGA|q\(37) = (GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & ((\U0_DP|R_FPGA|q\(41)))) # (!GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & (\U0_DP|R_FPGA|q\(37)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_FPGA|q\(37),
	datab => \U0_DP|R_FPGA|q\(41),
	datad => \U1_FSM|state.play_FPGA~clkctrl_outclk\,
	combout => \U0_DP|R_FPGA|q\(37));

-- Location: LCCOMB_X17_Y16_N22
\U0_DP|R_FPGA|q[33]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_FPGA|q\(33) = (GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & (\U0_DP|R_FPGA|q\(37))) # (!GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & ((\U0_DP|R_FPGA|q\(33))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_FPGA|q\(37),
	datac => \U0_DP|R_FPGA|q\(33),
	datad => \U1_FSM|state.play_FPGA~clkctrl_outclk\,
	combout => \U0_DP|R_FPGA|q\(33));

-- Location: LCCOMB_X17_Y16_N30
\U0_DP|R_FPGA|q[29]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_FPGA|q\(29) = (GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & ((\U0_DP|R_FPGA|q\(33)))) # (!GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & (\U0_DP|R_FPGA|q\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_FPGA|q\(29),
	datac => \U0_DP|R_FPGA|q\(33),
	datad => \U1_FSM|state.play_FPGA~clkctrl_outclk\,
	combout => \U0_DP|R_FPGA|q\(29));

-- Location: LCCOMB_X17_Y16_N10
\U0_DP|R_FPGA|q[25]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_FPGA|q\(25) = (GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & ((\U0_DP|R_FPGA|q\(29)))) # (!GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & (\U0_DP|R_FPGA|q\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0_DP|R_FPGA|q\(25),
	datac => \U0_DP|R_FPGA|q\(29),
	datad => \U1_FSM|state.play_FPGA~clkctrl_outclk\,
	combout => \U0_DP|R_FPGA|q\(25));

-- Location: LCCOMB_X19_Y16_N12
\U0_DP|R_FPGA|q[21]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_FPGA|q\(21) = (GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & ((\U0_DP|R_FPGA|q\(25)))) # (!GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & (\U0_DP|R_FPGA|q\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_FPGA|q\(21),
	datac => \U0_DP|R_FPGA|q\(25),
	datad => \U1_FSM|state.play_FPGA~clkctrl_outclk\,
	combout => \U0_DP|R_FPGA|q\(21));

-- Location: LCCOMB_X19_Y16_N0
\U0_DP|R_FPGA|q[17]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_FPGA|q\(17) = (GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & (\U0_DP|R_FPGA|q\(21))) # (!GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & ((\U0_DP|R_FPGA|q\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_FPGA|q\(21),
	datab => \U0_DP|R_FPGA|q\(17),
	datad => \U1_FSM|state.play_FPGA~clkctrl_outclk\,
	combout => \U0_DP|R_FPGA|q\(17));

-- Location: LCCOMB_X20_Y16_N12
\U0_DP|R_FPGA|q[13]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_FPGA|q\(13) = (GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & ((\U0_DP|R_FPGA|q\(17)))) # (!GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & (\U0_DP|R_FPGA|q\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_FPGA|q\(13),
	datac => \U0_DP|R_FPGA|q\(17),
	datad => \U1_FSM|state.play_FPGA~clkctrl_outclk\,
	combout => \U0_DP|R_FPGA|q\(13));

-- Location: LCCOMB_X16_Y18_N28
\U0_DP|R_USER|q[36]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_USER|q\(36) = (!\U1_FSM|r2~combout\ & ((GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & ((\U0_DP|R_USER|q\(40)))) # (!GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & (\U0_DP|R_USER|q\(36)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_FSM|r2~combout\,
	datab => \U0_DP|R_USER|q\(36),
	datac => \U0_DP|R_USER|q\(40),
	datad => \U0_DP|e2_and_ntnb~1clkctrl_outclk\,
	combout => \U0_DP|R_USER|q\(36));

-- Location: LCCOMB_X17_Y16_N18
\U0_DP|R_USER|q[32]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_USER|q\(32) = (!\U1_FSM|r2~combout\ & ((GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & ((\U0_DP|R_USER|q\(36)))) # (!GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & (\U0_DP|R_USER|q\(32)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_FSM|r2~combout\,
	datab => \U0_DP|R_USER|q\(32),
	datac => \U0_DP|e2_and_ntnb~1clkctrl_outclk\,
	datad => \U0_DP|R_USER|q\(36),
	combout => \U0_DP|R_USER|q\(32));

-- Location: LCCOMB_X17_Y16_N14
\U0_DP|R_USER|q[28]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_USER|q\(28) = (!\U1_FSM|r2~combout\ & ((GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & ((\U0_DP|R_USER|q\(32)))) # (!GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & (\U0_DP|R_USER|q\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_FSM|r2~combout\,
	datab => \U0_DP|R_USER|q\(28),
	datac => \U0_DP|e2_and_ntnb~1clkctrl_outclk\,
	datad => \U0_DP|R_USER|q\(32),
	combout => \U0_DP|R_USER|q\(28));

-- Location: LCCOMB_X17_Y16_N26
\U0_DP|R_USER|q[24]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_USER|q\(24) = (!\U1_FSM|r2~combout\ & ((GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & ((\U0_DP|R_USER|q\(28)))) # (!GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & (\U0_DP|R_USER|q\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_USER|q\(24),
	datab => \U1_FSM|r2~combout\,
	datac => \U0_DP|R_USER|q\(28),
	datad => \U0_DP|e2_and_ntnb~1clkctrl_outclk\,
	combout => \U0_DP|R_USER|q\(24));

-- Location: LCCOMB_X19_Y16_N28
\U0_DP|R_USER|q[20]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_USER|q\(20) = (!\U1_FSM|r2~combout\ & ((GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & ((\U0_DP|R_USER|q\(24)))) # (!GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & (\U0_DP|R_USER|q\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_USER|q\(20),
	datab => \U1_FSM|r2~combout\,
	datac => \U0_DP|R_USER|q\(24),
	datad => \U0_DP|e2_and_ntnb~1clkctrl_outclk\,
	combout => \U0_DP|R_USER|q\(20));

-- Location: LCCOMB_X19_Y16_N4
\U0_DP|R_USER|q[16]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_USER|q\(16) = (!\U1_FSM|r2~combout\ & ((GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & ((\U0_DP|R_USER|q\(20)))) # (!GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & (\U0_DP|R_USER|q\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_FSM|r2~combout\,
	datab => \U0_DP|R_USER|q\(16),
	datac => \U0_DP|e2_and_ntnb~1clkctrl_outclk\,
	datad => \U0_DP|R_USER|q\(20),
	combout => \U0_DP|R_USER|q\(16));

-- Location: LCCOMB_X19_Y16_N8
\U0_DP|R_USER|q[12]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_USER|q\(12) = (!\U1_FSM|r2~combout\ & ((GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & ((\U0_DP|R_USER|q\(16)))) # (!GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & (\U0_DP|R_USER|q\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_USER|q\(12),
	datab => \U1_FSM|r2~combout\,
	datac => \U0_DP|R_USER|q\(16),
	datad => \U0_DP|e2_and_ntnb~1clkctrl_outclk\,
	combout => \U0_DP|R_USER|q\(12));

-- Location: LCCOMB_X16_Y18_N14
\U0_DP|R_USER|q[37]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_USER|q\(37) = (!\U1_FSM|r2~combout\ & ((GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & ((\U0_DP|R_USER|q\(41)))) # (!GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & (\U0_DP|R_USER|q\(37)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_FSM|r2~combout\,
	datab => \U0_DP|R_USER|q\(37),
	datac => \U0_DP|e2_and_ntnb~1clkctrl_outclk\,
	datad => \U0_DP|R_USER|q\(41),
	combout => \U0_DP|R_USER|q\(37));

-- Location: LCCOMB_X17_Y16_N4
\U0_DP|R_USER|q[33]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_USER|q\(33) = (!\U1_FSM|r2~combout\ & ((GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & ((\U0_DP|R_USER|q\(37)))) # (!GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & (\U0_DP|R_USER|q\(33)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_FSM|r2~combout\,
	datab => \U0_DP|R_USER|q\(33),
	datac => \U0_DP|R_USER|q\(37),
	datad => \U0_DP|e2_and_ntnb~1clkctrl_outclk\,
	combout => \U0_DP|R_USER|q\(33));

-- Location: LCCOMB_X17_Y16_N8
\U0_DP|R_USER|q[29]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_USER|q\(29) = (!\U1_FSM|r2~combout\ & ((GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & ((\U0_DP|R_USER|q\(33)))) # (!GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & (\U0_DP|R_USER|q\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_FSM|r2~combout\,
	datab => \U0_DP|R_USER|q\(29),
	datac => \U0_DP|e2_and_ntnb~1clkctrl_outclk\,
	datad => \U0_DP|R_USER|q\(33),
	combout => \U0_DP|R_USER|q\(29));

-- Location: LCCOMB_X17_Y16_N20
\U0_DP|R_USER|q[25]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_USER|q\(25) = (!\U1_FSM|r2~combout\ & ((GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & ((\U0_DP|R_USER|q\(29)))) # (!GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & (\U0_DP|R_USER|q\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_FSM|r2~combout\,
	datab => \U0_DP|R_USER|q\(25),
	datac => \U0_DP|R_USER|q\(29),
	datad => \U0_DP|e2_and_ntnb~1clkctrl_outclk\,
	combout => \U0_DP|R_USER|q\(25));

-- Location: LCCOMB_X19_Y16_N14
\U0_DP|R_USER|q[21]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_USER|q\(21) = (!\U1_FSM|r2~combout\ & ((GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & ((\U0_DP|R_USER|q\(25)))) # (!GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & (\U0_DP|R_USER|q\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_USER|q\(21),
	datab => \U1_FSM|r2~combout\,
	datac => \U0_DP|R_USER|q\(25),
	datad => \U0_DP|e2_and_ntnb~1clkctrl_outclk\,
	combout => \U0_DP|R_USER|q\(21));

-- Location: LCCOMB_X19_Y16_N22
\U0_DP|R_USER|q[17]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_USER|q\(17) = (!\U1_FSM|r2~combout\ & ((GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & ((\U0_DP|R_USER|q\(21)))) # (!GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & (\U0_DP|R_USER|q\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_USER|q\(17),
	datab => \U1_FSM|r2~combout\,
	datac => \U0_DP|R_USER|q\(21),
	datad => \U0_DP|e2_and_ntnb~1clkctrl_outclk\,
	combout => \U0_DP|R_USER|q\(17));

-- Location: LCCOMB_X19_Y16_N18
\U0_DP|R_USER|q[13]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_USER|q\(13) = (!\U1_FSM|r2~combout\ & ((GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & ((\U0_DP|R_USER|q\(17)))) # (!GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & (\U0_DP|R_USER|q\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_USER|q\(13),
	datab => \U1_FSM|r2~combout\,
	datac => \U0_DP|R_USER|q\(17),
	datad => \U0_DP|e2_and_ntnb~1clkctrl_outclk\,
	combout => \U0_DP|R_USER|q\(13));

-- Location: LCCOMB_X19_Y16_N24
\U0_DP|match~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|match~17_combout\ = (\U0_DP|R_FPGA|q\(12) & (\U0_DP|R_USER|q\(12) & (\U0_DP|R_FPGA|q\(13) $ (!\U0_DP|R_USER|q\(13))))) # (!\U0_DP|R_FPGA|q\(12) & (!\U0_DP|R_USER|q\(12) & (\U0_DP|R_FPGA|q\(13) $ (!\U0_DP|R_USER|q\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_FPGA|q\(12),
	datab => \U0_DP|R_FPGA|q\(13),
	datac => \U0_DP|R_USER|q\(12),
	datad => \U0_DP|R_USER|q\(13),
	combout => \U0_DP|match~17_combout\);

-- Location: LCCOMB_X20_Y16_N22
\U0_DP|R_FPGA|q[8]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_FPGA|q\(8) = (GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & (\U0_DP|R_FPGA|q\(12))) # (!GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & ((\U0_DP|R_FPGA|q\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_FPGA|q\(12),
	datac => \U0_DP|R_FPGA|q\(8),
	datad => \U1_FSM|state.play_FPGA~clkctrl_outclk\,
	combout => \U0_DP|R_FPGA|q\(8));

-- Location: LCCOMB_X20_Y16_N4
\U0_DP|R_FPGA|q[9]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_FPGA|q\(9) = (GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & (\U0_DP|R_FPGA|q\(13))) # (!GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & ((\U0_DP|R_FPGA|q\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_FPGA|q\(13),
	datac => \U0_DP|R_FPGA|q\(9),
	datad => \U1_FSM|state.play_FPGA~clkctrl_outclk\,
	combout => \U0_DP|R_FPGA|q\(9));

-- Location: LCCOMB_X19_Y16_N6
\U0_DP|R_USER|q[8]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_USER|q\(8) = (!\U1_FSM|r2~combout\ & ((GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & ((\U0_DP|R_USER|q\(12)))) # (!GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & (\U0_DP|R_USER|q\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_USER|q\(8),
	datab => \U1_FSM|r2~combout\,
	datac => \U0_DP|R_USER|q\(12),
	datad => \U0_DP|e2_and_ntnb~1clkctrl_outclk\,
	combout => \U0_DP|R_USER|q\(8));

-- Location: LCCOMB_X20_Y16_N6
\U0_DP|R_USER|q[9]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_USER|q\(9) = (!\U1_FSM|r2~combout\ & ((GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & ((\U0_DP|R_USER|q\(13)))) # (!GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & (\U0_DP|R_USER|q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_USER|q\(9),
	datab => \U1_FSM|r2~combout\,
	datac => \U0_DP|R_USER|q\(13),
	datad => \U0_DP|e2_and_ntnb~1clkctrl_outclk\,
	combout => \U0_DP|R_USER|q\(9));

-- Location: LCCOMB_X20_Y16_N20
\U0_DP|match~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|match~15_combout\ = (\U0_DP|R_FPGA|q\(8) & (\U0_DP|R_USER|q\(8) & (\U0_DP|R_FPGA|q\(9) $ (!\U0_DP|R_USER|q\(9))))) # (!\U0_DP|R_FPGA|q\(8) & (!\U0_DP|R_USER|q\(8) & (\U0_DP|R_FPGA|q\(9) $ (!\U0_DP|R_USER|q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_FPGA|q\(8),
	datab => \U0_DP|R_FPGA|q\(9),
	datac => \U0_DP|R_USER|q\(8),
	datad => \U0_DP|R_USER|q\(9),
	combout => \U0_DP|match~15_combout\);

-- Location: LCCOMB_X15_Y16_N14
\U0_DP|match~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|match~19_combout\ = (\U0_DP|match~18_combout\ & (\U0_DP|match~16_combout\ & (\U0_DP|match~17_combout\ & \U0_DP|match~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|match~18_combout\,
	datab => \U0_DP|match~16_combout\,
	datac => \U0_DP|match~17_combout\,
	datad => \U0_DP|match~15_combout\,
	combout => \U0_DP|match~19_combout\);

-- Location: LCCOMB_X17_Y16_N16
\U0_DP|match~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|match~23_combout\ = (\U0_DP|R_FPGA|q\(29) & (\U0_DP|R_USER|q\(29) & (\U0_DP|R_FPGA|q\(28) $ (!\U0_DP|R_USER|q\(28))))) # (!\U0_DP|R_FPGA|q\(29) & (!\U0_DP|R_USER|q\(29) & (\U0_DP|R_FPGA|q\(28) $ (!\U0_DP|R_USER|q\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_FPGA|q\(29),
	datab => \U0_DP|R_FPGA|q\(28),
	datac => \U0_DP|R_USER|q\(28),
	datad => \U0_DP|R_USER|q\(29),
	combout => \U0_DP|match~23_combout\);

-- Location: LCCOMB_X17_Y16_N6
\U0_DP|match~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|match~22_combout\ = (\U0_DP|R_FPGA|q\(25) & (\U0_DP|R_USER|q\(25) & (\U0_DP|R_FPGA|q\(24) $ (!\U0_DP|R_USER|q\(24))))) # (!\U0_DP|R_FPGA|q\(25) & (!\U0_DP|R_USER|q\(25) & (\U0_DP|R_FPGA|q\(24) $ (!\U0_DP|R_USER|q\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_FPGA|q\(25),
	datab => \U0_DP|R_FPGA|q\(24),
	datac => \U0_DP|R_USER|q\(24),
	datad => \U0_DP|R_USER|q\(25),
	combout => \U0_DP|match~22_combout\);

-- Location: LCCOMB_X16_Y16_N26
\U0_DP|match~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|match~21_combout\ = (\U0_DP|R_FPGA|q\(54) & (\U0_DP|R_USER|q\(54) & (\U0_DP|R_USER|q\(55) $ (!\U0_DP|R_FPGA|q\(55))))) # (!\U0_DP|R_FPGA|q\(54) & (!\U0_DP|R_USER|q\(54) & (\U0_DP|R_USER|q\(55) $ (!\U0_DP|R_FPGA|q\(55)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_FPGA|q\(54),
	datab => \U0_DP|R_USER|q\(54),
	datac => \U0_DP|R_USER|q\(55),
	datad => \U0_DP|R_FPGA|q\(55),
	combout => \U0_DP|match~21_combout\);

-- Location: LCCOMB_X15_Y16_N8
\U0_DP|match~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|match~24_combout\ = (\U0_DP|match~23_combout\ & (\U0_DP|match~22_combout\ & (\U0_DP|C_USER|tc~q\ & \U0_DP|match~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|match~23_combout\,
	datab => \U0_DP|match~22_combout\,
	datac => \U0_DP|C_USER|tc~q\,
	datad => \U0_DP|match~21_combout\,
	combout => \U0_DP|match~24_combout\);

-- Location: LCCOMB_X17_Y16_N12
\U0_DP|match~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|match~10_combout\ = (\U0_DP|R_FPGA|q\(33) & (\U0_DP|R_USER|q\(33) & (\U0_DP|R_FPGA|q\(32) $ (!\U0_DP|R_USER|q\(32))))) # (!\U0_DP|R_FPGA|q\(33) & (!\U0_DP|R_USER|q\(33) & (\U0_DP|R_FPGA|q\(32) $ (!\U0_DP|R_USER|q\(32)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_FPGA|q\(33),
	datab => \U0_DP|R_FPGA|q\(32),
	datac => \U0_DP|R_USER|q\(33),
	datad => \U0_DP|R_USER|q\(32),
	combout => \U0_DP|match~10_combout\);

-- Location: LCCOMB_X15_Y18_N18
\U0_DP|match~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|match~13_combout\ = (\U0_DP|R_FPGA|q\(39) & (\U0_DP|R_USER|q\(39) & (\U0_DP|R_FPGA|q\(38) $ (!\U0_DP|R_USER|q\(38))))) # (!\U0_DP|R_FPGA|q\(39) & (!\U0_DP|R_USER|q\(39) & (\U0_DP|R_FPGA|q\(38) $ (!\U0_DP|R_USER|q\(38)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_FPGA|q\(39),
	datab => \U0_DP|R_FPGA|q\(38),
	datac => \U0_DP|R_USER|q\(39),
	datad => \U0_DP|R_USER|q\(38),
	combout => \U0_DP|match~13_combout\);

-- Location: LCCOMB_X15_Y18_N28
\U0_DP|match~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|match~11_combout\ = (\U0_DP|R_FPGA|q\(35) & (\U0_DP|R_USER|q\(35) & (\U0_DP|R_FPGA|q\(34) $ (!\U0_DP|R_USER|q\(34))))) # (!\U0_DP|R_FPGA|q\(35) & (!\U0_DP|R_USER|q\(35) & (\U0_DP|R_FPGA|q\(34) $ (!\U0_DP|R_USER|q\(34)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_FPGA|q\(35),
	datab => \U0_DP|R_FPGA|q\(34),
	datac => \U0_DP|R_USER|q\(34),
	datad => \U0_DP|R_USER|q\(35),
	combout => \U0_DP|match~11_combout\);

-- Location: LCCOMB_X16_Y18_N18
\U0_DP|match~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|match~12_combout\ = (\U0_DP|R_FPGA|q\(37) & (\U0_DP|R_USER|q\(37) & (\U0_DP|R_FPGA|q\(36) $ (!\U0_DP|R_USER|q\(36))))) # (!\U0_DP|R_FPGA|q\(37) & (!\U0_DP|R_USER|q\(37) & (\U0_DP|R_FPGA|q\(36) $ (!\U0_DP|R_USER|q\(36)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_FPGA|q\(37),
	datab => \U0_DP|R_FPGA|q\(36),
	datac => \U0_DP|R_USER|q\(37),
	datad => \U0_DP|R_USER|q\(36),
	combout => \U0_DP|match~12_combout\);

-- Location: LCCOMB_X15_Y16_N24
\U0_DP|match~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|match~14_combout\ = (\U0_DP|match~10_combout\ & (\U0_DP|match~13_combout\ & (\U0_DP|match~11_combout\ & \U0_DP|match~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|match~10_combout\,
	datab => \U0_DP|match~13_combout\,
	datac => \U0_DP|match~11_combout\,
	datad => \U0_DP|match~12_combout\,
	combout => \U0_DP|match~14_combout\);

-- Location: LCCOMB_X15_Y16_N22
\U0_DP|match~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|match~25_combout\ = (\U0_DP|match~20_combout\ & (\U0_DP|match~19_combout\ & (\U0_DP|match~24_combout\ & \U0_DP|match~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|match~20_combout\,
	datab => \U0_DP|match~19_combout\,
	datac => \U0_DP|match~24_combout\,
	datad => \U0_DP|match~14_combout\,
	combout => \U0_DP|match~25_combout\);

-- Location: LCCOMB_X16_Y16_N20
\U0_DP|match~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|match~27_combout\ = (\U0_DP|R_FPGA|q\(58) & (\U0_DP|R_USER|q\(58) & (\U0_DP|R_FPGA|q\(59) $ (!\U0_DP|R_USER|q\(59))))) # (!\U0_DP|R_FPGA|q\(58) & (!\U0_DP|R_USER|q\(58) & (\U0_DP|R_FPGA|q\(59) $ (!\U0_DP|R_USER|q\(59)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_FPGA|q\(58),
	datab => \U0_DP|R_FPGA|q\(59),
	datac => \U0_DP|R_USER|q\(58),
	datad => \U0_DP|R_USER|q\(59),
	combout => \U0_DP|match~27_combout\);

-- Location: LCCOMB_X15_Y19_N18
\U0_DP|match~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|match~26_combout\ = (\U0_DP|R_FPGA|q\(56) & (\U0_DP|R_USER|q\(56) & (\U0_DP|R_FPGA|q\(57) $ (!\U0_DP|R_USER|q\(57))))) # (!\U0_DP|R_FPGA|q\(56) & (!\U0_DP|R_USER|q\(56) & (\U0_DP|R_FPGA|q\(57) $ (!\U0_DP|R_USER|q\(57)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_FPGA|q\(56),
	datab => \U0_DP|R_FPGA|q\(57),
	datac => \U0_DP|R_USER|q\(57),
	datad => \U0_DP|R_USER|q\(56),
	combout => \U0_DP|match~26_combout\);

-- Location: LCCOMB_X16_Y16_N10
\U0_DP|match~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|match~29_combout\ = (\U0_DP|R_FPGA|q\(63) & (\U0_DP|R_USER|q\(63) & (\U0_DP|R_USER|q\(62) $ (!\U0_DP|R_FPGA|q\(62))))) # (!\U0_DP|R_FPGA|q\(63) & (!\U0_DP|R_USER|q\(63) & (\U0_DP|R_USER|q\(62) $ (!\U0_DP|R_FPGA|q\(62)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_FPGA|q\(63),
	datab => \U0_DP|R_USER|q\(63),
	datac => \U0_DP|R_USER|q\(62),
	datad => \U0_DP|R_FPGA|q\(62),
	combout => \U0_DP|match~29_combout\);

-- Location: LCCOMB_X15_Y19_N16
\U0_DP|match~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|match~28_combout\ = (\U0_DP|R_USER|q\(60) & (\U0_DP|R_FPGA|q\(60) & (\U0_DP|R_USER|q\(61) $ (!\U0_DP|R_FPGA|q\(61))))) # (!\U0_DP|R_USER|q\(60) & (!\U0_DP|R_FPGA|q\(60) & (\U0_DP|R_USER|q\(61) $ (!\U0_DP|R_FPGA|q\(61)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_USER|q\(60),
	datab => \U0_DP|R_USER|q\(61),
	datac => \U0_DP|R_FPGA|q\(60),
	datad => \U0_DP|R_FPGA|q\(61),
	combout => \U0_DP|match~28_combout\);

-- Location: LCCOMB_X15_Y16_N4
\U0_DP|match~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|match~30_combout\ = (\U0_DP|match~27_combout\ & (\U0_DP|match~26_combout\ & (\U0_DP|match~29_combout\ & \U0_DP|match~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|match~27_combout\,
	datab => \U0_DP|match~26_combout\,
	datac => \U0_DP|match~29_combout\,
	datad => \U0_DP|match~28_combout\,
	combout => \U0_DP|match~30_combout\);

-- Location: LCCOMB_X19_Y16_N20
\U0_DP|match~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|match~38_combout\ = (\U0_DP|R_FPGA|q\(20) & (\U0_DP|R_USER|q\(20) & (\U0_DP|R_FPGA|q\(21) $ (!\U0_DP|R_USER|q\(21))))) # (!\U0_DP|R_FPGA|q\(20) & (!\U0_DP|R_USER|q\(20) & (\U0_DP|R_FPGA|q\(21) $ (!\U0_DP|R_USER|q\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_FPGA|q\(20),
	datab => \U0_DP|R_FPGA|q\(21),
	datac => \U0_DP|R_USER|q\(21),
	datad => \U0_DP|R_USER|q\(20),
	combout => \U0_DP|match~38_combout\);

-- Location: LCCOMB_X14_Y16_N6
\U0_DP|match~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|match~37_combout\ = (\U0_DP|R_FPGA|q\(18) & (\U0_DP|R_USER|q\(18) & (\U0_DP|R_FPGA|q\(19) $ (!\U0_DP|R_USER|q\(19))))) # (!\U0_DP|R_FPGA|q\(18) & (!\U0_DP|R_USER|q\(18) & (\U0_DP|R_FPGA|q\(19) $ (!\U0_DP|R_USER|q\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_FPGA|q\(18),
	datab => \U0_DP|R_FPGA|q\(19),
	datac => \U0_DP|R_USER|q\(19),
	datad => \U0_DP|R_USER|q\(18),
	combout => \U0_DP|match~37_combout\);

-- Location: LCCOMB_X19_Y16_N10
\U0_DP|match~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|match~36_combout\ = (\U0_DP|R_FPGA|q\(16) & (\U0_DP|R_USER|q\(16) & (\U0_DP|R_FPGA|q\(17) $ (!\U0_DP|R_USER|q\(17))))) # (!\U0_DP|R_FPGA|q\(16) & (!\U0_DP|R_USER|q\(16) & (\U0_DP|R_FPGA|q\(17) $ (!\U0_DP|R_USER|q\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_FPGA|q\(16),
	datab => \U0_DP|R_FPGA|q\(17),
	datac => \U0_DP|R_USER|q\(16),
	datad => \U0_DP|R_USER|q\(17),
	combout => \U0_DP|match~36_combout\);

-- Location: LCCOMB_X14_Y18_N2
\U0_DP|match~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|match~39_combout\ = (\U0_DP|R_FPGA|q\(22) & (\U0_DP|R_USER|q\(22) & (\U0_DP|R_FPGA|q\(23) $ (!\U0_DP|R_USER|q\(23))))) # (!\U0_DP|R_FPGA|q\(22) & (!\U0_DP|R_USER|q\(22) & (\U0_DP|R_FPGA|q\(23) $ (!\U0_DP|R_USER|q\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_FPGA|q\(22),
	datab => \U0_DP|R_FPGA|q\(23),
	datac => \U0_DP|R_USER|q\(22),
	datad => \U0_DP|R_USER|q\(23),
	combout => \U0_DP|match~39_combout\);

-- Location: LCCOMB_X15_Y16_N26
\U0_DP|match~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|match~40_combout\ = (\U0_DP|match~38_combout\ & (\U0_DP|match~37_combout\ & (\U0_DP|match~36_combout\ & \U0_DP|match~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|match~38_combout\,
	datab => \U0_DP|match~37_combout\,
	datac => \U0_DP|match~36_combout\,
	datad => \U0_DP|match~39_combout\,
	combout => \U0_DP|match~40_combout\);

-- Location: LCCOMB_X12_Y16_N14
\U0_DP|R_FPGA|q[6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_FPGA|q\(6) = (GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & (\U0_DP|R_FPGA|q\(10))) # (!GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & ((\U0_DP|R_FPGA|q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0_DP|R_FPGA|q\(10),
	datac => \U0_DP|R_FPGA|q\(6),
	datad => \U1_FSM|state.play_FPGA~clkctrl_outclk\,
	combout => \U0_DP|R_FPGA|q\(6));

-- Location: LCCOMB_X12_Y16_N18
\U0_DP|R_FPGA|q[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_FPGA|q\(2) = (GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & ((\U0_DP|R_FPGA|q\(6)))) # (!GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & (\U0_DP|R_FPGA|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0_DP|R_FPGA|q\(2),
	datac => \U0_DP|R_FPGA|q\(6),
	datad => \U1_FSM|state.play_FPGA~clkctrl_outclk\,
	combout => \U0_DP|R_FPGA|q\(2));

-- Location: LCCOMB_X12_Y16_N8
\U0_DP|R_FPGA|q[7]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_FPGA|q\(7) = (GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & (\U0_DP|R_FPGA|q\(11))) # (!GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & ((\U0_DP|R_FPGA|q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0_DP|R_FPGA|q\(11),
	datac => \U0_DP|R_FPGA|q\(7),
	datad => \U1_FSM|state.play_FPGA~clkctrl_outclk\,
	combout => \U0_DP|R_FPGA|q\(7));

-- Location: LCCOMB_X12_Y16_N28
\U0_DP|R_FPGA|q[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_FPGA|q\(3) = (GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & ((\U0_DP|R_FPGA|q\(7)))) # (!GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & (\U0_DP|R_FPGA|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_FPGA|q\(3),
	datac => \U0_DP|R_FPGA|q\(7),
	datad => \U1_FSM|state.play_FPGA~clkctrl_outclk\,
	combout => \U0_DP|R_FPGA|q\(3));

-- Location: LCCOMB_X12_Y16_N30
\U0_DP|R_USER|q[7]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_USER|q\(7) = (!\U1_FSM|r2~combout\ & ((GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & ((\U0_DP|R_USER|q\(11)))) # (!GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & (\U0_DP|R_USER|q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_USER|q\(7),
	datab => \U1_FSM|r2~combout\,
	datac => \U0_DP|e2_and_ntnb~1clkctrl_outclk\,
	datad => \U0_DP|R_USER|q\(11),
	combout => \U0_DP|R_USER|q\(7));

-- Location: LCCOMB_X12_Y16_N26
\U0_DP|R_USER|q[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_USER|q\(3) = (!\U1_FSM|r2~combout\ & ((GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & ((\U0_DP|R_USER|q\(7)))) # (!GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & (\U0_DP|R_USER|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_USER|q\(3),
	datab => \U1_FSM|r2~combout\,
	datac => \U0_DP|R_USER|q\(7),
	datad => \U0_DP|e2_and_ntnb~1clkctrl_outclk\,
	combout => \U0_DP|R_USER|q\(3));

-- Location: LCCOMB_X12_Y16_N4
\U0_DP|R_USER|q[6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_USER|q\(6) = (!\U1_FSM|r2~combout\ & ((GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & ((\U0_DP|R_USER|q\(10)))) # (!GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & (\U0_DP|R_USER|q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_USER|q\(6),
	datab => \U1_FSM|r2~combout\,
	datac => \U0_DP|R_USER|q\(10),
	datad => \U0_DP|e2_and_ntnb~1clkctrl_outclk\,
	combout => \U0_DP|R_USER|q\(6));

-- Location: LCCOMB_X12_Y16_N0
\U0_DP|R_USER|q[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_USER|q\(2) = (!\U1_FSM|r2~combout\ & ((GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & ((\U0_DP|R_USER|q\(6)))) # (!GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & (\U0_DP|R_USER|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_USER|q\(2),
	datab => \U1_FSM|r2~combout\,
	datac => \U0_DP|R_USER|q\(6),
	datad => \U0_DP|e2_and_ntnb~1clkctrl_outclk\,
	combout => \U0_DP|R_USER|q\(2));

-- Location: LCCOMB_X12_Y16_N16
\U0_DP|match~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|match~32_combout\ = (\U0_DP|R_FPGA|q\(2) & (\U0_DP|R_USER|q\(2) & (\U0_DP|R_FPGA|q\(3) $ (!\U0_DP|R_USER|q\(3))))) # (!\U0_DP|R_FPGA|q\(2) & (!\U0_DP|R_USER|q\(2) & (\U0_DP|R_FPGA|q\(3) $ (!\U0_DP|R_USER|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_FPGA|q\(2),
	datab => \U0_DP|R_FPGA|q\(3),
	datac => \U0_DP|R_USER|q\(3),
	datad => \U0_DP|R_USER|q\(2),
	combout => \U0_DP|match~32_combout\);

-- Location: LCCOMB_X12_Y16_N6
\U0_DP|match~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|match~34_combout\ = (\U0_DP|R_FPGA|q\(7) & (\U0_DP|R_USER|q\(7) & (\U0_DP|R_FPGA|q\(6) $ (!\U0_DP|R_USER|q\(6))))) # (!\U0_DP|R_FPGA|q\(7) & (!\U0_DP|R_USER|q\(7) & (\U0_DP|R_FPGA|q\(6) $ (!\U0_DP|R_USER|q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_FPGA|q\(7),
	datab => \U0_DP|R_FPGA|q\(6),
	datac => \U0_DP|R_USER|q\(6),
	datad => \U0_DP|R_USER|q\(7),
	combout => \U0_DP|match~34_combout\);

-- Location: LCCOMB_X20_Y16_N26
\U0_DP|R_FPGA|q[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_FPGA|q\(4) = (GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & ((\U0_DP|R_FPGA|q\(8)))) # (!GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & (\U0_DP|R_FPGA|q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_FPGA|q\(4),
	datac => \U0_DP|R_FPGA|q\(8),
	datad => \U1_FSM|state.play_FPGA~clkctrl_outclk\,
	combout => \U0_DP|R_FPGA|q\(4));

-- Location: LCCOMB_X20_Y16_N28
\U0_DP|R_FPGA|q[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_FPGA|q\(0) = (GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & ((\U0_DP|R_FPGA|q\(4)))) # (!GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & (\U0_DP|R_FPGA|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0_DP|R_FPGA|q\(0),
	datac => \U0_DP|R_FPGA|q\(4),
	datad => \U1_FSM|state.play_FPGA~clkctrl_outclk\,
	combout => \U0_DP|R_FPGA|q\(0));

-- Location: LCCOMB_X20_Y16_N24
\U0_DP|R_FPGA|q[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_FPGA|q\(5) = (GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & ((\U0_DP|R_FPGA|q\(9)))) # (!GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & (\U0_DP|R_FPGA|q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0_DP|R_FPGA|q\(5),
	datac => \U0_DP|R_FPGA|q\(9),
	datad => \U1_FSM|state.play_FPGA~clkctrl_outclk\,
	combout => \U0_DP|R_FPGA|q\(5));

-- Location: LCCOMB_X20_Y16_N18
\U0_DP|R_FPGA|q[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_FPGA|q\(1) = (GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & ((\U0_DP|R_FPGA|q\(5)))) # (!GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & (\U0_DP|R_FPGA|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0_DP|R_FPGA|q\(1),
	datac => \U0_DP|R_FPGA|q\(5),
	datad => \U1_FSM|state.play_FPGA~clkctrl_outclk\,
	combout => \U0_DP|R_FPGA|q\(1));

-- Location: LCCOMB_X19_Y16_N2
\U0_DP|R_USER|q[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_USER|q\(4) = (!\U1_FSM|r2~combout\ & ((GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & ((\U0_DP|R_USER|q\(8)))) # (!GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & (\U0_DP|R_USER|q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_FSM|r2~combout\,
	datab => \U0_DP|R_USER|q\(4),
	datac => \U0_DP|e2_and_ntnb~1clkctrl_outclk\,
	datad => \U0_DP|R_USER|q\(8),
	combout => \U0_DP|R_USER|q\(4));

-- Location: LCCOMB_X20_Y16_N14
\U0_DP|R_USER|q[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_USER|q\(0) = (!\U1_FSM|r2~combout\ & ((GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & ((\U0_DP|R_USER|q\(4)))) # (!GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & (\U0_DP|R_USER|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_USER|q\(0),
	datab => \U1_FSM|r2~combout\,
	datac => \U0_DP|e2_and_ntnb~1clkctrl_outclk\,
	datad => \U0_DP|R_USER|q\(4),
	combout => \U0_DP|R_USER|q\(0));

-- Location: LCCOMB_X20_Y16_N30
\U0_DP|R_USER|q[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_USER|q\(5) = (!\U1_FSM|r2~combout\ & ((GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & ((\U0_DP|R_USER|q\(9)))) # (!GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & (\U0_DP|R_USER|q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_USER|q\(5),
	datab => \U1_FSM|r2~combout\,
	datac => \U0_DP|e2_and_ntnb~1clkctrl_outclk\,
	datad => \U0_DP|R_USER|q\(9),
	combout => \U0_DP|R_USER|q\(5));

-- Location: LCCOMB_X20_Y16_N16
\U0_DP|R_USER|q[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_USER|q\(1) = (!\U1_FSM|r2~combout\ & ((GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & ((\U0_DP|R_USER|q\(5)))) # (!GLOBAL(\U0_DP|e2_and_ntnb~1clkctrl_outclk\) & (\U0_DP|R_USER|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_USER|q\(1),
	datab => \U1_FSM|r2~combout\,
	datac => \U0_DP|R_USER|q\(5),
	datad => \U0_DP|e2_and_ntnb~1clkctrl_outclk\,
	combout => \U0_DP|R_USER|q\(1));

-- Location: LCCOMB_X20_Y16_N10
\U0_DP|match~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|match~31_combout\ = (\U0_DP|R_FPGA|q\(0) & (\U0_DP|R_USER|q\(0) & (\U0_DP|R_FPGA|q\(1) $ (!\U0_DP|R_USER|q\(1))))) # (!\U0_DP|R_FPGA|q\(0) & (!\U0_DP|R_USER|q\(0) & (\U0_DP|R_FPGA|q\(1) $ (!\U0_DP|R_USER|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_FPGA|q\(0),
	datab => \U0_DP|R_FPGA|q\(1),
	datac => \U0_DP|R_USER|q\(0),
	datad => \U0_DP|R_USER|q\(1),
	combout => \U0_DP|match~31_combout\);

-- Location: LCCOMB_X20_Y16_N8
\U0_DP|match~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|match~33_combout\ = (\U0_DP|R_FPGA|q\(4) & (\U0_DP|R_USER|q\(4) & (\U0_DP|R_FPGA|q\(5) $ (!\U0_DP|R_USER|q\(5))))) # (!\U0_DP|R_FPGA|q\(4) & (!\U0_DP|R_USER|q\(4) & (\U0_DP|R_FPGA|q\(5) $ (!\U0_DP|R_USER|q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_FPGA|q\(4),
	datab => \U0_DP|R_FPGA|q\(5),
	datac => \U0_DP|R_USER|q\(5),
	datad => \U0_DP|R_USER|q\(4),
	combout => \U0_DP|match~33_combout\);

-- Location: LCCOMB_X15_Y16_N10
\U0_DP|match~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|match~35_combout\ = (\U0_DP|match~32_combout\ & (\U0_DP|match~34_combout\ & (\U0_DP|match~31_combout\ & \U0_DP|match~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|match~32_combout\,
	datab => \U0_DP|match~34_combout\,
	datac => \U0_DP|match~31_combout\,
	datad => \U0_DP|match~33_combout\,
	combout => \U0_DP|match~35_combout\);

-- Location: LCCOMB_X15_Y16_N12
\U0_DP|match~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|match~41_combout\ = (\U0_DP|match~30_combout\ & (\U0_DP|match~40_combout\ & \U0_DP|match~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0_DP|match~30_combout\,
	datac => \U0_DP|match~40_combout\,
	datad => \U0_DP|match~35_combout\,
	combout => \U0_DP|match~41_combout\);

-- Location: LCCOMB_X15_Y16_N28
\U0_DP|match~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|match~42_combout\ = (\U0_DP|match~4_combout\ & (\U0_DP|match~9_combout\ & (\U0_DP|match~25_combout\ & \U0_DP|match~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|match~4_combout\,
	datab => \U0_DP|match~9_combout\,
	datac => \U0_DP|match~25_combout\,
	datad => \U0_DP|match~41_combout\,
	combout => \U0_DP|match~42_combout\);

-- Location: LCCOMB_X15_Y16_N18
\U1_FSM|state~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_FSM|state~22_combout\ = (\U1_FSM|state.check~q\ & (!\sw[1]~input_o\ & \U0_DP|match~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_FSM|state.check~q\,
	datac => \sw[1]~input_o\,
	datad => \U0_DP|match~42_combout\,
	combout => \U1_FSM|state~22_combout\);

-- Location: FF_X15_Y16_N19
\U1_FSM|state.next_round\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \U1_FSM|state~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1_FSM|state.next_round~q\);

-- Location: LCCOMB_X16_Y19_N20
\U1_FSM|state~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_FSM|state~12_combout\ = (\U1_FSM|state.play_user~q\ & ((\U0_DP|CT|end_time~q\) # ((\U0_DP|CR|tc~q\ & \U1_FSM|state.next_round~q\)))) # (!\U1_FSM|state.play_user~q\ & (((\U0_DP|CR|tc~q\ & \U1_FSM|state.next_round~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_FSM|state.play_user~q\,
	datab => \U0_DP|CT|end_time~q\,
	datac => \U0_DP|CR|tc~q\,
	datad => \U1_FSM|state.next_round~q\,
	combout => \U1_FSM|state~12_combout\);

-- Location: LCCOMB_X15_Y16_N30
\U1_FSM|state~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_FSM|state~13_combout\ = (!\sw[1]~input_o\ & ((\U1_FSM|state~12_combout\) # ((\U1_FSM|state.check~q\ & !\U0_DP|match~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_FSM|state.check~q\,
	datab => \sw[1]~input_o\,
	datac => \U1_FSM|state~12_combout\,
	datad => \U0_DP|match~42_combout\,
	combout => \U1_FSM|state~13_combout\);

-- Location: FF_X15_Y16_N31
\U1_FSM|state.result\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \U1_FSM|state~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1_FSM|state.result~q\);

-- Location: LCCOMB_X15_Y16_N6
\U1_FSM|state~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_FSM|state~23_combout\ = (!\sw[1]~input_o\ & !\U1_FSM|state.result~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datac => \U1_FSM|state.result~q\,
	combout => \U1_FSM|state~23_combout\);

-- Location: FF_X15_Y16_N7
\U1_FSM|state.init\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \U1_FSM|state~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1_FSM|state.init~q\);

-- Location: LCCOMB_X15_Y16_N0
\U1_FSM|r2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_FSM|r2~combout\ = (\U1_FSM|state.next_round~q\) # (!\U1_FSM|state.init~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_FSM|state.init~q\,
	datad => \U1_FSM|state.next_round~q\,
	combout => \U1_FSM|r2~combout\);

-- Location: FF_X14_Y16_N25
\U0_DP|CT|tempo[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \U0_DP|CT|tempo[0]~3_combout\,
	clrn => \U1_FSM|ALT_INV_r2~combout\,
	ena => \U1_FSM|state.play_user~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0_DP|CT|tempo\(0));

-- Location: LCCOMB_X16_Y16_N6
\U0_DP|CT|tempo[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|CT|tempo[2]~1_combout\ = \U0_DP|CT|tempo\(2) $ (((\U1_FSM|state.play_user~q\ & (\U0_DP|CT|tempo\(1) & \U0_DP|CT|tempo\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_FSM|state.play_user~q\,
	datab => \U0_DP|CT|tempo\(1),
	datac => \U0_DP|CT|tempo\(2),
	datad => \U0_DP|CT|tempo\(0),
	combout => \U0_DP|CT|tempo[2]~1_combout\);

-- Location: FF_X16_Y16_N3
\U0_DP|CT|tempo[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \U0_DP|CT|tempo[2]~1_combout\,
	clrn => \U1_FSM|ALT_INV_r2~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0_DP|CT|tempo\(2));

-- Location: LCCOMB_X16_Y16_N16
\U0_DP|CT|tempo~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|CT|tempo~2_combout\ = (\U0_DP|CT|tempo\(1) & (\U0_DP|CT|tempo\(3) $ (((\U0_DP|CT|tempo\(2) & \U0_DP|CT|tempo\(0)))))) # (!\U0_DP|CT|tempo\(1) & (\U0_DP|CT|tempo\(3) & ((\U0_DP|CT|tempo\(2)) # (!\U0_DP|CT|tempo\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|CT|tempo\(1),
	datab => \U0_DP|CT|tempo\(2),
	datac => \U0_DP|CT|tempo\(3),
	datad => \U0_DP|CT|tempo\(0),
	combout => \U0_DP|CT|tempo~2_combout\);

-- Location: FF_X16_Y16_N17
\U0_DP|CT|tempo[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \U0_DP|CT|tempo~2_combout\,
	clrn => \U1_FSM|ALT_INV_r2~combout\,
	ena => \U1_FSM|state.play_user~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0_DP|CT|tempo\(3));

-- Location: LCCOMB_X16_Y16_N28
\U0_DP|CT|tempo~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|CT|tempo~0_combout\ = (\U0_DP|CT|tempo\(0) & (!\U0_DP|CT|tempo\(1) & ((\U0_DP|CT|tempo\(2)) # (!\U0_DP|CT|tempo\(3))))) # (!\U0_DP|CT|tempo\(0) & (((\U0_DP|CT|tempo\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|CT|tempo\(0),
	datab => \U0_DP|CT|tempo\(2),
	datac => \U0_DP|CT|tempo\(1),
	datad => \U0_DP|CT|tempo\(3),
	combout => \U0_DP|CT|tempo~0_combout\);

-- Location: FF_X16_Y16_N29
\U0_DP|CT|tempo[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \U0_DP|CT|tempo~0_combout\,
	clrn => \U1_FSM|ALT_INV_r2~combout\,
	ena => \U1_FSM|state.play_user~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0_DP|CT|tempo\(1));

-- Location: LCCOMB_X16_Y19_N28
\U0_DP|CT|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|CT|Equal0~0_combout\ = (!\U0_DP|CT|tempo\(1) & (!\U0_DP|CT|tempo\(2) & (\U0_DP|CT|tempo\(0) & \U0_DP|CT|tempo\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|CT|tempo\(1),
	datab => \U0_DP|CT|tempo\(2),
	datac => \U0_DP|CT|tempo\(0),
	datad => \U0_DP|CT|tempo\(3),
	combout => \U0_DP|CT|Equal0~0_combout\);

-- Location: FF_X16_Y16_N13
\U0_DP|CT|end_time\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \U0_DP|CT|Equal0~0_combout\,
	clrn => \U1_FSM|ALT_INV_r2~combout\,
	sload => VCC,
	ena => \U1_FSM|state.play_user~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0_DP|CT|end_time~q\);

-- Location: LCCOMB_X16_Y19_N22
\U1_FSM|state~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_FSM|state~18_combout\ = (\U1_FSM|state.play_user~q\ & ((\U0_DP|C_USER|tc~q\) # ((\U1_FSM|state~17_combout\ & \U1_FSM|state.check~q\)))) # (!\U1_FSM|state.play_user~q\ & (\U1_FSM|state~17_combout\ & ((\U1_FSM|state.check~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_FSM|state.play_user~q\,
	datab => \U1_FSM|state~17_combout\,
	datac => \U0_DP|C_USER|tc~q\,
	datad => \U1_FSM|state.check~q\,
	combout => \U1_FSM|state~18_combout\);

-- Location: LCCOMB_X16_Y19_N30
\U1_FSM|state~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_FSM|state~19_combout\ = (!\sw[1]~input_o\ & (\U1_FSM|state~18_combout\ & ((!\U1_FSM|state.play_user~q\) # (!\U0_DP|CT|end_time~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \U0_DP|CT|end_time~q\,
	datac => \U1_FSM|state~18_combout\,
	datad => \U1_FSM|state.play_user~q\,
	combout => \U1_FSM|state~19_combout\);

-- Location: FF_X16_Y19_N31
\U1_FSM|state.check\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \U1_FSM|state~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1_FSM|state.check~q\);

-- Location: LCCOMB_X16_Y17_N0
\U0_DP|CR|round[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|CR|round[0]~0_combout\ = \U0_DP|CR|round\(0) $ (\U1_FSM|state.check~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0_DP|CR|round\(0),
	datac => \U1_FSM|state.check~q\,
	combout => \U0_DP|CR|round[0]~0_combout\);

-- Location: FF_X15_Y17_N21
\U0_DP|CR|round[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \U0_DP|CR|round[0]~0_combout\,
	clrn => \U1_FSM|state.init~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0_DP|CR|round\(0));

-- Location: LCCOMB_X14_Y17_N0
\U0_DP|CR|round[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|CR|round[1]~1_combout\ = \U0_DP|CR|round\(1) $ (((\U0_DP|CR|round\(0) & \U1_FSM|state.check~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0_DP|CR|round\(1),
	datac => \U0_DP|CR|round\(0),
	datad => \U1_FSM|state.check~q\,
	combout => \U0_DP|CR|round[1]~1_combout\);

-- Location: FF_X15_Y17_N15
\U0_DP|CR|round[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \U0_DP|CR|round[1]~1_combout\,
	clrn => \U1_FSM|state.init~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0_DP|CR|round\(1));

-- Location: LCCOMB_X14_Y17_N6
\U0_DP|CR|round[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|CR|round[3]~3_combout\ = (\U0_DP|CR|round\(1) & (\U0_DP|CR|round\(2) & (\U0_DP|CR|round\(0) & \U1_FSM|state.check~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|CR|round\(1),
	datab => \U0_DP|CR|round\(2),
	datac => \U0_DP|CR|round\(0),
	datad => \U1_FSM|state.check~q\,
	combout => \U0_DP|CR|round[3]~3_combout\);

-- Location: LCCOMB_X14_Y17_N16
\U0_DP|CR|round[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|CR|round[3]~4_combout\ = \U0_DP|CR|round\(3) $ (\U0_DP|CR|round[3]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0_DP|CR|round\(3),
	datad => \U0_DP|CR|round[3]~3_combout\,
	combout => \U0_DP|CR|round[3]~4_combout\);

-- Location: FF_X14_Y17_N17
\U0_DP|CR|round[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \U0_DP|CR|round[3]~4_combout\,
	clrn => \U1_FSM|state.init~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0_DP|CR|round\(3));

-- Location: LCCOMB_X15_Y17_N28
\U0_DP|CFPGA|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|CFPGA|Equal0~1_combout\ = (\U0_DP|CR|round\(3) & (\U0_DP|CFPGA|total\(3) & (\U0_DP|CFPGA|total\(2) $ (!\U0_DP|CR|round\(2))))) # (!\U0_DP|CR|round\(3) & (!\U0_DP|CFPGA|total\(3) & (\U0_DP|CFPGA|total\(2) $ (!\U0_DP|CR|round\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|CR|round\(3),
	datab => \U0_DP|CFPGA|total\(2),
	datac => \U0_DP|CR|round\(2),
	datad => \U0_DP|CFPGA|total\(3),
	combout => \U0_DP|CFPGA|Equal0~1_combout\);

-- Location: LCCOMB_X16_Y15_N30
\U0_DP|CFPGA|tc~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|CFPGA|tc~0_combout\ = (\U1_FSM|state.play_FPGA~q\ & (\U0_DP|CFPGA|Equal0~1_combout\ & \U0_DP|CFPGA|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1_FSM|state.play_FPGA~q\,
	datac => \U0_DP|CFPGA|Equal0~1_combout\,
	datad => \U0_DP|CFPGA|Equal0~0_combout\,
	combout => \U0_DP|CFPGA|tc~0_combout\);

-- Location: LCCOMB_X16_Y15_N10
\U0_DP|CFPGA|tc\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|CFPGA|tc~combout\ = (!\U1_FSM|r2~combout\ & ((\U0_DP|CFPGA|tc~0_combout\) # (\U0_DP|CFPGA|tc~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|CFPGA|tc~0_combout\,
	datac => \U1_FSM|r2~combout\,
	datad => \U0_DP|CFPGA|tc~combout\,
	combout => \U0_DP|CFPGA|tc~combout\);

-- Location: LCCOMB_X17_Y17_N18
\U1_FSM|state~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_FSM|state~14_combout\ = (\sw[0]~input_o\ & ((\U1_FSM|state.setup~q\) # ((!\U0_DP|CR|tc~q\ & \U1_FSM|state.next_round~q\)))) # (!\sw[0]~input_o\ & (!\U0_DP|CR|tc~q\ & ((\U1_FSM|state.next_round~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \U0_DP|CR|tc~q\,
	datac => \U1_FSM|state.setup~q\,
	datad => \U1_FSM|state.next_round~q\,
	combout => \U1_FSM|state~14_combout\);

-- Location: LCCOMB_X16_Y15_N6
\U1_FSM|state~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_FSM|state~15_combout\ = (!\sw[1]~input_o\ & ((\U1_FSM|state~14_combout\) # ((!\U0_DP|CFPGA|tc~combout\ & \U1_FSM|state.play_FPGA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|CFPGA|tc~combout\,
	datab => \U1_FSM|state.play_FPGA~q\,
	datac => \sw[1]~input_o\,
	datad => \U1_FSM|state~14_combout\,
	combout => \U1_FSM|state~15_combout\);

-- Location: LCCOMB_X16_Y15_N14
\U1_FSM|state.play_FPGA~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_FSM|state.play_FPGA~feeder_combout\ = \U1_FSM|state~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1_FSM|state~15_combout\,
	combout => \U1_FSM|state.play_FPGA~feeder_combout\);

-- Location: FF_X16_Y15_N15
\U1_FSM|state.play_FPGA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \U1_FSM|state.play_FPGA~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1_FSM|state.play_FPGA~q\);

-- Location: CLKCTRL_G11
\U1_FSM|state.play_FPGA~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U1_FSM|state.play_FPGA~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U1_FSM|state.play_FPGA~clkctrl_outclk\);

-- Location: LCCOMB_X15_Y17_N26
\U0_DP|S1|WideOr3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|S1|WideOr3~0_combout\ = (\U0_DP|CFPGA|total\(2) & ((\U0_DP|CFPGA|total\(1)) # (\U0_DP|CFPGA|total\(3) $ (\U0_DP|CFPGA|total\(0))))) # (!\U0_DP|CFPGA|total\(2) & ((\U0_DP|CFPGA|total\(0)) # (\U0_DP|CFPGA|total\(3) $ (\U0_DP|CFPGA|total\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|CFPGA|total\(3),
	datab => \U0_DP|CFPGA|total\(2),
	datac => \U0_DP|CFPGA|total\(1),
	datad => \U0_DP|CFPGA|total\(0),
	combout => \U0_DP|S1|WideOr3~0_combout\);

-- Location: LCCOMB_X15_Y17_N24
\U0_DP|S3|WideOr2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|S3|WideOr2~0_combout\ = (\U0_DP|CFPGA|total\(0) & ((\U0_DP|CFPGA|total\(1) $ (\U0_DP|CFPGA|total\(3))) # (!\U0_DP|CFPGA|total\(2)))) # (!\U0_DP|CFPGA|total\(0) & (((\U0_DP|CFPGA|total\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|CFPGA|total\(1),
	datab => \U0_DP|CFPGA|total\(0),
	datac => \U0_DP|CFPGA|total\(2),
	datad => \U0_DP|CFPGA|total\(3),
	combout => \U0_DP|S3|WideOr2~0_combout\);

-- Location: LCCOMB_X16_Y17_N24
\U0_DP|MUX11|out[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|MUX11|out[0]~0_combout\ = (\U0_DP|R_SETUP|setup\(4) & (((!\U0_DP|R_SETUP|setup\(5))))) # (!\U0_DP|R_SETUP|setup\(4) & ((\U0_DP|R_SETUP|setup\(5) & ((!\U0_DP|S3|WideOr2~0_combout\))) # (!\U0_DP|R_SETUP|setup\(5) & (!\U0_DP|S1|WideOr3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|S1|WideOr3~0_combout\,
	datab => \U0_DP|S3|WideOr2~0_combout\,
	datac => \U0_DP|R_SETUP|setup\(4),
	datad => \U0_DP|R_SETUP|setup\(5),
	combout => \U0_DP|MUX11|out[0]~0_combout\);

-- Location: LCCOMB_X16_Y17_N26
\U0_DP|MUX11|out[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|MUX11|out[0]~1_combout\ = (\U0_DP|MUX11|out[0]~0_combout\) # ((!\U0_DP|CFPGA|total\(1) & (!\U0_DP|CFPGA|total\(0) & \U0_DP|R_SETUP|setup\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|CFPGA|total\(1),
	datab => \U0_DP|CFPGA|total\(0),
	datac => \U0_DP|R_SETUP|setup\(4),
	datad => \U0_DP|MUX11|out[0]~0_combout\,
	combout => \U0_DP|MUX11|out[0]~1_combout\);

-- Location: LCCOMB_X16_Y17_N22
\U0_DP|R_FPGA|q[60]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_FPGA|q\(60) = (GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & ((\U0_DP|MUX11|out[0]~1_combout\))) # (!GLOBAL(\U1_FSM|state.play_FPGA~clkctrl_outclk\) & (\U0_DP|R_FPGA|q\(60)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_FPGA|q\(60),
	datab => \U1_FSM|state.play_FPGA~clkctrl_outclk\,
	datac => \U0_DP|MUX11|out[0]~1_combout\,
	combout => \U0_DP|R_FPGA|q\(60));

-- Location: LCCOMB_X15_Y22_N8
\U0_DP|DEC3|WideOr6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|DEC3|WideOr6~0_combout\ = (\U0_DP|CR|round\(2) & (!\U0_DP|CR|round\(1) & (\U0_DP|CR|round\(0) $ (!\U0_DP|CR|round\(3))))) # (!\U0_DP|CR|round\(2) & (\U0_DP|CR|round\(0) & (\U0_DP|CR|round\(1) $ (!\U0_DP|CR|round\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|CR|round\(0),
	datab => \U0_DP|CR|round\(2),
	datac => \U0_DP|CR|round\(1),
	datad => \U0_DP|CR|round\(3),
	combout => \U0_DP|DEC3|WideOr6~0_combout\);

-- Location: LCCOMB_X15_Y22_N6
\U0_DP|DEC3|WideOr6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|DEC3|WideOr6~1_combout\ = (\U0_DP|DEC3|WideOr6~0_combout\ & \U1_FSM|state.result~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0_DP|DEC3|WideOr6~0_combout\,
	datac => \U1_FSM|state.result~q\,
	combout => \U0_DP|DEC3|WideOr6~1_combout\);

-- Location: LCCOMB_X15_Y22_N12
\U0_DP|DEC3|WideOr5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|DEC3|WideOr5~0_combout\ = (\U0_DP|CR|round\(1) & ((\U0_DP|CR|round\(0) & ((\U0_DP|CR|round\(3)))) # (!\U0_DP|CR|round\(0) & (\U0_DP|CR|round\(2))))) # (!\U0_DP|CR|round\(1) & (\U0_DP|CR|round\(2) & (\U0_DP|CR|round\(0) $ (\U0_DP|CR|round\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|CR|round\(0),
	datab => \U0_DP|CR|round\(2),
	datac => \U0_DP|CR|round\(1),
	datad => \U0_DP|CR|round\(3),
	combout => \U0_DP|DEC3|WideOr5~0_combout\);

-- Location: LCCOMB_X15_Y22_N26
\U0_DP|DEC3|WideOr5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|DEC3|WideOr5~1_combout\ = (\U1_FSM|state.result~q\ & \U0_DP|DEC3|WideOr5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1_FSM|state.result~q\,
	datad => \U0_DP|DEC3|WideOr5~0_combout\,
	combout => \U0_DP|DEC3|WideOr5~1_combout\);

-- Location: LCCOMB_X15_Y22_N4
\U0_DP|DEC3|WideOr4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|DEC3|WideOr4~0_combout\ = (\U0_DP|CR|round\(2) & (\U0_DP|CR|round\(3) & ((\U0_DP|CR|round\(1)) # (!\U0_DP|CR|round\(0))))) # (!\U0_DP|CR|round\(2) & (!\U0_DP|CR|round\(0) & (\U0_DP|CR|round\(1) & !\U0_DP|CR|round\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|CR|round\(0),
	datab => \U0_DP|CR|round\(2),
	datac => \U0_DP|CR|round\(1),
	datad => \U0_DP|CR|round\(3),
	combout => \U0_DP|DEC3|WideOr4~0_combout\);

-- Location: LCCOMB_X15_Y22_N14
\U0_DP|DEC3|WideOr4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|DEC3|WideOr4~1_combout\ = (\U0_DP|DEC3|WideOr4~0_combout\ & \U1_FSM|state.result~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0_DP|DEC3|WideOr4~0_combout\,
	datac => \U1_FSM|state.result~q\,
	combout => \U0_DP|DEC3|WideOr4~1_combout\);

-- Location: LCCOMB_X15_Y22_N20
\U0_DP|DEC3|WideOr3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|DEC3|WideOr3~0_combout\ = (\U0_DP|CR|round\(1) & ((\U0_DP|CR|round\(0) & (\U0_DP|CR|round\(2))) # (!\U0_DP|CR|round\(0) & (!\U0_DP|CR|round\(2) & \U0_DP|CR|round\(3))))) # (!\U0_DP|CR|round\(1) & (!\U0_DP|CR|round\(3) & (\U0_DP|CR|round\(0) $ 
-- (\U0_DP|CR|round\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|CR|round\(0),
	datab => \U0_DP|CR|round\(2),
	datac => \U0_DP|CR|round\(1),
	datad => \U0_DP|CR|round\(3),
	combout => \U0_DP|DEC3|WideOr3~0_combout\);

-- Location: LCCOMB_X15_Y22_N18
\U0_DP|DEC3|WideOr3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|DEC3|WideOr3~1_combout\ = (\U1_FSM|state.result~q\ & \U0_DP|DEC3|WideOr3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1_FSM|state.result~q\,
	datad => \U0_DP|DEC3|WideOr3~0_combout\,
	combout => \U0_DP|DEC3|WideOr3~1_combout\);

-- Location: LCCOMB_X15_Y22_N16
\U0_DP|DEC3|WideOr2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|DEC3|WideOr2~0_combout\ = (\U0_DP|CR|round\(1) & (\U0_DP|CR|round\(0) & ((!\U0_DP|CR|round\(3))))) # (!\U0_DP|CR|round\(1) & ((\U0_DP|CR|round\(2) & ((!\U0_DP|CR|round\(3)))) # (!\U0_DP|CR|round\(2) & (\U0_DP|CR|round\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|CR|round\(0),
	datab => \U0_DP|CR|round\(2),
	datac => \U0_DP|CR|round\(1),
	datad => \U0_DP|CR|round\(3),
	combout => \U0_DP|DEC3|WideOr2~0_combout\);

-- Location: LCCOMB_X15_Y22_N2
\U0_DP|DEC3|WideOr2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|DEC3|WideOr2~1_combout\ = (\U1_FSM|state.result~q\ & \U0_DP|DEC3|WideOr2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1_FSM|state.result~q\,
	datad => \U0_DP|DEC3|WideOr2~0_combout\,
	combout => \U0_DP|DEC3|WideOr2~1_combout\);

-- Location: LCCOMB_X15_Y22_N24
\U0_DP|DEC3|WideOr1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|DEC3|WideOr1~0_combout\ = (\U0_DP|CR|round\(0) & (\U0_DP|CR|round\(3) $ (((\U0_DP|CR|round\(1)) # (!\U0_DP|CR|round\(2)))))) # (!\U0_DP|CR|round\(0) & (!\U0_DP|CR|round\(2) & (\U0_DP|CR|round\(1) & !\U0_DP|CR|round\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|CR|round\(0),
	datab => \U0_DP|CR|round\(2),
	datac => \U0_DP|CR|round\(1),
	datad => \U0_DP|CR|round\(3),
	combout => \U0_DP|DEC3|WideOr1~0_combout\);

-- Location: LCCOMB_X15_Y22_N22
\U0_DP|DEC3|WideOr1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|DEC3|WideOr1~1_combout\ = (\U1_FSM|state.result~q\ & \U0_DP|DEC3|WideOr1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1_FSM|state.result~q\,
	datad => \U0_DP|DEC3|WideOr1~0_combout\,
	combout => \U0_DP|DEC3|WideOr1~1_combout\);

-- Location: LCCOMB_X15_Y22_N28
\U0_DP|DEC3|WideOr0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|DEC3|WideOr0~0_combout\ = (\U0_DP|CR|round\(0) & ((\U0_DP|CR|round\(3)) # (\U0_DP|CR|round\(2) $ (\U0_DP|CR|round\(1))))) # (!\U0_DP|CR|round\(0) & ((\U0_DP|CR|round\(1)) # (\U0_DP|CR|round\(2) $ (\U0_DP|CR|round\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|CR|round\(0),
	datab => \U0_DP|CR|round\(2),
	datac => \U0_DP|CR|round\(1),
	datad => \U0_DP|CR|round\(3),
	combout => \U0_DP|DEC3|WideOr0~0_combout\);

-- Location: LCCOMB_X15_Y22_N10
\U0_DP|DEC3|WideOr0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|DEC3|WideOr0~1_combout\ = (!\U0_DP|DEC3|WideOr0~0_combout\) # (!\U1_FSM|state.result~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1_FSM|state.result~q\,
	datad => \U0_DP|DEC3|WideOr0~0_combout\,
	combout => \U0_DP|DEC3|WideOr0~1_combout\);

-- Location: LCCOMB_X16_Y19_N16
\U0_DP|DEC1|WideOr6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|DEC1|WideOr6~0_combout\ = (\U0_DP|CT|tempo\(3) & (\U0_DP|CT|tempo\(0) & (\U0_DP|CT|tempo\(1) $ (\U0_DP|CT|tempo\(2))))) # (!\U0_DP|CT|tempo\(3) & (!\U0_DP|CT|tempo\(1) & (\U0_DP|CT|tempo\(2) $ (\U0_DP|CT|tempo\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|CT|tempo\(1),
	datab => \U0_DP|CT|tempo\(3),
	datac => \U0_DP|CT|tempo\(2),
	datad => \U0_DP|CT|tempo\(0),
	combout => \U0_DP|DEC1|WideOr6~0_combout\);

-- Location: LCCOMB_X15_Y22_N0
\U0_DP|DEC1|WideOr6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|DEC1|WideOr6~1_combout\ = (\U0_DP|DEC1|WideOr6~0_combout\) # (!\U1_FSM|state.result~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1_FSM|state.result~q\,
	datad => \U0_DP|DEC1|WideOr6~0_combout\,
	combout => \U0_DP|DEC1|WideOr6~1_combout\);

-- Location: LCCOMB_X16_Y19_N2
\U0_DP|DEC1|WideOr5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|DEC1|WideOr5~0_combout\ = (\U0_DP|CT|tempo\(1) & ((\U0_DP|CT|tempo\(0) & (\U0_DP|CT|tempo\(3))) # (!\U0_DP|CT|tempo\(0) & ((\U0_DP|CT|tempo\(2)))))) # (!\U0_DP|CT|tempo\(1) & (\U0_DP|CT|tempo\(2) & (\U0_DP|CT|tempo\(3) $ (\U0_DP|CT|tempo\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|CT|tempo\(1),
	datab => \U0_DP|CT|tempo\(3),
	datac => \U0_DP|CT|tempo\(2),
	datad => \U0_DP|CT|tempo\(0),
	combout => \U0_DP|DEC1|WideOr5~0_combout\);

-- Location: LCCOMB_X15_Y22_N30
\U0_DP|DEC1|WideOr5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|DEC1|WideOr5~1_combout\ = (\U0_DP|DEC1|WideOr5~0_combout\) # (!\U1_FSM|state.result~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1_FSM|state.result~q\,
	datad => \U0_DP|DEC1|WideOr5~0_combout\,
	combout => \U0_DP|DEC1|WideOr5~1_combout\);

-- Location: LCCOMB_X16_Y19_N4
\U0_DP|DEC1|WideOr4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|DEC1|WideOr4~0_combout\ = (\U0_DP|CT|tempo\(3) & (\U0_DP|CT|tempo\(2) & ((\U0_DP|CT|tempo\(1)) # (!\U0_DP|CT|tempo\(0))))) # (!\U0_DP|CT|tempo\(3) & (\U0_DP|CT|tempo\(1) & (!\U0_DP|CT|tempo\(2) & !\U0_DP|CT|tempo\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|CT|tempo\(1),
	datab => \U0_DP|CT|tempo\(3),
	datac => \U0_DP|CT|tempo\(2),
	datad => \U0_DP|CT|tempo\(0),
	combout => \U0_DP|DEC1|WideOr4~0_combout\);

-- Location: LCCOMB_X16_Y20_N28
\U0_DP|MUX7|out[2]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|MUX7|out[2]~8_combout\ = (\U1_FSM|state.result~q\ & ((\U0_DP|DEC1|WideOr4~0_combout\))) # (!\U1_FSM|state.result~q\ & (\U0_DP|CR|tc~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1_FSM|state.result~q\,
	datac => \U0_DP|CR|tc~q\,
	datad => \U0_DP|DEC1|WideOr4~0_combout\,
	combout => \U0_DP|MUX7|out[2]~8_combout\);

-- Location: LCCOMB_X16_Y19_N6
\U0_DP|DEC1|WideOr3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|DEC1|WideOr3~0_combout\ = (\U0_DP|CT|tempo\(1) & ((\U0_DP|CT|tempo\(2) & ((\U0_DP|CT|tempo\(0)))) # (!\U0_DP|CT|tempo\(2) & (\U0_DP|CT|tempo\(3) & !\U0_DP|CT|tempo\(0))))) # (!\U0_DP|CT|tempo\(1) & (!\U0_DP|CT|tempo\(3) & (\U0_DP|CT|tempo\(2) $ 
-- (\U0_DP|CT|tempo\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|CT|tempo\(1),
	datab => \U0_DP|CT|tempo\(3),
	datac => \U0_DP|CT|tempo\(2),
	datad => \U0_DP|CT|tempo\(0),
	combout => \U0_DP|DEC1|WideOr3~0_combout\);

-- Location: LCCOMB_X16_Y20_N2
\U0_DP|MUX7|out[3]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|MUX7|out[3]~9_combout\ = (\U1_FSM|state.result~q\ & ((\U0_DP|DEC1|WideOr3~0_combout\))) # (!\U1_FSM|state.result~q\ & (!\U0_DP|CR|tc~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1_FSM|state.result~q\,
	datac => \U0_DP|CR|tc~q\,
	datad => \U0_DP|DEC1|WideOr3~0_combout\,
	combout => \U0_DP|MUX7|out[3]~9_combout\);

-- Location: LCCOMB_X16_Y19_N8
\U0_DP|DEC1|WideOr2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|DEC1|WideOr2~0_combout\ = (\U0_DP|CT|tempo\(1) & (!\U0_DP|CT|tempo\(3) & ((\U0_DP|CT|tempo\(0))))) # (!\U0_DP|CT|tempo\(1) & ((\U0_DP|CT|tempo\(2) & (!\U0_DP|CT|tempo\(3))) # (!\U0_DP|CT|tempo\(2) & ((\U0_DP|CT|tempo\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|CT|tempo\(1),
	datab => \U0_DP|CT|tempo\(3),
	datac => \U0_DP|CT|tempo\(2),
	datad => \U0_DP|CT|tempo\(0),
	combout => \U0_DP|DEC1|WideOr2~0_combout\);

-- Location: LCCOMB_X16_Y20_N8
\U0_DP|MUX7|out[4]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|MUX7|out[4]~10_combout\ = (\U1_FSM|state.result~q\ & ((\U0_DP|DEC1|WideOr2~0_combout\))) # (!\U1_FSM|state.result~q\ & (!\U0_DP|CR|tc~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1_FSM|state.result~q\,
	datac => \U0_DP|CR|tc~q\,
	datad => \U0_DP|DEC1|WideOr2~0_combout\,
	combout => \U0_DP|MUX7|out[4]~10_combout\);

-- Location: LCCOMB_X16_Y19_N14
\U0_DP|DEC1|WideOr1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|DEC1|WideOr1~0_combout\ = (\U0_DP|CT|tempo\(1) & (!\U0_DP|CT|tempo\(3) & ((\U0_DP|CT|tempo\(0)) # (!\U0_DP|CT|tempo\(2))))) # (!\U0_DP|CT|tempo\(1) & (\U0_DP|CT|tempo\(0) & (\U0_DP|CT|tempo\(3) $ (!\U0_DP|CT|tempo\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|CT|tempo\(1),
	datab => \U0_DP|CT|tempo\(3),
	datac => \U0_DP|CT|tempo\(2),
	datad => \U0_DP|CT|tempo\(0),
	combout => \U0_DP|DEC1|WideOr1~0_combout\);

-- Location: LCCOMB_X14_Y19_N16
\U0_DP|MUX7|out[5]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|MUX7|out[5]~11_combout\ = (\U1_FSM|state.result~q\ & ((\U0_DP|DEC1|WideOr1~0_combout\))) # (!\U1_FSM|state.result~q\ & (\U0_DP|CR|tc~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_FSM|state.result~q\,
	datab => \U0_DP|CR|tc~q\,
	datad => \U0_DP|DEC1|WideOr1~0_combout\,
	combout => \U0_DP|MUX7|out[5]~11_combout\);

-- Location: LCCOMB_X16_Y19_N12
\U0_DP|DEC1|WideOr0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|DEC1|WideOr0~0_combout\ = (\U0_DP|CT|tempo\(0) & ((\U0_DP|CT|tempo\(3)) # (\U0_DP|CT|tempo\(1) $ (\U0_DP|CT|tempo\(2))))) # (!\U0_DP|CT|tempo\(0) & ((\U0_DP|CT|tempo\(1)) # (\U0_DP|CT|tempo\(3) $ (\U0_DP|CT|tempo\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|CT|tempo\(1),
	datab => \U0_DP|CT|tempo\(3),
	datac => \U0_DP|CT|tempo\(2),
	datad => \U0_DP|CT|tempo\(0),
	combout => \U0_DP|DEC1|WideOr0~0_combout\);

-- Location: LCCOMB_X1_Y11_N16
\U0_DP|DEC1|WideOr0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|DEC1|WideOr0~1_combout\ = (!\U0_DP|DEC1|WideOr0~0_combout\) # (!\U1_FSM|state.result~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1_FSM|state.result~q\,
	datad => \U0_DP|DEC1|WideOr0~0_combout\,
	combout => \U0_DP|DEC1|WideOr0~1_combout\);

-- Location: LCCOMB_X16_Y20_N24
\U0_DP|MUX5|out[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|MUX5|out[2]~0_combout\ = (\U1_FSM|state.result~q\) # (!\U0_DP|CR|tc~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1_FSM|state.result~q\,
	datad => \U0_DP|CR|tc~q\,
	combout => \U0_DP|MUX5|out[2]~0_combout\);

-- Location: IOIBUF_X16_Y29_N15
\sw[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(9),
	o => \sw[9]~input_o\);

-- Location: LCCOMB_X16_Y20_N18
\U0_DP|R_SETUP|setup[7]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_SETUP|setup[7]~2_combout\ = (\U1_FSM|state.setup~q\ & \sw[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1_FSM|state.setup~q\,
	datad => \sw[9]~input_o\,
	combout => \U0_DP|R_SETUP|setup[7]~2_combout\);

-- Location: LCCOMB_X16_Y20_N10
\U0_DP|R_SETUP|setup[7]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_SETUP|setup\(7) = (GLOBAL(\U0_DP|R_SETUP|setup[7]~1clkctrl_outclk\) & ((\U0_DP|R_SETUP|setup[7]~2_combout\))) # (!GLOBAL(\U0_DP|R_SETUP|setup[7]~1clkctrl_outclk\) & (\U0_DP|R_SETUP|setup\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_SETUP|setup\(7),
	datac => \U0_DP|R_SETUP|setup[7]~1clkctrl_outclk\,
	datad => \U0_DP|R_SETUP|setup[7]~2_combout\,
	combout => \U0_DP|R_SETUP|setup\(7));

-- Location: IOIBUF_X21_Y29_N1
\sw[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(8),
	o => \sw[8]~input_o\);

-- Location: LCCOMB_X17_Y17_N12
\U0_DP|R_SETUP|setup[6]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_SETUP|setup[6]~0_combout\ = (\U1_FSM|state.setup~q\ & \sw[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_FSM|state.setup~q\,
	datac => \sw[8]~input_o\,
	combout => \U0_DP|R_SETUP|setup[6]~0_combout\);

-- Location: LCCOMB_X17_Y17_N14
\U0_DP|R_SETUP|setup[6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|R_SETUP|setup\(6) = (GLOBAL(\U0_DP|R_SETUP|setup[7]~1clkctrl_outclk\) & (\U0_DP|R_SETUP|setup[6]~0_combout\)) # (!GLOBAL(\U0_DP|R_SETUP|setup[7]~1clkctrl_outclk\) & ((\U0_DP|R_SETUP|setup\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_SETUP|setup[6]~0_combout\,
	datab => \U0_DP|R_SETUP|setup\(6),
	datac => \U0_DP|R_SETUP|setup[7]~1clkctrl_outclk\,
	combout => \U0_DP|R_SETUP|setup\(6));

-- Location: LCCOMB_X16_Y20_N20
\U0_DP|MUX3|out[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|MUX3|out[0]~0_combout\ = ((!\U0_DP|R_SETUP|setup\(7) & \U0_DP|R_SETUP|setup\(6))) # (!\U1_FSM|state.result~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_SETUP|setup\(7),
	datab => \U0_DP|R_SETUP|setup\(6),
	datad => \U1_FSM|state.result~q\,
	combout => \U0_DP|MUX3|out[0]~0_combout\);

-- Location: LCCOMB_X16_Y20_N14
\U0_DP|MUX3|out[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|MUX3|out[2]~1_combout\ = (\U1_FSM|state.result~q\ & (\U0_DP|R_SETUP|setup\(7) & (!\U0_DP|R_SETUP|setup\(6)))) # (!\U1_FSM|state.result~q\ & (((\U0_DP|CR|tc~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_SETUP|setup\(7),
	datab => \U1_FSM|state.result~q\,
	datac => \U0_DP|R_SETUP|setup\(6),
	datad => \U0_DP|CR|tc~q\,
	combout => \U0_DP|MUX3|out[2]~1_combout\);

-- Location: LCCOMB_X16_Y20_N12
\U0_DP|MUX3|out[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|MUX3|out[3]~2_combout\ = (\U1_FSM|state.result~q\ & (!\U0_DP|R_SETUP|setup\(7) & (\U0_DP|R_SETUP|setup\(6)))) # (!\U1_FSM|state.result~q\ & (((!\U0_DP|CR|tc~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_SETUP|setup\(7),
	datab => \U1_FSM|state.result~q\,
	datac => \U0_DP|R_SETUP|setup\(6),
	datad => \U0_DP|CR|tc~q\,
	combout => \U0_DP|MUX3|out[3]~2_combout\);

-- Location: LCCOMB_X16_Y20_N22
\U0_DP|MUX3|out[4]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|MUX3|out[4]~3_combout\ = (\U1_FSM|state.result~q\ & ((\U0_DP|R_SETUP|setup\(6)))) # (!\U1_FSM|state.result~q\ & (!\U0_DP|CR|tc~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|CR|tc~q\,
	datab => \U0_DP|R_SETUP|setup\(6),
	datad => \U1_FSM|state.result~q\,
	combout => \U0_DP|MUX3|out[4]~3_combout\);

-- Location: LCCOMB_X16_Y20_N16
\U0_DP|MUX3|out[5]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|MUX3|out[5]~4_combout\ = (\U1_FSM|state.result~q\ & ((\U0_DP|R_SETUP|setup\(7)) # ((\U0_DP|R_SETUP|setup\(6))))) # (!\U1_FSM|state.result~q\ & (((\U0_DP|CR|tc~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0_DP|R_SETUP|setup\(7),
	datab => \U1_FSM|state.result~q\,
	datac => \U0_DP|R_SETUP|setup\(6),
	datad => \U0_DP|CR|tc~q\,
	combout => \U0_DP|MUX3|out[5]~4_combout\);

-- Location: LCCOMB_X12_Y20_N16
\U0_DP|MUX3|out[2]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|MUX3|out[2]~5_combout\ = (\U0_DP|R_SETUP|setup\(7) & \U1_FSM|state.result~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0_DP|R_SETUP|setup\(7),
	datad => \U1_FSM|state.result~q\,
	combout => \U0_DP|MUX3|out[2]~5_combout\);

-- Location: LCCOMB_X16_Y20_N26
\U0_DP|MUX1|out[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0_DP|MUX1|out[2]~0_combout\ = (\U1_FSM|state.result~q\) # (\U0_DP|CR|tc~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1_FSM|state.result~q\,
	datad => \U0_DP|CR|tc~q\,
	combout => \U0_DP|MUX1|out[2]~0_combout\);

ww_ledr(0) <= \ledr[0]~output_o\;

ww_ledr(1) <= \ledr[1]~output_o\;

ww_ledr(2) <= \ledr[2]~output_o\;

ww_ledr(3) <= \ledr[3]~output_o\;

ww_ledr(4) <= \ledr[4]~output_o\;

ww_ledr(5) <= \ledr[5]~output_o\;

ww_ledr(6) <= \ledr[6]~output_o\;

ww_ledr(7) <= \ledr[7]~output_o\;

ww_hex0(0) <= \hex0[0]~output_o\;

ww_hex0(1) <= \hex0[1]~output_o\;

ww_hex0(2) <= \hex0[2]~output_o\;

ww_hex0(3) <= \hex0[3]~output_o\;

ww_hex0(4) <= \hex0[4]~output_o\;

ww_hex0(5) <= \hex0[5]~output_o\;

ww_hex0(6) <= \hex0[6]~output_o\;

ww_hex1(0) <= \hex1[0]~output_o\;

ww_hex1(1) <= \hex1[1]~output_o\;

ww_hex1(2) <= \hex1[2]~output_o\;

ww_hex1(3) <= \hex1[3]~output_o\;

ww_hex1(4) <= \hex1[4]~output_o\;

ww_hex1(5) <= \hex1[5]~output_o\;

ww_hex1(6) <= \hex1[6]~output_o\;

ww_hex2(0) <= \hex2[0]~output_o\;

ww_hex2(1) <= \hex2[1]~output_o\;

ww_hex2(2) <= \hex2[2]~output_o\;

ww_hex2(3) <= \hex2[3]~output_o\;

ww_hex2(4) <= \hex2[4]~output_o\;

ww_hex2(5) <= \hex2[5]~output_o\;

ww_hex2(6) <= \hex2[6]~output_o\;

ww_hex3(0) <= \hex3[0]~output_o\;

ww_hex3(1) <= \hex3[1]~output_o\;

ww_hex3(2) <= \hex3[2]~output_o\;

ww_hex3(3) <= \hex3[3]~output_o\;

ww_hex3(4) <= \hex3[4]~output_o\;

ww_hex3(5) <= \hex3[5]~output_o\;

ww_hex3(6) <= \hex3[6]~output_o\;

ww_hex4(0) <= \hex4[0]~output_o\;

ww_hex4(1) <= \hex4[1]~output_o\;

ww_hex4(2) <= \hex4[2]~output_o\;

ww_hex4(3) <= \hex4[3]~output_o\;

ww_hex4(4) <= \hex4[4]~output_o\;

ww_hex4(5) <= \hex4[5]~output_o\;

ww_hex4(6) <= \hex4[6]~output_o\;

ww_hex5(0) <= \hex5[0]~output_o\;

ww_hex5(1) <= \hex5[1]~output_o\;

ww_hex5(2) <= \hex5[2]~output_o\;

ww_hex5(3) <= \hex5[3]~output_o\;

ww_hex5(4) <= \hex5[4]~output_o\;

ww_hex5(5) <= \hex5[5]~output_o\;

ww_hex5(6) <= \hex5[6]~output_o\;
END structure;


