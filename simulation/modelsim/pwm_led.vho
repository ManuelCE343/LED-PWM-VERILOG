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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "02/15/2022 09:55:23"

-- 
-- Device: Altera EP2C5T144C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	pwm_led IS
    PORT (
	clk : IN std_logic;
	led : OUT std_logic_vector(2 DOWNTO 0)
	);
END pwm_led;

-- Design Ports Information
-- led[0]	=>  Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led[1]	=>  Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led[2]	=>  Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF pwm_led IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_led : std_logic_vector(2 DOWNTO 0);
SIGNAL \rtl~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \counter[1]~10_combout\ : std_logic;
SIGNAL \delay_con[5]~12_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
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
SIGNAL \Add1~54_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \LessThan1~4_combout\ : std_logic;
SIGNAL \LessThan1~5_combout\ : std_logic;
SIGNAL \rtl~0_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \Add1~52_combout\ : std_logic;
SIGNAL \Add1~53_combout\ : std_logic;
SIGNAL \Add1~56_combout\ : std_logic;
SIGNAL \Add1~57_combout\ : std_logic;
SIGNAL \Add1~58_combout\ : std_logic;
SIGNAL \Add1~59_combout\ : std_logic;
SIGNAL \Add1~60_combout\ : std_logic;
SIGNAL \Add1~61_combout\ : std_logic;
SIGNAL \Add1~62_combout\ : std_logic;
SIGNAL \Add1~63_combout\ : std_logic;
SIGNAL \Add1~64_combout\ : std_logic;
SIGNAL \Add1~65_combout\ : std_logic;
SIGNAL \Add1~66_combout\ : std_logic;
SIGNAL \Add1~67_combout\ : std_logic;
SIGNAL \Add1~68_combout\ : std_logic;
SIGNAL \Add1~69_combout\ : std_logic;
SIGNAL \Add1~70_combout\ : std_logic;
SIGNAL \Add1~71_combout\ : std_logic;
SIGNAL \Add1~72_combout\ : std_logic;
SIGNAL \Add1~73_combout\ : std_logic;
SIGNAL \Add1~74_combout\ : std_logic;
SIGNAL \Add1~75_combout\ : std_logic;
SIGNAL \Add1~76_combout\ : std_logic;
SIGNAL \Add1~77_combout\ : std_logic;
SIGNAL \Add1~78_combout\ : std_logic;
SIGNAL \Add1~79_combout\ : std_logic;
SIGNAL \Add1~80_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \rtl~0clkctrl_outclk\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \counter[0]~8_combout\ : std_logic;
SIGNAL \counter[5]~18_combout\ : std_logic;
SIGNAL \counter[3]~14_combout\ : std_logic;
SIGNAL \LessThan5~0_combout\ : std_logic;
SIGNAL \LessThan5~1_combout\ : std_logic;
SIGNAL \counter[0]~9\ : std_logic;
SIGNAL \counter[1]~11\ : std_logic;
SIGNAL \counter[2]~12_combout\ : std_logic;
SIGNAL \counter[2]~13\ : std_logic;
SIGNAL \counter[3]~15\ : std_logic;
SIGNAL \counter[4]~16_combout\ : std_logic;
SIGNAL \counter[4]~17\ : std_logic;
SIGNAL \counter[5]~19\ : std_logic;
SIGNAL \counter[6]~20_combout\ : std_logic;
SIGNAL \counter[6]~21\ : std_logic;
SIGNAL \counter[7]~22_combout\ : std_logic;
SIGNAL \delay_con[2]~6_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \delay_con[2]~7\ : std_logic;
SIGNAL \delay_con[3]~8_combout\ : std_logic;
SIGNAL \delay_con[3]~9\ : std_logic;
SIGNAL \delay_con[4]~10_combout\ : std_logic;
SIGNAL \delay_con[4]~11\ : std_logic;
SIGNAL \delay_con[5]~13\ : std_logic;
SIGNAL \delay_con[6]~14_combout\ : std_logic;
SIGNAL \delay_con[6]~15\ : std_logic;
SIGNAL \delay_con[7]~16_combout\ : std_logic;
SIGNAL \LessThan3~1_cout\ : std_logic;
SIGNAL \LessThan3~3_cout\ : std_logic;
SIGNAL \LessThan3~5_cout\ : std_logic;
SIGNAL \LessThan3~7_cout\ : std_logic;
SIGNAL \LessThan3~9_cout\ : std_logic;
SIGNAL \LessThan3~10_combout\ : std_logic;
SIGNAL \LessThan4~0_combout\ : std_logic;
SIGNAL \LessThan4~1_combout\ : std_logic;
SIGNAL delay_con : std_logic_vector(7 DOWNTO 0);
SIGNAL counter : std_logic_vector(7 DOWNTO 0);
SIGNAL c : std_logic_vector(26 DOWNTO 0);
SIGNAL \ALT_INV_LessThan5~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan4~1_combout\ : std_logic;

BEGIN

ww_clk <= clk;
led <= ww_led;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rtl~0clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \rtl~0_combout\);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\ALT_INV_LessThan5~1_combout\ <= NOT \LessThan5~1_combout\;
\ALT_INV_LessThan4~1_combout\ <= NOT \LessThan4~1_combout\;

-- Location: LCFF_X2_Y2_N7
\delay_con[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	datain => \delay_con[5]~12_combout\,
	sclr => \LessThan2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => delay_con(5));

-- Location: LCFF_X1_Y2_N17
\counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[1]~10_combout\,
	sclr => \LessThan5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(1));

-- Location: LCCOMB_X1_Y2_N16
\counter[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[1]~10_combout\ = (counter(1) & (!\counter[0]~9\)) # (!counter(1) & ((\counter[0]~9\) # (GND)))
-- \counter[1]~11\ = CARRY((!\counter[0]~9\) # (!counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datad => VCC,
	cin => \counter[0]~9\,
	combout => \counter[1]~10_combout\,
	cout => \counter[1]~11\);

-- Location: LCCOMB_X2_Y2_N6
\delay_con[5]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \delay_con[5]~12_combout\ = (delay_con(5) & (!\delay_con[4]~11\)) # (!delay_con(5) & ((\delay_con[4]~11\) # (GND)))
-- \delay_con[5]~13\ = CARRY((!\delay_con[4]~11\) # (!delay_con(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_con(5),
	datad => VCC,
	cin => \delay_con[4]~11\,
	combout => \delay_con[5]~12_combout\,
	cout => \delay_con[5]~13\);

-- Location: LCCOMB_X6_Y4_N6
\Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = c(0) $ (GND)
-- \Add1~1\ = CARRY(!c(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => c(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X6_Y4_N8
\Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (c(1) & ((\Add1~1\) # (GND))) # (!c(1) & (!\Add1~1\))
-- \Add1~3\ = CARRY((c(1)) # (!\Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => c(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X6_Y4_N10
\Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (c(2) & (!\Add1~3\ & VCC)) # (!c(2) & (\Add1~3\ $ (GND)))
-- \Add1~5\ = CARRY((!c(2) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => c(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X6_Y4_N12
\Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (c(3) & ((\Add1~5\) # (GND))) # (!c(3) & (!\Add1~5\))
-- \Add1~7\ = CARRY((c(3)) # (!\Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => c(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X6_Y4_N14
\Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (c(4) & (!\Add1~7\ & VCC)) # (!c(4) & (\Add1~7\ $ (GND)))
-- \Add1~9\ = CARRY((!c(4) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => c(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X6_Y4_N16
\Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (c(5) & ((\Add1~9\) # (GND))) # (!c(5) & (!\Add1~9\))
-- \Add1~11\ = CARRY((c(5)) # (!\Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => c(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X6_Y4_N18
\Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (c(6) & (!\Add1~11\ & VCC)) # (!c(6) & (\Add1~11\ $ (GND)))
-- \Add1~13\ = CARRY((!c(6) & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => c(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X6_Y4_N20
\Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (c(7) & ((\Add1~13\) # (GND))) # (!c(7) & (!\Add1~13\))
-- \Add1~15\ = CARRY((c(7)) # (!\Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => c(7),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X6_Y4_N22
\Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (c(8) & (!\Add1~15\ & VCC)) # (!c(8) & (\Add1~15\ $ (GND)))
-- \Add1~17\ = CARRY((!c(8) & !\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => c(8),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X6_Y4_N24
\Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (c(9) & ((\Add1~17\) # (GND))) # (!c(9) & (!\Add1~17\))
-- \Add1~19\ = CARRY((c(9)) # (!\Add1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => c(9),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X6_Y4_N26
\Add1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (c(10) & (!\Add1~19\ & VCC)) # (!c(10) & (\Add1~19\ $ (GND)))
-- \Add1~21\ = CARRY((!c(10) & !\Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => c(10),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: LCCOMB_X6_Y4_N28
\Add1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (c(11) & ((\Add1~21\) # (GND))) # (!c(11) & (!\Add1~21\))
-- \Add1~23\ = CARRY((c(11)) # (!\Add1~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => c(11),
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: LCCOMB_X6_Y4_N30
\Add1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = (c(12) & (!\Add1~23\ & VCC)) # (!c(12) & (\Add1~23\ $ (GND)))
-- \Add1~25\ = CARRY((!c(12) & !\Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => c(12),
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: LCCOMB_X6_Y3_N0
\Add1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (c(13) & ((\Add1~25\) # (GND))) # (!c(13) & (!\Add1~25\))
-- \Add1~27\ = CARRY((c(13)) # (!\Add1~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => c(13),
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: LCCOMB_X6_Y3_N2
\Add1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = (c(14) & (!\Add1~27\ & VCC)) # (!c(14) & (\Add1~27\ $ (GND)))
-- \Add1~29\ = CARRY((!c(14) & !\Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => c(14),
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: LCCOMB_X6_Y3_N4
\Add1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (c(15) & ((\Add1~29\) # (GND))) # (!c(15) & (!\Add1~29\))
-- \Add1~31\ = CARRY((c(15)) # (!\Add1~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => c(15),
	datad => VCC,
	cin => \Add1~29\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

-- Location: LCCOMB_X6_Y3_N6
\Add1~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = (c(16) & (!\Add1~31\ & VCC)) # (!c(16) & (\Add1~31\ $ (GND)))
-- \Add1~33\ = CARRY((!c(16) & !\Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => c(16),
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~32_combout\,
	cout => \Add1~33\);

-- Location: LCCOMB_X6_Y3_N8
\Add1~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~34_combout\ = (c(17) & ((\Add1~33\) # (GND))) # (!c(17) & (!\Add1~33\))
-- \Add1~35\ = CARRY((c(17)) # (!\Add1~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => c(17),
	datad => VCC,
	cin => \Add1~33\,
	combout => \Add1~34_combout\,
	cout => \Add1~35\);

-- Location: LCCOMB_X6_Y3_N10
\Add1~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = (c(18) & (!\Add1~35\ & VCC)) # (!c(18) & (\Add1~35\ $ (GND)))
-- \Add1~37\ = CARRY((!c(18) & !\Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => c(18),
	datad => VCC,
	cin => \Add1~35\,
	combout => \Add1~36_combout\,
	cout => \Add1~37\);

-- Location: LCCOMB_X6_Y3_N12
\Add1~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~38_combout\ = (c(19) & ((\Add1~37\) # (GND))) # (!c(19) & (!\Add1~37\))
-- \Add1~39\ = CARRY((c(19)) # (!\Add1~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => c(19),
	datad => VCC,
	cin => \Add1~37\,
	combout => \Add1~38_combout\,
	cout => \Add1~39\);

-- Location: LCCOMB_X6_Y3_N14
\Add1~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~40_combout\ = (c(20) & (!\Add1~39\ & VCC)) # (!c(20) & (\Add1~39\ $ (GND)))
-- \Add1~41\ = CARRY((!c(20) & !\Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => c(20),
	datad => VCC,
	cin => \Add1~39\,
	combout => \Add1~40_combout\,
	cout => \Add1~41\);

-- Location: LCCOMB_X6_Y3_N16
\Add1~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~42_combout\ = (c(21) & ((\Add1~41\) # (GND))) # (!c(21) & (!\Add1~41\))
-- \Add1~43\ = CARRY((c(21)) # (!\Add1~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => c(21),
	datad => VCC,
	cin => \Add1~41\,
	combout => \Add1~42_combout\,
	cout => \Add1~43\);

-- Location: LCCOMB_X6_Y3_N18
\Add1~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~44_combout\ = (c(22) & (!\Add1~43\ & VCC)) # (!c(22) & (\Add1~43\ $ (GND)))
-- \Add1~45\ = CARRY((!c(22) & !\Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => c(22),
	datad => VCC,
	cin => \Add1~43\,
	combout => \Add1~44_combout\,
	cout => \Add1~45\);

-- Location: LCCOMB_X6_Y3_N20
\Add1~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~46_combout\ = (c(23) & ((\Add1~45\) # (GND))) # (!c(23) & (!\Add1~45\))
-- \Add1~47\ = CARRY((c(23)) # (!\Add1~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => c(23),
	datad => VCC,
	cin => \Add1~45\,
	combout => \Add1~46_combout\,
	cout => \Add1~47\);

-- Location: LCCOMB_X6_Y3_N22
\Add1~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~48_combout\ = (c(24) & (!\Add1~47\ & VCC)) # (!c(24) & (\Add1~47\ $ (GND)))
-- \Add1~49\ = CARRY((!c(24) & !\Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => c(24),
	datad => VCC,
	cin => \Add1~47\,
	combout => \Add1~48_combout\,
	cout => \Add1~49\);

-- Location: LCCOMB_X6_Y3_N24
\Add1~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~50_combout\ = (c(25) & ((\Add1~49\) # (GND))) # (!c(25) & (!\Add1~49\))
-- \Add1~51\ = CARRY((c(25)) # (!\Add1~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => c(25),
	datad => VCC,
	cin => \Add1~49\,
	combout => \Add1~50_combout\,
	cout => \Add1~51\);

-- Location: LCCOMB_X6_Y3_N26
\Add1~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~54_combout\ = \Add1~51\ $ (c(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => c(26),
	cin => \Add1~51\,
	combout => \Add1~54_combout\);

-- Location: LCFF_X7_Y3_N21
\c[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \Add1~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => c(25));

-- Location: LCFF_X6_Y3_N31
\c[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \Add1~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => c(24));

-- Location: LCFF_X6_Y3_N29
\c[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \Add1~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => c(26));

-- Location: LCFF_X7_Y3_N15
\c[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \Add1~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => c(20));

-- Location: LCFF_X7_Y3_N1
\c[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \Add1~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => c(21));

-- Location: LCFF_X7_Y3_N29
\c[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \Add1~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => c(22));

-- Location: LCFF_X7_Y3_N13
\c[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \Add1~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => c(23));

-- Location: LCCOMB_X7_Y3_N16
\LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (!c(23) & (!c(22) & (!c(20) & !c(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => c(23),
	datab => c(22),
	datac => c(20),
	datad => c(21),
	combout => \LessThan1~0_combout\);

-- Location: LCFF_X7_Y3_N9
\c[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \Add1~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => c(19));

-- Location: LCFF_X8_Y4_N11
\c[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \Add1~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => c(12));

-- Location: LCFF_X7_Y4_N25
\c[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \Add1~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => c(13));

-- Location: LCFF_X7_Y4_N31
\c[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \Add1~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => c(14));

-- Location: LCFF_X7_Y4_N1
\c[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \Add1~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => c(15));

-- Location: LCCOMB_X8_Y4_N20
\LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (!c(15) & (!c(13) & (!c(14) & !c(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => c(15),
	datab => c(13),
	datac => c(14),
	datad => c(12),
	combout => \LessThan1~1_combout\);

-- Location: LCFF_X5_Y4_N31
\c[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \Add1~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => c(7));

-- Location: LCFF_X7_Y4_N7
\c[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \Add1~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => c(8));

-- Location: LCFF_X7_Y4_N27
\c[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \Add1~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => c(9));

-- Location: LCFF_X7_Y4_N21
\c[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add1~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => c(10));

-- Location: LCFF_X7_Y4_N5
\c[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \Add1~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => c(11));

-- Location: LCCOMB_X7_Y4_N22
\LessThan1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (c(8) & (c(11) & (c(10) & c(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => c(8),
	datab => c(11),
	datac => c(10),
	datad => c(9),
	combout => \LessThan1~2_combout\);

-- Location: LCFF_X7_Y3_N25
\c[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \Add1~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => c(17));

-- Location: LCCOMB_X8_Y4_N24
\LessThan1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = (\LessThan1~1_combout\ & (!c(17) & ((!c(7)) # (!\LessThan1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~1_combout\,
	datab => \LessThan1~2_combout\,
	datac => c(7),
	datad => c(17),
	combout => \LessThan1~3_combout\);

-- Location: LCFF_X7_Y4_N17
\c[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \Add1~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => c(16));

-- Location: LCFF_X7_Y3_N31
\c[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \Add1~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => c(18));

-- Location: LCCOMB_X7_Y3_N18
\LessThan1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~4_combout\ = (c(18) & ((c(17)) # (c(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => c(17),
	datac => c(16),
	datad => c(18),
	combout => \LessThan1~4_combout\);

-- Location: LCCOMB_X7_Y3_N26
\LessThan1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~5_combout\ = (\LessThan1~0_combout\ & (!c(19) & ((\LessThan1~3_combout\) # (!\LessThan1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~0_combout\,
	datab => c(19),
	datac => \LessThan1~3_combout\,
	datad => \LessThan1~4_combout\,
	combout => \LessThan1~5_combout\);

-- Location: LCCOMB_X7_Y3_N22
\rtl~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtl~0_combout\ = LCELL((c(26) & ((c(25)) # ((c(24) & !\LessThan1~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => c(24),
	datab => c(26),
	datac => c(25),
	datad => \LessThan1~5_combout\,
	combout => \rtl~0_combout\);

-- Location: LCCOMB_X7_Y4_N14
\LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (c(16)) # ((c(15)) # ((c(13)) # (c(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => c(16),
	datab => c(15),
	datac => c(13),
	datad => c(14),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X7_Y4_N28
\LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (c(17) & ((\LessThan0~0_combout\) # ((c(12) & \LessThan1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => c(12),
	datab => c(17),
	datac => \LessThan0~0_combout\,
	datad => \LessThan1~2_combout\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X7_Y4_N12
\LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (c(24)) # ((c(19) & ((c(18)) # (\LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => c(24),
	datab => c(19),
	datac => c(18),
	datad => \LessThan0~1_combout\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X7_Y4_N2
\LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (c(26)) # ((c(25) & ((\LessThan0~2_combout\) # (!\LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => c(26),
	datab => c(25),
	datac => \LessThan1~0_combout\,
	datad => \LessThan0~2_combout\,
	combout => \LessThan0~3_combout\);

-- Location: LCFF_X6_Y4_N5
\c[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add1~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => c(6));

-- Location: LCFF_X8_Y4_N29
\c[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add1~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => c(5));

-- Location: LCFF_X6_Y4_N3
\c[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add1~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => c(4));

-- Location: LCFF_X7_Y4_N11
\c[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add1~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => c(3));

-- Location: LCFF_X7_Y4_N9
\c[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add1~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => c(2));

-- Location: LCFF_X6_Y4_N1
\c[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add1~79_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => c(1));

-- Location: LCFF_X7_Y4_N19
\c[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add1~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => c(0));

-- Location: LCCOMB_X7_Y3_N20
\Add1~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~52_combout\ = (!\Add1~50_combout\) # (!\LessThan0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan0~3_combout\,
	datad => \Add1~50_combout\,
	combout => \Add1~52_combout\);

-- Location: LCCOMB_X6_Y3_N30
\Add1~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~53_combout\ = (!\Add1~48_combout\) # (!\LessThan0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan0~3_combout\,
	datad => \Add1~48_combout\,
	combout => \Add1~53_combout\);

-- Location: LCCOMB_X6_Y3_N28
\Add1~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~56_combout\ = (!\Add1~54_combout\) # (!\LessThan0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan0~3_combout\,
	datad => \Add1~54_combout\,
	combout => \Add1~56_combout\);

-- Location: LCCOMB_X7_Y3_N14
\Add1~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~57_combout\ = (!\Add1~40_combout\) # (!\LessThan0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan0~3_combout\,
	datad => \Add1~40_combout\,
	combout => \Add1~57_combout\);

-- Location: LCCOMB_X7_Y3_N0
\Add1~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~58_combout\ = (!\Add1~42_combout\) # (!\LessThan0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan0~3_combout\,
	datad => \Add1~42_combout\,
	combout => \Add1~58_combout\);

-- Location: LCCOMB_X7_Y3_N28
\Add1~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~59_combout\ = (!\Add1~44_combout\) # (!\LessThan0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan0~3_combout\,
	datad => \Add1~44_combout\,
	combout => \Add1~59_combout\);

-- Location: LCCOMB_X7_Y3_N12
\Add1~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~60_combout\ = (!\LessThan0~3_combout\) # (!\Add1~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~46_combout\,
	datad => \LessThan0~3_combout\,
	combout => \Add1~60_combout\);

-- Location: LCCOMB_X7_Y3_N8
\Add1~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~61_combout\ = (!\Add1~38_combout\) # (!\LessThan0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan0~3_combout\,
	datad => \Add1~38_combout\,
	combout => \Add1~61_combout\);

-- Location: LCCOMB_X8_Y4_N10
\Add1~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~62_combout\ = (!\LessThan0~3_combout\) # (!\Add1~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~24_combout\,
	datad => \LessThan0~3_combout\,
	combout => \Add1~62_combout\);

-- Location: LCCOMB_X7_Y4_N24
\Add1~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~63_combout\ = (!\Add1~26_combout\) # (!\LessThan0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~3_combout\,
	datad => \Add1~26_combout\,
	combout => \Add1~63_combout\);

-- Location: LCCOMB_X7_Y4_N30
\Add1~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~64_combout\ = (!\LessThan0~3_combout\) # (!\Add1~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~28_combout\,
	datad => \LessThan0~3_combout\,
	combout => \Add1~64_combout\);

-- Location: LCCOMB_X7_Y4_N0
\Add1~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~65_combout\ = (!\Add1~30_combout\) # (!\LessThan0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~3_combout\,
	datad => \Add1~30_combout\,
	combout => \Add1~65_combout\);

-- Location: LCCOMB_X5_Y4_N30
\Add1~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~66_combout\ = (!\Add1~14_combout\) # (!\LessThan0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan0~3_combout\,
	datad => \Add1~14_combout\,
	combout => \Add1~66_combout\);

-- Location: LCCOMB_X7_Y4_N6
\Add1~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~67_combout\ = (!\Add1~16_combout\) # (!\LessThan0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~3_combout\,
	datad => \Add1~16_combout\,
	combout => \Add1~67_combout\);

-- Location: LCCOMB_X7_Y4_N26
\Add1~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~68_combout\ = (!\Add1~18_combout\) # (!\LessThan0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~3_combout\,
	datad => \Add1~18_combout\,
	combout => \Add1~68_combout\);

-- Location: LCCOMB_X7_Y4_N20
\Add1~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~69_combout\ = (!\LessThan0~3_combout\) # (!\Add1~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~20_combout\,
	datad => \LessThan0~3_combout\,
	combout => \Add1~69_combout\);

-- Location: LCCOMB_X7_Y4_N4
\Add1~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~70_combout\ = (!\Add1~22_combout\) # (!\LessThan0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~3_combout\,
	datad => \Add1~22_combout\,
	combout => \Add1~70_combout\);

-- Location: LCCOMB_X7_Y3_N24
\Add1~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~71_combout\ = (!\Add1~34_combout\) # (!\LessThan0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan0~3_combout\,
	datad => \Add1~34_combout\,
	combout => \Add1~71_combout\);

-- Location: LCCOMB_X7_Y4_N16
\Add1~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~72_combout\ = (!\LessThan0~3_combout\) # (!\Add1~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~32_combout\,
	datad => \LessThan0~3_combout\,
	combout => \Add1~72_combout\);

-- Location: LCCOMB_X7_Y3_N30
\Add1~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~73_combout\ = (!\Add1~36_combout\) # (!\LessThan0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan0~3_combout\,
	datad => \Add1~36_combout\,
	combout => \Add1~73_combout\);

-- Location: LCCOMB_X6_Y4_N4
\Add1~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~74_combout\ = (!\LessThan0~3_combout\) # (!\Add1~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~12_combout\,
	datad => \LessThan0~3_combout\,
	combout => \Add1~74_combout\);

-- Location: LCCOMB_X8_Y4_N28
\Add1~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~75_combout\ = (!\LessThan0~3_combout\) # (!\Add1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~10_combout\,
	datad => \LessThan0~3_combout\,
	combout => \Add1~75_combout\);

-- Location: LCCOMB_X6_Y4_N2
\Add1~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~76_combout\ = (!\LessThan0~3_combout\) # (!\Add1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~8_combout\,
	datad => \LessThan0~3_combout\,
	combout => \Add1~76_combout\);

-- Location: LCCOMB_X7_Y4_N10
\Add1~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~77_combout\ = (!\Add1~6_combout\) # (!\LessThan0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~3_combout\,
	datad => \Add1~6_combout\,
	combout => \Add1~77_combout\);

-- Location: LCCOMB_X7_Y4_N8
\Add1~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~78_combout\ = (!\LessThan0~3_combout\) # (!\Add1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~4_combout\,
	datad => \LessThan0~3_combout\,
	combout => \Add1~78_combout\);

-- Location: LCCOMB_X6_Y4_N0
\Add1~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~79_combout\ = (!\LessThan0~3_combout\) # (!\Add1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~2_combout\,
	datad => \LessThan0~3_combout\,
	combout => \Add1~79_combout\);

-- Location: LCCOMB_X7_Y4_N18
\Add1~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~80_combout\ = (!\LessThan0~3_combout\) # (!\Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~0_combout\,
	datad => \LessThan0~3_combout\,
	combout => \Add1~80_combout\);

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G3
\rtl~0clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~0clkctrl_outclk\);

-- Location: CLKCTRL_G2
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: LCCOMB_X1_Y2_N14
\counter[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[0]~8_combout\ = counter(0) $ (VCC)
-- \counter[0]~9\ = CARRY(counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(0),
	datad => VCC,
	combout => \counter[0]~8_combout\,
	cout => \counter[0]~9\);

-- Location: LCCOMB_X1_Y2_N24
\counter[5]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[5]~18_combout\ = (counter(5) & (!\counter[4]~17\)) # (!counter(5) & ((\counter[4]~17\) # (GND)))
-- \counter[5]~19\ = CARRY((!\counter[4]~17\) # (!counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(5),
	datad => VCC,
	cin => \counter[4]~17\,
	combout => \counter[5]~18_combout\,
	cout => \counter[5]~19\);

-- Location: LCFF_X1_Y2_N25
\counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[5]~18_combout\,
	sclr => \LessThan5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(5));

-- Location: LCCOMB_X1_Y2_N20
\counter[3]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[3]~14_combout\ = (counter(3) & (!\counter[2]~13\)) # (!counter(3) & ((\counter[2]~13\) # (GND)))
-- \counter[3]~15\ = CARRY((!\counter[2]~13\) # (!counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datad => VCC,
	cin => \counter[2]~13\,
	combout => \counter[3]~14_combout\,
	cout => \counter[3]~15\);

-- Location: LCFF_X1_Y2_N21
\counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[3]~14_combout\,
	sclr => \LessThan5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(3));

-- Location: LCCOMB_X1_Y2_N30
\LessThan5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan5~0_combout\ = (!counter(2) & (!counter(3) & !counter(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(2),
	datac => counter(3),
	datad => counter(4),
	combout => \LessThan5~0_combout\);

-- Location: LCCOMB_X1_Y2_N10
\LessThan5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan5~1_combout\ = (counter(7)) # ((counter(6) & (counter(5) & !\LessThan5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(6),
	datab => counter(7),
	datac => counter(5),
	datad => \LessThan5~0_combout\,
	combout => \LessThan5~1_combout\);

-- Location: LCFF_X1_Y2_N15
\counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[0]~8_combout\,
	sclr => \LessThan5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(0));

-- Location: LCCOMB_X1_Y2_N18
\counter[2]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[2]~12_combout\ = (counter(2) & (\counter[1]~11\ $ (GND))) # (!counter(2) & (!\counter[1]~11\ & VCC))
-- \counter[2]~13\ = CARRY((counter(2) & !\counter[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(2),
	datad => VCC,
	cin => \counter[1]~11\,
	combout => \counter[2]~12_combout\,
	cout => \counter[2]~13\);

-- Location: LCFF_X1_Y2_N19
\counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[2]~12_combout\,
	sclr => \LessThan5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(2));

-- Location: LCCOMB_X1_Y2_N22
\counter[4]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[4]~16_combout\ = (counter(4) & (\counter[3]~15\ $ (GND))) # (!counter(4) & (!\counter[3]~15\ & VCC))
-- \counter[4]~17\ = CARRY((counter(4) & !\counter[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(4),
	datad => VCC,
	cin => \counter[3]~15\,
	combout => \counter[4]~16_combout\,
	cout => \counter[4]~17\);

-- Location: LCFF_X1_Y2_N23
\counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[4]~16_combout\,
	sclr => \LessThan5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(4));

-- Location: LCCOMB_X1_Y2_N26
\counter[6]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[6]~20_combout\ = (counter(6) & (\counter[5]~19\ $ (GND))) # (!counter(6) & (!\counter[5]~19\ & VCC))
-- \counter[6]~21\ = CARRY((counter(6) & !\counter[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(6),
	datad => VCC,
	cin => \counter[5]~19\,
	combout => \counter[6]~20_combout\,
	cout => \counter[6]~21\);

-- Location: LCFF_X1_Y2_N27
\counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[6]~20_combout\,
	sclr => \LessThan5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(6));

-- Location: LCCOMB_X1_Y2_N28
\counter[7]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[7]~22_combout\ = \counter[6]~21\ $ (counter(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => counter(7),
	cin => \counter[6]~21\,
	combout => \counter[7]~22_combout\);

-- Location: LCFF_X1_Y2_N29
\counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[7]~22_combout\,
	sclr => \LessThan5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(7));

-- Location: LCCOMB_X2_Y2_N0
\delay_con[2]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \delay_con[2]~6_combout\ = delay_con(2) $ (VCC)
-- \delay_con[2]~7\ = CARRY(delay_con(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => delay_con(2),
	datad => VCC,
	combout => \delay_con[2]~6_combout\,
	cout => \delay_con[2]~7\);

-- Location: LCCOMB_X2_Y2_N12
\LessThan2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = ((!delay_con(3) & (!delay_con(4) & !delay_con(2)))) # (!delay_con(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_con(5),
	datab => delay_con(3),
	datac => delay_con(4),
	datad => delay_con(2),
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X2_Y2_N14
\LessThan2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = (delay_con(7)) # ((delay_con(6) & !\LessThan2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_con(7),
	datac => delay_con(6),
	datad => \LessThan2~0_combout\,
	combout => \LessThan2~1_combout\);

-- Location: LCFF_X2_Y2_N1
\delay_con[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	datain => \delay_con[2]~6_combout\,
	sclr => \LessThan2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => delay_con(2));

-- Location: LCCOMB_X2_Y2_N2
\delay_con[3]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \delay_con[3]~8_combout\ = (delay_con(3) & (!\delay_con[2]~7\)) # (!delay_con(3) & ((\delay_con[2]~7\) # (GND)))
-- \delay_con[3]~9\ = CARRY((!\delay_con[2]~7\) # (!delay_con(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_con(3),
	datad => VCC,
	cin => \delay_con[2]~7\,
	combout => \delay_con[3]~8_combout\,
	cout => \delay_con[3]~9\);

-- Location: LCFF_X2_Y2_N3
\delay_con[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	datain => \delay_con[3]~8_combout\,
	sclr => \LessThan2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => delay_con(3));

-- Location: LCCOMB_X2_Y2_N4
\delay_con[4]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \delay_con[4]~10_combout\ = (delay_con(4) & (\delay_con[3]~9\ $ (GND))) # (!delay_con(4) & (!\delay_con[3]~9\ & VCC))
-- \delay_con[4]~11\ = CARRY((delay_con(4) & !\delay_con[3]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_con(4),
	datad => VCC,
	cin => \delay_con[3]~9\,
	combout => \delay_con[4]~10_combout\,
	cout => \delay_con[4]~11\);

-- Location: LCFF_X2_Y2_N5
\delay_con[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	datain => \delay_con[4]~10_combout\,
	sclr => \LessThan2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => delay_con(4));

-- Location: LCCOMB_X2_Y2_N8
\delay_con[6]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \delay_con[6]~14_combout\ = (delay_con(6) & (\delay_con[5]~13\ $ (GND))) # (!delay_con(6) & (!\delay_con[5]~13\ & VCC))
-- \delay_con[6]~15\ = CARRY((delay_con(6) & !\delay_con[5]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_con(6),
	datad => VCC,
	cin => \delay_con[5]~13\,
	combout => \delay_con[6]~14_combout\,
	cout => \delay_con[6]~15\);

-- Location: LCFF_X2_Y2_N9
\delay_con[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	datain => \delay_con[6]~14_combout\,
	sclr => \LessThan2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => delay_con(6));

-- Location: LCCOMB_X2_Y2_N10
\delay_con[7]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \delay_con[7]~16_combout\ = \delay_con[6]~15\ $ (delay_con(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => delay_con(7),
	cin => \delay_con[6]~15\,
	combout => \delay_con[7]~16_combout\);

-- Location: LCFF_X2_Y2_N11
\delay_con[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	datain => \delay_con[7]~16_combout\,
	sclr => \LessThan2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => delay_con(7));

-- Location: LCCOMB_X2_Y2_N18
\LessThan3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan3~1_cout\ = CARRY((delay_con(2) & !counter(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_con(2),
	datab => counter(2),
	datad => VCC,
	cout => \LessThan3~1_cout\);

-- Location: LCCOMB_X2_Y2_N20
\LessThan3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan3~3_cout\ = CARRY((counter(3) & ((!\LessThan3~1_cout\) # (!delay_con(3)))) # (!counter(3) & (!delay_con(3) & !\LessThan3~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datab => delay_con(3),
	datad => VCC,
	cin => \LessThan3~1_cout\,
	cout => \LessThan3~3_cout\);

-- Location: LCCOMB_X2_Y2_N22
\LessThan3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan3~5_cout\ = CARRY((delay_con(4) & ((!\LessThan3~3_cout\) # (!counter(4)))) # (!delay_con(4) & (!counter(4) & !\LessThan3~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_con(4),
	datab => counter(4),
	datad => VCC,
	cin => \LessThan3~3_cout\,
	cout => \LessThan3~5_cout\);

-- Location: LCCOMB_X2_Y2_N24
\LessThan3~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan3~7_cout\ = CARRY((delay_con(5) & (counter(5) & !\LessThan3~5_cout\)) # (!delay_con(5) & ((counter(5)) # (!\LessThan3~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_con(5),
	datab => counter(5),
	datad => VCC,
	cin => \LessThan3~5_cout\,
	cout => \LessThan3~7_cout\);

-- Location: LCCOMB_X2_Y2_N26
\LessThan3~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan3~9_cout\ = CARRY((counter(6) & (delay_con(6) & !\LessThan3~7_cout\)) # (!counter(6) & ((delay_con(6)) # (!\LessThan3~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(6),
	datab => delay_con(6),
	datad => VCC,
	cin => \LessThan3~7_cout\,
	cout => \LessThan3~9_cout\);

-- Location: LCCOMB_X2_Y2_N28
\LessThan3~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan3~10_combout\ = (counter(7) & (\LessThan3~9_cout\ & delay_con(7))) # (!counter(7) & ((\LessThan3~9_cout\) # (delay_con(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(7),
	datad => delay_con(7),
	cin => \LessThan3~9_cout\,
	combout => \LessThan3~10_combout\);

-- Location: LCCOMB_X1_Y2_N0
\LessThan4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan4~0_combout\ = (counter(1)) # ((counter(6)) # ((counter(5)) # (counter(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => counter(6),
	datac => counter(5),
	datad => counter(7),
	combout => \LessThan4~0_combout\);

-- Location: LCCOMB_X1_Y2_N12
\LessThan4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan4~1_combout\ = (\LessThan4~0_combout\) # ((counter(0)) # (!\LessThan5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan4~0_combout\,
	datac => \LessThan5~0_combout\,
	datad => counter(0),
	combout => \LessThan4~1_combout\);

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LessThan3~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led(0));

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_LessThan4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led(1));

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_LessThan5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led(2));
END structure;


