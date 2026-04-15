-- Copyright (C) 2025  Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Altera and sold by Altera or its authorized distributors.  Please
-- refer to the Altera Software License Subscription Agreements 
-- on the Quartus Prime software download page.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 25.1std.0 Build 1129 10/21/2025 SC Lite Edition"

-- DATE "04/15/2026 15:26:37"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for Questa Altera FPGA (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	DE2_115_TOP IS
    PORT (
	CLOCK_50 : IN std_logic;
	CLOCK2_50 : IN std_logic;
	CLOCK3_50 : IN std_logic;
	SMA_CLKIN : IN std_logic;
	SMA_CLKOUT : OUT std_logic;
	GPIO : IN std_logic_vector(3 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(17 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	HEX6 : OUT std_logic_vector(6 DOWNTO 0);
	HEX7 : OUT std_logic_vector(6 DOWNTO 0);
	LEDG : OUT std_logic_vector(8 DOWNTO 0);
	LEDR : OUT std_logic_vector(17 DOWNTO 0);
	UART_CTS : OUT std_logic;
	UART_RTS : IN std_logic;
	UART_RXD : IN std_logic;
	UART_TXD : OUT std_logic;
	LCD_BLON : OUT std_logic;
	LCD_EN : OUT std_logic;
	LCD_ON : OUT std_logic;
	LCD_RS : OUT std_logic;
	LCD_RW : OUT std_logic;
	LCD_DATA : INOUT std_logic_vector(7 DOWNTO 0);
	PS2_CLK : INOUT std_logic;
	PS2_DAT : INOUT std_logic;
	PS2_CLK2 : INOUT std_logic;
	PS2_DAT2 : INOUT std_logic;
	VGA_BLANK_N : OUT std_logic;
	VGA_CLK : OUT std_logic;
	VGA_HS : OUT std_logic;
	VGA_SYNC_N : OUT std_logic;
	VGA_VS : OUT std_logic;
	VGA_R : OUT std_logic_vector(7 DOWNTO 0);
	VGA_G : OUT std_logic_vector(7 DOWNTO 0);
	VGA_B : OUT std_logic_vector(7 DOWNTO 0);
	SRAM_ADDR : OUT IEEE.NUMERIC_STD.unsigned(19 DOWNTO 0);
	SRAM_DQ : INOUT std_logic_vector(15 DOWNTO 0);
	SRAM_CE_N : OUT std_logic;
	SRAM_LB_N : OUT std_logic;
	SRAM_OE_N : OUT std_logic;
	SRAM_UB_N : OUT std_logic;
	SRAM_WE_N : OUT std_logic;
	AUD_ADCDAT : IN std_logic;
	AUD_ADCLRCK : INOUT std_logic;
	AUD_BCLK : INOUT std_logic;
	AUD_DACDAT : OUT std_logic;
	AUD_DACLRCK : INOUT std_logic;
	AUD_XCK : OUT std_logic
	);
END DE2_115_TOP;

-- Design Ports Information
-- CLOCK2_50	=>  Location: PIN_AG14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK3_50	=>  Location: PIN_AG15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SMA_CLKIN	=>  Location: PIN_AH14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SMA_CLKOUT	=>  Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[3]	=>  Location: PIN_AA21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[4]	=>  Location: PIN_AD24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[5]	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[6]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[0]	=>  Location: PIN_AB19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[1]	=>  Location: PIN_AA19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[2]	=>  Location: PIN_AG21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[3]	=>  Location: PIN_AH21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[4]	=>  Location: PIN_AE19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[5]	=>  Location: PIN_AF19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[6]	=>  Location: PIN_AE18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[0]	=>  Location: PIN_AD18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[1]	=>  Location: PIN_AC18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[2]	=>  Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[3]	=>  Location: PIN_AH19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[4]	=>  Location: PIN_AG19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[5]	=>  Location: PIN_AF18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[6]	=>  Location: PIN_AH18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[0]	=>  Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[1]	=>  Location: PIN_AB16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[2]	=>  Location: PIN_AA16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[3]	=>  Location: PIN_AB17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[4]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[5]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[6]	=>  Location: PIN_AC17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[0]	=>  Location: PIN_AD17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[1]	=>  Location: PIN_AE17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[2]	=>  Location: PIN_AG17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[3]	=>  Location: PIN_AH17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[4]	=>  Location: PIN_AF17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[5]	=>  Location: PIN_AG18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[6]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[4]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[5]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[6]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[7]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[8]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[10]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[11]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[12]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[13]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[14]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[15]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[16]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[17]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UART_CTS	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- UART_RTS	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- UART_RXD	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- UART_TXD	=>  Location: PIN_G9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_BLON	=>  Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_EN	=>  Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_ON	=>  Location: PIN_L5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_RS	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_RW	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_BLANK_N	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_CLK	=>  Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_HS	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_SYNC_N	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_VS	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[0]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[1]	=>  Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[2]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[3]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[4]	=>  Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[5]	=>  Location: PIN_J12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[6]	=>  Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[7]	=>  Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[0]	=>  Location: PIN_G8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[1]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[2]	=>  Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[3]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[4]	=>  Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[5]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[6]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[7]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[0]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[1]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[2]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[3]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[4]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[5]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[6]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[7]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[0]	=>  Location: PIN_AB7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[1]	=>  Location: PIN_AD7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[2]	=>  Location: PIN_AE7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[3]	=>  Location: PIN_AC7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[4]	=>  Location: PIN_AB6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[5]	=>  Location: PIN_AE6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[6]	=>  Location: PIN_AB5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[7]	=>  Location: PIN_AC5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[8]	=>  Location: PIN_AF5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[9]	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[10]	=>  Location: PIN_AF2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[11]	=>  Location: PIN_AD3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[12]	=>  Location: PIN_AB4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[13]	=>  Location: PIN_AC3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[14]	=>  Location: PIN_AA4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[15]	=>  Location: PIN_AB11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[16]	=>  Location: PIN_AC11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[17]	=>  Location: PIN_AB9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[18]	=>  Location: PIN_AB8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[19]	=>  Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_CE_N	=>  Location: PIN_AF8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_LB_N	=>  Location: PIN_AD4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_OE_N	=>  Location: PIN_AD5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_UB_N	=>  Location: PIN_AC4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_WE_N	=>  Location: PIN_AE8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- AUD_ADCDAT	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- AUD_DACDAT	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- AUD_XCK	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_DATA[0]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_DATA[1]	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_DATA[2]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_DATA[3]	=>  Location: PIN_K7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_DATA[4]	=>  Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_DATA[5]	=>  Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_DATA[6]	=>  Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_DATA[7]	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- PS2_CLK	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- PS2_DAT	=>  Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- PS2_CLK2	=>  Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- PS2_DAT2	=>  Location: PIN_F5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_DQ[0]	=>  Location: PIN_AH3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_DQ[1]	=>  Location: PIN_AF4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_DQ[2]	=>  Location: PIN_AG4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_DQ[3]	=>  Location: PIN_AH4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_DQ[4]	=>  Location: PIN_AF6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_DQ[5]	=>  Location: PIN_AG6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_DQ[6]	=>  Location: PIN_AH6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_DQ[7]	=>  Location: PIN_AF7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_DQ[8]	=>  Location: PIN_AD1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_DQ[9]	=>  Location: PIN_AD2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_DQ[10]	=>  Location: PIN_AE2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_DQ[11]	=>  Location: PIN_AE1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_DQ[12]	=>  Location: PIN_AE3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_DQ[13]	=>  Location: PIN_AE4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_DQ[14]	=>  Location: PIN_AF3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_DQ[15]	=>  Location: PIN_AG3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- AUD_ADCLRCK	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- AUD_BCLK	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- AUD_DACLRCK	=>  Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[1]	=>  Location: PIN_AC15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- GPIO[0]	=>  Location: PIN_AB22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- GPIO[3]	=>  Location: PIN_Y17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- GPIO[2]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF DE2_115_TOP IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_CLOCK2_50 : std_logic;
SIGNAL ww_CLOCK3_50 : std_logic;
SIGNAL ww_SMA_CLKIN : std_logic;
SIGNAL ww_SMA_CLKOUT : std_logic;
SIGNAL ww_GPIO : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_UART_CTS : std_logic;
SIGNAL ww_UART_RTS : std_logic;
SIGNAL ww_UART_RXD : std_logic;
SIGNAL ww_UART_TXD : std_logic;
SIGNAL ww_LCD_BLON : std_logic;
SIGNAL ww_LCD_EN : std_logic;
SIGNAL ww_LCD_ON : std_logic;
SIGNAL ww_LCD_RS : std_logic;
SIGNAL ww_LCD_RW : std_logic;
SIGNAL ww_VGA_BLANK_N : std_logic;
SIGNAL ww_VGA_CLK : std_logic;
SIGNAL ww_VGA_HS : std_logic;
SIGNAL ww_VGA_SYNC_N : std_logic;
SIGNAL ww_VGA_VS : std_logic;
SIGNAL ww_VGA_R : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_VGA_G : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_VGA_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_SRAM_ADDR : std_logic_vector(19 DOWNTO 0);
SIGNAL ww_SRAM_CE_N : std_logic;
SIGNAL ww_SRAM_LB_N : std_logic;
SIGNAL ww_SRAM_OE_N : std_logic;
SIGNAL ww_SRAM_UB_N : std_logic;
SIGNAL ww_SRAM_WE_N : std_logic;
SIGNAL ww_AUD_ADCDAT : std_logic;
SIGNAL ww_AUD_DACDAT : std_logic;
SIGNAL ww_AUD_XCK : std_logic;
SIGNAL \U1|video_PLL_inst|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U1|video_PLL_inst|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a5_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a5_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a6_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a6_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a4_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a7_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a7_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a7_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a1_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a1_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a2_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a3_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a3_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a11_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a11_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a11_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a10_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a9_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a9_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a9_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a8_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a8_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a15_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a15_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a15_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a14_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a14_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a13_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a13_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a13_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a12_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a12_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a33_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a33_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a33_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a33_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a34_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a34_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a34_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a34_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a32_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a32_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a32_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a32_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a35_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a35_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a35_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a35_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a37_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a37_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a37_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a37_PORTBDATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a36_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a36_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a36_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a36_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a21_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a21_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a21_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a21_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a22_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a22_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a22_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a22_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a20_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a20_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a20_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a23_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a23_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a23_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a23_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a17_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a17_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a17_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a17_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a18_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a18_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a18_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a16_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a16_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a16_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a19_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a19_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a19_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a19_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a31_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a31_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a31_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a31_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a30_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a30_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a30_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a30_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a27_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a27_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a27_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a27_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a26_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a26_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a26_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a26_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a25_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a25_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a25_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a25_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a24_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a24_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a24_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a24_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a29_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a29_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a29_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a29_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a28_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a28_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a28_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a28_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U1|video_PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK2_50~input_o\ : std_logic;
SIGNAL \CLOCK3_50~input_o\ : std_logic;
SIGNAL \SMA_CLKIN~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \SW[13]~input_o\ : std_logic;
SIGNAL \SW[14]~input_o\ : std_logic;
SIGNAL \SW[15]~input_o\ : std_logic;
SIGNAL \SW[16]~input_o\ : std_logic;
SIGNAL \SW[17]~input_o\ : std_logic;
SIGNAL \UART_RTS~input_o\ : std_logic;
SIGNAL \UART_RXD~input_o\ : std_logic;
SIGNAL \AUD_ADCDAT~input_o\ : std_logic;
SIGNAL \LCD_DATA[0]~input_o\ : std_logic;
SIGNAL \LCD_DATA[1]~input_o\ : std_logic;
SIGNAL \LCD_DATA[2]~input_o\ : std_logic;
SIGNAL \LCD_DATA[3]~input_o\ : std_logic;
SIGNAL \LCD_DATA[4]~input_o\ : std_logic;
SIGNAL \LCD_DATA[5]~input_o\ : std_logic;
SIGNAL \LCD_DATA[6]~input_o\ : std_logic;
SIGNAL \LCD_DATA[7]~input_o\ : std_logic;
SIGNAL \PS2_CLK~input_o\ : std_logic;
SIGNAL \PS2_DAT~input_o\ : std_logic;
SIGNAL \PS2_CLK2~input_o\ : std_logic;
SIGNAL \PS2_DAT2~input_o\ : std_logic;
SIGNAL \SRAM_DQ[0]~input_o\ : std_logic;
SIGNAL \SRAM_DQ[1]~input_o\ : std_logic;
SIGNAL \SRAM_DQ[2]~input_o\ : std_logic;
SIGNAL \SRAM_DQ[3]~input_o\ : std_logic;
SIGNAL \SRAM_DQ[4]~input_o\ : std_logic;
SIGNAL \SRAM_DQ[5]~input_o\ : std_logic;
SIGNAL \SRAM_DQ[6]~input_o\ : std_logic;
SIGNAL \SRAM_DQ[7]~input_o\ : std_logic;
SIGNAL \SRAM_DQ[8]~input_o\ : std_logic;
SIGNAL \SRAM_DQ[9]~input_o\ : std_logic;
SIGNAL \SRAM_DQ[10]~input_o\ : std_logic;
SIGNAL \SRAM_DQ[11]~input_o\ : std_logic;
SIGNAL \SRAM_DQ[12]~input_o\ : std_logic;
SIGNAL \SRAM_DQ[13]~input_o\ : std_logic;
SIGNAL \SRAM_DQ[14]~input_o\ : std_logic;
SIGNAL \SRAM_DQ[15]~input_o\ : std_logic;
SIGNAL \AUD_ADCLRCK~input_o\ : std_logic;
SIGNAL \AUD_BCLK~input_o\ : std_logic;
SIGNAL \AUD_DACLRCK~input_o\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DCLK~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_nCEO~~padout\ : std_logic;
SIGNAL \~ALTERA_DCLK~~obuf_o\ : std_logic;
SIGNAL \~ALTERA_nCEO~~obuf_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \U1|video_PLL_inst|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \U1|video_PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \U1|Add0~0_combout\ : std_logic;
SIGNAL \U1|h_count~3_combout\ : std_logic;
SIGNAL \U1|Add0~1\ : std_logic;
SIGNAL \U1|Add0~2_combout\ : std_logic;
SIGNAL \U1|Add0~3\ : std_logic;
SIGNAL \U1|Add0~4_combout\ : std_logic;
SIGNAL \U1|Equal0~0_combout\ : std_logic;
SIGNAL \U1|Add0~5\ : std_logic;
SIGNAL \U1|Add0~6_combout\ : std_logic;
SIGNAL \U1|Add0~7\ : std_logic;
SIGNAL \U1|Add0~8_combout\ : std_logic;
SIGNAL \U1|Equal0~2_combout\ : std_logic;
SIGNAL \U1|Add0~15\ : std_logic;
SIGNAL \U1|Add0~16_combout\ : std_logic;
SIGNAL \U1|h_count~0_combout\ : std_logic;
SIGNAL \U1|Add0~17\ : std_logic;
SIGNAL \U1|Add0~18_combout\ : std_logic;
SIGNAL \U1|h_count~1_combout\ : std_logic;
SIGNAL \U1|Equal0~3_combout\ : std_logic;
SIGNAL \U1|Add0~9\ : std_logic;
SIGNAL \U1|Add0~10_combout\ : std_logic;
SIGNAL \U1|h_count~2_combout\ : std_logic;
SIGNAL \U1|Add0~11\ : std_logic;
SIGNAL \U1|Add0~12_combout\ : std_logic;
SIGNAL \U1|Add0~13\ : std_logic;
SIGNAL \U1|Add0~14_combout\ : std_logic;
SIGNAL \U1|Equal1~0_combout\ : std_logic;
SIGNAL \U1|Equal0~1_combout\ : std_logic;
SIGNAL \U1|Add1~0_combout\ : std_logic;
SIGNAL \U1|v_count~8_combout\ : std_logic;
SIGNAL \U1|Add1~1\ : std_logic;
SIGNAL \U1|Add1~2_combout\ : std_logic;
SIGNAL \U1|v_count~9_combout\ : std_logic;
SIGNAL \U1|Add1~3\ : std_logic;
SIGNAL \U1|Add1~4_combout\ : std_logic;
SIGNAL \U1|v_count[4]~0_combout\ : std_logic;
SIGNAL \U1|v_count[2]~10_combout\ : std_logic;
SIGNAL \U1|Add1~5\ : std_logic;
SIGNAL \U1|Add1~6_combout\ : std_logic;
SIGNAL \U1|v_count[3]~11_combout\ : std_logic;
SIGNAL \U1|LessThan1~0_combout\ : std_logic;
SIGNAL \U1|process_0~1_combout\ : std_logic;
SIGNAL \U1|process_0~0_combout\ : std_logic;
SIGNAL \U1|process_0~2_combout\ : std_logic;
SIGNAL \U1|Add1~7\ : std_logic;
SIGNAL \U1|Add1~8_combout\ : std_logic;
SIGNAL \U1|v_count[4]~7_combout\ : std_logic;
SIGNAL \U1|Add1~9\ : std_logic;
SIGNAL \U1|Add1~10_combout\ : std_logic;
SIGNAL \U1|v_count[5]~3_combout\ : std_logic;
SIGNAL \U1|Add1~11\ : std_logic;
SIGNAL \U1|Add1~12_combout\ : std_logic;
SIGNAL \U1|v_count[6]~4_combout\ : std_logic;
SIGNAL \U1|LessThan1~1_combout\ : std_logic;
SIGNAL \U1|process_0~3_combout\ : std_logic;
SIGNAL \U1|v_count[6]~1_combout\ : std_logic;
SIGNAL \U1|Add1~13\ : std_logic;
SIGNAL \U1|Add1~14_combout\ : std_logic;
SIGNAL \U1|v_count[7]~5_combout\ : std_logic;
SIGNAL \U1|Add1~15\ : std_logic;
SIGNAL \U1|Add1~16_combout\ : std_logic;
SIGNAL \U1|v_count[8]~6_combout\ : std_logic;
SIGNAL \U1|Add1~17\ : std_logic;
SIGNAL \U1|Add1~18_combout\ : std_logic;
SIGNAL \U1|v_count[9]~2_combout\ : std_logic;
SIGNAL \U1|LessThan6~1_combout\ : std_logic;
SIGNAL \U1|LessThan6~0_combout\ : std_logic;
SIGNAL \U1|LessThan6~2_combout\ : std_logic;
SIGNAL \U1|video_on_v~q\ : std_logic;
SIGNAL \U1|LessThan5~0_combout\ : std_logic;
SIGNAL \U1|video_on_h~q\ : std_logic;
SIGNAL \U1|video_on~0_combout\ : std_logic;
SIGNAL \U1|process_0~4_combout\ : std_logic;
SIGNAL \U1|process_0~6_combout\ : std_logic;
SIGNAL \U1|process_0~5_combout\ : std_logic;
SIGNAL \U1|process_0~7_combout\ : std_logic;
SIGNAL \U1|horiz_sync~q\ : std_logic;
SIGNAL \U1|horiz_sync_out~q\ : std_logic;
SIGNAL \U1|process_0~8_combout\ : std_logic;
SIGNAL \U1|process_0~9_combout\ : std_logic;
SIGNAL \U1|vert_sync~q\ : std_logic;
SIGNAL \U1|vert_sync_out~q\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \GPIO[2]~input_o\ : std_logic;
SIGNAL \U_Y|a_sync1~0_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \U_Y|a_sync1~q\ : std_logic;
SIGNAL \U_Y|a_sync2~q\ : std_logic;
SIGNAL \GPIO[3]~input_o\ : std_logic;
SIGNAL \U_Y|b_sync1~0_combout\ : std_logic;
SIGNAL \U_Y|b_sync1~q\ : std_logic;
SIGNAL \U_Y|b_sync2~feeder_combout\ : std_logic;
SIGNAL \U_Y|b_sync2~q\ : std_logic;
SIGNAL \U_Y|Equal0~0_combout\ : std_logic;
SIGNAL \U_Y|dec_count[0]~0_combout\ : std_logic;
SIGNAL \U_Y|Add1~0_combout\ : std_logic;
SIGNAL \U_Y|Add0~0_combout\ : std_logic;
SIGNAL \U_Y|Mux9~0_combout\ : std_logic;
SIGNAL \U_Y|dec_count[9]~1_combout\ : std_logic;
SIGNAL \U_Y|Add0~1\ : std_logic;
SIGNAL \U_Y|Add0~2_combout\ : std_logic;
SIGNAL \U_Y|Add1~1\ : std_logic;
SIGNAL \U_Y|Add1~2_combout\ : std_logic;
SIGNAL \U_Y|Mux8~0_combout\ : std_logic;
SIGNAL \U_Y|Add0~3\ : std_logic;
SIGNAL \U_Y|Add0~4_combout\ : std_logic;
SIGNAL \U_Y|Add1~3\ : std_logic;
SIGNAL \U_Y|Add1~4_combout\ : std_logic;
SIGNAL \U_Y|Mux7~0_combout\ : std_logic;
SIGNAL \U_Y|Equal4~2_combout\ : std_logic;
SIGNAL \U_Y|Add0~5\ : std_logic;
SIGNAL \U_Y|Add0~6_combout\ : std_logic;
SIGNAL \U_Y|Add1~5\ : std_logic;
SIGNAL \U_Y|Add1~6_combout\ : std_logic;
SIGNAL \U_Y|Mux6~0_combout\ : std_logic;
SIGNAL \U_Y|Mux6~1_combout\ : std_logic;
SIGNAL \U_Y|Add1~7\ : std_logic;
SIGNAL \U_Y|Add1~9\ : std_logic;
SIGNAL \U_Y|Add1~10_combout\ : std_logic;
SIGNAL \U_Y|Add0~7\ : std_logic;
SIGNAL \U_Y|Add0~9\ : std_logic;
SIGNAL \U_Y|Add0~10_combout\ : std_logic;
SIGNAL \U_Y|Mux4~0_combout\ : std_logic;
SIGNAL \U_Y|Add1~11\ : std_logic;
SIGNAL \U_Y|Add1~12_combout\ : std_logic;
SIGNAL \U_Y|Add0~11\ : std_logic;
SIGNAL \U_Y|Add0~12_combout\ : std_logic;
SIGNAL \U_Y|Mux3~0_combout\ : std_logic;
SIGNAL \U_Y|Add0~13\ : std_logic;
SIGNAL \U_Y|Add0~14_combout\ : std_logic;
SIGNAL \U_Y|Add1~13\ : std_logic;
SIGNAL \U_Y|Add1~14_combout\ : std_logic;
SIGNAL \U_Y|Mux2~0_combout\ : std_logic;
SIGNAL \U_Y|Equal4~1_combout\ : std_logic;
SIGNAL \U_Y|Add0~15\ : std_logic;
SIGNAL \U_Y|Add0~17\ : std_logic;
SIGNAL \U_Y|Add0~18_combout\ : std_logic;
SIGNAL \U_Y|Add1~15\ : std_logic;
SIGNAL \U_Y|Add1~17\ : std_logic;
SIGNAL \U_Y|Add1~18_combout\ : std_logic;
SIGNAL \U_Y|Mux0~0_combout\ : std_logic;
SIGNAL \U_Y|Equal4~0_combout\ : std_logic;
SIGNAL \U_Y|Mux5~0_combout\ : std_logic;
SIGNAL \U_Y|Add0~8_combout\ : std_logic;
SIGNAL \U_Y|Add1~8_combout\ : std_logic;
SIGNAL \U_Y|Mux5~1_combout\ : std_logic;
SIGNAL \U_Y|Equal2~0_combout\ : std_logic;
SIGNAL \U_Y|Equal2~1_combout\ : std_logic;
SIGNAL \U_Y|Equal2~2_combout\ : std_logic;
SIGNAL \U_Y|Add0~16_combout\ : std_logic;
SIGNAL \U_Y|Add1~16_combout\ : std_logic;
SIGNAL \U_Y|Mux1~0_combout\ : std_logic;
SIGNAL \U2|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~1\ : std_logic;
SIGNAL \U2|Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~3\ : std_logic;
SIGNAL \U2|Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~5\ : std_logic;
SIGNAL \U2|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~7\ : std_logic;
SIGNAL \U2|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~8_combout\ : std_logic;
SIGNAL \U2|Mod1|auto_generated|divider|divider|StageOut[87]~0_combout\ : std_logic;
SIGNAL \U2|Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~4_combout\ : std_logic;
SIGNAL \U2|Mod1|auto_generated|divider|divider|StageOut[87]~1_combout\ : std_logic;
SIGNAL \U2|Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~2_combout\ : std_logic;
SIGNAL \U2|Mod1|auto_generated|divider|divider|StageOut[86]~3_combout\ : std_logic;
SIGNAL \U2|Mod1|auto_generated|divider|divider|StageOut[86]~2_combout\ : std_logic;
SIGNAL \U2|Mod1|auto_generated|divider|divider|StageOut[85]~4_combout\ : std_logic;
SIGNAL \U2|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~0_combout\ : std_logic;
SIGNAL \U2|Mod1|auto_generated|divider|divider|StageOut[85]~5_combout\ : std_logic;
SIGNAL \U2|Mod1|auto_generated|divider|divider|StageOut[84]~6_combout\ : std_logic;
SIGNAL \U2|Mod1|auto_generated|divider|divider|StageOut[84]~7_combout\ : std_logic;
SIGNAL \U2|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~1\ : std_logic;
SIGNAL \U2|Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~3\ : std_logic;
SIGNAL \U2|Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~5\ : std_logic;
SIGNAL \U2|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~6_combout\ : std_logic;
SIGNAL \U2|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~6_combout\ : std_logic;
SIGNAL \U2|Mod1|auto_generated|divider|divider|StageOut[88]~9_combout\ : std_logic;
SIGNAL \U2|Mod1|auto_generated|divider|divider|StageOut[88]~8_combout\ : std_logic;
SIGNAL \U2|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~7\ : std_logic;
SIGNAL \U2|Mod1|auto_generated|divider|divider|add_sub_9_result_int[9]~9_cout\ : std_logic;
SIGNAL \U2|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~10_combout\ : std_logic;
SIGNAL \U2|Mod1|auto_generated|divider|divider|StageOut[98]~10_combout\ : std_logic;
SIGNAL \U2|Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~4_combout\ : std_logic;
SIGNAL \U2|Mod1|auto_generated|divider|divider|StageOut[97]~11_combout\ : std_logic;
SIGNAL \U2|Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~2_combout\ : std_logic;
SIGNAL \U2|Mod1|auto_generated|divider|divider|StageOut[96]~12_combout\ : std_logic;
SIGNAL \U2|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~0_combout\ : std_logic;
SIGNAL \U2|Mod1|auto_generated|divider|divider|StageOut[95]~13_combout\ : std_logic;
SIGNAL \U2|LessThan4~1_cout\ : std_logic;
SIGNAL \U2|LessThan4~3_cout\ : std_logic;
SIGNAL \U2|LessThan4~5_cout\ : std_logic;
SIGNAL \U2|LessThan4~7_cout\ : std_logic;
SIGNAL \U2|LessThan4~9_cout\ : std_logic;
SIGNAL \U2|LessThan4~11_cout\ : std_logic;
SIGNAL \U2|LessThan4~13_cout\ : std_logic;
SIGNAL \U2|LessThan4~15_cout\ : std_logic;
SIGNAL \U2|LessThan4~16_combout\ : std_logic;
SIGNAL \GPIO[0]~input_o\ : std_logic;
SIGNAL \U_X|a_sync1~0_combout\ : std_logic;
SIGNAL \U_X|a_sync1~q\ : std_logic;
SIGNAL \U_X|a_sync2~q\ : std_logic;
SIGNAL \GPIO[1]~input_o\ : std_logic;
SIGNAL \U_X|b_sync1~0_combout\ : std_logic;
SIGNAL \U_X|b_sync1~q\ : std_logic;
SIGNAL \U_X|b_sync2~feeder_combout\ : std_logic;
SIGNAL \U_X|b_sync2~q\ : std_logic;
SIGNAL \U_X|prev_state[0]~feeder_combout\ : std_logic;
SIGNAL \U_X|Equal0~0_combout\ : std_logic;
SIGNAL \U_X|dec_count[3]~0_combout\ : std_logic;
SIGNAL \U_X|Add0~0_combout\ : std_logic;
SIGNAL \U_X|Add1~0_combout\ : std_logic;
SIGNAL \U_X|Mux9~0_combout\ : std_logic;
SIGNAL \U_X|dec_count[9]~1_combout\ : std_logic;
SIGNAL \U_X|Add1~1\ : std_logic;
SIGNAL \U_X|Add1~2_combout\ : std_logic;
SIGNAL \U_X|Add0~1\ : std_logic;
SIGNAL \U_X|Add0~2_combout\ : std_logic;
SIGNAL \U_X|Mux8~0_combout\ : std_logic;
SIGNAL \U_X|Add0~3\ : std_logic;
SIGNAL \U_X|Add0~4_combout\ : std_logic;
SIGNAL \U_X|Add1~3\ : std_logic;
SIGNAL \U_X|Add1~4_combout\ : std_logic;
SIGNAL \U_X|Mux7~0_combout\ : std_logic;
SIGNAL \U_X|Add0~5\ : std_logic;
SIGNAL \U_X|Add0~6_combout\ : std_logic;
SIGNAL \U_X|Add1~5\ : std_logic;
SIGNAL \U_X|Add1~6_combout\ : std_logic;
SIGNAL \U_X|Equal4~2_combout\ : std_logic;
SIGNAL \U_X|Add1~7\ : std_logic;
SIGNAL \U_X|Add1~8_combout\ : std_logic;
SIGNAL \U_X|Add0~7\ : std_logic;
SIGNAL \U_X|Add0~8_combout\ : std_logic;
SIGNAL \U_X|Mux5~1_combout\ : std_logic;
SIGNAL \U_X|Equal4~0_combout\ : std_logic;
SIGNAL \U_X|Add1~9\ : std_logic;
SIGNAL \U_X|Add1~10_combout\ : std_logic;
SIGNAL \U_X|Add0~9\ : std_logic;
SIGNAL \U_X|Add0~10_combout\ : std_logic;
SIGNAL \U_X|Mux4~0_combout\ : std_logic;
SIGNAL \U_X|Equal4~1_combout\ : std_logic;
SIGNAL \U_X|Mux5~0_combout\ : std_logic;
SIGNAL \U_X|Mux6~0_combout\ : std_logic;
SIGNAL \U_X|Mux6~1_combout\ : std_logic;
SIGNAL \U_X|Equal2~0_combout\ : std_logic;
SIGNAL \U_X|Equal2~1_combout\ : std_logic;
SIGNAL \U_X|Equal2~2_combout\ : std_logic;
SIGNAL \U_X|Add1~11\ : std_logic;
SIGNAL \U_X|Add1~12_combout\ : std_logic;
SIGNAL \U_X|Add0~11\ : std_logic;
SIGNAL \U_X|Add0~12_combout\ : std_logic;
SIGNAL \U_X|Mux3~0_combout\ : std_logic;
SIGNAL \U_X|Add0~13\ : std_logic;
SIGNAL \U_X|Add0~14_combout\ : std_logic;
SIGNAL \U_X|Add1~13\ : std_logic;
SIGNAL \U_X|Add1~14_combout\ : std_logic;
SIGNAL \U_X|Mux2~0_combout\ : std_logic;
SIGNAL \U_X|Add1~15\ : std_logic;
SIGNAL \U_X|Add1~16_combout\ : std_logic;
SIGNAL \U_X|Add0~15\ : std_logic;
SIGNAL \U_X|Add0~16_combout\ : std_logic;
SIGNAL \U_X|Mux1~0_combout\ : std_logic;
SIGNAL \U_X|Add1~17\ : std_logic;
SIGNAL \U_X|Add1~18_combout\ : std_logic;
SIGNAL \U_X|Add0~17\ : std_logic;
SIGNAL \U_X|Add0~18_combout\ : std_logic;
SIGNAL \U_X|Mux0~0_combout\ : std_logic;
SIGNAL \U2|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~1\ : std_logic;
SIGNAL \U2|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~3\ : std_logic;
SIGNAL \U2|Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~5\ : std_logic;
SIGNAL \U2|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~6_combout\ : std_logic;
SIGNAL \U2|Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~4_combout\ : std_logic;
SIGNAL \U2|Mod0|auto_generated|divider|divider|StageOut[99]~0_combout\ : std_logic;
SIGNAL \U2|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~2_combout\ : std_logic;
SIGNAL \U2|Mod0|auto_generated|divider|divider|StageOut[98]~1_combout\ : std_logic;
SIGNAL \U2|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~0_combout\ : std_logic;
SIGNAL \U2|Mod0|auto_generated|divider|divider|StageOut[97]~2_combout\ : std_logic;
SIGNAL \U2|LessThan2~1_cout\ : std_logic;
SIGNAL \U2|LessThan2~3_cout\ : std_logic;
SIGNAL \U2|LessThan2~5_cout\ : std_logic;
SIGNAL \U2|LessThan2~7_cout\ : std_logic;
SIGNAL \U2|LessThan2~9_cout\ : std_logic;
SIGNAL \U2|LessThan2~11_cout\ : std_logic;
SIGNAL \U2|LessThan2~13_cout\ : std_logic;
SIGNAL \U2|LessThan2~15_cout\ : std_logic;
SIGNAL \U2|LessThan2~17_cout\ : std_logic;
SIGNAL \U2|LessThan2~18_combout\ : std_logic;
SIGNAL \U1|green_out[0]~9_combout\ : std_logic;
SIGNAL \U2|Add2~1\ : std_logic;
SIGNAL \U2|Add2~3\ : std_logic;
SIGNAL \U2|Add2~5\ : std_logic;
SIGNAL \U2|Add2~7\ : std_logic;
SIGNAL \U2|Add2~9\ : std_logic;
SIGNAL \U2|Add2~11\ : std_logic;
SIGNAL \U2|Add2~13\ : std_logic;
SIGNAL \U2|Add2~14_combout\ : std_logic;
SIGNAL \U2|Add2~12_combout\ : std_logic;
SIGNAL \U2|Add2~10_combout\ : std_logic;
SIGNAL \U2|Add2~8_combout\ : std_logic;
SIGNAL \U2|Add2~6_combout\ : std_logic;
SIGNAL \U2|Add2~4_combout\ : std_logic;
SIGNAL \U2|Add2~2_combout\ : std_logic;
SIGNAL \U2|Add2~0_combout\ : std_logic;
SIGNAL \U2|Add3~1\ : std_logic;
SIGNAL \U2|Add3~3\ : std_logic;
SIGNAL \U2|Add3~5\ : std_logic;
SIGNAL \U2|Add3~7\ : std_logic;
SIGNAL \U2|Add3~9\ : std_logic;
SIGNAL \U2|Add3~11\ : std_logic;
SIGNAL \U2|Add3~13\ : std_logic;
SIGNAL \U2|Add3~15\ : std_logic;
SIGNAL \U2|Add3~17\ : std_logic;
SIGNAL \U2|Add3~18_combout\ : std_logic;
SIGNAL \U2|LessThan1~0_combout\ : std_logic;
SIGNAL \U2|read_addr~0_combout\ : std_logic;
SIGNAL \U2|read_addr[16]~17_combout\ : std_logic;
SIGNAL \U2|Add3~14_combout\ : std_logic;
SIGNAL \U2|read_addr[14]~2_combout\ : std_logic;
SIGNAL \U2|Add3~12_combout\ : std_logic;
SIGNAL \U2|read_addr[13]~16_combout\ : std_logic;
SIGNAL \U2|Add0~1\ : std_logic;
SIGNAL \U2|Add0~3\ : std_logic;
SIGNAL \U2|Add0~5\ : std_logic;
SIGNAL \U2|Add0~7\ : std_logic;
SIGNAL \U2|Add0~9\ : std_logic;
SIGNAL \U2|Add0~11\ : std_logic;
SIGNAL \U2|Add0~13\ : std_logic;
SIGNAL \U2|Add0~15\ : std_logic;
SIGNAL \U2|Add0~17\ : std_logic;
SIGNAL \U2|Add0~18_combout\ : std_logic;
SIGNAL \U2|Add0~16_combout\ : std_logic;
SIGNAL \U2|Add0~14_combout\ : std_logic;
SIGNAL \U2|Add0~12_combout\ : std_logic;
SIGNAL \U2|Add0~10_combout\ : std_logic;
SIGNAL \U2|Add0~8_combout\ : std_logic;
SIGNAL \U2|Add0~6_combout\ : std_logic;
SIGNAL \U2|Add0~4_combout\ : std_logic;
SIGNAL \U2|Add0~2_combout\ : std_logic;
SIGNAL \U2|Add0~0_combout\ : std_logic;
SIGNAL \U2|write_addr[7]~1\ : std_logic;
SIGNAL \U2|write_addr[8]~3\ : std_logic;
SIGNAL \U2|write_addr[9]~5\ : std_logic;
SIGNAL \U2|write_addr[10]~7\ : std_logic;
SIGNAL \U2|write_addr[11]~9\ : std_logic;
SIGNAL \U2|write_addr[12]~11\ : std_logic;
SIGNAL \U2|write_addr[13]~13\ : std_logic;
SIGNAL \U2|write_addr[14]~15\ : std_logic;
SIGNAL \U2|write_addr[15]~17\ : std_logic;
SIGNAL \U2|write_addr[16]~19\ : std_logic;
SIGNAL \U2|write_addr[17]~21\ : std_logic;
SIGNAL \U2|write_addr[18]~22_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \U2|write_addr[16]~18_combout\ : std_logic;
SIGNAL \U2|write_addr[17]~20_combout\ : std_logic;
SIGNAL \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode746w[3]~0_combout\ : std_logic;
SIGNAL \U2|write_addr[13]~12_combout\ : std_logic;
SIGNAL \U2|write_addr[14]~14_combout\ : std_logic;
SIGNAL \U2|write_addr[15]~16_combout\ : std_logic;
SIGNAL \U2|Add2~15\ : std_logic;
SIGNAL \U2|Add2~17\ : std_logic;
SIGNAL \U2|Add2~18_combout\ : std_logic;
SIGNAL \U2|Add2~16_combout\ : std_logic;
SIGNAL \U2|Add3~19\ : std_logic;
SIGNAL \U2|Add3~21\ : std_logic;
SIGNAL \U2|Add3~22_combout\ : std_logic;
SIGNAL \U2|Add3~20_combout\ : std_logic;
SIGNAL \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1414w[2]~1_combout\ : std_logic;
SIGNAL \U2|Add3~16_combout\ : std_logic;
SIGNAL \U2|read_addr[15]~1_combout\ : std_logic;
SIGNAL \U_X|dec_count[6]~_wirecell_combout\ : std_logic;
SIGNAL \U2|write_addr[7]~0_combout\ : std_logic;
SIGNAL \U2|write_addr[8]~2_combout\ : std_logic;
SIGNAL \U2|write_addr[9]~4_combout\ : std_logic;
SIGNAL \U2|write_addr[10]~6_combout\ : std_logic;
SIGNAL \U2|write_addr[11]~8_combout\ : std_logic;
SIGNAL \U2|write_addr[12]~10_combout\ : std_logic;
SIGNAL \U2|read_addr[0]~3_combout\ : std_logic;
SIGNAL \U2|read_addr[1]~4_combout\ : std_logic;
SIGNAL \U2|read_addr[2]~5_combout\ : std_logic;
SIGNAL \U2|read_addr[3]~6_combout\ : std_logic;
SIGNAL \U2|read_addr[4]~7_combout\ : std_logic;
SIGNAL \U2|read_addr[5]~8_combout\ : std_logic;
SIGNAL \U2|read_addr[6]~9_combout\ : std_logic;
SIGNAL \U2|Add3~0_combout\ : std_logic;
SIGNAL \U2|read_addr[7]~10_combout\ : std_logic;
SIGNAL \U2|Add3~2_combout\ : std_logic;
SIGNAL \U2|read_addr[8]~11_combout\ : std_logic;
SIGNAL \U2|Add3~4_combout\ : std_logic;
SIGNAL \U2|read_addr[9]~12_combout\ : std_logic;
SIGNAL \U2|Add3~6_combout\ : std_logic;
SIGNAL \U2|read_addr[10]~13_combout\ : std_logic;
SIGNAL \U2|Add3~8_combout\ : std_logic;
SIGNAL \U2|read_addr[11]~14_combout\ : std_logic;
SIGNAL \U2|Add3~10_combout\ : std_logic;
SIGNAL \U2|read_addr[12]~15_combout\ : std_logic;
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a16~portbdataout\ : std_logic;
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a18~portbdataout\ : std_logic;
SIGNAL \U2|canvas|altsyncram_component|auto_generated|mux3|_~19_combout\ : std_logic;
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a19~portbdataout\ : std_logic;
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a17~portbdataout\ : std_logic;
SIGNAL \U2|canvas|altsyncram_component|auto_generated|mux3|_~20_combout\ : std_logic;
SIGNAL \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1414w[2]~2_combout\ : std_logic;
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a24~portbdataout\ : std_logic;
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a25~portbdataout\ : std_logic;
SIGNAL \U1|green_out[0]~2_combout\ : std_logic;
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a27~portbdataout\ : std_logic;
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a26~portbdataout\ : std_logic;
SIGNAL \U1|green_out[0]~1_combout\ : std_logic;
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a28~portbdataout\ : std_logic;
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a29~portbdataout\ : std_logic;
SIGNAL \U1|green_out[0]~3_combout\ : std_logic;
SIGNAL \U1|green_out[0]~4_combout\ : std_logic;
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a30~portbdataout\ : std_logic;
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a31~portbdataout\ : std_logic;
SIGNAL \U1|green_out[0]~0_combout\ : std_logic;
SIGNAL \U1|green_out[0]~5_combout\ : std_logic;
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a23~portbdataout\ : std_logic;
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a21~portbdataout\ : std_logic;
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a20~portbdataout\ : std_logic;
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a22~portbdataout\ : std_logic;
SIGNAL \U2|canvas|altsyncram_component|auto_generated|mux3|_~17_combout\ : std_logic;
SIGNAL \U2|canvas|altsyncram_component|auto_generated|mux3|_~18_combout\ : std_logic;
SIGNAL \U1|green_out[0]~6_combout\ : std_logic;
SIGNAL \U2|read_addr[17]~19_combout\ : std_logic;
SIGNAL \U2|read_addr[18]~18_combout\ : std_logic;
SIGNAL \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode932w[3]~0_combout\ : std_logic;
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a33~portbdataout\ : std_logic;
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a35~portbdataout\ : std_logic;
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a34~portbdataout\ : std_logic;
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a32~portbdataout\ : std_logic;
SIGNAL \U2|canvas|altsyncram_component|auto_generated|mux3|_~12_combout\ : std_logic;
SIGNAL \U2|canvas|altsyncram_component|auto_generated|mux3|_~13_combout\ : std_logic;
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a37~portbdataout\ : std_logic;
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a36~portbdataout\ : std_logic;
SIGNAL \U2|canvas|altsyncram_component|auto_generated|mux3|_~14_combout\ : std_logic;
SIGNAL \U2|canvas|altsyncram_component|auto_generated|mux3|_~15_combout\ : std_logic;
SIGNAL \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1414w[2]~0_combout\ : std_logic;
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a14~portbdataout\ : std_logic;
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a15~portbdataout\ : std_logic;
SIGNAL \U2|canvas|altsyncram_component|auto_generated|mux3|_~8_combout\ : std_logic;
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a12~portbdataout\ : std_logic;
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a13~portbdataout\ : std_logic;
SIGNAL \U2|canvas|altsyncram_component|auto_generated|mux3|_~9_combout\ : std_logic;
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a11~portbdataout\ : std_logic;
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a10~portbdataout\ : std_logic;
SIGNAL \U2|canvas|altsyncram_component|auto_generated|mux3|_~5_combout\ : std_logic;
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a9~portbdataout\ : std_logic;
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a8~portbdataout\ : std_logic;
SIGNAL \U2|canvas|altsyncram_component|auto_generated|mux3|_~6_combout\ : std_logic;
SIGNAL \U2|canvas|altsyncram_component|auto_generated|mux3|_~7_combout\ : std_logic;
SIGNAL \U2|canvas|altsyncram_component|auto_generated|mux3|_~10_combout\ : std_logic;
SIGNAL \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1392w[3]~0_combout\ : std_logic;
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a1~portbdataout\ : std_logic;
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a2~portbdataout\ : std_logic;
SIGNAL \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1325w[3]~0_combout\ : std_logic;
SIGNAL \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1325w[3]~1_combout\ : std_logic;
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \U2|canvas|altsyncram_component|auto_generated|mux3|_~2_combout\ : std_logic;
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a3~portbdataout\ : std_logic;
SIGNAL \U2|canvas|altsyncram_component|auto_generated|mux3|_~3_combout\ : std_logic;
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a7~portbdataout\ : std_logic;
SIGNAL \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1392w[3]~1_combout\ : std_logic;
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a6~portbdataout\ : std_logic;
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a4~portbdataout\ : std_logic;
SIGNAL \U2|canvas|altsyncram_component|auto_generated|mux3|_~0_combout\ : std_logic;
SIGNAL \U2|canvas|altsyncram_component|auto_generated|ram_block1a5~portbdataout\ : std_logic;
SIGNAL \U2|canvas|altsyncram_component|auto_generated|mux3|_~1_combout\ : std_logic;
SIGNAL \U2|canvas|altsyncram_component|auto_generated|mux3|_~4_combout\ : std_logic;
SIGNAL \U2|canvas|altsyncram_component|auto_generated|mux3|_~11_combout\ : std_logic;
SIGNAL \U2|canvas|altsyncram_component|auto_generated|mux3|_~16_combout\ : std_logic;
SIGNAL \U1|green_out[0]~7_combout\ : std_logic;
SIGNAL \U2|Add5~1\ : std_logic;
SIGNAL \U2|Add5~3\ : std_logic;
SIGNAL \U2|Add5~5\ : std_logic;
SIGNAL \U2|Add5~7\ : std_logic;
SIGNAL \U2|Add5~9\ : std_logic;
SIGNAL \U2|Add5~11\ : std_logic;
SIGNAL \U2|Add5~13\ : std_logic;
SIGNAL \U2|Add5~15\ : std_logic;
SIGNAL \U2|Add5~16_combout\ : std_logic;
SIGNAL \U2|Add5~14_combout\ : std_logic;
SIGNAL \U2|Add5~12_combout\ : std_logic;
SIGNAL \U2|Add5~10_combout\ : std_logic;
SIGNAL \U2|Add5~8_combout\ : std_logic;
SIGNAL \U2|Add5~6_combout\ : std_logic;
SIGNAL \U2|Add5~4_combout\ : std_logic;
SIGNAL \U2|Add5~2_combout\ : std_logic;
SIGNAL \U2|Add5~0_combout\ : std_logic;
SIGNAL \U2|LessThan5~1_cout\ : std_logic;
SIGNAL \U2|LessThan5~3_cout\ : std_logic;
SIGNAL \U2|LessThan5~5_cout\ : std_logic;
SIGNAL \U2|LessThan5~7_cout\ : std_logic;
SIGNAL \U2|LessThan5~9_cout\ : std_logic;
SIGNAL \U2|LessThan5~11_cout\ : std_logic;
SIGNAL \U2|LessThan5~13_cout\ : std_logic;
SIGNAL \U2|LessThan5~15_cout\ : std_logic;
SIGNAL \U2|LessThan5~16_combout\ : std_logic;
SIGNAL \U2|Add4~1\ : std_logic;
SIGNAL \U2|Add4~3\ : std_logic;
SIGNAL \U2|Add4~5\ : std_logic;
SIGNAL \U2|Add4~7\ : std_logic;
SIGNAL \U2|Add4~9\ : std_logic;
SIGNAL \U2|Add4~11\ : std_logic;
SIGNAL \U2|Add4~13\ : std_logic;
SIGNAL \U2|Add4~15\ : std_logic;
SIGNAL \U2|Add4~17\ : std_logic;
SIGNAL \U2|Add4~18_combout\ : std_logic;
SIGNAL \U2|Add4~16_combout\ : std_logic;
SIGNAL \U2|Add4~14_combout\ : std_logic;
SIGNAL \U2|Add4~12_combout\ : std_logic;
SIGNAL \U2|Add4~10_combout\ : std_logic;
SIGNAL \U2|Add4~8_combout\ : std_logic;
SIGNAL \U2|Add4~6_combout\ : std_logic;
SIGNAL \U2|Add4~4_combout\ : std_logic;
SIGNAL \U2|Add4~2_combout\ : std_logic;
SIGNAL \U2|Add4~0_combout\ : std_logic;
SIGNAL \U2|LessThan3~1_cout\ : std_logic;
SIGNAL \U2|LessThan3~3_cout\ : std_logic;
SIGNAL \U2|LessThan3~5_cout\ : std_logic;
SIGNAL \U2|LessThan3~7_cout\ : std_logic;
SIGNAL \U2|LessThan3~9_cout\ : std_logic;
SIGNAL \U2|LessThan3~11_cout\ : std_logic;
SIGNAL \U2|LessThan3~13_cout\ : std_logic;
SIGNAL \U2|LessThan3~15_cout\ : std_logic;
SIGNAL \U2|LessThan3~17_cout\ : std_logic;
SIGNAL \U2|LessThan3~18_combout\ : std_logic;
SIGNAL \U2|Add5~17\ : std_logic;
SIGNAL \U2|Add5~18_combout\ : std_logic;
SIGNAL \U2|Add4~19\ : std_logic;
SIGNAL \U2|Add4~20_combout\ : std_logic;
SIGNAL \U1|green_out[0]~8_combout\ : std_logic;
SIGNAL \U1|red_out[0]~0_combout\ : std_logic;
SIGNAL \U1|green_out[0]~10_combout\ : std_logic;
SIGNAL \U1|green_out[0]~11_combout\ : std_logic;
SIGNAL \U1|pixel_row\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode798w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1759w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U1|video_PLL_inst|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \U1|pixel_column\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \U_X|dec_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1749w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|address_reg_b\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \U1|h_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode778w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1739w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_Y|dec_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1342w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U1|v_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1497w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode547w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1571w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode621w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1382w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1581w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode631w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1561w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode611w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1372w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1591w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode641w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1402w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1531w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode581w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode591w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1352w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode564w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode601w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1362w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode653w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode695w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1457w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode685w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1447w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode675w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1437w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode664w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1426w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1696w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode735w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode725w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1487w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode715w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1477w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode705w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1467w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode954w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1719w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode964w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode768w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1729w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode943w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1708w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode974w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode994w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode984w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode808w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode818w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode828w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1541w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode757w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1520w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode788w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1551w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode839w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode921w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1685w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode911w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1675w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode881w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1645w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode871w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1635w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode861w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1625w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode850w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1614w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode901w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1665w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode891w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1655w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_X|prev_state\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U_Y|prev_state\ : std_logic_vector(1 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_CLOCK2_50 <= CLOCK2_50;
ww_CLOCK3_50 <= CLOCK3_50;
ww_SMA_CLKIN <= SMA_CLKIN;
SMA_CLKOUT <= ww_SMA_CLKOUT;
ww_GPIO <= GPIO;
ww_KEY <= KEY;
ww_SW <= SW;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
HEX6 <= ww_HEX6;
HEX7 <= ww_HEX7;
LEDG <= ww_LEDG;
LEDR <= ww_LEDR;
UART_CTS <= ww_UART_CTS;
ww_UART_RTS <= UART_RTS;
ww_UART_RXD <= UART_RXD;
UART_TXD <= ww_UART_TXD;
LCD_BLON <= ww_LCD_BLON;
LCD_EN <= ww_LCD_EN;
LCD_ON <= ww_LCD_ON;
LCD_RS <= ww_LCD_RS;
LCD_RW <= ww_LCD_RW;
VGA_BLANK_N <= ww_VGA_BLANK_N;
VGA_CLK <= ww_VGA_CLK;
VGA_HS <= ww_VGA_HS;
VGA_SYNC_N <= ww_VGA_SYNC_N;
VGA_VS <= ww_VGA_VS;
VGA_R <= ww_VGA_R;
VGA_G <= ww_VGA_G;
VGA_B <= ww_VGA_B;
SRAM_ADDR <= IEEE.NUMERIC_STD.UNSIGNED(ww_SRAM_ADDR);
SRAM_CE_N <= ww_SRAM_CE_N;
SRAM_LB_N <= ww_SRAM_LB_N;
SRAM_OE_N <= ww_SRAM_OE_N;
SRAM_UB_N <= ww_SRAM_UB_N;
SRAM_WE_N <= ww_SRAM_WE_N;
ww_AUD_ADCDAT <= AUD_ADCDAT;
AUD_DACDAT <= ww_AUD_DACDAT;
AUD_XCK <= ww_AUD_XCK;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\U1|video_PLL_inst|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \CLOCK_50~input_o\);

\U1|video_PLL_inst|altpll_component|auto_generated|wire_pll1_clk\(0) <= \U1|video_PLL_inst|altpll_component|auto_generated|pll1_CLK_bus\(0);
\U1|video_PLL_inst|altpll_component|auto_generated|wire_pll1_clk\(1) <= \U1|video_PLL_inst|altpll_component|auto_generated|pll1_CLK_bus\(1);
\U1|video_PLL_inst|altpll_component|auto_generated|wire_pll1_clk\(2) <= \U1|video_PLL_inst|altpll_component|auto_generated|pll1_CLK_bus\(2);
\U1|video_PLL_inst|altpll_component|auto_generated|wire_pll1_clk\(3) <= \U1|video_PLL_inst|altpll_component|auto_generated|pll1_CLK_bus\(3);
\U1|video_PLL_inst|altpll_component|auto_generated|wire_pll1_clk\(4) <= \U1|video_PLL_inst|altpll_component|auto_generated|pll1_CLK_bus\(4);

\U2|canvas|altsyncram_component|auto_generated|ram_block1a5_PORTADATAIN_bus\(0) <= vcc;

\U2|canvas|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\U2|write_addr[12]~10_combout\ & \U2|write_addr[11]~8_combout\ & \U2|write_addr[10]~6_combout\ & \U2|write_addr[9]~4_combout\ & \U2|write_addr[8]~2_combout\ & 
\U2|write_addr[7]~0_combout\ & \U_X|dec_count[6]~_wirecell_combout\ & \U_X|dec_count\(5) & \U_X|dec_count\(4) & \U_X|dec_count\(3) & \U_X|dec_count\(2) & \U_X|dec_count\(1) & \U_X|dec_count\(0));

\U2|canvas|altsyncram_component|auto_generated|ram_block1a5_PORTBADDR_bus\ <= (\U2|read_addr[12]~15_combout\ & \U2|read_addr[11]~14_combout\ & \U2|read_addr[10]~13_combout\ & \U2|read_addr[9]~12_combout\ & \U2|read_addr[8]~11_combout\ & 
\U2|read_addr[7]~10_combout\ & \U2|read_addr[6]~9_combout\ & \U2|read_addr[5]~8_combout\ & \U2|read_addr[4]~7_combout\ & \U2|read_addr[3]~6_combout\ & \U2|read_addr[2]~5_combout\ & \U2|read_addr[1]~4_combout\ & \U2|read_addr[0]~3_combout\);

\U2|canvas|altsyncram_component|auto_generated|ram_block1a5~portbdataout\ <= \U2|canvas|altsyncram_component|auto_generated|ram_block1a5_PORTBDATAOUT_bus\(0);

\U2|canvas|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\(0) <= vcc;

\U2|canvas|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\U2|write_addr[12]~10_combout\ & \U2|write_addr[11]~8_combout\ & \U2|write_addr[10]~6_combout\ & \U2|write_addr[9]~4_combout\ & \U2|write_addr[8]~2_combout\ & 
\U2|write_addr[7]~0_combout\ & \U_X|dec_count[6]~_wirecell_combout\ & \U_X|dec_count\(5) & \U_X|dec_count\(4) & \U_X|dec_count\(3) & \U_X|dec_count\(2) & \U_X|dec_count\(1) & \U_X|dec_count\(0));

\U2|canvas|altsyncram_component|auto_generated|ram_block1a6_PORTBADDR_bus\ <= (\U2|read_addr[12]~15_combout\ & \U2|read_addr[11]~14_combout\ & \U2|read_addr[10]~13_combout\ & \U2|read_addr[9]~12_combout\ & \U2|read_addr[8]~11_combout\ & 
\U2|read_addr[7]~10_combout\ & \U2|read_addr[6]~9_combout\ & \U2|read_addr[5]~8_combout\ & \U2|read_addr[4]~7_combout\ & \U2|read_addr[3]~6_combout\ & \U2|read_addr[2]~5_combout\ & \U2|read_addr[1]~4_combout\ & \U2|read_addr[0]~3_combout\);

\U2|canvas|altsyncram_component|auto_generated|ram_block1a6~portbdataout\ <= \U2|canvas|altsyncram_component|auto_generated|ram_block1a6_PORTBDATAOUT_bus\(0);

\U2|canvas|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\(0) <= vcc;

\U2|canvas|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\U2|write_addr[12]~10_combout\ & \U2|write_addr[11]~8_combout\ & \U2|write_addr[10]~6_combout\ & \U2|write_addr[9]~4_combout\ & \U2|write_addr[8]~2_combout\ & 
\U2|write_addr[7]~0_combout\ & \U_X|dec_count[6]~_wirecell_combout\ & \U_X|dec_count\(5) & \U_X|dec_count\(4) & \U_X|dec_count\(3) & \U_X|dec_count\(2) & \U_X|dec_count\(1) & \U_X|dec_count\(0));

\U2|canvas|altsyncram_component|auto_generated|ram_block1a4_PORTBADDR_bus\ <= (\U2|read_addr[12]~15_combout\ & \U2|read_addr[11]~14_combout\ & \U2|read_addr[10]~13_combout\ & \U2|read_addr[9]~12_combout\ & \U2|read_addr[8]~11_combout\ & 
\U2|read_addr[7]~10_combout\ & \U2|read_addr[6]~9_combout\ & \U2|read_addr[5]~8_combout\ & \U2|read_addr[4]~7_combout\ & \U2|read_addr[3]~6_combout\ & \U2|read_addr[2]~5_combout\ & \U2|read_addr[1]~4_combout\ & \U2|read_addr[0]~3_combout\);

\U2|canvas|altsyncram_component|auto_generated|ram_block1a4~portbdataout\ <= \U2|canvas|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(0);

\U2|canvas|altsyncram_component|auto_generated|ram_block1a7_PORTADATAIN_bus\(0) <= vcc;

\U2|canvas|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\U2|write_addr[12]~10_combout\ & \U2|write_addr[11]~8_combout\ & \U2|write_addr[10]~6_combout\ & \U2|write_addr[9]~4_combout\ & \U2|write_addr[8]~2_combout\ & 
\U2|write_addr[7]~0_combout\ & \U_X|dec_count[6]~_wirecell_combout\ & \U_X|dec_count\(5) & \U_X|dec_count\(4) & \U_X|dec_count\(3) & \U_X|dec_count\(2) & \U_X|dec_count\(1) & \U_X|dec_count\(0));

\U2|canvas|altsyncram_component|auto_generated|ram_block1a7_PORTBADDR_bus\ <= (\U2|read_addr[12]~15_combout\ & \U2|read_addr[11]~14_combout\ & \U2|read_addr[10]~13_combout\ & \U2|read_addr[9]~12_combout\ & \U2|read_addr[8]~11_combout\ & 
\U2|read_addr[7]~10_combout\ & \U2|read_addr[6]~9_combout\ & \U2|read_addr[5]~8_combout\ & \U2|read_addr[4]~7_combout\ & \U2|read_addr[3]~6_combout\ & \U2|read_addr[2]~5_combout\ & \U2|read_addr[1]~4_combout\ & \U2|read_addr[0]~3_combout\);

\U2|canvas|altsyncram_component|auto_generated|ram_block1a7~portbdataout\ <= \U2|canvas|altsyncram_component|auto_generated|ram_block1a7_PORTBDATAOUT_bus\(0);

\U2|canvas|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= vcc;

\U2|canvas|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\U2|write_addr[12]~10_combout\ & \U2|write_addr[11]~8_combout\ & \U2|write_addr[10]~6_combout\ & \U2|write_addr[9]~4_combout\ & \U2|write_addr[8]~2_combout\ & 
\U2|write_addr[7]~0_combout\ & \U_X|dec_count[6]~_wirecell_combout\ & \U_X|dec_count\(5) & \U_X|dec_count\(4) & \U_X|dec_count\(3) & \U_X|dec_count\(2) & \U_X|dec_count\(1) & \U_X|dec_count\(0));

\U2|canvas|altsyncram_component|auto_generated|ram_block1a1_PORTBADDR_bus\ <= (\U2|read_addr[12]~15_combout\ & \U2|read_addr[11]~14_combout\ & \U2|read_addr[10]~13_combout\ & \U2|read_addr[9]~12_combout\ & \U2|read_addr[8]~11_combout\ & 
\U2|read_addr[7]~10_combout\ & \U2|read_addr[6]~9_combout\ & \U2|read_addr[5]~8_combout\ & \U2|read_addr[4]~7_combout\ & \U2|read_addr[3]~6_combout\ & \U2|read_addr[2]~5_combout\ & \U2|read_addr[1]~4_combout\ & \U2|read_addr[0]~3_combout\);

\U2|canvas|altsyncram_component|auto_generated|ram_block1a1~portbdataout\ <= \U2|canvas|altsyncram_component|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(0);

\U2|canvas|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= vcc;

\U2|canvas|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\U2|write_addr[12]~10_combout\ & \U2|write_addr[11]~8_combout\ & \U2|write_addr[10]~6_combout\ & \U2|write_addr[9]~4_combout\ & \U2|write_addr[8]~2_combout\ & 
\U2|write_addr[7]~0_combout\ & \U_X|dec_count[6]~_wirecell_combout\ & \U_X|dec_count\(5) & \U_X|dec_count\(4) & \U_X|dec_count\(3) & \U_X|dec_count\(2) & \U_X|dec_count\(1) & \U_X|dec_count\(0));

\U2|canvas|altsyncram_component|auto_generated|ram_block1a2_PORTBADDR_bus\ <= (\U2|read_addr[12]~15_combout\ & \U2|read_addr[11]~14_combout\ & \U2|read_addr[10]~13_combout\ & \U2|read_addr[9]~12_combout\ & \U2|read_addr[8]~11_combout\ & 
\U2|read_addr[7]~10_combout\ & \U2|read_addr[6]~9_combout\ & \U2|read_addr[5]~8_combout\ & \U2|read_addr[4]~7_combout\ & \U2|read_addr[3]~6_combout\ & \U2|read_addr[2]~5_combout\ & \U2|read_addr[1]~4_combout\ & \U2|read_addr[0]~3_combout\);

\U2|canvas|altsyncram_component|auto_generated|ram_block1a2~portbdataout\ <= \U2|canvas|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(0);

\U2|canvas|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= vcc;

\U2|canvas|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\U2|write_addr[12]~10_combout\ & \U2|write_addr[11]~8_combout\ & \U2|write_addr[10]~6_combout\ & \U2|write_addr[9]~4_combout\ & \U2|write_addr[8]~2_combout\ & 
\U2|write_addr[7]~0_combout\ & \U_X|dec_count[6]~_wirecell_combout\ & \U_X|dec_count\(5) & \U_X|dec_count\(4) & \U_X|dec_count\(3) & \U_X|dec_count\(2) & \U_X|dec_count\(1) & \U_X|dec_count\(0));

\U2|canvas|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\U2|read_addr[12]~15_combout\ & \U2|read_addr[11]~14_combout\ & \U2|read_addr[10]~13_combout\ & \U2|read_addr[9]~12_combout\ & \U2|read_addr[8]~11_combout\ & 
\U2|read_addr[7]~10_combout\ & \U2|read_addr[6]~9_combout\ & \U2|read_addr[5]~8_combout\ & \U2|read_addr[4]~7_combout\ & \U2|read_addr[3]~6_combout\ & \U2|read_addr[2]~5_combout\ & \U2|read_addr[1]~4_combout\ & \U2|read_addr[0]~3_combout\);

\U2|canvas|altsyncram_component|auto_generated|ram_block1a0~portbdataout\ <= \U2|canvas|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);

\U2|canvas|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= vcc;

\U2|canvas|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\U2|write_addr[12]~10_combout\ & \U2|write_addr[11]~8_combout\ & \U2|write_addr[10]~6_combout\ & \U2|write_addr[9]~4_combout\ & \U2|write_addr[8]~2_combout\ & 
\U2|write_addr[7]~0_combout\ & \U_X|dec_count[6]~_wirecell_combout\ & \U_X|dec_count\(5) & \U_X|dec_count\(4) & \U_X|dec_count\(3) & \U_X|dec_count\(2) & \U_X|dec_count\(1) & \U_X|dec_count\(0));

\U2|canvas|altsyncram_component|auto_generated|ram_block1a3_PORTBADDR_bus\ <= (\U2|read_addr[12]~15_combout\ & \U2|read_addr[11]~14_combout\ & \U2|read_addr[10]~13_combout\ & \U2|read_addr[9]~12_combout\ & \U2|read_addr[8]~11_combout\ & 
\U2|read_addr[7]~10_combout\ & \U2|read_addr[6]~9_combout\ & \U2|read_addr[5]~8_combout\ & \U2|read_addr[4]~7_combout\ & \U2|read_addr[3]~6_combout\ & \U2|read_addr[2]~5_combout\ & \U2|read_addr[1]~4_combout\ & \U2|read_addr[0]~3_combout\);

\U2|canvas|altsyncram_component|auto_generated|ram_block1a3~portbdataout\ <= \U2|canvas|altsyncram_component|auto_generated|ram_block1a3_PORTBDATAOUT_bus\(0);

\U2|canvas|altsyncram_component|auto_generated|ram_block1a11_PORTADATAIN_bus\(0) <= vcc;

\U2|canvas|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\U2|write_addr[12]~10_combout\ & \U2|write_addr[11]~8_combout\ & \U2|write_addr[10]~6_combout\ & \U2|write_addr[9]~4_combout\ & \U2|write_addr[8]~2_combout\ & 
\U2|write_addr[7]~0_combout\ & \U_X|dec_count[6]~_wirecell_combout\ & \U_X|dec_count\(5) & \U_X|dec_count\(4) & \U_X|dec_count\(3) & \U_X|dec_count\(2) & \U_X|dec_count\(1) & \U_X|dec_count\(0));

\U2|canvas|altsyncram_component|auto_generated|ram_block1a11_PORTBADDR_bus\ <= (\U2|read_addr[12]~15_combout\ & \U2|read_addr[11]~14_combout\ & \U2|read_addr[10]~13_combout\ & \U2|read_addr[9]~12_combout\ & \U2|read_addr[8]~11_combout\ & 
\U2|read_addr[7]~10_combout\ & \U2|read_addr[6]~9_combout\ & \U2|read_addr[5]~8_combout\ & \U2|read_addr[4]~7_combout\ & \U2|read_addr[3]~6_combout\ & \U2|read_addr[2]~5_combout\ & \U2|read_addr[1]~4_combout\ & \U2|read_addr[0]~3_combout\);

\U2|canvas|altsyncram_component|auto_generated|ram_block1a11~portbdataout\ <= \U2|canvas|altsyncram_component|auto_generated|ram_block1a11_PORTBDATAOUT_bus\(0);

\U2|canvas|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\(0) <= vcc;

\U2|canvas|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\U2|write_addr[12]~10_combout\ & \U2|write_addr[11]~8_combout\ & \U2|write_addr[10]~6_combout\ & \U2|write_addr[9]~4_combout\ & \U2|write_addr[8]~2_combout\ & 
\U2|write_addr[7]~0_combout\ & \U_X|dec_count[6]~_wirecell_combout\ & \U_X|dec_count\(5) & \U_X|dec_count\(4) & \U_X|dec_count\(3) & \U_X|dec_count\(2) & \U_X|dec_count\(1) & \U_X|dec_count\(0));

\U2|canvas|altsyncram_component|auto_generated|ram_block1a10_PORTBADDR_bus\ <= (\U2|read_addr[12]~15_combout\ & \U2|read_addr[11]~14_combout\ & \U2|read_addr[10]~13_combout\ & \U2|read_addr[9]~12_combout\ & \U2|read_addr[8]~11_combout\ & 
\U2|read_addr[7]~10_combout\ & \U2|read_addr[6]~9_combout\ & \U2|read_addr[5]~8_combout\ & \U2|read_addr[4]~7_combout\ & \U2|read_addr[3]~6_combout\ & \U2|read_addr[2]~5_combout\ & \U2|read_addr[1]~4_combout\ & \U2|read_addr[0]~3_combout\);

\U2|canvas|altsyncram_component|auto_generated|ram_block1a10~portbdataout\ <= \U2|canvas|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(0);

\U2|canvas|altsyncram_component|auto_generated|ram_block1a9_PORTADATAIN_bus\(0) <= vcc;

\U2|canvas|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\U2|write_addr[12]~10_combout\ & \U2|write_addr[11]~8_combout\ & \U2|write_addr[10]~6_combout\ & \U2|write_addr[9]~4_combout\ & \U2|write_addr[8]~2_combout\ & 
\U2|write_addr[7]~0_combout\ & \U_X|dec_count[6]~_wirecell_combout\ & \U_X|dec_count\(5) & \U_X|dec_count\(4) & \U_X|dec_count\(3) & \U_X|dec_count\(2) & \U_X|dec_count\(1) & \U_X|dec_count\(0));

\U2|canvas|altsyncram_component|auto_generated|ram_block1a9_PORTBADDR_bus\ <= (\U2|read_addr[12]~15_combout\ & \U2|read_addr[11]~14_combout\ & \U2|read_addr[10]~13_combout\ & \U2|read_addr[9]~12_combout\ & \U2|read_addr[8]~11_combout\ & 
\U2|read_addr[7]~10_combout\ & \U2|read_addr[6]~9_combout\ & \U2|read_addr[5]~8_combout\ & \U2|read_addr[4]~7_combout\ & \U2|read_addr[3]~6_combout\ & \U2|read_addr[2]~5_combout\ & \U2|read_addr[1]~4_combout\ & \U2|read_addr[0]~3_combout\);

\U2|canvas|altsyncram_component|auto_generated|ram_block1a9~portbdataout\ <= \U2|canvas|altsyncram_component|auto_generated|ram_block1a9_PORTBDATAOUT_bus\(0);

\U2|canvas|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\(0) <= vcc;

\U2|canvas|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\U2|write_addr[12]~10_combout\ & \U2|write_addr[11]~8_combout\ & \U2|write_addr[10]~6_combout\ & \U2|write_addr[9]~4_combout\ & \U2|write_addr[8]~2_combout\ & 
\U2|write_addr[7]~0_combout\ & \U_X|dec_count[6]~_wirecell_combout\ & \U_X|dec_count\(5) & \U_X|dec_count\(4) & \U_X|dec_count\(3) & \U_X|dec_count\(2) & \U_X|dec_count\(1) & \U_X|dec_count\(0));

\U2|canvas|altsyncram_component|auto_generated|ram_block1a8_PORTBADDR_bus\ <= (\U2|read_addr[12]~15_combout\ & \U2|read_addr[11]~14_combout\ & \U2|read_addr[10]~13_combout\ & \U2|read_addr[9]~12_combout\ & \U2|read_addr[8]~11_combout\ & 
\U2|read_addr[7]~10_combout\ & \U2|read_addr[6]~9_combout\ & \U2|read_addr[5]~8_combout\ & \U2|read_addr[4]~7_combout\ & \U2|read_addr[3]~6_combout\ & \U2|read_addr[2]~5_combout\ & \U2|read_addr[1]~4_combout\ & \U2|read_addr[0]~3_combout\);

\U2|canvas|altsyncram_component|auto_generated|ram_block1a8~portbdataout\ <= \U2|canvas|altsyncram_component|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(0);

\U2|canvas|altsyncram_component|auto_generated|ram_block1a15_PORTADATAIN_bus\(0) <= vcc;

\U2|canvas|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\ <= (\U2|write_addr[12]~10_combout\ & \U2|write_addr[11]~8_combout\ & \U2|write_addr[10]~6_combout\ & \U2|write_addr[9]~4_combout\ & \U2|write_addr[8]~2_combout\ & 
\U2|write_addr[7]~0_combout\ & \U_X|dec_count[6]~_wirecell_combout\ & \U_X|dec_count\(5) & \U_X|dec_count\(4) & \U_X|dec_count\(3) & \U_X|dec_count\(2) & \U_X|dec_count\(1) & \U_X|dec_count\(0));

\U2|canvas|altsyncram_component|auto_generated|ram_block1a15_PORTBADDR_bus\ <= (\U2|read_addr[12]~15_combout\ & \U2|read_addr[11]~14_combout\ & \U2|read_addr[10]~13_combout\ & \U2|read_addr[9]~12_combout\ & \U2|read_addr[8]~11_combout\ & 
\U2|read_addr[7]~10_combout\ & \U2|read_addr[6]~9_combout\ & \U2|read_addr[5]~8_combout\ & \U2|read_addr[4]~7_combout\ & \U2|read_addr[3]~6_combout\ & \U2|read_addr[2]~5_combout\ & \U2|read_addr[1]~4_combout\ & \U2|read_addr[0]~3_combout\);

\U2|canvas|altsyncram_component|auto_generated|ram_block1a15~portbdataout\ <= \U2|canvas|altsyncram_component|auto_generated|ram_block1a15_PORTBDATAOUT_bus\(0);

\U2|canvas|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\(0) <= vcc;

\U2|canvas|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\U2|write_addr[12]~10_combout\ & \U2|write_addr[11]~8_combout\ & \U2|write_addr[10]~6_combout\ & \U2|write_addr[9]~4_combout\ & \U2|write_addr[8]~2_combout\ & 
\U2|write_addr[7]~0_combout\ & \U_X|dec_count[6]~_wirecell_combout\ & \U_X|dec_count\(5) & \U_X|dec_count\(4) & \U_X|dec_count\(3) & \U_X|dec_count\(2) & \U_X|dec_count\(1) & \U_X|dec_count\(0));

\U2|canvas|altsyncram_component|auto_generated|ram_block1a14_PORTBADDR_bus\ <= (\U2|read_addr[12]~15_combout\ & \U2|read_addr[11]~14_combout\ & \U2|read_addr[10]~13_combout\ & \U2|read_addr[9]~12_combout\ & \U2|read_addr[8]~11_combout\ & 
\U2|read_addr[7]~10_combout\ & \U2|read_addr[6]~9_combout\ & \U2|read_addr[5]~8_combout\ & \U2|read_addr[4]~7_combout\ & \U2|read_addr[3]~6_combout\ & \U2|read_addr[2]~5_combout\ & \U2|read_addr[1]~4_combout\ & \U2|read_addr[0]~3_combout\);

\U2|canvas|altsyncram_component|auto_generated|ram_block1a14~portbdataout\ <= \U2|canvas|altsyncram_component|auto_generated|ram_block1a14_PORTBDATAOUT_bus\(0);

\U2|canvas|altsyncram_component|auto_generated|ram_block1a13_PORTADATAIN_bus\(0) <= vcc;

\U2|canvas|altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\ <= (\U2|write_addr[12]~10_combout\ & \U2|write_addr[11]~8_combout\ & \U2|write_addr[10]~6_combout\ & \U2|write_addr[9]~4_combout\ & \U2|write_addr[8]~2_combout\ & 
\U2|write_addr[7]~0_combout\ & \U_X|dec_count[6]~_wirecell_combout\ & \U_X|dec_count\(5) & \U_X|dec_count\(4) & \U_X|dec_count\(3) & \U_X|dec_count\(2) & \U_X|dec_count\(1) & \U_X|dec_count\(0));

\U2|canvas|altsyncram_component|auto_generated|ram_block1a13_PORTBADDR_bus\ <= (\U2|read_addr[12]~15_combout\ & \U2|read_addr[11]~14_combout\ & \U2|read_addr[10]~13_combout\ & \U2|read_addr[9]~12_combout\ & \U2|read_addr[8]~11_combout\ & 
\U2|read_addr[7]~10_combout\ & \U2|read_addr[6]~9_combout\ & \U2|read_addr[5]~8_combout\ & \U2|read_addr[4]~7_combout\ & \U2|read_addr[3]~6_combout\ & \U2|read_addr[2]~5_combout\ & \U2|read_addr[1]~4_combout\ & \U2|read_addr[0]~3_combout\);

\U2|canvas|altsyncram_component|auto_generated|ram_block1a13~portbdataout\ <= \U2|canvas|altsyncram_component|auto_generated|ram_block1a13_PORTBDATAOUT_bus\(0);

\U2|canvas|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\(0) <= vcc;

\U2|canvas|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\U2|write_addr[12]~10_combout\ & \U2|write_addr[11]~8_combout\ & \U2|write_addr[10]~6_combout\ & \U2|write_addr[9]~4_combout\ & \U2|write_addr[8]~2_combout\ & 
\U2|write_addr[7]~0_combout\ & \U_X|dec_count[6]~_wirecell_combout\ & \U_X|dec_count\(5) & \U_X|dec_count\(4) & \U_X|dec_count\(3) & \U_X|dec_count\(2) & \U_X|dec_count\(1) & \U_X|dec_count\(0));

\U2|canvas|altsyncram_component|auto_generated|ram_block1a12_PORTBADDR_bus\ <= (\U2|read_addr[12]~15_combout\ & \U2|read_addr[11]~14_combout\ & \U2|read_addr[10]~13_combout\ & \U2|read_addr[9]~12_combout\ & \U2|read_addr[8]~11_combout\ & 
\U2|read_addr[7]~10_combout\ & \U2|read_addr[6]~9_combout\ & \U2|read_addr[5]~8_combout\ & \U2|read_addr[4]~7_combout\ & \U2|read_addr[3]~6_combout\ & \U2|read_addr[2]~5_combout\ & \U2|read_addr[1]~4_combout\ & \U2|read_addr[0]~3_combout\);

\U2|canvas|altsyncram_component|auto_generated|ram_block1a12~portbdataout\ <= \U2|canvas|altsyncram_component|auto_generated|ram_block1a12_PORTBDATAOUT_bus\(0);

\U2|canvas|altsyncram_component|auto_generated|ram_block1a33_PORTADATAIN_bus\(0) <= vcc;

\U2|canvas|altsyncram_component|auto_generated|ram_block1a33_PORTAADDR_bus\ <= (\U2|write_addr[12]~10_combout\ & \U2|write_addr[11]~8_combout\ & \U2|write_addr[10]~6_combout\ & \U2|write_addr[9]~4_combout\ & \U2|write_addr[8]~2_combout\ & 
\U2|write_addr[7]~0_combout\ & \U_X|dec_count[6]~_wirecell_combout\ & \U_X|dec_count\(5) & \U_X|dec_count\(4) & \U_X|dec_count\(3) & \U_X|dec_count\(2) & \U_X|dec_count\(1) & \U_X|dec_count\(0));

\U2|canvas|altsyncram_component|auto_generated|ram_block1a33_PORTBADDR_bus\ <= (\U2|read_addr[12]~15_combout\ & \U2|read_addr[11]~14_combout\ & \U2|read_addr[10]~13_combout\ & \U2|read_addr[9]~12_combout\ & \U2|read_addr[8]~11_combout\ & 
\U2|read_addr[7]~10_combout\ & \U2|read_addr[6]~9_combout\ & \U2|read_addr[5]~8_combout\ & \U2|read_addr[4]~7_combout\ & \U2|read_addr[3]~6_combout\ & \U2|read_addr[2]~5_combout\ & \U2|read_addr[1]~4_combout\ & \U2|read_addr[0]~3_combout\);

\U2|canvas|altsyncram_component|auto_generated|ram_block1a33~portbdataout\ <= \U2|canvas|altsyncram_component|auto_generated|ram_block1a33_PORTBDATAOUT_bus\(0);

\U2|canvas|altsyncram_component|auto_generated|ram_block1a34_PORTADATAIN_bus\(0) <= vcc;

\U2|canvas|altsyncram_component|auto_generated|ram_block1a34_PORTAADDR_bus\ <= (\U2|write_addr[12]~10_combout\ & \U2|write_addr[11]~8_combout\ & \U2|write_addr[10]~6_combout\ & \U2|write_addr[9]~4_combout\ & \U2|write_addr[8]~2_combout\ & 
\U2|write_addr[7]~0_combout\ & \U_X|dec_count[6]~_wirecell_combout\ & \U_X|dec_count\(5) & \U_X|dec_count\(4) & \U_X|dec_count\(3) & \U_X|dec_count\(2) & \U_X|dec_count\(1) & \U_X|dec_count\(0));

\U2|canvas|altsyncram_component|auto_generated|ram_block1a34_PORTBADDR_bus\ <= (\U2|read_addr[12]~15_combout\ & \U2|read_addr[11]~14_combout\ & \U2|read_addr[10]~13_combout\ & \U2|read_addr[9]~12_combout\ & \U2|read_addr[8]~11_combout\ & 
\U2|read_addr[7]~10_combout\ & \U2|read_addr[6]~9_combout\ & \U2|read_addr[5]~8_combout\ & \U2|read_addr[4]~7_combout\ & \U2|read_addr[3]~6_combout\ & \U2|read_addr[2]~5_combout\ & \U2|read_addr[1]~4_combout\ & \U2|read_addr[0]~3_combout\);

\U2|canvas|altsyncram_component|auto_generated|ram_block1a34~portbdataout\ <= \U2|canvas|altsyncram_component|auto_generated|ram_block1a34_PORTBDATAOUT_bus\(0);

\U2|canvas|altsyncram_component|auto_generated|ram_block1a32_PORTADATAIN_bus\(0) <= vcc;

\U2|canvas|altsyncram_component|auto_generated|ram_block1a32_PORTAADDR_bus\ <= (\U2|write_addr[12]~10_combout\ & \U2|write_addr[11]~8_combout\ & \U2|write_addr[10]~6_combout\ & \U2|write_addr[9]~4_combout\ & \U2|write_addr[8]~2_combout\ & 
\U2|write_addr[7]~0_combout\ & \U_X|dec_count[6]~_wirecell_combout\ & \U_X|dec_count\(5) & \U_X|dec_count\(4) & \U_X|dec_count\(3) & \U_X|dec_count\(2) & \U_X|dec_count\(1) & \U_X|dec_count\(0));

\U2|canvas|altsyncram_component|auto_generated|ram_block1a32_PORTBADDR_bus\ <= (\U2|read_addr[12]~15_combout\ & \U2|read_addr[11]~14_combout\ & \U2|read_addr[10]~13_combout\ & \U2|read_addr[9]~12_combout\ & \U2|read_addr[8]~11_combout\ & 
\U2|read_addr[7]~10_combout\ & \U2|read_addr[6]~9_combout\ & \U2|read_addr[5]~8_combout\ & \U2|read_addr[4]~7_combout\ & \U2|read_addr[3]~6_combout\ & \U2|read_addr[2]~5_combout\ & \U2|read_addr[1]~4_combout\ & \U2|read_addr[0]~3_combout\);

\U2|canvas|altsyncram_component|auto_generated|ram_block1a32~portbdataout\ <= \U2|canvas|altsyncram_component|auto_generated|ram_block1a32_PORTBDATAOUT_bus\(0);

\U2|canvas|altsyncram_component|auto_generated|ram_block1a35_PORTADATAIN_bus\(0) <= vcc;

\U2|canvas|altsyncram_component|auto_generated|ram_block1a35_PORTAADDR_bus\ <= (\U2|write_addr[12]~10_combout\ & \U2|write_addr[11]~8_combout\ & \U2|write_addr[10]~6_combout\ & \U2|write_addr[9]~4_combout\ & \U2|write_addr[8]~2_combout\ & 
\U2|write_addr[7]~0_combout\ & \U_X|dec_count[6]~_wirecell_combout\ & \U_X|dec_count\(5) & \U_X|dec_count\(4) & \U_X|dec_count\(3) & \U_X|dec_count\(2) & \U_X|dec_count\(1) & \U_X|dec_count\(0));

\U2|canvas|altsyncram_component|auto_generated|ram_block1a35_PORTBADDR_bus\ <= (\U2|read_addr[12]~15_combout\ & \U2|read_addr[11]~14_combout\ & \U2|read_addr[10]~13_combout\ & \U2|read_addr[9]~12_combout\ & \U2|read_addr[8]~11_combout\ & 
\U2|read_addr[7]~10_combout\ & \U2|read_addr[6]~9_combout\ & \U2|read_addr[5]~8_combout\ & \U2|read_addr[4]~7_combout\ & \U2|read_addr[3]~6_combout\ & \U2|read_addr[2]~5_combout\ & \U2|read_addr[1]~4_combout\ & \U2|read_addr[0]~3_combout\);

\U2|canvas|altsyncram_component|auto_generated|ram_block1a35~portbdataout\ <= \U2|canvas|altsyncram_component|auto_generated|ram_block1a35_PORTBDATAOUT_bus\(0);

\U2|canvas|altsyncram_component|auto_generated|ram_block1a37_PORTADATAIN_bus\ <= (gnd & vcc);

\U2|canvas|altsyncram_component|auto_generated|ram_block1a37_PORTAADDR_bus\ <= (\U2|write_addr[11]~8_combout\ & \U2|write_addr[10]~6_combout\ & \U2|write_addr[9]~4_combout\ & \U2|write_addr[8]~2_combout\ & \U2|write_addr[7]~0_combout\ & 
\U_X|dec_count[6]~_wirecell_combout\ & \U_X|dec_count\(5) & \U_X|dec_count\(4) & \U_X|dec_count\(3) & \U_X|dec_count\(2) & \U_X|dec_count\(1) & \U_X|dec_count\(0));

\U2|canvas|altsyncram_component|auto_generated|ram_block1a37_PORTBADDR_bus\ <= (\U2|read_addr[11]~14_combout\ & \U2|read_addr[10]~13_combout\ & \U2|read_addr[9]~12_combout\ & \U2|read_addr[8]~11_combout\ & \U2|read_addr[7]~10_combout\ & 
\U2|read_addr[6]~9_combout\ & \U2|read_addr[5]~8_combout\ & \U2|read_addr[4]~7_combout\ & \U2|read_addr[3]~6_combout\ & \U2|read_addr[2]~5_combout\ & \U2|read_addr[1]~4_combout\ & \U2|read_addr[0]~3_combout\);

\U2|canvas|altsyncram_component|auto_generated|ram_block1a37~portbdataout\ <= \U2|canvas|altsyncram_component|auto_generated|ram_block1a37_PORTBDATAOUT_bus\(0);

\U2|canvas|altsyncram_component|auto_generated|ram_block1a36_PORTADATAIN_bus\(0) <= vcc;

\U2|canvas|altsyncram_component|auto_generated|ram_block1a36_PORTAADDR_bus\ <= (\U2|write_addr[12]~10_combout\ & \U2|write_addr[11]~8_combout\ & \U2|write_addr[10]~6_combout\ & \U2|write_addr[9]~4_combout\ & \U2|write_addr[8]~2_combout\ & 
\U2|write_addr[7]~0_combout\ & \U_X|dec_count[6]~_wirecell_combout\ & \U_X|dec_count\(5) & \U_X|dec_count\(4) & \U_X|dec_count\(3) & \U_X|dec_count\(2) & \U_X|dec_count\(1) & \U_X|dec_count\(0));

\U2|canvas|altsyncram_component|auto_generated|ram_block1a36_PORTBADDR_bus\ <= (\U2|read_addr[12]~15_combout\ & \U2|read_addr[11]~14_combout\ & \U2|read_addr[10]~13_combout\ & \U2|read_addr[9]~12_combout\ & \U2|read_addr[8]~11_combout\ & 
\U2|read_addr[7]~10_combout\ & \U2|read_addr[6]~9_combout\ & \U2|read_addr[5]~8_combout\ & \U2|read_addr[4]~7_combout\ & \U2|read_addr[3]~6_combout\ & \U2|read_addr[2]~5_combout\ & \U2|read_addr[1]~4_combout\ & \U2|read_addr[0]~3_combout\);

\U2|canvas|altsyncram_component|auto_generated|ram_block1a36~portbdataout\ <= \U2|canvas|altsyncram_component|auto_generated|ram_block1a36_PORTBDATAOUT_bus\(0);

\U2|canvas|altsyncram_component|auto_generated|ram_block1a21_PORTADATAIN_bus\(0) <= vcc;

\U2|canvas|altsyncram_component|auto_generated|ram_block1a21_PORTAADDR_bus\ <= (\U2|write_addr[12]~10_combout\ & \U2|write_addr[11]~8_combout\ & \U2|write_addr[10]~6_combout\ & \U2|write_addr[9]~4_combout\ & \U2|write_addr[8]~2_combout\ & 
\U2|write_addr[7]~0_combout\ & \U_X|dec_count[6]~_wirecell_combout\ & \U_X|dec_count\(5) & \U_X|dec_count\(4) & \U_X|dec_count\(3) & \U_X|dec_count\(2) & \U_X|dec_count\(1) & \U_X|dec_count\(0));

\U2|canvas|altsyncram_component|auto_generated|ram_block1a21_PORTBADDR_bus\ <= (\U2|read_addr[12]~15_combout\ & \U2|read_addr[11]~14_combout\ & \U2|read_addr[10]~13_combout\ & \U2|read_addr[9]~12_combout\ & \U2|read_addr[8]~11_combout\ & 
\U2|read_addr[7]~10_combout\ & \U2|read_addr[6]~9_combout\ & \U2|read_addr[5]~8_combout\ & \U2|read_addr[4]~7_combout\ & \U2|read_addr[3]~6_combout\ & \U2|read_addr[2]~5_combout\ & \U2|read_addr[1]~4_combout\ & \U2|read_addr[0]~3_combout\);

\U2|canvas|altsyncram_component|auto_generated|ram_block1a21~portbdataout\ <= \U2|canvas|altsyncram_component|auto_generated|ram_block1a21_PORTBDATAOUT_bus\(0);

\U2|canvas|altsyncram_component|auto_generated|ram_block1a22_PORTADATAIN_bus\(0) <= vcc;

\U2|canvas|altsyncram_component|auto_generated|ram_block1a22_PORTAADDR_bus\ <= (\U2|write_addr[12]~10_combout\ & \U2|write_addr[11]~8_combout\ & \U2|write_addr[10]~6_combout\ & \U2|write_addr[9]~4_combout\ & \U2|write_addr[8]~2_combout\ & 
\U2|write_addr[7]~0_combout\ & \U_X|dec_count[6]~_wirecell_combout\ & \U_X|dec_count\(5) & \U_X|dec_count\(4) & \U_X|dec_count\(3) & \U_X|dec_count\(2) & \U_X|dec_count\(1) & \U_X|dec_count\(0));

\U2|canvas|altsyncram_component|auto_generated|ram_block1a22_PORTBADDR_bus\ <= (\U2|read_addr[12]~15_combout\ & \U2|read_addr[11]~14_combout\ & \U2|read_addr[10]~13_combout\ & \U2|read_addr[9]~12_combout\ & \U2|read_addr[8]~11_combout\ & 
\U2|read_addr[7]~10_combout\ & \U2|read_addr[6]~9_combout\ & \U2|read_addr[5]~8_combout\ & \U2|read_addr[4]~7_combout\ & \U2|read_addr[3]~6_combout\ & \U2|read_addr[2]~5_combout\ & \U2|read_addr[1]~4_combout\ & \U2|read_addr[0]~3_combout\);

\U2|canvas|altsyncram_component|auto_generated|ram_block1a22~portbdataout\ <= \U2|canvas|altsyncram_component|auto_generated|ram_block1a22_PORTBDATAOUT_bus\(0);

\U2|canvas|altsyncram_component|auto_generated|ram_block1a20_PORTADATAIN_bus\(0) <= vcc;

\U2|canvas|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\ <= (\U2|write_addr[12]~10_combout\ & \U2|write_addr[11]~8_combout\ & \U2|write_addr[10]~6_combout\ & \U2|write_addr[9]~4_combout\ & \U2|write_addr[8]~2_combout\ & 
\U2|write_addr[7]~0_combout\ & \U_X|dec_count[6]~_wirecell_combout\ & \U_X|dec_count\(5) & \U_X|dec_count\(4) & \U_X|dec_count\(3) & \U_X|dec_count\(2) & \U_X|dec_count\(1) & \U_X|dec_count\(0));

\U2|canvas|altsyncram_component|auto_generated|ram_block1a20_PORTBADDR_bus\ <= (\U2|read_addr[12]~15_combout\ & \U2|read_addr[11]~14_combout\ & \U2|read_addr[10]~13_combout\ & \U2|read_addr[9]~12_combout\ & \U2|read_addr[8]~11_combout\ & 
\U2|read_addr[7]~10_combout\ & \U2|read_addr[6]~9_combout\ & \U2|read_addr[5]~8_combout\ & \U2|read_addr[4]~7_combout\ & \U2|read_addr[3]~6_combout\ & \U2|read_addr[2]~5_combout\ & \U2|read_addr[1]~4_combout\ & \U2|read_addr[0]~3_combout\);

\U2|canvas|altsyncram_component|auto_generated|ram_block1a20~portbdataout\ <= \U2|canvas|altsyncram_component|auto_generated|ram_block1a20_PORTBDATAOUT_bus\(0);

\U2|canvas|altsyncram_component|auto_generated|ram_block1a23_PORTADATAIN_bus\(0) <= vcc;

\U2|canvas|altsyncram_component|auto_generated|ram_block1a23_PORTAADDR_bus\ <= (\U2|write_addr[12]~10_combout\ & \U2|write_addr[11]~8_combout\ & \U2|write_addr[10]~6_combout\ & \U2|write_addr[9]~4_combout\ & \U2|write_addr[8]~2_combout\ & 
\U2|write_addr[7]~0_combout\ & \U_X|dec_count[6]~_wirecell_combout\ & \U_X|dec_count\(5) & \U_X|dec_count\(4) & \U_X|dec_count\(3) & \U_X|dec_count\(2) & \U_X|dec_count\(1) & \U_X|dec_count\(0));

\U2|canvas|altsyncram_component|auto_generated|ram_block1a23_PORTBADDR_bus\ <= (\U2|read_addr[12]~15_combout\ & \U2|read_addr[11]~14_combout\ & \U2|read_addr[10]~13_combout\ & \U2|read_addr[9]~12_combout\ & \U2|read_addr[8]~11_combout\ & 
\U2|read_addr[7]~10_combout\ & \U2|read_addr[6]~9_combout\ & \U2|read_addr[5]~8_combout\ & \U2|read_addr[4]~7_combout\ & \U2|read_addr[3]~6_combout\ & \U2|read_addr[2]~5_combout\ & \U2|read_addr[1]~4_combout\ & \U2|read_addr[0]~3_combout\);

\U2|canvas|altsyncram_component|auto_generated|ram_block1a23~portbdataout\ <= \U2|canvas|altsyncram_component|auto_generated|ram_block1a23_PORTBDATAOUT_bus\(0);

\U2|canvas|altsyncram_component|auto_generated|ram_block1a17_PORTADATAIN_bus\(0) <= vcc;

\U2|canvas|altsyncram_component|auto_generated|ram_block1a17_PORTAADDR_bus\ <= (\U2|write_addr[12]~10_combout\ & \U2|write_addr[11]~8_combout\ & \U2|write_addr[10]~6_combout\ & \U2|write_addr[9]~4_combout\ & \U2|write_addr[8]~2_combout\ & 
\U2|write_addr[7]~0_combout\ & \U_X|dec_count[6]~_wirecell_combout\ & \U_X|dec_count\(5) & \U_X|dec_count\(4) & \U_X|dec_count\(3) & \U_X|dec_count\(2) & \U_X|dec_count\(1) & \U_X|dec_count\(0));

\U2|canvas|altsyncram_component|auto_generated|ram_block1a17_PORTBADDR_bus\ <= (\U2|read_addr[12]~15_combout\ & \U2|read_addr[11]~14_combout\ & \U2|read_addr[10]~13_combout\ & \U2|read_addr[9]~12_combout\ & \U2|read_addr[8]~11_combout\ & 
\U2|read_addr[7]~10_combout\ & \U2|read_addr[6]~9_combout\ & \U2|read_addr[5]~8_combout\ & \U2|read_addr[4]~7_combout\ & \U2|read_addr[3]~6_combout\ & \U2|read_addr[2]~5_combout\ & \U2|read_addr[1]~4_combout\ & \U2|read_addr[0]~3_combout\);

\U2|canvas|altsyncram_component|auto_generated|ram_block1a17~portbdataout\ <= \U2|canvas|altsyncram_component|auto_generated|ram_block1a17_PORTBDATAOUT_bus\(0);

\U2|canvas|altsyncram_component|auto_generated|ram_block1a18_PORTADATAIN_bus\(0) <= vcc;

\U2|canvas|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\ <= (\U2|write_addr[12]~10_combout\ & \U2|write_addr[11]~8_combout\ & \U2|write_addr[10]~6_combout\ & \U2|write_addr[9]~4_combout\ & \U2|write_addr[8]~2_combout\ & 
\U2|write_addr[7]~0_combout\ & \U_X|dec_count[6]~_wirecell_combout\ & \U_X|dec_count\(5) & \U_X|dec_count\(4) & \U_X|dec_count\(3) & \U_X|dec_count\(2) & \U_X|dec_count\(1) & \U_X|dec_count\(0));

\U2|canvas|altsyncram_component|auto_generated|ram_block1a18_PORTBADDR_bus\ <= (\U2|read_addr[12]~15_combout\ & \U2|read_addr[11]~14_combout\ & \U2|read_addr[10]~13_combout\ & \U2|read_addr[9]~12_combout\ & \U2|read_addr[8]~11_combout\ & 
\U2|read_addr[7]~10_combout\ & \U2|read_addr[6]~9_combout\ & \U2|read_addr[5]~8_combout\ & \U2|read_addr[4]~7_combout\ & \U2|read_addr[3]~6_combout\ & \U2|read_addr[2]~5_combout\ & \U2|read_addr[1]~4_combout\ & \U2|read_addr[0]~3_combout\);

\U2|canvas|altsyncram_component|auto_generated|ram_block1a18~portbdataout\ <= \U2|canvas|altsyncram_component|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(0);

\U2|canvas|altsyncram_component|auto_generated|ram_block1a16_PORTADATAIN_bus\(0) <= vcc;

\U2|canvas|altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\ <= (\U2|write_addr[12]~10_combout\ & \U2|write_addr[11]~8_combout\ & \U2|write_addr[10]~6_combout\ & \U2|write_addr[9]~4_combout\ & \U2|write_addr[8]~2_combout\ & 
\U2|write_addr[7]~0_combout\ & \U_X|dec_count[6]~_wirecell_combout\ & \U_X|dec_count\(5) & \U_X|dec_count\(4) & \U_X|dec_count\(3) & \U_X|dec_count\(2) & \U_X|dec_count\(1) & \U_X|dec_count\(0));

\U2|canvas|altsyncram_component|auto_generated|ram_block1a16_PORTBADDR_bus\ <= (\U2|read_addr[12]~15_combout\ & \U2|read_addr[11]~14_combout\ & \U2|read_addr[10]~13_combout\ & \U2|read_addr[9]~12_combout\ & \U2|read_addr[8]~11_combout\ & 
\U2|read_addr[7]~10_combout\ & \U2|read_addr[6]~9_combout\ & \U2|read_addr[5]~8_combout\ & \U2|read_addr[4]~7_combout\ & \U2|read_addr[3]~6_combout\ & \U2|read_addr[2]~5_combout\ & \U2|read_addr[1]~4_combout\ & \U2|read_addr[0]~3_combout\);

\U2|canvas|altsyncram_component|auto_generated|ram_block1a16~portbdataout\ <= \U2|canvas|altsyncram_component|auto_generated|ram_block1a16_PORTBDATAOUT_bus\(0);

\U2|canvas|altsyncram_component|auto_generated|ram_block1a19_PORTADATAIN_bus\(0) <= vcc;

\U2|canvas|altsyncram_component|auto_generated|ram_block1a19_PORTAADDR_bus\ <= (\U2|write_addr[12]~10_combout\ & \U2|write_addr[11]~8_combout\ & \U2|write_addr[10]~6_combout\ & \U2|write_addr[9]~4_combout\ & \U2|write_addr[8]~2_combout\ & 
\U2|write_addr[7]~0_combout\ & \U_X|dec_count[6]~_wirecell_combout\ & \U_X|dec_count\(5) & \U_X|dec_count\(4) & \U_X|dec_count\(3) & \U_X|dec_count\(2) & \U_X|dec_count\(1) & \U_X|dec_count\(0));

\U2|canvas|altsyncram_component|auto_generated|ram_block1a19_PORTBADDR_bus\ <= (\U2|read_addr[12]~15_combout\ & \U2|read_addr[11]~14_combout\ & \U2|read_addr[10]~13_combout\ & \U2|read_addr[9]~12_combout\ & \U2|read_addr[8]~11_combout\ & 
\U2|read_addr[7]~10_combout\ & \U2|read_addr[6]~9_combout\ & \U2|read_addr[5]~8_combout\ & \U2|read_addr[4]~7_combout\ & \U2|read_addr[3]~6_combout\ & \U2|read_addr[2]~5_combout\ & \U2|read_addr[1]~4_combout\ & \U2|read_addr[0]~3_combout\);

\U2|canvas|altsyncram_component|auto_generated|ram_block1a19~portbdataout\ <= \U2|canvas|altsyncram_component|auto_generated|ram_block1a19_PORTBDATAOUT_bus\(0);

\U2|canvas|altsyncram_component|auto_generated|ram_block1a31_PORTADATAIN_bus\(0) <= vcc;

\U2|canvas|altsyncram_component|auto_generated|ram_block1a31_PORTAADDR_bus\ <= (\U2|write_addr[12]~10_combout\ & \U2|write_addr[11]~8_combout\ & \U2|write_addr[10]~6_combout\ & \U2|write_addr[9]~4_combout\ & \U2|write_addr[8]~2_combout\ & 
\U2|write_addr[7]~0_combout\ & \U_X|dec_count[6]~_wirecell_combout\ & \U_X|dec_count\(5) & \U_X|dec_count\(4) & \U_X|dec_count\(3) & \U_X|dec_count\(2) & \U_X|dec_count\(1) & \U_X|dec_count\(0));

\U2|canvas|altsyncram_component|auto_generated|ram_block1a31_PORTBADDR_bus\ <= (\U2|read_addr[12]~15_combout\ & \U2|read_addr[11]~14_combout\ & \U2|read_addr[10]~13_combout\ & \U2|read_addr[9]~12_combout\ & \U2|read_addr[8]~11_combout\ & 
\U2|read_addr[7]~10_combout\ & \U2|read_addr[6]~9_combout\ & \U2|read_addr[5]~8_combout\ & \U2|read_addr[4]~7_combout\ & \U2|read_addr[3]~6_combout\ & \U2|read_addr[2]~5_combout\ & \U2|read_addr[1]~4_combout\ & \U2|read_addr[0]~3_combout\);

\U2|canvas|altsyncram_component|auto_generated|ram_block1a31~portbdataout\ <= \U2|canvas|altsyncram_component|auto_generated|ram_block1a31_PORTBDATAOUT_bus\(0);

\U2|canvas|altsyncram_component|auto_generated|ram_block1a30_PORTADATAIN_bus\(0) <= vcc;

\U2|canvas|altsyncram_component|auto_generated|ram_block1a30_PORTAADDR_bus\ <= (\U2|write_addr[12]~10_combout\ & \U2|write_addr[11]~8_combout\ & \U2|write_addr[10]~6_combout\ & \U2|write_addr[9]~4_combout\ & \U2|write_addr[8]~2_combout\ & 
\U2|write_addr[7]~0_combout\ & \U_X|dec_count[6]~_wirecell_combout\ & \U_X|dec_count\(5) & \U_X|dec_count\(4) & \U_X|dec_count\(3) & \U_X|dec_count\(2) & \U_X|dec_count\(1) & \U_X|dec_count\(0));

\U2|canvas|altsyncram_component|auto_generated|ram_block1a30_PORTBADDR_bus\ <= (\U2|read_addr[12]~15_combout\ & \U2|read_addr[11]~14_combout\ & \U2|read_addr[10]~13_combout\ & \U2|read_addr[9]~12_combout\ & \U2|read_addr[8]~11_combout\ & 
\U2|read_addr[7]~10_combout\ & \U2|read_addr[6]~9_combout\ & \U2|read_addr[5]~8_combout\ & \U2|read_addr[4]~7_combout\ & \U2|read_addr[3]~6_combout\ & \U2|read_addr[2]~5_combout\ & \U2|read_addr[1]~4_combout\ & \U2|read_addr[0]~3_combout\);

\U2|canvas|altsyncram_component|auto_generated|ram_block1a30~portbdataout\ <= \U2|canvas|altsyncram_component|auto_generated|ram_block1a30_PORTBDATAOUT_bus\(0);

\U2|canvas|altsyncram_component|auto_generated|ram_block1a27_PORTADATAIN_bus\(0) <= vcc;

\U2|canvas|altsyncram_component|auto_generated|ram_block1a27_PORTAADDR_bus\ <= (\U2|write_addr[12]~10_combout\ & \U2|write_addr[11]~8_combout\ & \U2|write_addr[10]~6_combout\ & \U2|write_addr[9]~4_combout\ & \U2|write_addr[8]~2_combout\ & 
\U2|write_addr[7]~0_combout\ & \U_X|dec_count[6]~_wirecell_combout\ & \U_X|dec_count\(5) & \U_X|dec_count\(4) & \U_X|dec_count\(3) & \U_X|dec_count\(2) & \U_X|dec_count\(1) & \U_X|dec_count\(0));

\U2|canvas|altsyncram_component|auto_generated|ram_block1a27_PORTBADDR_bus\ <= (\U2|read_addr[12]~15_combout\ & \U2|read_addr[11]~14_combout\ & \U2|read_addr[10]~13_combout\ & \U2|read_addr[9]~12_combout\ & \U2|read_addr[8]~11_combout\ & 
\U2|read_addr[7]~10_combout\ & \U2|read_addr[6]~9_combout\ & \U2|read_addr[5]~8_combout\ & \U2|read_addr[4]~7_combout\ & \U2|read_addr[3]~6_combout\ & \U2|read_addr[2]~5_combout\ & \U2|read_addr[1]~4_combout\ & \U2|read_addr[0]~3_combout\);

\U2|canvas|altsyncram_component|auto_generated|ram_block1a27~portbdataout\ <= \U2|canvas|altsyncram_component|auto_generated|ram_block1a27_PORTBDATAOUT_bus\(0);

\U2|canvas|altsyncram_component|auto_generated|ram_block1a26_PORTADATAIN_bus\(0) <= vcc;

\U2|canvas|altsyncram_component|auto_generated|ram_block1a26_PORTAADDR_bus\ <= (\U2|write_addr[12]~10_combout\ & \U2|write_addr[11]~8_combout\ & \U2|write_addr[10]~6_combout\ & \U2|write_addr[9]~4_combout\ & \U2|write_addr[8]~2_combout\ & 
\U2|write_addr[7]~0_combout\ & \U_X|dec_count[6]~_wirecell_combout\ & \U_X|dec_count\(5) & \U_X|dec_count\(4) & \U_X|dec_count\(3) & \U_X|dec_count\(2) & \U_X|dec_count\(1) & \U_X|dec_count\(0));

\U2|canvas|altsyncram_component|auto_generated|ram_block1a26_PORTBADDR_bus\ <= (\U2|read_addr[12]~15_combout\ & \U2|read_addr[11]~14_combout\ & \U2|read_addr[10]~13_combout\ & \U2|read_addr[9]~12_combout\ & \U2|read_addr[8]~11_combout\ & 
\U2|read_addr[7]~10_combout\ & \U2|read_addr[6]~9_combout\ & \U2|read_addr[5]~8_combout\ & \U2|read_addr[4]~7_combout\ & \U2|read_addr[3]~6_combout\ & \U2|read_addr[2]~5_combout\ & \U2|read_addr[1]~4_combout\ & \U2|read_addr[0]~3_combout\);

\U2|canvas|altsyncram_component|auto_generated|ram_block1a26~portbdataout\ <= \U2|canvas|altsyncram_component|auto_generated|ram_block1a26_PORTBDATAOUT_bus\(0);

\U2|canvas|altsyncram_component|auto_generated|ram_block1a25_PORTADATAIN_bus\(0) <= vcc;

\U2|canvas|altsyncram_component|auto_generated|ram_block1a25_PORTAADDR_bus\ <= (\U2|write_addr[12]~10_combout\ & \U2|write_addr[11]~8_combout\ & \U2|write_addr[10]~6_combout\ & \U2|write_addr[9]~4_combout\ & \U2|write_addr[8]~2_combout\ & 
\U2|write_addr[7]~0_combout\ & \U_X|dec_count[6]~_wirecell_combout\ & \U_X|dec_count\(5) & \U_X|dec_count\(4) & \U_X|dec_count\(3) & \U_X|dec_count\(2) & \U_X|dec_count\(1) & \U_X|dec_count\(0));

\U2|canvas|altsyncram_component|auto_generated|ram_block1a25_PORTBADDR_bus\ <= (\U2|read_addr[12]~15_combout\ & \U2|read_addr[11]~14_combout\ & \U2|read_addr[10]~13_combout\ & \U2|read_addr[9]~12_combout\ & \U2|read_addr[8]~11_combout\ & 
\U2|read_addr[7]~10_combout\ & \U2|read_addr[6]~9_combout\ & \U2|read_addr[5]~8_combout\ & \U2|read_addr[4]~7_combout\ & \U2|read_addr[3]~6_combout\ & \U2|read_addr[2]~5_combout\ & \U2|read_addr[1]~4_combout\ & \U2|read_addr[0]~3_combout\);

\U2|canvas|altsyncram_component|auto_generated|ram_block1a25~portbdataout\ <= \U2|canvas|altsyncram_component|auto_generated|ram_block1a25_PORTBDATAOUT_bus\(0);

\U2|canvas|altsyncram_component|auto_generated|ram_block1a24_PORTADATAIN_bus\(0) <= vcc;

\U2|canvas|altsyncram_component|auto_generated|ram_block1a24_PORTAADDR_bus\ <= (\U2|write_addr[12]~10_combout\ & \U2|write_addr[11]~8_combout\ & \U2|write_addr[10]~6_combout\ & \U2|write_addr[9]~4_combout\ & \U2|write_addr[8]~2_combout\ & 
\U2|write_addr[7]~0_combout\ & \U_X|dec_count[6]~_wirecell_combout\ & \U_X|dec_count\(5) & \U_X|dec_count\(4) & \U_X|dec_count\(3) & \U_X|dec_count\(2) & \U_X|dec_count\(1) & \U_X|dec_count\(0));

\U2|canvas|altsyncram_component|auto_generated|ram_block1a24_PORTBADDR_bus\ <= (\U2|read_addr[12]~15_combout\ & \U2|read_addr[11]~14_combout\ & \U2|read_addr[10]~13_combout\ & \U2|read_addr[9]~12_combout\ & \U2|read_addr[8]~11_combout\ & 
\U2|read_addr[7]~10_combout\ & \U2|read_addr[6]~9_combout\ & \U2|read_addr[5]~8_combout\ & \U2|read_addr[4]~7_combout\ & \U2|read_addr[3]~6_combout\ & \U2|read_addr[2]~5_combout\ & \U2|read_addr[1]~4_combout\ & \U2|read_addr[0]~3_combout\);

\U2|canvas|altsyncram_component|auto_generated|ram_block1a24~portbdataout\ <= \U2|canvas|altsyncram_component|auto_generated|ram_block1a24_PORTBDATAOUT_bus\(0);

\U2|canvas|altsyncram_component|auto_generated|ram_block1a29_PORTADATAIN_bus\(0) <= vcc;

\U2|canvas|altsyncram_component|auto_generated|ram_block1a29_PORTAADDR_bus\ <= (\U2|write_addr[12]~10_combout\ & \U2|write_addr[11]~8_combout\ & \U2|write_addr[10]~6_combout\ & \U2|write_addr[9]~4_combout\ & \U2|write_addr[8]~2_combout\ & 
\U2|write_addr[7]~0_combout\ & \U_X|dec_count[6]~_wirecell_combout\ & \U_X|dec_count\(5) & \U_X|dec_count\(4) & \U_X|dec_count\(3) & \U_X|dec_count\(2) & \U_X|dec_count\(1) & \U_X|dec_count\(0));

\U2|canvas|altsyncram_component|auto_generated|ram_block1a29_PORTBADDR_bus\ <= (\U2|read_addr[12]~15_combout\ & \U2|read_addr[11]~14_combout\ & \U2|read_addr[10]~13_combout\ & \U2|read_addr[9]~12_combout\ & \U2|read_addr[8]~11_combout\ & 
\U2|read_addr[7]~10_combout\ & \U2|read_addr[6]~9_combout\ & \U2|read_addr[5]~8_combout\ & \U2|read_addr[4]~7_combout\ & \U2|read_addr[3]~6_combout\ & \U2|read_addr[2]~5_combout\ & \U2|read_addr[1]~4_combout\ & \U2|read_addr[0]~3_combout\);

\U2|canvas|altsyncram_component|auto_generated|ram_block1a29~portbdataout\ <= \U2|canvas|altsyncram_component|auto_generated|ram_block1a29_PORTBDATAOUT_bus\(0);

\U2|canvas|altsyncram_component|auto_generated|ram_block1a28_PORTADATAIN_bus\(0) <= vcc;

\U2|canvas|altsyncram_component|auto_generated|ram_block1a28_PORTAADDR_bus\ <= (\U2|write_addr[12]~10_combout\ & \U2|write_addr[11]~8_combout\ & \U2|write_addr[10]~6_combout\ & \U2|write_addr[9]~4_combout\ & \U2|write_addr[8]~2_combout\ & 
\U2|write_addr[7]~0_combout\ & \U_X|dec_count[6]~_wirecell_combout\ & \U_X|dec_count\(5) & \U_X|dec_count\(4) & \U_X|dec_count\(3) & \U_X|dec_count\(2) & \U_X|dec_count\(1) & \U_X|dec_count\(0));

\U2|canvas|altsyncram_component|auto_generated|ram_block1a28_PORTBADDR_bus\ <= (\U2|read_addr[12]~15_combout\ & \U2|read_addr[11]~14_combout\ & \U2|read_addr[10]~13_combout\ & \U2|read_addr[9]~12_combout\ & \U2|read_addr[8]~11_combout\ & 
\U2|read_addr[7]~10_combout\ & \U2|read_addr[6]~9_combout\ & \U2|read_addr[5]~8_combout\ & \U2|read_addr[4]~7_combout\ & \U2|read_addr[3]~6_combout\ & \U2|read_addr[2]~5_combout\ & \U2|read_addr[1]~4_combout\ & \U2|read_addr[0]~3_combout\);

\U2|canvas|altsyncram_component|auto_generated|ram_block1a28~portbdataout\ <= \U2|canvas|altsyncram_component|auto_generated|ram_block1a28_PORTBDATAOUT_bus\(0);

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\U1|video_PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U1|video_PLL_inst|altpll_component|auto_generated|wire_pll1_clk\(0));

-- Location: IOOBUF_X105_Y0_N16
\SMA_CLKOUT~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SMA_CLKOUT);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(1));

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(0));

-- Location: IOOBUF_X115_Y16_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(1));

-- Location: IOOBUF_X115_Y19_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(2));

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(3));

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(4));

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(5));

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(6));

-- Location: IOOBUF_X115_Y25_N16
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(0));

-- Location: IOOBUF_X115_Y29_N2
\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(1));

-- Location: IOOBUF_X100_Y0_N2
\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(2));

-- Location: IOOBUF_X111_Y0_N2
\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(3));

-- Location: IOOBUF_X105_Y0_N23
\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(4));

-- Location: IOOBUF_X105_Y0_N9
\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(5));

-- Location: IOOBUF_X105_Y0_N2
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(6));

-- Location: IOOBUF_X98_Y0_N23
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(0));

-- Location: IOOBUF_X107_Y0_N9
\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(1));

-- Location: IOOBUF_X74_Y0_N9
\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(2));

-- Location: IOOBUF_X74_Y0_N2
\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(3));

-- Location: IOOBUF_X83_Y0_N23
\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(4));

-- Location: IOOBUF_X83_Y0_N16
\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(5));

-- Location: IOOBUF_X79_Y0_N23
\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(6));

-- Location: IOOBUF_X85_Y0_N9
\HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(0));

-- Location: IOOBUF_X87_Y0_N16
\HEX5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(1));

-- Location: IOOBUF_X98_Y0_N16
\HEX5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(2));

-- Location: IOOBUF_X72_Y0_N2
\HEX5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(3));

-- Location: IOOBUF_X72_Y0_N9
\HEX5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(4));

-- Location: IOOBUF_X79_Y0_N16
\HEX5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(5));

-- Location: IOOBUF_X69_Y0_N2
\HEX5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(6));

-- Location: IOOBUF_X89_Y0_N23
\HEX6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX6(0));

-- Location: IOOBUF_X65_Y0_N2
\HEX6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX6(1));

-- Location: IOOBUF_X65_Y0_N9
\HEX6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX6(2));

-- Location: IOOBUF_X89_Y0_N16
\HEX6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX6(3));

-- Location: IOOBUF_X67_Y0_N16
\HEX6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX6(4));

-- Location: IOOBUF_X67_Y0_N23
\HEX6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX6(5));

-- Location: IOOBUF_X74_Y0_N23
\HEX6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX6(6));

-- Location: IOOBUF_X74_Y0_N16
\HEX7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX7(0));

-- Location: IOOBUF_X67_Y0_N9
\HEX7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX7(1));

-- Location: IOOBUF_X62_Y0_N23
\HEX7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX7(2));

-- Location: IOOBUF_X62_Y0_N16
\HEX7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX7(3));

-- Location: IOOBUF_X67_Y0_N2
\HEX7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX7(4));

-- Location: IOOBUF_X69_Y0_N9
\HEX7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX7(5));

-- Location: IOOBUF_X54_Y0_N23
\HEX7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX7(6));

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDG(0));

-- Location: IOOBUF_X111_Y73_N9
\LEDG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDG(1));

-- Location: IOOBUF_X83_Y73_N2
\LEDG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDG(2));

-- Location: IOOBUF_X85_Y73_N23
\LEDG[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDG(3));

-- Location: IOOBUF_X72_Y73_N16
\LEDG[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDG(4));

-- Location: IOOBUF_X74_Y73_N16
\LEDG[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDG(5));

-- Location: IOOBUF_X72_Y73_N23
\LEDG[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDG(6));

-- Location: IOOBUF_X74_Y73_N23
\LEDG[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDG(7));

-- Location: IOOBUF_X67_Y73_N16
\LEDG[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDG(8));

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X72_Y73_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X69_Y73_N2
\LEDR[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(8));

-- Location: IOOBUF_X83_Y73_N23
\LEDR[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOOBUF_X60_Y73_N23
\LEDR[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(10));

-- Location: IOOBUF_X65_Y73_N23
\LEDR[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(11));

-- Location: IOOBUF_X65_Y73_N16
\LEDR[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(12));

-- Location: IOOBUF_X67_Y73_N9
\LEDR[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(13));

-- Location: IOOBUF_X58_Y73_N2
\LEDR[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(14));

-- Location: IOOBUF_X65_Y73_N9
\LEDR[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(15));

-- Location: IOOBUF_X67_Y73_N2
\LEDR[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(16));

-- Location: IOOBUF_X60_Y73_N16
\LEDR[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(17));

-- Location: IOOBUF_X47_Y73_N16
\UART_CTS~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_UART_CTS);

-- Location: IOOBUF_X13_Y73_N23
\UART_TXD~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_UART_TXD);

-- Location: IOOBUF_X0_Y47_N23
\LCD_BLON~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LCD_BLON);

-- Location: IOOBUF_X0_Y52_N2
\LCD_EN~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LCD_EN);

-- Location: IOOBUF_X0_Y58_N16
\LCD_ON~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LCD_ON);

-- Location: IOOBUF_X0_Y44_N16
\LCD_RS~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LCD_RS);

-- Location: IOOBUF_X0_Y44_N23
\LCD_RW~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LCD_RW);

-- Location: IOOBUF_X31_Y73_N9
\VGA_BLANK_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|video_on~0_combout\,
	devoe => ww_devoe,
	o => ww_VGA_BLANK_N);

-- Location: IOOBUF_X47_Y73_N2
\VGA_CLK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|video_PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	devoe => ww_devoe,
	o => ww_VGA_CLK);

-- Location: IOOBUF_X38_Y73_N16
\VGA_HS~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|horiz_sync_out~q\,
	devoe => ww_devoe,
	o => ww_VGA_HS);

-- Location: IOOBUF_X35_Y73_N16
\VGA_SYNC_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_SYNC_N);

-- Location: IOOBUF_X54_Y73_N2
\VGA_VS~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|vert_sync_out~q\,
	devoe => ww_devoe,
	o => ww_VGA_VS);

-- Location: IOOBUF_X33_Y73_N2
\VGA_R[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|red_out[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(0));

-- Location: IOOBUF_X31_Y73_N2
\VGA_R[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|red_out[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(1));

-- Location: IOOBUF_X35_Y73_N23
\VGA_R[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|red_out[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(2));

-- Location: IOOBUF_X33_Y73_N9
\VGA_R[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|red_out[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(3));

-- Location: IOOBUF_X20_Y73_N9
\VGA_R[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|red_out[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(4));

-- Location: IOOBUF_X40_Y73_N9
\VGA_R[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|red_out[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(5));

-- Location: IOOBUF_X11_Y73_N23
\VGA_R[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|red_out[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(6));

-- Location: IOOBUF_X20_Y73_N16
\VGA_R[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|red_out[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(7));

-- Location: IOOBUF_X11_Y73_N16
\VGA_G[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|green_out[0]~10_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G(0));

-- Location: IOOBUF_X25_Y73_N16
\VGA_G[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|green_out[0]~10_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G(1));

-- Location: IOOBUF_X11_Y73_N9
\VGA_G[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|green_out[0]~10_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G(2));

-- Location: IOOBUF_X25_Y73_N23
\VGA_G[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|green_out[0]~10_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G(3));

-- Location: IOOBUF_X16_Y73_N9
\VGA_G[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|green_out[0]~10_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G(4));

-- Location: IOOBUF_X16_Y73_N2
\VGA_G[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|green_out[0]~10_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G(5));

-- Location: IOOBUF_X20_Y73_N2
\VGA_G[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|green_out[0]~10_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G(6));

-- Location: IOOBUF_X23_Y73_N16
\VGA_G[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|green_out[0]~10_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G(7));

-- Location: IOOBUF_X38_Y73_N9
\VGA_B[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|green_out[0]~11_combout\,
	devoe => ww_devoe,
	o => ww_VGA_B(0));

-- Location: IOOBUF_X38_Y73_N2
\VGA_B[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|green_out[0]~11_combout\,
	devoe => ww_devoe,
	o => ww_VGA_B(1));

-- Location: IOOBUF_X23_Y73_N2
\VGA_B[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|green_out[0]~11_combout\,
	devoe => ww_devoe,
	o => ww_VGA_B(2));

-- Location: IOOBUF_X42_Y73_N9
\VGA_B[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|green_out[0]~11_combout\,
	devoe => ww_devoe,
	o => ww_VGA_B(3));

-- Location: IOOBUF_X42_Y73_N2
\VGA_B[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|green_out[0]~11_combout\,
	devoe => ww_devoe,
	o => ww_VGA_B(4));

-- Location: IOOBUF_X52_Y73_N16
\VGA_B[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|green_out[0]~11_combout\,
	devoe => ww_devoe,
	o => ww_VGA_B(5));

-- Location: IOOBUF_X23_Y73_N9
\VGA_B[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|green_out[0]~11_combout\,
	devoe => ww_devoe,
	o => ww_VGA_B(6));

-- Location: IOOBUF_X52_Y73_N23
\VGA_B[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|green_out[0]~11_combout\,
	devoe => ww_devoe,
	o => ww_VGA_B(7));

-- Location: IOOBUF_X16_Y0_N2
\SRAM_ADDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SRAM_ADDR(0));

-- Location: IOOBUF_X3_Y0_N2
\SRAM_ADDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SRAM_ADDR(1));

-- Location: IOOBUF_X20_Y0_N16
\SRAM_ADDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SRAM_ADDR(2));

-- Location: IOOBUF_X9_Y0_N2
\SRAM_ADDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SRAM_ADDR(3));

-- Location: IOOBUF_X0_Y4_N9
\SRAM_ADDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SRAM_ADDR(4));

-- Location: IOOBUF_X1_Y0_N16
\SRAM_ADDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SRAM_ADDR(5));

-- Location: IOOBUF_X0_Y4_N23
\SRAM_ADDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SRAM_ADDR(6));

-- Location: IOOBUF_X0_Y5_N16
\SRAM_ADDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SRAM_ADDR(7));

-- Location: IOOBUF_X5_Y0_N16
\SRAM_ADDR[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SRAM_ADDR(8));

-- Location: IOOBUF_X0_Y31_N16
\SRAM_ADDR[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SRAM_ADDR(9));

-- Location: IOOBUF_X0_Y6_N2
\SRAM_ADDR[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SRAM_ADDR(10));

-- Location: IOOBUF_X0_Y22_N16
\SRAM_ADDR[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SRAM_ADDR(11));

-- Location: IOOBUF_X0_Y8_N23
\SRAM_ADDR[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SRAM_ADDR(12));

-- Location: IOOBUF_X0_Y23_N23
\SRAM_ADDR[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SRAM_ADDR(13));

-- Location: IOOBUF_X0_Y19_N2
\SRAM_ADDR[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SRAM_ADDR(14));

-- Location: IOOBUF_X27_Y0_N9
\SRAM_ADDR[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SRAM_ADDR(15));

-- Location: IOOBUF_X49_Y0_N9
\SRAM_ADDR[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SRAM_ADDR(16));

-- Location: IOOBUF_X11_Y0_N9
\SRAM_ADDR[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SRAM_ADDR(17));

-- Location: IOOBUF_X11_Y0_N2
\SRAM_ADDR[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SRAM_ADDR(18));

-- Location: IOOBUF_X0_Y20_N16
\SRAM_ADDR[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SRAM_ADDR(19));

-- Location: IOOBUF_X23_Y0_N16
\SRAM_CE_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SRAM_CE_N);

-- Location: IOOBUF_X1_Y0_N9
\SRAM_LB_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SRAM_LB_N);

-- Location: IOOBUF_X1_Y0_N23
\SRAM_OE_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SRAM_OE_N);

-- Location: IOOBUF_X0_Y4_N2
\SRAM_UB_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SRAM_UB_N);

-- Location: IOOBUF_X23_Y0_N23
\SRAM_WE_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SRAM_WE_N);

-- Location: IOOBUF_X0_Y68_N9
\AUD_DACDAT~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_AUD_DACDAT);

-- Location: IOOBUF_X0_Y61_N23
\AUD_XCK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_AUD_XCK);

-- Location: IOOBUF_X0_Y52_N16
\LCD_DATA[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => LCD_DATA(0));

-- Location: IOOBUF_X0_Y44_N9
\LCD_DATA[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => LCD_DATA(1));

-- Location: IOOBUF_X0_Y44_N2
\LCD_DATA[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => LCD_DATA(2));

-- Location: IOOBUF_X0_Y49_N9
\LCD_DATA[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => LCD_DATA(3));

-- Location: IOOBUF_X0_Y54_N9
\LCD_DATA[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => LCD_DATA(4));

-- Location: IOOBUF_X0_Y55_N23
\LCD_DATA[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => LCD_DATA(5));

-- Location: IOOBUF_X0_Y51_N16
\LCD_DATA[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => LCD_DATA(6));

-- Location: IOOBUF_X0_Y47_N2
\LCD_DATA[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => LCD_DATA(7));

-- Location: IOOBUF_X0_Y67_N16
\PS2_CLK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => PS2_CLK);

-- Location: IOOBUF_X0_Y59_N23
\PS2_DAT~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => PS2_DAT);

-- Location: IOOBUF_X0_Y67_N23
\PS2_CLK2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => PS2_CLK2);

-- Location: IOOBUF_X0_Y65_N16
\PS2_DAT2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => PS2_DAT2);

-- Location: IOOBUF_X5_Y0_N9
\SRAM_DQ[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => SRAM_DQ(0));

-- Location: IOOBUF_X1_Y0_N2
\SRAM_DQ[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => SRAM_DQ(1));

-- Location: IOOBUF_X9_Y0_N23
\SRAM_DQ[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => SRAM_DQ(2));

-- Location: IOOBUF_X9_Y0_N16
\SRAM_DQ[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => SRAM_DQ(3));

-- Location: IOOBUF_X7_Y0_N16
\SRAM_DQ[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => SRAM_DQ(4));

-- Location: IOOBUF_X11_Y0_N23
\SRAM_DQ[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => SRAM_DQ(5));

-- Location: IOOBUF_X11_Y0_N16
\SRAM_DQ[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => SRAM_DQ(6));

-- Location: IOOBUF_X20_Y0_N9
\SRAM_DQ[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => SRAM_DQ(7));

-- Location: IOOBUF_X0_Y21_N16
\SRAM_DQ[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => SRAM_DQ(8));

-- Location: IOOBUF_X0_Y22_N23
\SRAM_DQ[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => SRAM_DQ(9));

-- Location: IOOBUF_X0_Y17_N16
\SRAM_DQ[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => SRAM_DQ(10));

-- Location: IOOBUF_X0_Y16_N16
\SRAM_DQ[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => SRAM_DQ(11));

-- Location: IOOBUF_X0_Y7_N9
\SRAM_DQ[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => SRAM_DQ(12));

-- Location: IOOBUF_X3_Y0_N23
\SRAM_DQ[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => SRAM_DQ(13));

-- Location: IOOBUF_X7_Y0_N23
\SRAM_DQ[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => SRAM_DQ(14));

-- Location: IOOBUF_X3_Y0_N16
\SRAM_DQ[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => SRAM_DQ(15));

-- Location: IOOBUF_X0_Y69_N9
\AUD_ADCLRCK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => AUD_ADCLRCK);

-- Location: IOOBUF_X0_Y60_N16
\AUD_BCLK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => AUD_BCLK);

-- Location: IOOBUF_X0_Y66_N16
\AUD_DACLRCK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => AUD_DACLRCK);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: PLL_1
\U1|video_PLL_inst|altpll_component|auto_generated|pll1\ : cycloneive_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 12,
	c0_initial => 1,
	c0_low => 12,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 2,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 1,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 27,
	m => 12,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	self_reset_on_loss_lock => "off",
	simulation_type => "functional",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 208,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	fbin => \U1|video_PLL_inst|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \U1|video_PLL_inst|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \U1|video_PLL_inst|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G3
\U1|video_PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U1|video_PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U1|video_PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X57_Y46_N2
\U1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~0_combout\ = \U1|h_count\(0) $ (VCC)
-- \U1|Add0~1\ = CARRY(\U1|h_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|h_count\(0),
	datad => VCC,
	combout => \U1|Add0~0_combout\,
	cout => \U1|Add0~1\);

-- Location: LCCOMB_X57_Y46_N26
\U1|h_count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|h_count~3_combout\ = (!\U1|Equal0~3_combout\ & \U1|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal0~3_combout\,
	datad => \U1|Add0~0_combout\,
	combout => \U1|h_count~3_combout\);

-- Location: FF_X57_Y46_N27
\U1|h_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U1|h_count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|h_count\(0));

-- Location: LCCOMB_X57_Y46_N4
\U1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~2_combout\ = (\U1|h_count\(1) & (!\U1|Add0~1\)) # (!\U1|h_count\(1) & ((\U1|Add0~1\) # (GND)))
-- \U1|Add0~3\ = CARRY((!\U1|Add0~1\) # (!\U1|h_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|h_count\(1),
	datad => VCC,
	cin => \U1|Add0~1\,
	combout => \U1|Add0~2_combout\,
	cout => \U1|Add0~3\);

-- Location: FF_X57_Y46_N5
\U1|h_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U1|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|h_count\(1));

-- Location: LCCOMB_X57_Y46_N6
\U1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~4_combout\ = (\U1|h_count\(2) & (\U1|Add0~3\ $ (GND))) # (!\U1|h_count\(2) & (!\U1|Add0~3\ & VCC))
-- \U1|Add0~5\ = CARRY((\U1|h_count\(2) & !\U1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|h_count\(2),
	datad => VCC,
	cin => \U1|Add0~3\,
	combout => \U1|Add0~4_combout\,
	cout => \U1|Add0~5\);

-- Location: FF_X57_Y46_N7
\U1|h_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U1|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|h_count\(2));

-- Location: LCCOMB_X57_Y46_N28
\U1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Equal0~0_combout\ = (!\U1|h_count\(0) & (!\U1|h_count\(6) & (!\U1|h_count\(1) & !\U1|h_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|h_count\(0),
	datab => \U1|h_count\(6),
	datac => \U1|h_count\(1),
	datad => \U1|h_count\(2),
	combout => \U1|Equal0~0_combout\);

-- Location: LCCOMB_X57_Y46_N8
\U1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~6_combout\ = (\U1|h_count\(3) & (!\U1|Add0~5\)) # (!\U1|h_count\(3) & ((\U1|Add0~5\) # (GND)))
-- \U1|Add0~7\ = CARRY((!\U1|Add0~5\) # (!\U1|h_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|h_count\(3),
	datad => VCC,
	cin => \U1|Add0~5\,
	combout => \U1|Add0~6_combout\,
	cout => \U1|Add0~7\);

-- Location: FF_X57_Y46_N9
\U1|h_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U1|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|h_count\(3));

-- Location: LCCOMB_X57_Y46_N10
\U1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~8_combout\ = (\U1|h_count\(4) & (\U1|Add0~7\ $ (GND))) # (!\U1|h_count\(4) & (!\U1|Add0~7\ & VCC))
-- \U1|Add0~9\ = CARRY((\U1|h_count\(4) & !\U1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|h_count\(4),
	datad => VCC,
	cin => \U1|Add0~7\,
	combout => \U1|Add0~8_combout\,
	cout => \U1|Add0~9\);

-- Location: FF_X57_Y46_N11
\U1|h_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U1|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|h_count\(4));

-- Location: LCCOMB_X56_Y46_N16
\U1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Equal0~2_combout\ = (\U1|h_count\(5) & (!\U1|h_count\(4) & (!\U1|h_count\(3) & !\U1|h_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|h_count\(5),
	datab => \U1|h_count\(4),
	datac => \U1|h_count\(3),
	datad => \U1|h_count\(7),
	combout => \U1|Equal0~2_combout\);

-- Location: LCCOMB_X57_Y46_N16
\U1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~14_combout\ = (\U1|h_count\(7) & (!\U1|Add0~13\)) # (!\U1|h_count\(7) & ((\U1|Add0~13\) # (GND)))
-- \U1|Add0~15\ = CARRY((!\U1|Add0~13\) # (!\U1|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|h_count\(7),
	datad => VCC,
	cin => \U1|Add0~13\,
	combout => \U1|Add0~14_combout\,
	cout => \U1|Add0~15\);

-- Location: LCCOMB_X57_Y46_N18
\U1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~16_combout\ = (\U1|h_count\(8) & (\U1|Add0~15\ $ (GND))) # (!\U1|h_count\(8) & (!\U1|Add0~15\ & VCC))
-- \U1|Add0~17\ = CARRY((\U1|h_count\(8) & !\U1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|h_count\(8),
	datad => VCC,
	cin => \U1|Add0~15\,
	combout => \U1|Add0~16_combout\,
	cout => \U1|Add0~17\);

-- Location: LCCOMB_X57_Y46_N24
\U1|h_count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|h_count~0_combout\ = (!\U1|Equal0~3_combout\ & \U1|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal0~3_combout\,
	datad => \U1|Add0~16_combout\,
	combout => \U1|h_count~0_combout\);

-- Location: FF_X57_Y46_N25
\U1|h_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U1|h_count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|h_count\(8));

-- Location: LCCOMB_X57_Y46_N20
\U1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~18_combout\ = \U1|h_count\(9) $ (\U1|Add0~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|h_count\(9),
	cin => \U1|Add0~17\,
	combout => \U1|Add0~18_combout\);

-- Location: LCCOMB_X57_Y46_N30
\U1|h_count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|h_count~1_combout\ = (!\U1|Equal0~3_combout\ & \U1|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal0~3_combout\,
	datad => \U1|Add0~18_combout\,
	combout => \U1|h_count~1_combout\);

-- Location: FF_X57_Y46_N31
\U1|h_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U1|h_count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|h_count\(9));

-- Location: LCCOMB_X56_Y46_N2
\U1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Equal0~3_combout\ = (\U1|Equal0~0_combout\ & (\U1|Equal0~2_combout\ & (\U1|h_count\(9) & \U1|h_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal0~0_combout\,
	datab => \U1|Equal0~2_combout\,
	datac => \U1|h_count\(9),
	datad => \U1|h_count\(8),
	combout => \U1|Equal0~3_combout\);

-- Location: LCCOMB_X57_Y46_N12
\U1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~10_combout\ = (\U1|h_count\(5) & (!\U1|Add0~9\)) # (!\U1|h_count\(5) & ((\U1|Add0~9\) # (GND)))
-- \U1|Add0~11\ = CARRY((!\U1|Add0~9\) # (!\U1|h_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|h_count\(5),
	datad => VCC,
	cin => \U1|Add0~9\,
	combout => \U1|Add0~10_combout\,
	cout => \U1|Add0~11\);

-- Location: LCCOMB_X57_Y46_N0
\U1|h_count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|h_count~2_combout\ = (!\U1|Equal0~3_combout\ & \U1|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal0~3_combout\,
	datad => \U1|Add0~10_combout\,
	combout => \U1|h_count~2_combout\);

-- Location: FF_X57_Y46_N1
\U1|h_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U1|h_count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|h_count\(5));

-- Location: LCCOMB_X57_Y46_N14
\U1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~12_combout\ = (\U1|h_count\(6) & (\U1|Add0~11\ $ (GND))) # (!\U1|h_count\(6) & (!\U1|Add0~11\ & VCC))
-- \U1|Add0~13\ = CARRY((\U1|h_count\(6) & !\U1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|h_count\(6),
	datad => VCC,
	cin => \U1|Add0~11\,
	combout => \U1|Add0~12_combout\,
	cout => \U1|Add0~13\);

-- Location: FF_X57_Y46_N15
\U1|h_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U1|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|h_count\(6));

-- Location: FF_X57_Y46_N17
\U1|h_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U1|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|h_count\(7));

-- Location: LCCOMB_X56_Y46_N10
\U1|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Equal1~0_combout\ = (((\U1|h_count\(8)) # (!\U1|h_count\(3))) # (!\U1|h_count\(4))) # (!\U1|h_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|h_count\(7),
	datab => \U1|h_count\(4),
	datac => \U1|h_count\(3),
	datad => \U1|h_count\(8),
	combout => \U1|Equal1~0_combout\);

-- Location: LCCOMB_X56_Y46_N0
\U1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Equal0~1_combout\ = (\U1|Equal0~0_combout\ & \U1|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal0~0_combout\,
	datac => \U1|h_count\(9),
	combout => \U1|Equal0~1_combout\);

-- Location: LCCOMB_X56_Y45_N12
\U1|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add1~0_combout\ = \U1|v_count\(0) $ (VCC)
-- \U1|Add1~1\ = CARRY(\U1|v_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|v_count\(0),
	datad => VCC,
	combout => \U1|Add1~0_combout\,
	cout => \U1|Add1~1\);

-- Location: LCCOMB_X56_Y44_N0
\U1|v_count~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|v_count~8_combout\ = (\U1|Add1~0_combout\ & \U1|process_0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Add1~0_combout\,
	datad => \U1|process_0~3_combout\,
	combout => \U1|v_count~8_combout\);

-- Location: FF_X56_Y44_N1
\U1|v_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U1|v_count~8_combout\,
	ena => \U1|v_count[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|v_count\(0));

-- Location: LCCOMB_X56_Y45_N14
\U1|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add1~2_combout\ = (\U1|v_count\(1) & (!\U1|Add1~1\)) # (!\U1|v_count\(1) & ((\U1|Add1~1\) # (GND)))
-- \U1|Add1~3\ = CARRY((!\U1|Add1~1\) # (!\U1|v_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|v_count\(1),
	datad => VCC,
	cin => \U1|Add1~1\,
	combout => \U1|Add1~2_combout\,
	cout => \U1|Add1~3\);

-- Location: LCCOMB_X56_Y44_N10
\U1|v_count~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|v_count~9_combout\ = (\U1|Add1~2_combout\ & \U1|process_0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Add1~2_combout\,
	datad => \U1|process_0~3_combout\,
	combout => \U1|v_count~9_combout\);

-- Location: FF_X56_Y44_N11
\U1|v_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U1|v_count~9_combout\,
	ena => \U1|v_count[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|v_count\(1));

-- Location: LCCOMB_X56_Y45_N16
\U1|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add1~4_combout\ = (\U1|v_count\(2) & (\U1|Add1~3\ $ (GND))) # (!\U1|v_count\(2) & (!\U1|Add1~3\ & VCC))
-- \U1|Add1~5\ = CARRY((\U1|v_count\(2) & !\U1|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|v_count\(2),
	datad => VCC,
	cin => \U1|Add1~3\,
	combout => \U1|Add1~4_combout\,
	cout => \U1|Add1~5\);

-- Location: LCCOMB_X56_Y46_N20
\U1|v_count[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|v_count[4]~0_combout\ = (!\U1|Equal1~0_combout\ & (\U1|Equal0~1_combout\ & (!\U1|h_count\(5) & \U1|process_0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal1~0_combout\,
	datab => \U1|Equal0~1_combout\,
	datac => \U1|h_count\(5),
	datad => \U1|process_0~3_combout\,
	combout => \U1|v_count[4]~0_combout\);

-- Location: LCCOMB_X56_Y45_N0
\U1|v_count[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|v_count[2]~10_combout\ = (\U1|v_count[6]~1_combout\ & (\U1|Add1~4_combout\ & ((\U1|v_count[4]~0_combout\)))) # (!\U1|v_count[6]~1_combout\ & ((\U1|v_count\(2)) # ((\U1|Add1~4_combout\ & \U1|v_count[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|v_count[6]~1_combout\,
	datab => \U1|Add1~4_combout\,
	datac => \U1|v_count\(2),
	datad => \U1|v_count[4]~0_combout\,
	combout => \U1|v_count[2]~10_combout\);

-- Location: FF_X56_Y45_N1
\U1|v_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U1|v_count[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|v_count\(2));

-- Location: LCCOMB_X56_Y45_N18
\U1|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add1~6_combout\ = (\U1|v_count\(3) & (!\U1|Add1~5\)) # (!\U1|v_count\(3) & ((\U1|Add1~5\) # (GND)))
-- \U1|Add1~7\ = CARRY((!\U1|Add1~5\) # (!\U1|v_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|v_count\(3),
	datad => VCC,
	cin => \U1|Add1~5\,
	combout => \U1|Add1~6_combout\,
	cout => \U1|Add1~7\);

-- Location: LCCOMB_X56_Y45_N2
\U1|v_count[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|v_count[3]~11_combout\ = (\U1|v_count[6]~1_combout\ & (\U1|Add1~6_combout\ & ((\U1|v_count[4]~0_combout\)))) # (!\U1|v_count[6]~1_combout\ & ((\U1|v_count\(3)) # ((\U1|Add1~6_combout\ & \U1|v_count[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|v_count[6]~1_combout\,
	datab => \U1|Add1~6_combout\,
	datac => \U1|v_count\(3),
	datad => \U1|v_count[4]~0_combout\,
	combout => \U1|v_count[3]~11_combout\);

-- Location: FF_X56_Y45_N3
\U1|v_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U1|v_count[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|v_count\(3));

-- Location: LCCOMB_X56_Y44_N6
\U1|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan1~0_combout\ = (((!\U1|v_count\(1) & !\U1|v_count\(0))) # (!\U1|v_count\(2))) # (!\U1|v_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|v_count\(1),
	datab => \U1|v_count\(0),
	datac => \U1|v_count\(3),
	datad => \U1|v_count\(2),
	combout => \U1|LessThan1~0_combout\);

-- Location: LCCOMB_X56_Y46_N18
\U1|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|process_0~1_combout\ = (!\U1|h_count\(5) & (!\U1|h_count\(6) & ((!\U1|h_count\(4)) # (!\U1|h_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|h_count\(5),
	datab => \U1|h_count\(6),
	datac => \U1|h_count\(3),
	datad => \U1|h_count\(4),
	combout => \U1|process_0~1_combout\);

-- Location: LCCOMB_X56_Y46_N24
\U1|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|process_0~0_combout\ = (!\U1|v_count\(9)) # (!\U1|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|h_count\(9),
	datac => \U1|v_count\(9),
	combout => \U1|process_0~0_combout\);

-- Location: LCCOMB_X56_Y46_N28
\U1|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|process_0~2_combout\ = (\U1|process_0~0_combout\) # ((!\U1|h_count\(8) & ((\U1|process_0~1_combout\) # (!\U1|h_count\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|process_0~1_combout\,
	datab => \U1|process_0~0_combout\,
	datac => \U1|h_count\(7),
	datad => \U1|h_count\(8),
	combout => \U1|process_0~2_combout\);

-- Location: LCCOMB_X56_Y45_N20
\U1|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add1~8_combout\ = (\U1|v_count\(4) & (\U1|Add1~7\ $ (GND))) # (!\U1|v_count\(4) & (!\U1|Add1~7\ & VCC))
-- \U1|Add1~9\ = CARRY((\U1|v_count\(4) & !\U1|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|v_count\(4),
	datad => VCC,
	cin => \U1|Add1~7\,
	combout => \U1|Add1~8_combout\,
	cout => \U1|Add1~9\);

-- Location: LCCOMB_X56_Y45_N6
\U1|v_count[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|v_count[4]~7_combout\ = (\U1|v_count[6]~1_combout\ & (\U1|Add1~8_combout\ & ((\U1|v_count[4]~0_combout\)))) # (!\U1|v_count[6]~1_combout\ & ((\U1|v_count\(4)) # ((\U1|Add1~8_combout\ & \U1|v_count[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|v_count[6]~1_combout\,
	datab => \U1|Add1~8_combout\,
	datac => \U1|v_count\(4),
	datad => \U1|v_count[4]~0_combout\,
	combout => \U1|v_count[4]~7_combout\);

-- Location: FF_X56_Y45_N7
\U1|v_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U1|v_count[4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|v_count\(4));

-- Location: LCCOMB_X56_Y45_N22
\U1|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add1~10_combout\ = (\U1|v_count\(5) & (!\U1|Add1~9\)) # (!\U1|v_count\(5) & ((\U1|Add1~9\) # (GND)))
-- \U1|Add1~11\ = CARRY((!\U1|Add1~9\) # (!\U1|v_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|v_count\(5),
	datad => VCC,
	cin => \U1|Add1~9\,
	combout => \U1|Add1~10_combout\,
	cout => \U1|Add1~11\);

-- Location: LCCOMB_X56_Y45_N8
\U1|v_count[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|v_count[5]~3_combout\ = (\U1|v_count[6]~1_combout\ & (\U1|Add1~10_combout\ & ((\U1|v_count[4]~0_combout\)))) # (!\U1|v_count[6]~1_combout\ & ((\U1|v_count\(5)) # ((\U1|Add1~10_combout\ & \U1|v_count[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|v_count[6]~1_combout\,
	datab => \U1|Add1~10_combout\,
	datac => \U1|v_count\(5),
	datad => \U1|v_count[4]~0_combout\,
	combout => \U1|v_count[5]~3_combout\);

-- Location: FF_X56_Y45_N9
\U1|v_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U1|v_count[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|v_count\(5));

-- Location: LCCOMB_X56_Y45_N24
\U1|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add1~12_combout\ = (\U1|v_count\(6) & (\U1|Add1~11\ $ (GND))) # (!\U1|v_count\(6) & (!\U1|Add1~11\ & VCC))
-- \U1|Add1~13\ = CARRY((\U1|v_count\(6) & !\U1|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|v_count\(6),
	datad => VCC,
	cin => \U1|Add1~11\,
	combout => \U1|Add1~12_combout\,
	cout => \U1|Add1~13\);

-- Location: LCCOMB_X56_Y45_N10
\U1|v_count[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|v_count[6]~4_combout\ = (\U1|v_count[6]~1_combout\ & (\U1|Add1~12_combout\ & ((\U1|v_count[4]~0_combout\)))) # (!\U1|v_count[6]~1_combout\ & ((\U1|v_count\(6)) # ((\U1|Add1~12_combout\ & \U1|v_count[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|v_count[6]~1_combout\,
	datab => \U1|Add1~12_combout\,
	datac => \U1|v_count\(6),
	datad => \U1|v_count[4]~0_combout\,
	combout => \U1|v_count[6]~4_combout\);

-- Location: FF_X56_Y45_N11
\U1|v_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U1|v_count[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|v_count\(6));

-- Location: LCCOMB_X57_Y45_N20
\U1|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan1~1_combout\ = (!\U1|v_count\(5) & (!\U1|v_count\(4) & (!\U1|v_count\(7) & !\U1|v_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|v_count\(5),
	datab => \U1|v_count\(4),
	datac => \U1|v_count\(7),
	datad => \U1|v_count\(6),
	combout => \U1|LessThan1~1_combout\);

-- Location: LCCOMB_X56_Y46_N6
\U1|process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|process_0~3_combout\ = (\U1|process_0~2_combout\) # ((\U1|LessThan1~0_combout\ & (!\U1|v_count\(8) & \U1|LessThan1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|LessThan1~0_combout\,
	datab => \U1|process_0~2_combout\,
	datac => \U1|v_count\(8),
	datad => \U1|LessThan1~1_combout\,
	combout => \U1|process_0~3_combout\);

-- Location: LCCOMB_X56_Y46_N30
\U1|v_count[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|v_count[6]~1_combout\ = ((!\U1|Equal1~0_combout\ & (\U1|Equal0~1_combout\ & !\U1|h_count\(5)))) # (!\U1|process_0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal1~0_combout\,
	datab => \U1|Equal0~1_combout\,
	datac => \U1|h_count\(5),
	datad => \U1|process_0~3_combout\,
	combout => \U1|v_count[6]~1_combout\);

-- Location: LCCOMB_X56_Y45_N26
\U1|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add1~14_combout\ = (\U1|v_count\(7) & (!\U1|Add1~13\)) # (!\U1|v_count\(7) & ((\U1|Add1~13\) # (GND)))
-- \U1|Add1~15\ = CARRY((!\U1|Add1~13\) # (!\U1|v_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|v_count\(7),
	datad => VCC,
	cin => \U1|Add1~13\,
	combout => \U1|Add1~14_combout\,
	cout => \U1|Add1~15\);

-- Location: LCCOMB_X56_Y45_N4
\U1|v_count[7]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|v_count[7]~5_combout\ = (\U1|v_count[6]~1_combout\ & (\U1|Add1~14_combout\ & ((\U1|v_count[4]~0_combout\)))) # (!\U1|v_count[6]~1_combout\ & ((\U1|v_count\(7)) # ((\U1|Add1~14_combout\ & \U1|v_count[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|v_count[6]~1_combout\,
	datab => \U1|Add1~14_combout\,
	datac => \U1|v_count\(7),
	datad => \U1|v_count[4]~0_combout\,
	combout => \U1|v_count[7]~5_combout\);

-- Location: FF_X56_Y45_N5
\U1|v_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U1|v_count[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|v_count\(7));

-- Location: LCCOMB_X56_Y45_N28
\U1|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add1~16_combout\ = (\U1|v_count\(8) & (\U1|Add1~15\ $ (GND))) # (!\U1|v_count\(8) & (!\U1|Add1~15\ & VCC))
-- \U1|Add1~17\ = CARRY((\U1|v_count\(8) & !\U1|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|v_count\(8),
	datad => VCC,
	cin => \U1|Add1~15\,
	combout => \U1|Add1~16_combout\,
	cout => \U1|Add1~17\);

-- Location: LCCOMB_X56_Y46_N4
\U1|v_count[8]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|v_count[8]~6_combout\ = (\U1|Add1~16_combout\ & ((\U1|v_count[4]~0_combout\) # ((\U1|v_count\(8) & !\U1|v_count[6]~1_combout\)))) # (!\U1|Add1~16_combout\ & (((\U1|v_count\(8) & !\U1|v_count[6]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add1~16_combout\,
	datab => \U1|v_count[4]~0_combout\,
	datac => \U1|v_count\(8),
	datad => \U1|v_count[6]~1_combout\,
	combout => \U1|v_count[8]~6_combout\);

-- Location: FF_X56_Y46_N5
\U1|v_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U1|v_count[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|v_count\(8));

-- Location: LCCOMB_X56_Y45_N30
\U1|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add1~18_combout\ = \U1|Add1~17\ $ (\U1|v_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U1|v_count\(9),
	cin => \U1|Add1~17\,
	combout => \U1|Add1~18_combout\);

-- Location: LCCOMB_X56_Y46_N26
\U1|v_count[9]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|v_count[9]~2_combout\ = (\U1|Add1~18_combout\ & ((\U1|v_count[4]~0_combout\) # ((\U1|v_count\(9) & !\U1|v_count[6]~1_combout\)))) # (!\U1|Add1~18_combout\ & (((\U1|v_count\(9) & !\U1|v_count[6]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add1~18_combout\,
	datab => \U1|v_count[4]~0_combout\,
	datac => \U1|v_count\(9),
	datad => \U1|v_count[6]~1_combout\,
	combout => \U1|v_count[9]~2_combout\);

-- Location: FF_X56_Y46_N27
\U1|v_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U1|v_count[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|v_count\(9));

-- Location: LCCOMB_X56_Y44_N28
\U1|LessThan6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan6~1_combout\ = (\U1|v_count\(1)) # ((\U1|v_count\(0)) # ((\U1|v_count\(3)) # (\U1|v_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|v_count\(1),
	datab => \U1|v_count\(0),
	datac => \U1|v_count\(3),
	datad => \U1|v_count\(2),
	combout => \U1|LessThan6~1_combout\);

-- Location: LCCOMB_X57_Y45_N24
\U1|LessThan6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan6~0_combout\ = (\U1|v_count\(6) & (\U1|v_count\(7) & (\U1|v_count\(5) & \U1|v_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|v_count\(6),
	datab => \U1|v_count\(7),
	datac => \U1|v_count\(5),
	datad => \U1|v_count\(8),
	combout => \U1|LessThan6~0_combout\);

-- Location: LCCOMB_X57_Y45_N28
\U1|LessThan6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan6~2_combout\ = (!\U1|v_count\(9) & (((!\U1|v_count\(4) & !\U1|LessThan6~1_combout\)) # (!\U1|LessThan6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|v_count\(9),
	datab => \U1|v_count\(4),
	datac => \U1|LessThan6~1_combout\,
	datad => \U1|LessThan6~0_combout\,
	combout => \U1|LessThan6~2_combout\);

-- Location: FF_X57_Y45_N29
\U1|video_on_v\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U1|LessThan6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|video_on_v~q\);

-- Location: LCCOMB_X58_Y45_N0
\U1|LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan5~0_combout\ = ((!\U1|h_count\(8) & !\U1|h_count\(7))) # (!\U1|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|h_count\(8),
	datac => \U1|h_count\(7),
	datad => \U1|h_count\(9),
	combout => \U1|LessThan5~0_combout\);

-- Location: FF_X58_Y45_N1
\U1|video_on_h\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U1|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|video_on_h~q\);

-- Location: LCCOMB_X59_Y45_N0
\U1|video_on~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|video_on~0_combout\ = (\U1|video_on_v~q\ & \U1|video_on_h~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|video_on_v~q\,
	datad => \U1|video_on_h~q\,
	combout => \U1|video_on~0_combout\);

-- Location: LCCOMB_X56_Y46_N12
\U1|process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|process_0~4_combout\ = ((\U1|h_count\(8)) # (!\U1|h_count\(9))) # (!\U1|h_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|h_count\(7),
	datac => \U1|h_count\(9),
	datad => \U1|h_count\(8),
	combout => \U1|process_0~4_combout\);

-- Location: LCCOMB_X56_Y46_N14
\U1|process_0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|process_0~6_combout\ = (\U1|h_count\(4) & (\U1|h_count\(3) & \U1|h_count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|h_count\(4),
	datac => \U1|h_count\(3),
	datad => \U1|h_count\(6),
	combout => \U1|process_0~6_combout\);

-- Location: LCCOMB_X57_Y46_N22
\U1|process_0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|process_0~5_combout\ = (\U1|h_count\(5) & ((\U1|h_count\(0)) # ((\U1|h_count\(1)) # (\U1|h_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|h_count\(0),
	datab => \U1|h_count\(5),
	datac => \U1|h_count\(1),
	datad => \U1|h_count\(2),
	combout => \U1|process_0~5_combout\);

-- Location: LCCOMB_X56_Y46_N22
\U1|process_0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|process_0~7_combout\ = (\U1|process_0~4_combout\) # ((\U1|process_0~1_combout\) # ((\U1|process_0~6_combout\ & \U1|process_0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|process_0~4_combout\,
	datab => \U1|process_0~1_combout\,
	datac => \U1|process_0~6_combout\,
	datad => \U1|process_0~5_combout\,
	combout => \U1|process_0~7_combout\);

-- Location: FF_X56_Y46_N23
\U1|horiz_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U1|process_0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|horiz_sync~q\);

-- Location: FF_X56_Y46_N9
\U1|horiz_sync_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \U1|horiz_sync~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|horiz_sync_out~q\);

-- Location: LCCOMB_X57_Y45_N30
\U1|process_0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|process_0~8_combout\ = ((\U1|v_count\(2) & ((\U1|v_count\(1)))) # (!\U1|v_count\(2) & ((!\U1|v_count\(1)) # (!\U1|v_count\(0))))) # (!\U1|v_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|v_count\(2),
	datab => \U1|v_count\(0),
	datac => \U1|v_count\(1),
	datad => \U1|v_count\(3),
	combout => \U1|process_0~8_combout\);

-- Location: LCCOMB_X57_Y45_N26
\U1|process_0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|process_0~9_combout\ = (\U1|v_count\(9)) # ((\U1|v_count\(4)) # ((\U1|process_0~8_combout\) # (!\U1|LessThan6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|v_count\(9),
	datab => \U1|v_count\(4),
	datac => \U1|process_0~8_combout\,
	datad => \U1|LessThan6~0_combout\,
	combout => \U1|process_0~9_combout\);

-- Location: FF_X57_Y45_N27
\U1|vert_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U1|process_0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|vert_sync~q\);

-- Location: FF_X57_Y45_N23
\U1|vert_sync_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \U1|vert_sync~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|vert_sync_out~q\);

-- Location: FF_X57_Y45_N17
\U1|pixel_row[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \U1|v_count\(8),
	sload => VCC,
	ena => \U1|LessThan6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|pixel_row\(8));

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: IOIBUF_X109_Y0_N8
\GPIO[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO(2),
	o => \GPIO[2]~input_o\);

-- Location: LCCOMB_X62_Y40_N30
\U_Y|a_sync1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_Y|a_sync1~0_combout\ = !\GPIO[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GPIO[2]~input_o\,
	combout => \U_Y|a_sync1~0_combout\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: FF_X62_Y40_N31
\U_Y|a_sync1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_Y|a_sync1~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_Y|a_sync1~q\);

-- Location: FF_X62_Y40_N29
\U_Y|a_sync2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U_Y|a_sync1~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_Y|a_sync2~q\);

-- Location: IOIBUF_X96_Y0_N22
\GPIO[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO(3),
	o => \GPIO[3]~input_o\);

-- Location: LCCOMB_X62_Y40_N20
\U_Y|b_sync1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_Y|b_sync1~0_combout\ = !\GPIO[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GPIO[3]~input_o\,
	combout => \U_Y|b_sync1~0_combout\);

-- Location: FF_X62_Y40_N21
\U_Y|b_sync1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_Y|b_sync1~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_Y|b_sync1~q\);

-- Location: LCCOMB_X62_Y40_N18
\U_Y|b_sync2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_Y|b_sync2~feeder_combout\ = \U_Y|b_sync1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_Y|b_sync1~q\,
	combout => \U_Y|b_sync2~feeder_combout\);

-- Location: FF_X62_Y40_N19
\U_Y|b_sync2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_Y|b_sync2~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_Y|b_sync2~q\);

-- Location: FF_X62_Y40_N23
\U_Y|prev_state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U_Y|a_sync2~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \U_Y|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_Y|prev_state\(1));

-- Location: LCCOMB_X62_Y40_N24
\U_Y|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_Y|Equal0~0_combout\ = (\U_Y|a_sync2~q\ & ((\U_Y|prev_state\(0) $ (\U_Y|b_sync2~q\)) # (!\U_Y|prev_state\(1)))) # (!\U_Y|a_sync2~q\ & ((\U_Y|prev_state\(1)) # (\U_Y|prev_state\(0) $ (\U_Y|b_sync2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Y|a_sync2~q\,
	datab => \U_Y|prev_state\(1),
	datac => \U_Y|prev_state\(0),
	datad => \U_Y|b_sync2~q\,
	combout => \U_Y|Equal0~0_combout\);

-- Location: FF_X62_Y40_N25
\U_Y|prev_state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U_Y|b_sync2~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \U_Y|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_Y|prev_state\(0));

-- Location: LCCOMB_X62_Y40_N0
\U_Y|dec_count[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_Y|dec_count[0]~0_combout\ = (\U_Y|a_sync2~q\ & ((\U_Y|prev_state\(1) $ (!\U_Y|b_sync2~q\)) # (!\U_Y|prev_state\(0)))) # (!\U_Y|a_sync2~q\ & ((\U_Y|prev_state\(0)) # (\U_Y|prev_state\(1) $ (!\U_Y|b_sync2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Y|a_sync2~q\,
	datab => \U_Y|prev_state\(0),
	datac => \U_Y|prev_state\(1),
	datad => \U_Y|b_sync2~q\,
	combout => \U_Y|dec_count[0]~0_combout\);

-- Location: LCCOMB_X63_Y41_N10
\U_Y|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_Y|Add1~0_combout\ = \U_Y|dec_count\(0) $ (VCC)
-- \U_Y|Add1~1\ = CARRY(\U_Y|dec_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Y|dec_count\(0),
	datad => VCC,
	combout => \U_Y|Add1~0_combout\,
	cout => \U_Y|Add1~1\);

-- Location: LCCOMB_X62_Y41_N6
\U_Y|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_Y|Add0~0_combout\ = \U_Y|dec_count\(0) $ (VCC)
-- \U_Y|Add0~1\ = CARRY(\U_Y|dec_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Y|dec_count\(0),
	datad => VCC,
	combout => \U_Y|Add0~0_combout\,
	cout => \U_Y|Add0~1\);

-- Location: LCCOMB_X62_Y41_N30
\U_Y|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_Y|Mux9~0_combout\ = (\U_Y|dec_count[0]~0_combout\ & (\U_Y|Add1~0_combout\)) # (!\U_Y|dec_count[0]~0_combout\ & ((\U_Y|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Y|dec_count[0]~0_combout\,
	datac => \U_Y|Add1~0_combout\,
	datad => \U_Y|Add0~0_combout\,
	combout => \U_Y|Mux9~0_combout\);

-- Location: LCCOMB_X62_Y40_N26
\U_Y|dec_count[9]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_Y|dec_count[9]~1_combout\ = \U_Y|a_sync2~q\ $ (\U_Y|prev_state\(0) $ (\U_Y|prev_state\(1) $ (\U_Y|b_sync2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Y|a_sync2~q\,
	datab => \U_Y|prev_state\(0),
	datac => \U_Y|prev_state\(1),
	datad => \U_Y|b_sync2~q\,
	combout => \U_Y|dec_count[9]~1_combout\);

-- Location: FF_X62_Y41_N31
\U_Y|dec_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_Y|Mux9~0_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \U_Y|dec_count[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_Y|dec_count\(0));

-- Location: LCCOMB_X62_Y41_N8
\U_Y|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_Y|Add0~2_combout\ = (\U_Y|dec_count\(1) & (!\U_Y|Add0~1\)) # (!\U_Y|dec_count\(1) & ((\U_Y|Add0~1\) # (GND)))
-- \U_Y|Add0~3\ = CARRY((!\U_Y|Add0~1\) # (!\U_Y|dec_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Y|dec_count\(1),
	datad => VCC,
	cin => \U_Y|Add0~1\,
	combout => \U_Y|Add0~2_combout\,
	cout => \U_Y|Add0~3\);

-- Location: LCCOMB_X63_Y41_N12
\U_Y|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_Y|Add1~2_combout\ = (\U_Y|dec_count\(1) & (\U_Y|Add1~1\ & VCC)) # (!\U_Y|dec_count\(1) & (!\U_Y|Add1~1\))
-- \U_Y|Add1~3\ = CARRY((!\U_Y|dec_count\(1) & !\U_Y|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Y|dec_count\(1),
	datad => VCC,
	cin => \U_Y|Add1~1\,
	combout => \U_Y|Add1~2_combout\,
	cout => \U_Y|Add1~3\);

-- Location: LCCOMB_X62_Y41_N28
\U_Y|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_Y|Mux8~0_combout\ = (\U_Y|dec_count[0]~0_combout\ & ((\U_Y|Add1~2_combout\))) # (!\U_Y|dec_count[0]~0_combout\ & (\U_Y|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Y|Add0~2_combout\,
	datac => \U_Y|Add1~2_combout\,
	datad => \U_Y|dec_count[0]~0_combout\,
	combout => \U_Y|Mux8~0_combout\);

-- Location: FF_X62_Y41_N29
\U_Y|dec_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_Y|Mux8~0_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \U_Y|dec_count[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_Y|dec_count\(1));

-- Location: LCCOMB_X62_Y41_N10
\U_Y|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_Y|Add0~4_combout\ = (\U_Y|dec_count\(2) & (\U_Y|Add0~3\ $ (GND))) # (!\U_Y|dec_count\(2) & (!\U_Y|Add0~3\ & VCC))
-- \U_Y|Add0~5\ = CARRY((\U_Y|dec_count\(2) & !\U_Y|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Y|dec_count\(2),
	datad => VCC,
	cin => \U_Y|Add0~3\,
	combout => \U_Y|Add0~4_combout\,
	cout => \U_Y|Add0~5\);

-- Location: LCCOMB_X63_Y41_N14
\U_Y|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_Y|Add1~4_combout\ = (\U_Y|dec_count\(2) & ((GND) # (!\U_Y|Add1~3\))) # (!\U_Y|dec_count\(2) & (\U_Y|Add1~3\ $ (GND)))
-- \U_Y|Add1~5\ = CARRY((\U_Y|dec_count\(2)) # (!\U_Y|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Y|dec_count\(2),
	datad => VCC,
	cin => \U_Y|Add1~3\,
	combout => \U_Y|Add1~4_combout\,
	cout => \U_Y|Add1~5\);

-- Location: LCCOMB_X60_Y41_N28
\U_Y|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_Y|Mux7~0_combout\ = (\U_Y|dec_count[0]~0_combout\ & ((\U_Y|Add1~4_combout\))) # (!\U_Y|dec_count[0]~0_combout\ & (\U_Y|Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Y|dec_count[0]~0_combout\,
	datac => \U_Y|Add0~4_combout\,
	datad => \U_Y|Add1~4_combout\,
	combout => \U_Y|Mux7~0_combout\);

-- Location: FF_X60_Y41_N29
\U_Y|dec_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_Y|Mux7~0_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \U_Y|dec_count[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_Y|dec_count\(2));

-- Location: LCCOMB_X60_Y41_N6
\U_Y|Equal4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_Y|Equal4~2_combout\ = (!\U_Y|dec_count\(2) & !\U_Y|dec_count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Y|dec_count\(2),
	datad => \U_Y|dec_count\(1),
	combout => \U_Y|Equal4~2_combout\);

-- Location: LCCOMB_X62_Y41_N12
\U_Y|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_Y|Add0~6_combout\ = (\U_Y|dec_count\(3) & (!\U_Y|Add0~5\)) # (!\U_Y|dec_count\(3) & ((\U_Y|Add0~5\) # (GND)))
-- \U_Y|Add0~7\ = CARRY((!\U_Y|Add0~5\) # (!\U_Y|dec_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Y|dec_count\(3),
	datad => VCC,
	cin => \U_Y|Add0~5\,
	combout => \U_Y|Add0~6_combout\,
	cout => \U_Y|Add0~7\);

-- Location: LCCOMB_X63_Y41_N16
\U_Y|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_Y|Add1~6_combout\ = (\U_Y|dec_count\(3) & (\U_Y|Add1~5\ & VCC)) # (!\U_Y|dec_count\(3) & (!\U_Y|Add1~5\))
-- \U_Y|Add1~7\ = CARRY((!\U_Y|dec_count\(3) & !\U_Y|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Y|dec_count\(3),
	datad => VCC,
	cin => \U_Y|Add1~5\,
	combout => \U_Y|Add1~6_combout\,
	cout => \U_Y|Add1~7\);

-- Location: LCCOMB_X60_Y41_N2
\U_Y|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_Y|Mux6~0_combout\ = (\U_Y|Mux5~0_combout\ & \U_Y|Add1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Y|Mux5~0_combout\,
	datac => \U_Y|Add1~6_combout\,
	combout => \U_Y|Mux6~0_combout\);

-- Location: LCCOMB_X61_Y41_N20
\U_Y|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_Y|Mux6~1_combout\ = (\U_Y|dec_count[0]~0_combout\ & (((\U_Y|Mux6~0_combout\)))) # (!\U_Y|dec_count[0]~0_combout\ & (!\U_Y|Equal2~2_combout\ & ((\U_Y|Add0~6_combout\) # (\U_Y|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Y|dec_count[0]~0_combout\,
	datab => \U_Y|Add0~6_combout\,
	datac => \U_Y|Equal2~2_combout\,
	datad => \U_Y|Mux6~0_combout\,
	combout => \U_Y|Mux6~1_combout\);

-- Location: FF_X61_Y41_N21
\U_Y|dec_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_Y|Mux6~1_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \U_Y|dec_count[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_Y|dec_count\(3));

-- Location: LCCOMB_X63_Y41_N18
\U_Y|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_Y|Add1~8_combout\ = (\U_Y|dec_count\(4) & (\U_Y|Add1~7\ $ (GND))) # (!\U_Y|dec_count\(4) & ((GND) # (!\U_Y|Add1~7\)))
-- \U_Y|Add1~9\ = CARRY((!\U_Y|Add1~7\) # (!\U_Y|dec_count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Y|dec_count\(4),
	datad => VCC,
	cin => \U_Y|Add1~7\,
	combout => \U_Y|Add1~8_combout\,
	cout => \U_Y|Add1~9\);

-- Location: LCCOMB_X63_Y41_N20
\U_Y|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_Y|Add1~10_combout\ = (\U_Y|dec_count\(5) & (!\U_Y|Add1~9\)) # (!\U_Y|dec_count\(5) & (\U_Y|Add1~9\ & VCC))
-- \U_Y|Add1~11\ = CARRY((\U_Y|dec_count\(5) & !\U_Y|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Y|dec_count\(5),
	datad => VCC,
	cin => \U_Y|Add1~9\,
	combout => \U_Y|Add1~10_combout\,
	cout => \U_Y|Add1~11\);

-- Location: LCCOMB_X62_Y41_N14
\U_Y|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_Y|Add0~8_combout\ = (\U_Y|dec_count\(4) & (!\U_Y|Add0~7\ & VCC)) # (!\U_Y|dec_count\(4) & (\U_Y|Add0~7\ $ (GND)))
-- \U_Y|Add0~9\ = CARRY((!\U_Y|dec_count\(4) & !\U_Y|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Y|dec_count\(4),
	datad => VCC,
	cin => \U_Y|Add0~7\,
	combout => \U_Y|Add0~8_combout\,
	cout => \U_Y|Add0~9\);

-- Location: LCCOMB_X62_Y41_N16
\U_Y|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_Y|Add0~10_combout\ = (\U_Y|dec_count\(5) & ((\U_Y|Add0~9\) # (GND))) # (!\U_Y|dec_count\(5) & (!\U_Y|Add0~9\))
-- \U_Y|Add0~11\ = CARRY((\U_Y|dec_count\(5)) # (!\U_Y|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Y|dec_count\(5),
	datad => VCC,
	cin => \U_Y|Add0~9\,
	combout => \U_Y|Add0~10_combout\,
	cout => \U_Y|Add0~11\);

-- Location: LCCOMB_X62_Y41_N4
\U_Y|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_Y|Mux4~0_combout\ = (\U_Y|dec_count[0]~0_combout\ & (((!\U_Y|Add1~10_combout\)))) # (!\U_Y|dec_count[0]~0_combout\ & ((\U_Y|Equal2~2_combout\) # ((!\U_Y|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Y|Equal2~2_combout\,
	datab => \U_Y|dec_count[0]~0_combout\,
	datac => \U_Y|Add1~10_combout\,
	datad => \U_Y|Add0~10_combout\,
	combout => \U_Y|Mux4~0_combout\);

-- Location: FF_X62_Y41_N5
\U_Y|dec_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_Y|Mux4~0_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \U_Y|dec_count[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_Y|dec_count\(5));

-- Location: LCCOMB_X63_Y41_N22
\U_Y|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_Y|Add1~12_combout\ = (\U_Y|dec_count\(6) & (\U_Y|Add1~11\ $ (GND))) # (!\U_Y|dec_count\(6) & ((GND) # (!\U_Y|Add1~11\)))
-- \U_Y|Add1~13\ = CARRY((!\U_Y|Add1~11\) # (!\U_Y|dec_count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Y|dec_count\(6),
	datad => VCC,
	cin => \U_Y|Add1~11\,
	combout => \U_Y|Add1~12_combout\,
	cout => \U_Y|Add1~13\);

-- Location: LCCOMB_X62_Y41_N18
\U_Y|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_Y|Add0~12_combout\ = (\U_Y|dec_count\(6) & (!\U_Y|Add0~11\ & VCC)) # (!\U_Y|dec_count\(6) & (\U_Y|Add0~11\ $ (GND)))
-- \U_Y|Add0~13\ = CARRY((!\U_Y|dec_count\(6) & !\U_Y|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Y|dec_count\(6),
	datad => VCC,
	cin => \U_Y|Add0~11\,
	combout => \U_Y|Add0~12_combout\,
	cout => \U_Y|Add0~13\);

-- Location: LCCOMB_X63_Y41_N30
\U_Y|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_Y|Mux3~0_combout\ = (\U_Y|dec_count[0]~0_combout\ & (!\U_Y|Add1~12_combout\)) # (!\U_Y|dec_count[0]~0_combout\ & (((\U_Y|Equal2~2_combout\) # (!\U_Y|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Y|Add1~12_combout\,
	datab => \U_Y|Add0~12_combout\,
	datac => \U_Y|Equal2~2_combout\,
	datad => \U_Y|dec_count[0]~0_combout\,
	combout => \U_Y|Mux3~0_combout\);

-- Location: FF_X62_Y41_N27
\U_Y|dec_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U_Y|Mux3~0_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \U_Y|dec_count[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_Y|dec_count\(6));

-- Location: LCCOMB_X62_Y41_N20
\U_Y|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_Y|Add0~14_combout\ = (\U_Y|dec_count\(7) & ((\U_Y|Add0~13\) # (GND))) # (!\U_Y|dec_count\(7) & (!\U_Y|Add0~13\))
-- \U_Y|Add0~15\ = CARRY((\U_Y|dec_count\(7)) # (!\U_Y|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Y|dec_count\(7),
	datad => VCC,
	cin => \U_Y|Add0~13\,
	combout => \U_Y|Add0~14_combout\,
	cout => \U_Y|Add0~15\);

-- Location: LCCOMB_X63_Y41_N24
\U_Y|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_Y|Add1~14_combout\ = (\U_Y|dec_count\(7) & (!\U_Y|Add1~13\)) # (!\U_Y|dec_count\(7) & (\U_Y|Add1~13\ & VCC))
-- \U_Y|Add1~15\ = CARRY((\U_Y|dec_count\(7) & !\U_Y|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Y|dec_count\(7),
	datad => VCC,
	cin => \U_Y|Add1~13\,
	combout => \U_Y|Add1~14_combout\,
	cout => \U_Y|Add1~15\);

-- Location: LCCOMB_X61_Y41_N2
\U_Y|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_Y|Mux2~0_combout\ = (\U_Y|dec_count[0]~0_combout\ & (((!\U_Y|Add1~14_combout\)))) # (!\U_Y|dec_count[0]~0_combout\ & ((\U_Y|Equal2~2_combout\) # ((!\U_Y|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Y|dec_count[0]~0_combout\,
	datab => \U_Y|Equal2~2_combout\,
	datac => \U_Y|Add0~14_combout\,
	datad => \U_Y|Add1~14_combout\,
	combout => \U_Y|Mux2~0_combout\);

-- Location: FF_X61_Y41_N3
\U_Y|dec_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_Y|Mux2~0_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \U_Y|dec_count[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_Y|dec_count\(7));

-- Location: LCCOMB_X62_Y41_N26
\U_Y|Equal4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_Y|Equal4~1_combout\ = (\U_Y|dec_count\(7) & (\U_Y|dec_count\(5) & (\U_Y|dec_count\(6) & !\U_Y|dec_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Y|dec_count\(7),
	datab => \U_Y|dec_count\(5),
	datac => \U_Y|dec_count\(6),
	datad => \U_Y|dec_count\(8),
	combout => \U_Y|Equal4~1_combout\);

-- Location: LCCOMB_X62_Y41_N22
\U_Y|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_Y|Add0~16_combout\ = (\U_Y|dec_count\(8) & (\U_Y|Add0~15\ $ (GND))) # (!\U_Y|dec_count\(8) & (!\U_Y|Add0~15\ & VCC))
-- \U_Y|Add0~17\ = CARRY((\U_Y|dec_count\(8) & !\U_Y|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Y|dec_count\(8),
	datad => VCC,
	cin => \U_Y|Add0~15\,
	combout => \U_Y|Add0~16_combout\,
	cout => \U_Y|Add0~17\);

-- Location: LCCOMB_X62_Y41_N24
\U_Y|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_Y|Add0~18_combout\ = \U_Y|Add0~17\ $ (\U_Y|dec_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U_Y|dec_count\(9),
	cin => \U_Y|Add0~17\,
	combout => \U_Y|Add0~18_combout\);

-- Location: LCCOMB_X63_Y41_N26
\U_Y|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_Y|Add1~16_combout\ = (\U_Y|dec_count\(8) & ((GND) # (!\U_Y|Add1~15\))) # (!\U_Y|dec_count\(8) & (\U_Y|Add1~15\ $ (GND)))
-- \U_Y|Add1~17\ = CARRY((\U_Y|dec_count\(8)) # (!\U_Y|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Y|dec_count\(8),
	datad => VCC,
	cin => \U_Y|Add1~15\,
	combout => \U_Y|Add1~16_combout\,
	cout => \U_Y|Add1~17\);

-- Location: LCCOMB_X63_Y41_N28
\U_Y|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_Y|Add1~18_combout\ = \U_Y|dec_count\(9) $ (!\U_Y|Add1~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Y|dec_count\(9),
	cin => \U_Y|Add1~17\,
	combout => \U_Y|Add1~18_combout\);

-- Location: LCCOMB_X61_Y41_N8
\U_Y|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_Y|Mux0~0_combout\ = (\U_Y|dec_count[0]~0_combout\ & (((\U_Y|Add1~18_combout\)))) # (!\U_Y|dec_count[0]~0_combout\ & (\U_Y|Add0~18_combout\ & (!\U_Y|Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Y|dec_count[0]~0_combout\,
	datab => \U_Y|Add0~18_combout\,
	datac => \U_Y|Equal2~2_combout\,
	datad => \U_Y|Add1~18_combout\,
	combout => \U_Y|Mux0~0_combout\);

-- Location: FF_X61_Y41_N9
\U_Y|dec_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_Y|Mux0~0_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \U_Y|dec_count[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_Y|dec_count\(9));

-- Location: LCCOMB_X63_Y41_N0
\U_Y|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_Y|Equal4~0_combout\ = (\U_Y|dec_count\(4) & (!\U_Y|dec_count\(9) & (!\U_Y|dec_count\(3) & !\U_Y|dec_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Y|dec_count\(4),
	datab => \U_Y|dec_count\(9),
	datac => \U_Y|dec_count\(3),
	datad => \U_Y|dec_count\(0),
	combout => \U_Y|Equal4~0_combout\);

-- Location: LCCOMB_X60_Y41_N24
\U_Y|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_Y|Mux5~0_combout\ = (\U_Y|dec_count[0]~0_combout\ & (((!\U_Y|Equal4~0_combout\) # (!\U_Y|Equal4~1_combout\)) # (!\U_Y|Equal4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Y|Equal4~2_combout\,
	datab => \U_Y|dec_count[0]~0_combout\,
	datac => \U_Y|Equal4~1_combout\,
	datad => \U_Y|Equal4~0_combout\,
	combout => \U_Y|Mux5~0_combout\);

-- Location: LCCOMB_X62_Y41_N2
\U_Y|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_Y|Mux5~1_combout\ = (\U_Y|Mux5~0_combout\ & (!\U_Y|Add1~8_combout\ & ((\U_Y|dec_count[0]~0_combout\) # (!\U_Y|Add0~8_combout\)))) # (!\U_Y|Mux5~0_combout\ & ((\U_Y|dec_count[0]~0_combout\) # ((!\U_Y|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Y|Mux5~0_combout\,
	datab => \U_Y|dec_count[0]~0_combout\,
	datac => \U_Y|Add0~8_combout\,
	datad => \U_Y|Add1~8_combout\,
	combout => \U_Y|Mux5~1_combout\);

-- Location: FF_X62_Y41_N3
\U_Y|dec_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_Y|Mux5~1_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \U_Y|dec_count[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_Y|dec_count\(4));

-- Location: LCCOMB_X63_Y41_N8
\U_Y|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_Y|Equal2~0_combout\ = (\U_Y|dec_count\(4) & (\U_Y|dec_count\(9) & (!\U_Y|dec_count\(3) & \U_Y|dec_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Y|dec_count\(4),
	datab => \U_Y|dec_count\(9),
	datac => \U_Y|dec_count\(3),
	datad => \U_Y|dec_count\(0),
	combout => \U_Y|Equal2~0_combout\);

-- Location: LCCOMB_X63_Y41_N2
\U_Y|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_Y|Equal2~1_combout\ = (!\U_Y|dec_count\(6) & (!\U_Y|dec_count\(5) & (\U_Y|dec_count\(8) & !\U_Y|dec_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Y|dec_count\(6),
	datab => \U_Y|dec_count\(5),
	datac => \U_Y|dec_count\(8),
	datad => \U_Y|dec_count\(7),
	combout => \U_Y|Equal2~1_combout\);

-- Location: LCCOMB_X63_Y41_N4
\U_Y|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_Y|Equal2~2_combout\ = (\U_Y|dec_count\(2) & (\U_Y|dec_count\(1) & (\U_Y|Equal2~0_combout\ & \U_Y|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Y|dec_count\(2),
	datab => \U_Y|dec_count\(1),
	datac => \U_Y|Equal2~0_combout\,
	datad => \U_Y|Equal2~1_combout\,
	combout => \U_Y|Equal2~2_combout\);

-- Location: LCCOMB_X62_Y41_N0
\U_Y|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_Y|Mux1~0_combout\ = (\U_Y|dec_count[0]~0_combout\ & (((\U_Y|Add1~16_combout\)))) # (!\U_Y|dec_count[0]~0_combout\ & (!\U_Y|Equal2~2_combout\ & (\U_Y|Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Y|Equal2~2_combout\,
	datab => \U_Y|dec_count[0]~0_combout\,
	datac => \U_Y|Add0~16_combout\,
	datad => \U_Y|Add1~16_combout\,
	combout => \U_Y|Mux1~0_combout\);

-- Location: FF_X62_Y41_N1
\U_Y|dec_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_Y|Mux1~0_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \U_Y|dec_count[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_Y|dec_count\(8));

-- Location: LCCOMB_X61_Y41_N22
\U2|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~0_combout\ = \U_Y|dec_count\(6) $ (GND)
-- \U2|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~1\ = CARRY(!\U_Y|dec_count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Y|dec_count\(6),
	datad => VCC,
	combout => \U2|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~0_combout\,
	cout => \U2|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~1\);

-- Location: LCCOMB_X61_Y41_N24
\U2|Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~2_combout\ = (\U_Y|dec_count\(7) & ((\U2|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~1\) # (GND))) # (!\U_Y|dec_count\(7) & 
-- (!\U2|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~1\))
-- \U2|Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~3\ = CARRY((\U_Y|dec_count\(7)) # (!\U2|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Y|dec_count\(7),
	datad => VCC,
	cin => \U2|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~1\,
	combout => \U2|Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~2_combout\,
	cout => \U2|Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~3\);

-- Location: LCCOMB_X61_Y41_N26
\U2|Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~4_combout\ = (\U_Y|dec_count\(8) & (\U2|Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~3\ $ (GND))) # (!\U_Y|dec_count\(8) & 
-- (!\U2|Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~3\ & VCC))
-- \U2|Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~5\ = CARRY((\U_Y|dec_count\(8) & !\U2|Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Y|dec_count\(8),
	datad => VCC,
	cin => \U2|Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~3\,
	combout => \U2|Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~4_combout\,
	cout => \U2|Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~5\);

-- Location: LCCOMB_X61_Y41_N28
\U2|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~6_combout\ = (\U_Y|dec_count\(9) & (!\U2|Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~5\)) # (!\U_Y|dec_count\(9) & 
-- ((\U2|Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~5\) # (GND)))
-- \U2|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~7\ = CARRY((!\U2|Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~5\) # (!\U_Y|dec_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Y|dec_count\(9),
	datad => VCC,
	cin => \U2|Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~5\,
	combout => \U2|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~6_combout\,
	cout => \U2|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~7\);

-- Location: LCCOMB_X61_Y41_N30
\U2|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~8_combout\ = \U2|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U2|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~7\,
	combout => \U2|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~8_combout\);

-- Location: LCCOMB_X61_Y41_N4
\U2|Mod1|auto_generated|divider|divider|StageOut[87]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mod1|auto_generated|divider|divider|StageOut[87]~0_combout\ = (\U_Y|dec_count\(8) & \U2|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Y|dec_count\(8),
	datac => \U2|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~8_combout\,
	combout => \U2|Mod1|auto_generated|divider|divider|StageOut[87]~0_combout\);

-- Location: LCCOMB_X61_Y41_N14
\U2|Mod1|auto_generated|divider|divider|StageOut[87]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mod1|auto_generated|divider|divider|StageOut[87]~1_combout\ = (\U2|Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~4_combout\ & !\U2|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~4_combout\,
	datac => \U2|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~8_combout\,
	combout => \U2|Mod1|auto_generated|divider|divider|StageOut[87]~1_combout\);

-- Location: LCCOMB_X60_Y41_N0
\U2|Mod1|auto_generated|divider|divider|StageOut[86]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mod1|auto_generated|divider|divider|StageOut[86]~3_combout\ = (!\U2|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~8_combout\ & \U2|Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~8_combout\,
	datad => \U2|Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~2_combout\,
	combout => \U2|Mod1|auto_generated|divider|divider|StageOut[86]~3_combout\);

-- Location: LCCOMB_X61_Y41_N0
\U2|Mod1|auto_generated|divider|divider|StageOut[86]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mod1|auto_generated|divider|divider|StageOut[86]~2_combout\ = (\U2|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~8_combout\ & !\U_Y|dec_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~8_combout\,
	datad => \U_Y|dec_count\(7),
	combout => \U2|Mod1|auto_generated|divider|divider|StageOut[86]~2_combout\);

-- Location: LCCOMB_X61_Y41_N10
\U2|Mod1|auto_generated|divider|divider|StageOut[85]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mod1|auto_generated|divider|divider|StageOut[85]~4_combout\ = (!\U_Y|dec_count\(6) & \U2|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Y|dec_count\(6),
	datac => \U2|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~8_combout\,
	combout => \U2|Mod1|auto_generated|divider|divider|StageOut[85]~4_combout\);

-- Location: LCCOMB_X61_Y41_N12
\U2|Mod1|auto_generated|divider|divider|StageOut[85]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mod1|auto_generated|divider|divider|StageOut[85]~5_combout\ = (\U2|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~0_combout\ & !\U2|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~0_combout\,
	datac => \U2|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~8_combout\,
	combout => \U2|Mod1|auto_generated|divider|divider|StageOut[85]~5_combout\);

-- Location: LCCOMB_X61_Y41_N6
\U2|Mod1|auto_generated|divider|divider|StageOut[84]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mod1|auto_generated|divider|divider|StageOut[84]~6_combout\ = (\U2|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~8_combout\ & !\U_Y|dec_count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~8_combout\,
	datad => \U_Y|dec_count\(5),
	combout => \U2|Mod1|auto_generated|divider|divider|StageOut[84]~6_combout\);

-- Location: LCCOMB_X61_Y41_N16
\U2|Mod1|auto_generated|divider|divider|StageOut[84]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mod1|auto_generated|divider|divider|StageOut[84]~7_combout\ = (!\U2|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~8_combout\ & !\U_Y|dec_count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~8_combout\,
	datad => \U_Y|dec_count\(5),
	combout => \U2|Mod1|auto_generated|divider|divider|StageOut[84]~7_combout\);

-- Location: LCCOMB_X60_Y45_N0
\U2|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~0_combout\ = (((\U2|Mod1|auto_generated|divider|divider|StageOut[84]~6_combout\) # (\U2|Mod1|auto_generated|divider|divider|StageOut[84]~7_combout\)))
-- \U2|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~1\ = CARRY((\U2|Mod1|auto_generated|divider|divider|StageOut[84]~6_combout\) # (\U2|Mod1|auto_generated|divider|divider|StageOut[84]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mod1|auto_generated|divider|divider|StageOut[84]~6_combout\,
	datab => \U2|Mod1|auto_generated|divider|divider|StageOut[84]~7_combout\,
	datad => VCC,
	combout => \U2|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~0_combout\,
	cout => \U2|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~1\);

-- Location: LCCOMB_X60_Y45_N2
\U2|Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~2_combout\ = (\U2|Mod1|auto_generated|divider|divider|StageOut[85]~4_combout\ & (((!\U2|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~1\)))) # 
-- (!\U2|Mod1|auto_generated|divider|divider|StageOut[85]~4_combout\ & ((\U2|Mod1|auto_generated|divider|divider|StageOut[85]~5_combout\ & (!\U2|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~1\)) # 
-- (!\U2|Mod1|auto_generated|divider|divider|StageOut[85]~5_combout\ & ((\U2|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~1\) # (GND)))))
-- \U2|Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~3\ = CARRY(((!\U2|Mod1|auto_generated|divider|divider|StageOut[85]~4_combout\ & !\U2|Mod1|auto_generated|divider|divider|StageOut[85]~5_combout\)) # 
-- (!\U2|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mod1|auto_generated|divider|divider|StageOut[85]~4_combout\,
	datab => \U2|Mod1|auto_generated|divider|divider|StageOut[85]~5_combout\,
	datad => VCC,
	cin => \U2|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~1\,
	combout => \U2|Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~2_combout\,
	cout => \U2|Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~3\);

-- Location: LCCOMB_X60_Y45_N4
\U2|Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~4_combout\ = (\U2|Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~3\ & (((\U2|Mod1|auto_generated|divider|divider|StageOut[86]~3_combout\) # 
-- (\U2|Mod1|auto_generated|divider|divider|StageOut[86]~2_combout\)))) # (!\U2|Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~3\ & ((((\U2|Mod1|auto_generated|divider|divider|StageOut[86]~3_combout\) # 
-- (\U2|Mod1|auto_generated|divider|divider|StageOut[86]~2_combout\)))))
-- \U2|Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~5\ = CARRY((!\U2|Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~3\ & ((\U2|Mod1|auto_generated|divider|divider|StageOut[86]~3_combout\) # 
-- (\U2|Mod1|auto_generated|divider|divider|StageOut[86]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mod1|auto_generated|divider|divider|StageOut[86]~3_combout\,
	datab => \U2|Mod1|auto_generated|divider|divider|StageOut[86]~2_combout\,
	datad => VCC,
	cin => \U2|Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~3\,
	combout => \U2|Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~4_combout\,
	cout => \U2|Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~5\);

-- Location: LCCOMB_X60_Y45_N6
\U2|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~6_combout\ = (\U2|Mod1|auto_generated|divider|divider|StageOut[87]~0_combout\ & (((!\U2|Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~5\)))) # 
-- (!\U2|Mod1|auto_generated|divider|divider|StageOut[87]~0_combout\ & ((\U2|Mod1|auto_generated|divider|divider|StageOut[87]~1_combout\ & (!\U2|Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~5\)) # 
-- (!\U2|Mod1|auto_generated|divider|divider|StageOut[87]~1_combout\ & ((\U2|Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~5\) # (GND)))))
-- \U2|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~7\ = CARRY(((!\U2|Mod1|auto_generated|divider|divider|StageOut[87]~0_combout\ & !\U2|Mod1|auto_generated|divider|divider|StageOut[87]~1_combout\)) # 
-- (!\U2|Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mod1|auto_generated|divider|divider|StageOut[87]~0_combout\,
	datab => \U2|Mod1|auto_generated|divider|divider|StageOut[87]~1_combout\,
	datad => VCC,
	cin => \U2|Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~5\,
	combout => \U2|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~6_combout\,
	cout => \U2|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~7\);

-- Location: LCCOMB_X60_Y41_N10
\U2|Mod1|auto_generated|divider|divider|StageOut[88]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mod1|auto_generated|divider|divider|StageOut[88]~9_combout\ = (!\U2|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~8_combout\ & \U2|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~8_combout\,
	datad => \U2|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~6_combout\,
	combout => \U2|Mod1|auto_generated|divider|divider|StageOut[88]~9_combout\);

-- Location: LCCOMB_X61_Y41_N18
\U2|Mod1|auto_generated|divider|divider|StageOut[88]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mod1|auto_generated|divider|divider|StageOut[88]~8_combout\ = (\U_Y|dec_count\(9) & \U2|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Y|dec_count\(9),
	datac => \U2|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~8_combout\,
	combout => \U2|Mod1|auto_generated|divider|divider|StageOut[88]~8_combout\);

-- Location: LCCOMB_X60_Y45_N8
\U2|Mod1|auto_generated|divider|divider|add_sub_9_result_int[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mod1|auto_generated|divider|divider|add_sub_9_result_int[9]~9_cout\ = CARRY((\U2|Mod1|auto_generated|divider|divider|StageOut[88]~9_combout\) # ((\U2|Mod1|auto_generated|divider|divider|StageOut[88]~8_combout\) # 
-- (!\U2|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mod1|auto_generated|divider|divider|StageOut[88]~9_combout\,
	datab => \U2|Mod1|auto_generated|divider|divider|StageOut[88]~8_combout\,
	datad => VCC,
	cin => \U2|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~7\,
	cout => \U2|Mod1|auto_generated|divider|divider|add_sub_9_result_int[9]~9_cout\);

-- Location: LCCOMB_X60_Y45_N10
\U2|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~10_combout\ = !\U2|Mod1|auto_generated|divider|divider|add_sub_9_result_int[9]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U2|Mod1|auto_generated|divider|divider|add_sub_9_result_int[9]~9_cout\,
	combout => \U2|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~10_combout\);

-- Location: LCCOMB_X60_Y45_N12
\U2|Mod1|auto_generated|divider|divider|StageOut[98]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mod1|auto_generated|divider|divider|StageOut[98]~10_combout\ = (\U2|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~10_combout\ & ((\U2|Mod1|auto_generated|divider|divider|StageOut[87]~0_combout\) # 
-- ((\U2|Mod1|auto_generated|divider|divider|StageOut[87]~1_combout\)))) # (!\U2|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~10_combout\ & (((\U2|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mod1|auto_generated|divider|divider|StageOut[87]~0_combout\,
	datab => \U2|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~6_combout\,
	datac => \U2|Mod1|auto_generated|divider|divider|StageOut[87]~1_combout\,
	datad => \U2|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~10_combout\,
	combout => \U2|Mod1|auto_generated|divider|divider|StageOut[98]~10_combout\);

-- Location: LCCOMB_X61_Y45_N8
\U2|Mod1|auto_generated|divider|divider|StageOut[97]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mod1|auto_generated|divider|divider|StageOut[97]~11_combout\ = (\U2|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~10_combout\ & ((\U2|Mod1|auto_generated|divider|divider|StageOut[86]~3_combout\) # 
-- ((\U2|Mod1|auto_generated|divider|divider|StageOut[86]~2_combout\)))) # (!\U2|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~10_combout\ & (((\U2|Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~10_combout\,
	datab => \U2|Mod1|auto_generated|divider|divider|StageOut[86]~3_combout\,
	datac => \U2|Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~4_combout\,
	datad => \U2|Mod1|auto_generated|divider|divider|StageOut[86]~2_combout\,
	combout => \U2|Mod1|auto_generated|divider|divider|StageOut[97]~11_combout\);

-- Location: FF_X57_Y45_N15
\U1|pixel_row[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \U1|v_count\(7),
	sload => VCC,
	ena => \U1|LessThan6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|pixel_row\(7));

-- Location: FF_X57_Y45_N13
\U1|pixel_row[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \U1|v_count\(6),
	sload => VCC,
	ena => \U1|LessThan6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|pixel_row\(6));

-- Location: LCCOMB_X61_Y45_N2
\U2|Mod1|auto_generated|divider|divider|StageOut[96]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mod1|auto_generated|divider|divider|StageOut[96]~12_combout\ = (\U2|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~10_combout\ & (((\U2|Mod1|auto_generated|divider|divider|StageOut[85]~4_combout\) # 
-- (\U2|Mod1|auto_generated|divider|divider|StageOut[85]~5_combout\)))) # (!\U2|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~10_combout\ & (\U2|Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~2_combout\,
	datab => \U2|Mod1|auto_generated|divider|divider|StageOut[85]~4_combout\,
	datac => \U2|Mod1|auto_generated|divider|divider|StageOut[85]~5_combout\,
	datad => \U2|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~10_combout\,
	combout => \U2|Mod1|auto_generated|divider|divider|StageOut[96]~12_combout\);

-- Location: FF_X57_Y45_N11
\U1|pixel_row[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \U1|v_count\(5),
	sload => VCC,
	ena => \U1|LessThan6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|pixel_row\(5));

-- Location: LCCOMB_X61_Y45_N4
\U2|Mod1|auto_generated|divider|divider|StageOut[95]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mod1|auto_generated|divider|divider|StageOut[95]~13_combout\ = (\U2|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~10_combout\ & (!\U_Y|dec_count\(5))) # (!\U2|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~10_combout\ & 
-- ((\U2|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Y|dec_count\(5),
	datac => \U2|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~0_combout\,
	datad => \U2|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~10_combout\,
	combout => \U2|Mod1|auto_generated|divider|divider|StageOut[95]~13_combout\);

-- Location: FF_X57_Y45_N9
\U1|pixel_row[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \U1|v_count\(4),
	sload => VCC,
	ena => \U1|LessThan6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|pixel_row\(4));

-- Location: FF_X57_Y45_N7
\U1|pixel_row[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \U1|v_count\(3),
	sload => VCC,
	ena => \U1|LessThan6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|pixel_row\(3));

-- Location: FF_X57_Y45_N5
\U1|pixel_row[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \U1|v_count\(2),
	sload => VCC,
	ena => \U1|LessThan6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|pixel_row\(2));

-- Location: FF_X57_Y45_N3
\U1|pixel_row[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \U1|v_count\(1),
	sload => VCC,
	ena => \U1|LessThan6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|pixel_row\(1));

-- Location: FF_X57_Y45_N1
\U1|pixel_row[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \U1|v_count\(0),
	sload => VCC,
	ena => \U1|LessThan6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|pixel_row\(0));

-- Location: LCCOMB_X59_Y45_N6
\U2|LessThan4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|LessThan4~1_cout\ = CARRY((\U_Y|dec_count\(0) & !\U1|pixel_row\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Y|dec_count\(0),
	datab => \U1|pixel_row\(0),
	datad => VCC,
	cout => \U2|LessThan4~1_cout\);

-- Location: LCCOMB_X59_Y45_N8
\U2|LessThan4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|LessThan4~3_cout\ = CARRY((\U1|pixel_row\(1) & ((!\U2|LessThan4~1_cout\) # (!\U_Y|dec_count\(1)))) # (!\U1|pixel_row\(1) & (!\U_Y|dec_count\(1) & !\U2|LessThan4~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|pixel_row\(1),
	datab => \U_Y|dec_count\(1),
	datad => VCC,
	cin => \U2|LessThan4~1_cout\,
	cout => \U2|LessThan4~3_cout\);

-- Location: LCCOMB_X59_Y45_N10
\U2|LessThan4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|LessThan4~5_cout\ = CARRY((\U1|pixel_row\(2) & (\U_Y|dec_count\(2) & !\U2|LessThan4~3_cout\)) # (!\U1|pixel_row\(2) & ((\U_Y|dec_count\(2)) # (!\U2|LessThan4~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|pixel_row\(2),
	datab => \U_Y|dec_count\(2),
	datad => VCC,
	cin => \U2|LessThan4~3_cout\,
	cout => \U2|LessThan4~5_cout\);

-- Location: LCCOMB_X59_Y45_N12
\U2|LessThan4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|LessThan4~7_cout\ = CARRY((\U_Y|dec_count\(3) & (\U1|pixel_row\(3) & !\U2|LessThan4~5_cout\)) # (!\U_Y|dec_count\(3) & ((\U1|pixel_row\(3)) # (!\U2|LessThan4~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Y|dec_count\(3),
	datab => \U1|pixel_row\(3),
	datad => VCC,
	cin => \U2|LessThan4~5_cout\,
	cout => \U2|LessThan4~7_cout\);

-- Location: LCCOMB_X59_Y45_N14
\U2|LessThan4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|LessThan4~9_cout\ = CARRY((\U1|pixel_row\(4) & (!\U_Y|dec_count\(4) & !\U2|LessThan4~7_cout\)) # (!\U1|pixel_row\(4) & ((!\U2|LessThan4~7_cout\) # (!\U_Y|dec_count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|pixel_row\(4),
	datab => \U_Y|dec_count\(4),
	datad => VCC,
	cin => \U2|LessThan4~7_cout\,
	cout => \U2|LessThan4~9_cout\);

-- Location: LCCOMB_X59_Y45_N16
\U2|LessThan4~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|LessThan4~11_cout\ = CARRY((\U1|pixel_row\(5) & ((!\U2|LessThan4~9_cout\) # (!\U2|Mod1|auto_generated|divider|divider|StageOut[95]~13_combout\))) # (!\U1|pixel_row\(5) & (!\U2|Mod1|auto_generated|divider|divider|StageOut[95]~13_combout\ & 
-- !\U2|LessThan4~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|pixel_row\(5),
	datab => \U2|Mod1|auto_generated|divider|divider|StageOut[95]~13_combout\,
	datad => VCC,
	cin => \U2|LessThan4~9_cout\,
	cout => \U2|LessThan4~11_cout\);

-- Location: LCCOMB_X59_Y45_N18
\U2|LessThan4~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|LessThan4~13_cout\ = CARRY((\U1|pixel_row\(6) & (\U2|Mod1|auto_generated|divider|divider|StageOut[96]~12_combout\ & !\U2|LessThan4~11_cout\)) # (!\U1|pixel_row\(6) & ((\U2|Mod1|auto_generated|divider|divider|StageOut[96]~12_combout\) # 
-- (!\U2|LessThan4~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|pixel_row\(6),
	datab => \U2|Mod1|auto_generated|divider|divider|StageOut[96]~12_combout\,
	datad => VCC,
	cin => \U2|LessThan4~11_cout\,
	cout => \U2|LessThan4~13_cout\);

-- Location: LCCOMB_X59_Y45_N20
\U2|LessThan4~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|LessThan4~15_cout\ = CARRY((\U2|Mod1|auto_generated|divider|divider|StageOut[97]~11_combout\ & (\U1|pixel_row\(7) & !\U2|LessThan4~13_cout\)) # (!\U2|Mod1|auto_generated|divider|divider|StageOut[97]~11_combout\ & ((\U1|pixel_row\(7)) # 
-- (!\U2|LessThan4~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mod1|auto_generated|divider|divider|StageOut[97]~11_combout\,
	datab => \U1|pixel_row\(7),
	datad => VCC,
	cin => \U2|LessThan4~13_cout\,
	cout => \U2|LessThan4~15_cout\);

-- Location: LCCOMB_X59_Y45_N22
\U2|LessThan4~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|LessThan4~16_combout\ = (\U1|pixel_row\(8) & (!\U2|LessThan4~15_cout\ & \U2|Mod1|auto_generated|divider|divider|StageOut[98]~10_combout\)) # (!\U1|pixel_row\(8) & ((\U2|Mod1|auto_generated|divider|divider|StageOut[98]~10_combout\) # 
-- (!\U2|LessThan4~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|pixel_row\(8),
	datad => \U2|Mod1|auto_generated|divider|divider|StageOut[98]~10_combout\,
	cin => \U2|LessThan4~15_cout\,
	combout => \U2|LessThan4~16_combout\);

-- Location: FF_X58_Y45_N13
\U1|pixel_column[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \U1|h_count\(9),
	sload => VCC,
	ena => \U1|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|pixel_column\(9));

-- Location: IOIBUF_X107_Y0_N1
\GPIO[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO(0),
	o => \GPIO[0]~input_o\);

-- Location: LCCOMB_X58_Y47_N30
\U_X|a_sync1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_X|a_sync1~0_combout\ = !\GPIO[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GPIO[0]~input_o\,
	combout => \U_X|a_sync1~0_combout\);

-- Location: FF_X58_Y47_N31
\U_X|a_sync1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_X|a_sync1~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_X|a_sync1~q\);

-- Location: FF_X58_Y47_N27
\U_X|a_sync2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U_X|a_sync1~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_X|a_sync2~q\);

-- Location: IOIBUF_X60_Y0_N22
\GPIO[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO(1),
	o => \GPIO[1]~input_o\);

-- Location: LCCOMB_X58_Y47_N12
\U_X|b_sync1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_X|b_sync1~0_combout\ = !\GPIO[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GPIO[1]~input_o\,
	combout => \U_X|b_sync1~0_combout\);

-- Location: FF_X58_Y47_N13
\U_X|b_sync1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_X|b_sync1~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_X|b_sync1~q\);

-- Location: LCCOMB_X58_Y47_N8
\U_X|b_sync2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_X|b_sync2~feeder_combout\ = \U_X|b_sync1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_X|b_sync1~q\,
	combout => \U_X|b_sync2~feeder_combout\);

-- Location: FF_X58_Y47_N9
\U_X|b_sync2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_X|b_sync2~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_X|b_sync2~q\);

-- Location: LCCOMB_X58_Y46_N26
\U_X|prev_state[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_X|prev_state[0]~feeder_combout\ = \U_X|b_sync2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_X|b_sync2~q\,
	combout => \U_X|prev_state[0]~feeder_combout\);

-- Location: FF_X58_Y46_N27
\U_X|prev_state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_X|prev_state[0]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \U_X|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_X|prev_state\(0));

-- Location: LCCOMB_X58_Y46_N12
\U_X|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_X|Equal0~0_combout\ = (\U_X|prev_state\(0) & ((\U_X|a_sync2~q\ $ (\U_X|prev_state\(1))) # (!\U_X|b_sync2~q\))) # (!\U_X|prev_state\(0) & ((\U_X|b_sync2~q\) # (\U_X|a_sync2~q\ $ (\U_X|prev_state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_X|prev_state\(0),
	datab => \U_X|a_sync2~q\,
	datac => \U_X|prev_state\(1),
	datad => \U_X|b_sync2~q\,
	combout => \U_X|Equal0~0_combout\);

-- Location: FF_X58_Y46_N13
\U_X|prev_state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U_X|a_sync2~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \U_X|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_X|prev_state\(1));

-- Location: LCCOMB_X58_Y47_N4
\U_X|dec_count[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_X|dec_count[3]~0_combout\ = (\U_X|a_sync2~q\ & ((\U_X|prev_state\(1) $ (!\U_X|b_sync2~q\)) # (!\U_X|prev_state\(0)))) # (!\U_X|a_sync2~q\ & ((\U_X|prev_state\(0)) # (\U_X|prev_state\(1) $ (!\U_X|b_sync2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_X|a_sync2~q\,
	datab => \U_X|prev_state\(1),
	datac => \U_X|prev_state\(0),
	datad => \U_X|b_sync2~q\,
	combout => \U_X|dec_count[3]~0_combout\);

-- Location: LCCOMB_X56_Y47_N12
\U_X|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_X|Add0~0_combout\ = \U_X|dec_count\(0) $ (VCC)
-- \U_X|Add0~1\ = CARRY(\U_X|dec_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_X|dec_count\(0),
	datad => VCC,
	combout => \U_X|Add0~0_combout\,
	cout => \U_X|Add0~1\);

-- Location: LCCOMB_X57_Y47_N0
\U_X|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_X|Add1~0_combout\ = \U_X|dec_count\(0) $ (VCC)
-- \U_X|Add1~1\ = CARRY(\U_X|dec_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_X|dec_count\(0),
	datad => VCC,
	combout => \U_X|Add1~0_combout\,
	cout => \U_X|Add1~1\);

-- Location: LCCOMB_X57_Y47_N22
\U_X|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_X|Mux9~0_combout\ = (\U_X|dec_count[3]~0_combout\ & ((\U_X|Add1~0_combout\))) # (!\U_X|dec_count[3]~0_combout\ & (\U_X|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_X|Add0~0_combout\,
	datab => \U_X|Add1~0_combout\,
	datad => \U_X|dec_count[3]~0_combout\,
	combout => \U_X|Mux9~0_combout\);

-- Location: LCCOMB_X58_Y47_N2
\U_X|dec_count[9]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_X|dec_count[9]~1_combout\ = \U_X|a_sync2~q\ $ (\U_X|prev_state\(1) $ (\U_X|prev_state\(0) $ (\U_X|b_sync2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_X|a_sync2~q\,
	datab => \U_X|prev_state\(1),
	datac => \U_X|prev_state\(0),
	datad => \U_X|b_sync2~q\,
	combout => \U_X|dec_count[9]~1_combout\);

-- Location: FF_X57_Y47_N23
\U_X|dec_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_X|Mux9~0_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \U_X|dec_count[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_X|dec_count\(0));

-- Location: LCCOMB_X57_Y47_N2
\U_X|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_X|Add1~2_combout\ = (\U_X|dec_count\(1) & (\U_X|Add1~1\ & VCC)) # (!\U_X|dec_count\(1) & (!\U_X|Add1~1\))
-- \U_X|Add1~3\ = CARRY((!\U_X|dec_count\(1) & !\U_X|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_X|dec_count\(1),
	datad => VCC,
	cin => \U_X|Add1~1\,
	combout => \U_X|Add1~2_combout\,
	cout => \U_X|Add1~3\);

-- Location: LCCOMB_X56_Y47_N14
\U_X|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_X|Add0~2_combout\ = (\U_X|dec_count\(1) & (!\U_X|Add0~1\)) # (!\U_X|dec_count\(1) & ((\U_X|Add0~1\) # (GND)))
-- \U_X|Add0~3\ = CARRY((!\U_X|Add0~1\) # (!\U_X|dec_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_X|dec_count\(1),
	datad => VCC,
	cin => \U_X|Add0~1\,
	combout => \U_X|Add0~2_combout\,
	cout => \U_X|Add0~3\);

-- Location: LCCOMB_X58_Y47_N6
\U_X|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_X|Mux8~0_combout\ = (\U_X|dec_count[3]~0_combout\ & (\U_X|Add1~2_combout\)) # (!\U_X|dec_count[3]~0_combout\ & ((\U_X|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_X|Add1~2_combout\,
	datab => \U_X|dec_count[3]~0_combout\,
	datac => \U_X|Add0~2_combout\,
	combout => \U_X|Mux8~0_combout\);

-- Location: FF_X58_Y47_N7
\U_X|dec_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_X|Mux8~0_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \U_X|dec_count[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_X|dec_count\(1));

-- Location: LCCOMB_X56_Y47_N16
\U_X|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_X|Add0~4_combout\ = (\U_X|dec_count\(2) & (\U_X|Add0~3\ $ (GND))) # (!\U_X|dec_count\(2) & (!\U_X|Add0~3\ & VCC))
-- \U_X|Add0~5\ = CARRY((\U_X|dec_count\(2) & !\U_X|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_X|dec_count\(2),
	datad => VCC,
	cin => \U_X|Add0~3\,
	combout => \U_X|Add0~4_combout\,
	cout => \U_X|Add0~5\);

-- Location: LCCOMB_X57_Y47_N4
\U_X|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_X|Add1~4_combout\ = (\U_X|dec_count\(2) & ((GND) # (!\U_X|Add1~3\))) # (!\U_X|dec_count\(2) & (\U_X|Add1~3\ $ (GND)))
-- \U_X|Add1~5\ = CARRY((\U_X|dec_count\(2)) # (!\U_X|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_X|dec_count\(2),
	datad => VCC,
	cin => \U_X|Add1~3\,
	combout => \U_X|Add1~4_combout\,
	cout => \U_X|Add1~5\);

-- Location: LCCOMB_X58_Y47_N28
\U_X|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_X|Mux7~0_combout\ = (\U_X|dec_count[3]~0_combout\ & ((\U_X|Add1~4_combout\))) # (!\U_X|dec_count[3]~0_combout\ & (\U_X|Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_X|Add0~4_combout\,
	datab => \U_X|dec_count[3]~0_combout\,
	datac => \U_X|Add1~4_combout\,
	combout => \U_X|Mux7~0_combout\);

-- Location: FF_X58_Y47_N29
\U_X|dec_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_X|Mux7~0_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \U_X|dec_count[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_X|dec_count\(2));

-- Location: LCCOMB_X56_Y47_N18
\U_X|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_X|Add0~6_combout\ = (\U_X|dec_count\(3) & (!\U_X|Add0~5\)) # (!\U_X|dec_count\(3) & ((\U_X|Add0~5\) # (GND)))
-- \U_X|Add0~7\ = CARRY((!\U_X|Add0~5\) # (!\U_X|dec_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_X|dec_count\(3),
	datad => VCC,
	cin => \U_X|Add0~5\,
	combout => \U_X|Add0~6_combout\,
	cout => \U_X|Add0~7\);

-- Location: LCCOMB_X57_Y47_N6
\U_X|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_X|Add1~6_combout\ = (\U_X|dec_count\(3) & (\U_X|Add1~5\ & VCC)) # (!\U_X|dec_count\(3) & (!\U_X|Add1~5\))
-- \U_X|Add1~7\ = CARRY((!\U_X|dec_count\(3) & !\U_X|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_X|dec_count\(3),
	datad => VCC,
	cin => \U_X|Add1~5\,
	combout => \U_X|Add1~6_combout\,
	cout => \U_X|Add1~7\);

-- Location: LCCOMB_X58_Y47_N22
\U_X|Equal4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_X|Equal4~2_combout\ = (!\U_X|dec_count\(1) & !\U_X|dec_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_X|dec_count\(1),
	datad => \U_X|dec_count\(2),
	combout => \U_X|Equal4~2_combout\);

-- Location: LCCOMB_X57_Y47_N8
\U_X|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_X|Add1~8_combout\ = (\U_X|dec_count\(4) & ((GND) # (!\U_X|Add1~7\))) # (!\U_X|dec_count\(4) & (\U_X|Add1~7\ $ (GND)))
-- \U_X|Add1~9\ = CARRY((\U_X|dec_count\(4)) # (!\U_X|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_X|dec_count\(4),
	datad => VCC,
	cin => \U_X|Add1~7\,
	combout => \U_X|Add1~8_combout\,
	cout => \U_X|Add1~9\);

-- Location: LCCOMB_X56_Y47_N20
\U_X|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_X|Add0~8_combout\ = (\U_X|dec_count\(4) & (\U_X|Add0~7\ $ (GND))) # (!\U_X|dec_count\(4) & (!\U_X|Add0~7\ & VCC))
-- \U_X|Add0~9\ = CARRY((\U_X|dec_count\(4) & !\U_X|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_X|dec_count\(4),
	datad => VCC,
	cin => \U_X|Add0~7\,
	combout => \U_X|Add0~8_combout\,
	cout => \U_X|Add0~9\);

-- Location: LCCOMB_X58_Y47_N0
\U_X|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_X|Mux5~1_combout\ = (\U_X|Add1~8_combout\ & ((\U_X|Mux5~0_combout\) # ((\U_X|Add0~8_combout\ & !\U_X|dec_count[3]~0_combout\)))) # (!\U_X|Add1~8_combout\ & (\U_X|Add0~8_combout\ & (!\U_X|dec_count[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_X|Add1~8_combout\,
	datab => \U_X|Add0~8_combout\,
	datac => \U_X|dec_count[3]~0_combout\,
	datad => \U_X|Mux5~0_combout\,
	combout => \U_X|Mux5~1_combout\);

-- Location: FF_X58_Y47_N1
\U_X|dec_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_X|Mux5~1_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \U_X|dec_count[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_X|dec_count\(4));

-- Location: LCCOMB_X58_Y47_N20
\U_X|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_X|Equal4~0_combout\ = (!\U_X|dec_count\(3) & (!\U_X|dec_count\(9) & (!\U_X|dec_count\(4) & !\U_X|dec_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_X|dec_count\(3),
	datab => \U_X|dec_count\(9),
	datac => \U_X|dec_count\(4),
	datad => \U_X|dec_count\(0),
	combout => \U_X|Equal4~0_combout\);

-- Location: LCCOMB_X57_Y47_N10
\U_X|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_X|Add1~10_combout\ = (\U_X|dec_count\(5) & (\U_X|Add1~9\ & VCC)) # (!\U_X|dec_count\(5) & (!\U_X|Add1~9\))
-- \U_X|Add1~11\ = CARRY((!\U_X|dec_count\(5) & !\U_X|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_X|dec_count\(5),
	datad => VCC,
	cin => \U_X|Add1~9\,
	combout => \U_X|Add1~10_combout\,
	cout => \U_X|Add1~11\);

-- Location: LCCOMB_X56_Y47_N22
\U_X|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_X|Add0~10_combout\ = (\U_X|dec_count\(5) & (!\U_X|Add0~9\)) # (!\U_X|dec_count\(5) & ((\U_X|Add0~9\) # (GND)))
-- \U_X|Add0~11\ = CARRY((!\U_X|Add0~9\) # (!\U_X|dec_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_X|dec_count\(5),
	datad => VCC,
	cin => \U_X|Add0~9\,
	combout => \U_X|Add0~10_combout\,
	cout => \U_X|Add0~11\);

-- Location: LCCOMB_X57_Y47_N28
\U_X|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_X|Mux4~0_combout\ = (\U_X|dec_count[3]~0_combout\ & (\U_X|Add1~10_combout\)) # (!\U_X|dec_count[3]~0_combout\ & (((!\U_X|Equal2~2_combout\ & \U_X|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_X|Add1~10_combout\,
	datab => \U_X|Equal2~2_combout\,
	datac => \U_X|Add0~10_combout\,
	datad => \U_X|dec_count[3]~0_combout\,
	combout => \U_X|Mux4~0_combout\);

-- Location: FF_X57_Y47_N29
\U_X|dec_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_X|Mux4~0_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \U_X|dec_count[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_X|dec_count\(5));

-- Location: LCCOMB_X59_Y47_N16
\U_X|Equal4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_X|Equal4~1_combout\ = (!\U_X|dec_count\(7) & (\U_X|dec_count\(6) & (!\U_X|dec_count\(5) & \U_X|dec_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_X|dec_count\(7),
	datab => \U_X|dec_count\(6),
	datac => \U_X|dec_count\(5),
	datad => \U_X|dec_count\(8),
	combout => \U_X|Equal4~1_combout\);

-- Location: LCCOMB_X58_Y47_N24
\U_X|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_X|Mux5~0_combout\ = (\U_X|dec_count[3]~0_combout\ & (((!\U_X|Equal4~1_combout\) # (!\U_X|Equal4~0_combout\)) # (!\U_X|Equal4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_X|Equal4~2_combout\,
	datab => \U_X|Equal4~0_combout\,
	datac => \U_X|dec_count[3]~0_combout\,
	datad => \U_X|Equal4~1_combout\,
	combout => \U_X|Mux5~0_combout\);

-- Location: LCCOMB_X58_Y47_N10
\U_X|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_X|Mux6~0_combout\ = (\U_X|Add0~6_combout\ & (((\U_X|Add1~6_combout\ & \U_X|Mux5~0_combout\)) # (!\U_X|dec_count[3]~0_combout\))) # (!\U_X|Add0~6_combout\ & (\U_X|Add1~6_combout\ & ((\U_X|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_X|Add0~6_combout\,
	datab => \U_X|Add1~6_combout\,
	datac => \U_X|dec_count[3]~0_combout\,
	datad => \U_X|Mux5~0_combout\,
	combout => \U_X|Mux6~0_combout\);

-- Location: LCCOMB_X58_Y47_N18
\U_X|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_X|Mux6~1_combout\ = (\U_X|Mux6~0_combout\ & ((\U_X|dec_count[3]~0_combout\) # (!\U_X|Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_X|Mux6~0_combout\,
	datab => \U_X|Equal2~2_combout\,
	datac => \U_X|dec_count[3]~0_combout\,
	combout => \U_X|Mux6~1_combout\);

-- Location: FF_X58_Y47_N19
\U_X|dec_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_X|Mux6~1_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \U_X|dec_count[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_X|dec_count\(3));

-- Location: LCCOMB_X58_Y47_N14
\U_X|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_X|Equal2~0_combout\ = (!\U_X|dec_count\(3) & (\U_X|dec_count\(9) & (!\U_X|dec_count\(4) & \U_X|dec_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_X|dec_count\(3),
	datab => \U_X|dec_count\(9),
	datac => \U_X|dec_count\(4),
	datad => \U_X|dec_count\(0),
	combout => \U_X|Equal2~0_combout\);

-- Location: LCCOMB_X59_Y47_N22
\U_X|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_X|Equal2~1_combout\ = (\U_X|dec_count\(7) & (!\U_X|dec_count\(6) & (\U_X|dec_count\(5) & !\U_X|dec_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_X|dec_count\(7),
	datab => \U_X|dec_count\(6),
	datac => \U_X|dec_count\(5),
	datad => \U_X|dec_count\(8),
	combout => \U_X|Equal2~1_combout\);

-- Location: LCCOMB_X58_Y47_N16
\U_X|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_X|Equal2~2_combout\ = (\U_X|dec_count\(1) & (\U_X|dec_count\(2) & (\U_X|Equal2~0_combout\ & \U_X|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_X|dec_count\(1),
	datab => \U_X|dec_count\(2),
	datac => \U_X|Equal2~0_combout\,
	datad => \U_X|Equal2~1_combout\,
	combout => \U_X|Equal2~2_combout\);

-- Location: LCCOMB_X57_Y47_N12
\U_X|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_X|Add1~12_combout\ = (\U_X|dec_count\(6) & (\U_X|Add1~11\ $ (GND))) # (!\U_X|dec_count\(6) & ((GND) # (!\U_X|Add1~11\)))
-- \U_X|Add1~13\ = CARRY((!\U_X|Add1~11\) # (!\U_X|dec_count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_X|dec_count\(6),
	datad => VCC,
	cin => \U_X|Add1~11\,
	combout => \U_X|Add1~12_combout\,
	cout => \U_X|Add1~13\);

-- Location: LCCOMB_X56_Y47_N24
\U_X|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_X|Add0~12_combout\ = (\U_X|dec_count\(6) & (!\U_X|Add0~11\ & VCC)) # (!\U_X|dec_count\(6) & (\U_X|Add0~11\ $ (GND)))
-- \U_X|Add0~13\ = CARRY((!\U_X|dec_count\(6) & !\U_X|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_X|dec_count\(6),
	datad => VCC,
	cin => \U_X|Add0~11\,
	combout => \U_X|Add0~12_combout\,
	cout => \U_X|Add0~13\);

-- Location: LCCOMB_X57_Y47_N26
\U_X|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_X|Mux3~0_combout\ = (\U_X|dec_count[3]~0_combout\ & (((!\U_X|Add1~12_combout\)))) # (!\U_X|dec_count[3]~0_combout\ & ((\U_X|Equal2~2_combout\) # ((!\U_X|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_X|dec_count[3]~0_combout\,
	datab => \U_X|Equal2~2_combout\,
	datac => \U_X|Add1~12_combout\,
	datad => \U_X|Add0~12_combout\,
	combout => \U_X|Mux3~0_combout\);

-- Location: FF_X57_Y47_N27
\U_X|dec_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_X|Mux3~0_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \U_X|dec_count[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_X|dec_count\(6));

-- Location: LCCOMB_X56_Y47_N26
\U_X|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_X|Add0~14_combout\ = (\U_X|dec_count\(7) & (!\U_X|Add0~13\)) # (!\U_X|dec_count\(7) & ((\U_X|Add0~13\) # (GND)))
-- \U_X|Add0~15\ = CARRY((!\U_X|Add0~13\) # (!\U_X|dec_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_X|dec_count\(7),
	datad => VCC,
	cin => \U_X|Add0~13\,
	combout => \U_X|Add0~14_combout\,
	cout => \U_X|Add0~15\);

-- Location: LCCOMB_X57_Y47_N14
\U_X|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_X|Add1~14_combout\ = (\U_X|dec_count\(7) & (\U_X|Add1~13\ & VCC)) # (!\U_X|dec_count\(7) & (!\U_X|Add1~13\))
-- \U_X|Add1~15\ = CARRY((!\U_X|dec_count\(7) & !\U_X|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_X|dec_count\(7),
	datad => VCC,
	cin => \U_X|Add1~13\,
	combout => \U_X|Add1~14_combout\,
	cout => \U_X|Add1~15\);

-- Location: LCCOMB_X57_Y47_N24
\U_X|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_X|Mux2~0_combout\ = (\U_X|dec_count[3]~0_combout\ & (((\U_X|Add1~14_combout\)))) # (!\U_X|dec_count[3]~0_combout\ & (\U_X|Add0~14_combout\ & (!\U_X|Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_X|Add0~14_combout\,
	datab => \U_X|Equal2~2_combout\,
	datac => \U_X|Add1~14_combout\,
	datad => \U_X|dec_count[3]~0_combout\,
	combout => \U_X|Mux2~0_combout\);

-- Location: FF_X57_Y47_N25
\U_X|dec_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_X|Mux2~0_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \U_X|dec_count[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_X|dec_count\(7));

-- Location: LCCOMB_X57_Y47_N16
\U_X|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_X|Add1~16_combout\ = (\U_X|dec_count\(8) & (\U_X|Add1~15\ $ (GND))) # (!\U_X|dec_count\(8) & ((GND) # (!\U_X|Add1~15\)))
-- \U_X|Add1~17\ = CARRY((!\U_X|Add1~15\) # (!\U_X|dec_count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_X|dec_count\(8),
	datad => VCC,
	cin => \U_X|Add1~15\,
	combout => \U_X|Add1~16_combout\,
	cout => \U_X|Add1~17\);

-- Location: LCCOMB_X56_Y47_N28
\U_X|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_X|Add0~16_combout\ = (\U_X|dec_count\(8) & (!\U_X|Add0~15\ & VCC)) # (!\U_X|dec_count\(8) & (\U_X|Add0~15\ $ (GND)))
-- \U_X|Add0~17\ = CARRY((!\U_X|dec_count\(8) & !\U_X|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_X|dec_count\(8),
	datad => VCC,
	cin => \U_X|Add0~15\,
	combout => \U_X|Add0~16_combout\,
	cout => \U_X|Add0~17\);

-- Location: LCCOMB_X57_Y47_N30
\U_X|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_X|Mux1~0_combout\ = (\U_X|dec_count[3]~0_combout\ & (!\U_X|Add1~16_combout\)) # (!\U_X|dec_count[3]~0_combout\ & (((\U_X|Equal2~2_combout\) # (!\U_X|Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_X|dec_count[3]~0_combout\,
	datab => \U_X|Add1~16_combout\,
	datac => \U_X|Add0~16_combout\,
	datad => \U_X|Equal2~2_combout\,
	combout => \U_X|Mux1~0_combout\);

-- Location: FF_X57_Y47_N31
\U_X|dec_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_X|Mux1~0_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \U_X|dec_count[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_X|dec_count\(8));

-- Location: LCCOMB_X57_Y47_N18
\U_X|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_X|Add1~18_combout\ = \U_X|Add1~17\ $ (!\U_X|dec_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U_X|dec_count\(9),
	cin => \U_X|Add1~17\,
	combout => \U_X|Add1~18_combout\);

-- Location: LCCOMB_X56_Y47_N30
\U_X|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_X|Add0~18_combout\ = \U_X|dec_count\(9) $ (\U_X|Add0~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_X|dec_count\(9),
	cin => \U_X|Add0~17\,
	combout => \U_X|Add0~18_combout\);

-- Location: LCCOMB_X57_Y47_N20
\U_X|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_X|Mux0~0_combout\ = (\U_X|dec_count[3]~0_combout\ & (\U_X|Add1~18_combout\)) # (!\U_X|dec_count[3]~0_combout\ & (((!\U_X|Equal2~2_combout\ & \U_X|Add0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_X|dec_count[3]~0_combout\,
	datab => \U_X|Add1~18_combout\,
	datac => \U_X|Equal2~2_combout\,
	datad => \U_X|Add0~18_combout\,
	combout => \U_X|Mux0~0_combout\);

-- Location: FF_X57_Y47_N21
\U_X|dec_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_X|Mux0~0_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \U_X|dec_count[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_X|dec_count\(9));

-- Location: LCCOMB_X56_Y47_N4
\U2|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~0_combout\ = \U_X|dec_count\(7) $ (VCC)
-- \U2|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~1\ = CARRY(\U_X|dec_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_X|dec_count\(7),
	datad => VCC,
	combout => \U2|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~0_combout\,
	cout => \U2|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~1\);

-- Location: LCCOMB_X56_Y47_N6
\U2|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~2_combout\ = (\U_X|dec_count\(8) & (!\U2|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~1\)) # (!\U_X|dec_count\(8) & 
-- (\U2|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~1\ & VCC))
-- \U2|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~3\ = CARRY((\U_X|dec_count\(8) & !\U2|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_X|dec_count\(8),
	datad => VCC,
	cin => \U2|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~1\,
	combout => \U2|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~2_combout\,
	cout => \U2|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~3\);

-- Location: LCCOMB_X56_Y47_N8
\U2|Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~4_combout\ = (\U_X|dec_count\(9) & (\U2|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~3\ $ (GND))) # (!\U_X|dec_count\(9) & 
-- (!\U2|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~3\ & VCC))
-- \U2|Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~5\ = CARRY((\U_X|dec_count\(9) & !\U2|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_X|dec_count\(9),
	datad => VCC,
	cin => \U2|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~3\,
	combout => \U2|Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~4_combout\,
	cout => \U2|Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~5\);

-- Location: LCCOMB_X56_Y47_N10
\U2|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~6_combout\ = !\U2|Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U2|Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~5\,
	combout => \U2|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~6_combout\);

-- Location: LCCOMB_X56_Y47_N0
\U2|Mod0|auto_generated|divider|divider|StageOut[99]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mod0|auto_generated|divider|divider|StageOut[99]~0_combout\ = (\U2|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~6_combout\ & ((\U_X|dec_count\(9)))) # (!\U2|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~6_combout\ & 
-- (\U2|Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~6_combout\,
	datab => \U2|Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~4_combout\,
	datac => \U_X|dec_count\(9),
	combout => \U2|Mod0|auto_generated|divider|divider|StageOut[99]~0_combout\);

-- Location: LCCOMB_X60_Y47_N0
\U2|Mod0|auto_generated|divider|divider|StageOut[98]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mod0|auto_generated|divider|divider|StageOut[98]~1_combout\ = (\U2|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~6_combout\ & ((!\U_X|dec_count\(8)))) # (!\U2|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~6_combout\ & 
-- (\U2|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~6_combout\,
	datac => \U2|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~2_combout\,
	datad => \U_X|dec_count\(8),
	combout => \U2|Mod0|auto_generated|divider|divider|StageOut[98]~1_combout\);

-- Location: FF_X58_Y45_N11
\U1|pixel_column[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \U1|h_count\(8),
	sload => VCC,
	ena => \U1|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|pixel_column\(8));

-- Location: LCCOMB_X60_Y47_N26
\U2|Mod0|auto_generated|divider|divider|StageOut[97]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Mod0|auto_generated|divider|divider|StageOut[97]~2_combout\ = (\U2|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~6_combout\ & ((\U_X|dec_count\(7)))) # (!\U2|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~6_combout\ & 
-- (\U2|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~6_combout\,
	datac => \U2|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~0_combout\,
	datad => \U_X|dec_count\(7),
	combout => \U2|Mod0|auto_generated|divider|divider|StageOut[97]~2_combout\);

-- Location: FF_X58_Y45_N9
\U1|pixel_column[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \U1|h_count\(7),
	sload => VCC,
	ena => \U1|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|pixel_column\(7));

-- Location: FF_X59_Y46_N1
\U1|pixel_column[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \U1|h_count\(6),
	sload => VCC,
	ena => \U1|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|pixel_column\(6));

-- Location: FF_X59_Y46_N3
\U1|pixel_column[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \U1|h_count\(5),
	sload => VCC,
	ena => \U1|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|pixel_column\(5));

-- Location: FF_X59_Y46_N29
\U1|pixel_column[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \U1|h_count\(4),
	sload => VCC,
	ena => \U1|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|pixel_column\(4));

-- Location: FF_X59_Y46_N27
\U1|pixel_column[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \U1|h_count\(3),
	sload => VCC,
	ena => \U1|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|pixel_column\(3));

-- Location: FF_X59_Y46_N5
\U1|pixel_column[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \U1|h_count\(2),
	sload => VCC,
	ena => \U1|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|pixel_column\(2));

-- Location: FF_X59_Y46_N13
\U1|pixel_column[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \U1|h_count\(1),
	sload => VCC,
	ena => \U1|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|pixel_column\(1));

-- Location: FF_X59_Y46_N31
\U1|pixel_column[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|video_PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \U1|h_count\(0),
	sload => VCC,
	ena => \U1|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|pixel_column\(0));

-- Location: LCCOMB_X59_Y46_N6
\U2|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|LessThan2~1_cout\ = CARRY((!\U1|pixel_column\(0) & \U_X|dec_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|pixel_column\(0),
	datab => \U_X|dec_count\(0),
	datad => VCC,
	cout => \U2|LessThan2~1_cout\);

-- Location: LCCOMB_X59_Y46_N8
\U2|LessThan2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|LessThan2~3_cout\ = CARRY((\U1|pixel_column\(1) & ((!\U2|LessThan2~1_cout\) # (!\U_X|dec_count\(1)))) # (!\U1|pixel_column\(1) & (!\U_X|dec_count\(1) & !\U2|LessThan2~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|pixel_column\(1),
	datab => \U_X|dec_count\(1),
	datad => VCC,
	cin => \U2|LessThan2~1_cout\,
	cout => \U2|LessThan2~3_cout\);

-- Location: LCCOMB_X59_Y46_N10
\U2|LessThan2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|LessThan2~5_cout\ = CARRY((\U_X|dec_count\(2) & ((!\U2|LessThan2~3_cout\) # (!\U1|pixel_column\(2)))) # (!\U_X|dec_count\(2) & (!\U1|pixel_column\(2) & !\U2|LessThan2~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_X|dec_count\(2),
	datab => \U1|pixel_column\(2),
	datad => VCC,
	cin => \U2|LessThan2~3_cout\,
	cout => \U2|LessThan2~5_cout\);

-- Location: LCCOMB_X59_Y46_N12
\U2|LessThan2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|LessThan2~7_cout\ = CARRY((\U_X|dec_count\(3) & (\U1|pixel_column\(3) & !\U2|LessThan2~5_cout\)) # (!\U_X|dec_count\(3) & ((\U1|pixel_column\(3)) # (!\U2|LessThan2~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_X|dec_count\(3),
	datab => \U1|pixel_column\(3),
	datad => VCC,
	cin => \U2|LessThan2~5_cout\,
	cout => \U2|LessThan2~7_cout\);

-- Location: LCCOMB_X59_Y46_N14
\U2|LessThan2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|LessThan2~9_cout\ = CARRY((\U_X|dec_count\(4) & ((!\U2|LessThan2~7_cout\) # (!\U1|pixel_column\(4)))) # (!\U_X|dec_count\(4) & (!\U1|pixel_column\(4) & !\U2|LessThan2~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_X|dec_count\(4),
	datab => \U1|pixel_column\(4),
	datad => VCC,
	cin => \U2|LessThan2~7_cout\,
	cout => \U2|LessThan2~9_cout\);

-- Location: LCCOMB_X59_Y46_N16
\U2|LessThan2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|LessThan2~11_cout\ = CARRY((\U_X|dec_count\(5) & (\U1|pixel_column\(5) & !\U2|LessThan2~9_cout\)) # (!\U_X|dec_count\(5) & ((\U1|pixel_column\(5)) # (!\U2|LessThan2~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_X|dec_count\(5),
	datab => \U1|pixel_column\(5),
	datad => VCC,
	cin => \U2|LessThan2~9_cout\,
	cout => \U2|LessThan2~11_cout\);

-- Location: LCCOMB_X59_Y46_N18
\U2|LessThan2~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|LessThan2~13_cout\ = CARRY((\U_X|dec_count\(6) & (!\U1|pixel_column\(6) & !\U2|LessThan2~11_cout\)) # (!\U_X|dec_count\(6) & ((!\U2|LessThan2~11_cout\) # (!\U1|pixel_column\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_X|dec_count\(6),
	datab => \U1|pixel_column\(6),
	datad => VCC,
	cin => \U2|LessThan2~11_cout\,
	cout => \U2|LessThan2~13_cout\);

-- Location: LCCOMB_X59_Y46_N20
\U2|LessThan2~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|LessThan2~15_cout\ = CARRY((\U2|Mod0|auto_generated|divider|divider|StageOut[97]~2_combout\ & (\U1|pixel_column\(7) & !\U2|LessThan2~13_cout\)) # (!\U2|Mod0|auto_generated|divider|divider|StageOut[97]~2_combout\ & ((\U1|pixel_column\(7)) # 
-- (!\U2|LessThan2~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mod0|auto_generated|divider|divider|StageOut[97]~2_combout\,
	datab => \U1|pixel_column\(7),
	datad => VCC,
	cin => \U2|LessThan2~13_cout\,
	cout => \U2|LessThan2~15_cout\);

-- Location: LCCOMB_X59_Y46_N22
\U2|LessThan2~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|LessThan2~17_cout\ = CARRY((\U2|Mod0|auto_generated|divider|divider|StageOut[98]~1_combout\ & ((!\U2|LessThan2~15_cout\) # (!\U1|pixel_column\(8)))) # (!\U2|Mod0|auto_generated|divider|divider|StageOut[98]~1_combout\ & (!\U1|pixel_column\(8) & 
-- !\U2|LessThan2~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mod0|auto_generated|divider|divider|StageOut[98]~1_combout\,
	datab => \U1|pixel_column\(8),
	datad => VCC,
	cin => \U2|LessThan2~15_cout\,
	cout => \U2|LessThan2~17_cout\);

-- Location: LCCOMB_X59_Y46_N24
\U2|LessThan2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|LessThan2~18_combout\ = (\U1|pixel_column\(9) & (\U2|LessThan2~17_cout\ & \U2|Mod0|auto_generated|divider|divider|StageOut[99]~0_combout\)) # (!\U1|pixel_column\(9) & ((\U2|LessThan2~17_cout\) # 
-- (\U2|Mod0|auto_generated|divider|divider|StageOut[99]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|pixel_column\(9),
	datad => \U2|Mod0|auto_generated|divider|divider|StageOut[99]~0_combout\,
	cin => \U2|LessThan2~17_cout\,
	combout => \U2|LessThan2~18_combout\);

-- Location: LCCOMB_X59_Y45_N26
\U1|green_out[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|green_out[0]~9_combout\ = (\U2|LessThan4~16_combout\) # (\U2|LessThan2~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|LessThan4~16_combout\,
	datac => \U2|LessThan2~18_combout\,
	combout => \U1|green_out[0]~9_combout\);

-- Location: LCCOMB_X57_Y45_N0
\U2|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add2~0_combout\ = (\U1|pixel_row\(2) & (\U1|pixel_row\(0) $ (VCC))) # (!\U1|pixel_row\(2) & (\U1|pixel_row\(0) & VCC))
-- \U2|Add2~1\ = CARRY((\U1|pixel_row\(2) & \U1|pixel_row\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|pixel_row\(2),
	datab => \U1|pixel_row\(0),
	datad => VCC,
	combout => \U2|Add2~0_combout\,
	cout => \U2|Add2~1\);

-- Location: LCCOMB_X57_Y45_N2
\U2|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add2~2_combout\ = (\U1|pixel_row\(3) & ((\U1|pixel_row\(1) & (\U2|Add2~1\ & VCC)) # (!\U1|pixel_row\(1) & (!\U2|Add2~1\)))) # (!\U1|pixel_row\(3) & ((\U1|pixel_row\(1) & (!\U2|Add2~1\)) # (!\U1|pixel_row\(1) & ((\U2|Add2~1\) # (GND)))))
-- \U2|Add2~3\ = CARRY((\U1|pixel_row\(3) & (!\U1|pixel_row\(1) & !\U2|Add2~1\)) # (!\U1|pixel_row\(3) & ((!\U2|Add2~1\) # (!\U1|pixel_row\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|pixel_row\(3),
	datab => \U1|pixel_row\(1),
	datad => VCC,
	cin => \U2|Add2~1\,
	combout => \U2|Add2~2_combout\,
	cout => \U2|Add2~3\);

-- Location: LCCOMB_X57_Y45_N4
\U2|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add2~4_combout\ = ((\U1|pixel_row\(2) $ (\U1|pixel_row\(4) $ (!\U2|Add2~3\)))) # (GND)
-- \U2|Add2~5\ = CARRY((\U1|pixel_row\(2) & ((\U1|pixel_row\(4)) # (!\U2|Add2~3\))) # (!\U1|pixel_row\(2) & (\U1|pixel_row\(4) & !\U2|Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|pixel_row\(2),
	datab => \U1|pixel_row\(4),
	datad => VCC,
	cin => \U2|Add2~3\,
	combout => \U2|Add2~4_combout\,
	cout => \U2|Add2~5\);

-- Location: LCCOMB_X57_Y45_N6
\U2|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add2~6_combout\ = (\U1|pixel_row\(5) & ((\U1|pixel_row\(3) & (\U2|Add2~5\ & VCC)) # (!\U1|pixel_row\(3) & (!\U2|Add2~5\)))) # (!\U1|pixel_row\(5) & ((\U1|pixel_row\(3) & (!\U2|Add2~5\)) # (!\U1|pixel_row\(3) & ((\U2|Add2~5\) # (GND)))))
-- \U2|Add2~7\ = CARRY((\U1|pixel_row\(5) & (!\U1|pixel_row\(3) & !\U2|Add2~5\)) # (!\U1|pixel_row\(5) & ((!\U2|Add2~5\) # (!\U1|pixel_row\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|pixel_row\(5),
	datab => \U1|pixel_row\(3),
	datad => VCC,
	cin => \U2|Add2~5\,
	combout => \U2|Add2~6_combout\,
	cout => \U2|Add2~7\);

-- Location: LCCOMB_X57_Y45_N8
\U2|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add2~8_combout\ = ((\U1|pixel_row\(6) $ (\U1|pixel_row\(4) $ (!\U2|Add2~7\)))) # (GND)
-- \U2|Add2~9\ = CARRY((\U1|pixel_row\(6) & ((\U1|pixel_row\(4)) # (!\U2|Add2~7\))) # (!\U1|pixel_row\(6) & (\U1|pixel_row\(4) & !\U2|Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|pixel_row\(6),
	datab => \U1|pixel_row\(4),
	datad => VCC,
	cin => \U2|Add2~7\,
	combout => \U2|Add2~8_combout\,
	cout => \U2|Add2~9\);

-- Location: LCCOMB_X57_Y45_N10
\U2|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add2~10_combout\ = (\U1|pixel_row\(5) & ((\U1|pixel_row\(7) & (\U2|Add2~9\ & VCC)) # (!\U1|pixel_row\(7) & (!\U2|Add2~9\)))) # (!\U1|pixel_row\(5) & ((\U1|pixel_row\(7) & (!\U2|Add2~9\)) # (!\U1|pixel_row\(7) & ((\U2|Add2~9\) # (GND)))))
-- \U2|Add2~11\ = CARRY((\U1|pixel_row\(5) & (!\U1|pixel_row\(7) & !\U2|Add2~9\)) # (!\U1|pixel_row\(5) & ((!\U2|Add2~9\) # (!\U1|pixel_row\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|pixel_row\(5),
	datab => \U1|pixel_row\(7),
	datad => VCC,
	cin => \U2|Add2~9\,
	combout => \U2|Add2~10_combout\,
	cout => \U2|Add2~11\);

-- Location: LCCOMB_X57_Y45_N12
\U2|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add2~12_combout\ = ((\U1|pixel_row\(6) $ (\U1|pixel_row\(8) $ (!\U2|Add2~11\)))) # (GND)
-- \U2|Add2~13\ = CARRY((\U1|pixel_row\(6) & ((\U1|pixel_row\(8)) # (!\U2|Add2~11\))) # (!\U1|pixel_row\(6) & (\U1|pixel_row\(8) & !\U2|Add2~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|pixel_row\(6),
	datab => \U1|pixel_row\(8),
	datad => VCC,
	cin => \U2|Add2~11\,
	combout => \U2|Add2~12_combout\,
	cout => \U2|Add2~13\);

-- Location: LCCOMB_X57_Y45_N14
\U2|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add2~14_combout\ = (\U1|pixel_row\(7) & (!\U2|Add2~13\)) # (!\U1|pixel_row\(7) & ((\U2|Add2~13\) # (GND)))
-- \U2|Add2~15\ = CARRY((!\U2|Add2~13\) # (!\U1|pixel_row\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|pixel_row\(7),
	datad => VCC,
	cin => \U2|Add2~13\,
	combout => \U2|Add2~14_combout\,
	cout => \U2|Add2~15\);

-- Location: LCCOMB_X58_Y45_N8
\U2|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add3~0_combout\ = (\U1|pixel_column\(7) & (\U1|pixel_row\(0) $ (VCC))) # (!\U1|pixel_column\(7) & (\U1|pixel_row\(0) & VCC))
-- \U2|Add3~1\ = CARRY((\U1|pixel_column\(7) & \U1|pixel_row\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|pixel_column\(7),
	datab => \U1|pixel_row\(0),
	datad => VCC,
	combout => \U2|Add3~0_combout\,
	cout => \U2|Add3~1\);

-- Location: LCCOMB_X58_Y45_N10
\U2|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add3~2_combout\ = (\U1|pixel_column\(8) & ((\U1|pixel_row\(1) & (\U2|Add3~1\ & VCC)) # (!\U1|pixel_row\(1) & (!\U2|Add3~1\)))) # (!\U1|pixel_column\(8) & ((\U1|pixel_row\(1) & (!\U2|Add3~1\)) # (!\U1|pixel_row\(1) & ((\U2|Add3~1\) # (GND)))))
-- \U2|Add3~3\ = CARRY((\U1|pixel_column\(8) & (!\U1|pixel_row\(1) & !\U2|Add3~1\)) # (!\U1|pixel_column\(8) & ((!\U2|Add3~1\) # (!\U1|pixel_row\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|pixel_column\(8),
	datab => \U1|pixel_row\(1),
	datad => VCC,
	cin => \U2|Add3~1\,
	combout => \U2|Add3~2_combout\,
	cout => \U2|Add3~3\);

-- Location: LCCOMB_X58_Y45_N12
\U2|Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add3~4_combout\ = ((\U1|pixel_column\(9) $ (\U2|Add2~0_combout\ $ (!\U2|Add3~3\)))) # (GND)
-- \U2|Add3~5\ = CARRY((\U1|pixel_column\(9) & ((\U2|Add2~0_combout\) # (!\U2|Add3~3\))) # (!\U1|pixel_column\(9) & (\U2|Add2~0_combout\ & !\U2|Add3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|pixel_column\(9),
	datab => \U2|Add2~0_combout\,
	datad => VCC,
	cin => \U2|Add3~3\,
	combout => \U2|Add3~4_combout\,
	cout => \U2|Add3~5\);

-- Location: LCCOMB_X58_Y45_N14
\U2|Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add3~6_combout\ = (\U2|Add2~2_combout\ & (!\U2|Add3~5\)) # (!\U2|Add2~2_combout\ & ((\U2|Add3~5\) # (GND)))
-- \U2|Add3~7\ = CARRY((!\U2|Add3~5\) # (!\U2|Add2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add2~2_combout\,
	datad => VCC,
	cin => \U2|Add3~5\,
	combout => \U2|Add3~6_combout\,
	cout => \U2|Add3~7\);

-- Location: LCCOMB_X58_Y45_N16
\U2|Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add3~8_combout\ = (\U2|Add2~4_combout\ & (\U2|Add3~7\ $ (GND))) # (!\U2|Add2~4_combout\ & (!\U2|Add3~7\ & VCC))
-- \U2|Add3~9\ = CARRY((\U2|Add2~4_combout\ & !\U2|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add2~4_combout\,
	datad => VCC,
	cin => \U2|Add3~7\,
	combout => \U2|Add3~8_combout\,
	cout => \U2|Add3~9\);

-- Location: LCCOMB_X58_Y45_N18
\U2|Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add3~10_combout\ = (\U2|Add2~6_combout\ & (!\U2|Add3~9\)) # (!\U2|Add2~6_combout\ & ((\U2|Add3~9\) # (GND)))
-- \U2|Add3~11\ = CARRY((!\U2|Add3~9\) # (!\U2|Add2~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add2~6_combout\,
	datad => VCC,
	cin => \U2|Add3~9\,
	combout => \U2|Add3~10_combout\,
	cout => \U2|Add3~11\);

-- Location: LCCOMB_X58_Y45_N20
\U2|Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add3~12_combout\ = (\U2|Add2~8_combout\ & (\U2|Add3~11\ $ (GND))) # (!\U2|Add2~8_combout\ & (!\U2|Add3~11\ & VCC))
-- \U2|Add3~13\ = CARRY((\U2|Add2~8_combout\ & !\U2|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add2~8_combout\,
	datad => VCC,
	cin => \U2|Add3~11\,
	combout => \U2|Add3~12_combout\,
	cout => \U2|Add3~13\);

-- Location: LCCOMB_X58_Y45_N22
\U2|Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add3~14_combout\ = (\U2|Add2~10_combout\ & (!\U2|Add3~13\)) # (!\U2|Add2~10_combout\ & ((\U2|Add3~13\) # (GND)))
-- \U2|Add3~15\ = CARRY((!\U2|Add3~13\) # (!\U2|Add2~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|Add2~10_combout\,
	datad => VCC,
	cin => \U2|Add3~13\,
	combout => \U2|Add3~14_combout\,
	cout => \U2|Add3~15\);

-- Location: LCCOMB_X58_Y45_N24
\U2|Add3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add3~16_combout\ = (\U2|Add2~12_combout\ & (\U2|Add3~15\ $ (GND))) # (!\U2|Add2~12_combout\ & (!\U2|Add3~15\ & VCC))
-- \U2|Add3~17\ = CARRY((\U2|Add2~12_combout\ & !\U2|Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|Add2~12_combout\,
	datad => VCC,
	cin => \U2|Add3~15\,
	combout => \U2|Add3~16_combout\,
	cout => \U2|Add3~17\);

-- Location: LCCOMB_X58_Y45_N26
\U2|Add3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add3~18_combout\ = (\U2|Add2~14_combout\ & (!\U2|Add3~17\)) # (!\U2|Add2~14_combout\ & ((\U2|Add3~17\) # (GND)))
-- \U2|Add3~19\ = CARRY((!\U2|Add3~17\) # (!\U2|Add2~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|Add2~14_combout\,
	datad => VCC,
	cin => \U2|Add3~17\,
	combout => \U2|Add3~18_combout\,
	cout => \U2|Add3~19\);

-- Location: LCCOMB_X59_Y45_N4
\U2|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|LessThan1~0_combout\ = (((!\U1|pixel_row\(7)) # (!\U1|pixel_row\(6))) # (!\U1|pixel_row\(8))) # (!\U1|pixel_row\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|pixel_row\(5),
	datab => \U1|pixel_row\(8),
	datac => \U1|pixel_row\(6),
	datad => \U1|pixel_row\(7),
	combout => \U2|LessThan1~0_combout\);

-- Location: LCCOMB_X60_Y46_N2
\U2|read_addr~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|read_addr~0_combout\ = (\U2|LessThan1~0_combout\ & (((!\U1|pixel_column\(8) & !\U1|pixel_column\(7))) # (!\U1|pixel_column\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|pixel_column\(8),
	datab => \U2|LessThan1~0_combout\,
	datac => \U1|pixel_column\(9),
	datad => \U1|pixel_column\(7),
	combout => \U2|read_addr~0_combout\);

-- Location: LCCOMB_X59_Y48_N0
\U2|read_addr[16]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|read_addr[16]~17_combout\ = (\U2|Add3~18_combout\ & \U2|read_addr~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add3~18_combout\,
	datab => \U2|read_addr~0_combout\,
	combout => \U2|read_addr[16]~17_combout\);

-- Location: FF_X59_Y48_N1
\U2|canvas|altsyncram_component|auto_generated|address_reg_b[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|read_addr[16]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|canvas|altsyncram_component|auto_generated|address_reg_b\(3));

-- Location: LCCOMB_X59_Y48_N10
\U2|read_addr[14]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|read_addr[14]~2_combout\ = (\U2|read_addr~0_combout\ & \U2|Add3~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|read_addr~0_combout\,
	datac => \U2|Add3~14_combout\,
	combout => \U2|read_addr[14]~2_combout\);

-- Location: FF_X65_Y48_N11
\U2|canvas|altsyncram_component|auto_generated|address_reg_b[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U2|read_addr[14]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|canvas|altsyncram_component|auto_generated|address_reg_b\(1));

-- Location: LCCOMB_X59_Y47_N26
\U2|read_addr[13]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|read_addr[13]~16_combout\ = (\U2|read_addr~0_combout\ & \U2|Add3~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|read_addr~0_combout\,
	datac => \U2|Add3~12_combout\,
	combout => \U2|read_addr[13]~16_combout\);

-- Location: FF_X65_Y48_N17
\U2|canvas|altsyncram_component|auto_generated|address_reg_b[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U2|read_addr[13]~16_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|canvas|altsyncram_component|auto_generated|address_reg_b\(0));

-- Location: LCCOMB_X61_Y45_N10
\U2|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add0~0_combout\ = (\U_Y|dec_count\(0) & (\U_Y|dec_count\(2) $ (VCC))) # (!\U_Y|dec_count\(0) & (\U_Y|dec_count\(2) & VCC))
-- \U2|Add0~1\ = CARRY((\U_Y|dec_count\(0) & \U_Y|dec_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Y|dec_count\(0),
	datab => \U_Y|dec_count\(2),
	datad => VCC,
	combout => \U2|Add0~0_combout\,
	cout => \U2|Add0~1\);

-- Location: LCCOMB_X61_Y45_N12
\U2|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add0~2_combout\ = (\U_Y|dec_count\(3) & ((\U_Y|dec_count\(1) & (\U2|Add0~1\ & VCC)) # (!\U_Y|dec_count\(1) & (!\U2|Add0~1\)))) # (!\U_Y|dec_count\(3) & ((\U_Y|dec_count\(1) & (!\U2|Add0~1\)) # (!\U_Y|dec_count\(1) & ((\U2|Add0~1\) # (GND)))))
-- \U2|Add0~3\ = CARRY((\U_Y|dec_count\(3) & (!\U_Y|dec_count\(1) & !\U2|Add0~1\)) # (!\U_Y|dec_count\(3) & ((!\U2|Add0~1\) # (!\U_Y|dec_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Y|dec_count\(3),
	datab => \U_Y|dec_count\(1),
	datad => VCC,
	cin => \U2|Add0~1\,
	combout => \U2|Add0~2_combout\,
	cout => \U2|Add0~3\);

-- Location: LCCOMB_X61_Y45_N14
\U2|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add0~4_combout\ = ((\U_Y|dec_count\(4) $ (\U_Y|dec_count\(2) $ (\U2|Add0~3\)))) # (GND)
-- \U2|Add0~5\ = CARRY((\U_Y|dec_count\(4) & (\U_Y|dec_count\(2) & !\U2|Add0~3\)) # (!\U_Y|dec_count\(4) & ((\U_Y|dec_count\(2)) # (!\U2|Add0~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Y|dec_count\(4),
	datab => \U_Y|dec_count\(2),
	datad => VCC,
	cin => \U2|Add0~3\,
	combout => \U2|Add0~4_combout\,
	cout => \U2|Add0~5\);

-- Location: LCCOMB_X61_Y45_N16
\U2|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add0~6_combout\ = (\U_Y|dec_count\(3) & ((\U2|Mod1|auto_generated|divider|divider|StageOut[95]~13_combout\ & (\U2|Add0~5\ & VCC)) # (!\U2|Mod1|auto_generated|divider|divider|StageOut[95]~13_combout\ & (!\U2|Add0~5\)))) # (!\U_Y|dec_count\(3) & 
-- ((\U2|Mod1|auto_generated|divider|divider|StageOut[95]~13_combout\ & (!\U2|Add0~5\)) # (!\U2|Mod1|auto_generated|divider|divider|StageOut[95]~13_combout\ & ((\U2|Add0~5\) # (GND)))))
-- \U2|Add0~7\ = CARRY((\U_Y|dec_count\(3) & (!\U2|Mod1|auto_generated|divider|divider|StageOut[95]~13_combout\ & !\U2|Add0~5\)) # (!\U_Y|dec_count\(3) & ((!\U2|Add0~5\) # (!\U2|Mod1|auto_generated|divider|divider|StageOut[95]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Y|dec_count\(3),
	datab => \U2|Mod1|auto_generated|divider|divider|StageOut[95]~13_combout\,
	datad => VCC,
	cin => \U2|Add0~5\,
	combout => \U2|Add0~6_combout\,
	cout => \U2|Add0~7\);

-- Location: LCCOMB_X61_Y45_N18
\U2|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add0~8_combout\ = ((\U_Y|dec_count\(4) $ (\U2|Mod1|auto_generated|divider|divider|StageOut[96]~12_combout\ $ (\U2|Add0~7\)))) # (GND)
-- \U2|Add0~9\ = CARRY((\U_Y|dec_count\(4) & (\U2|Mod1|auto_generated|divider|divider|StageOut[96]~12_combout\ & !\U2|Add0~7\)) # (!\U_Y|dec_count\(4) & ((\U2|Mod1|auto_generated|divider|divider|StageOut[96]~12_combout\) # (!\U2|Add0~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Y|dec_count\(4),
	datab => \U2|Mod1|auto_generated|divider|divider|StageOut[96]~12_combout\,
	datad => VCC,
	cin => \U2|Add0~7\,
	combout => \U2|Add0~8_combout\,
	cout => \U2|Add0~9\);

-- Location: LCCOMB_X61_Y45_N20
\U2|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add0~10_combout\ = (\U2|Mod1|auto_generated|divider|divider|StageOut[97]~11_combout\ & ((\U2|Mod1|auto_generated|divider|divider|StageOut[95]~13_combout\ & (\U2|Add0~9\ & VCC)) # (!\U2|Mod1|auto_generated|divider|divider|StageOut[95]~13_combout\ & 
-- (!\U2|Add0~9\)))) # (!\U2|Mod1|auto_generated|divider|divider|StageOut[97]~11_combout\ & ((\U2|Mod1|auto_generated|divider|divider|StageOut[95]~13_combout\ & (!\U2|Add0~9\)) # (!\U2|Mod1|auto_generated|divider|divider|StageOut[95]~13_combout\ & 
-- ((\U2|Add0~9\) # (GND)))))
-- \U2|Add0~11\ = CARRY((\U2|Mod1|auto_generated|divider|divider|StageOut[97]~11_combout\ & (!\U2|Mod1|auto_generated|divider|divider|StageOut[95]~13_combout\ & !\U2|Add0~9\)) # (!\U2|Mod1|auto_generated|divider|divider|StageOut[97]~11_combout\ & 
-- ((!\U2|Add0~9\) # (!\U2|Mod1|auto_generated|divider|divider|StageOut[95]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mod1|auto_generated|divider|divider|StageOut[97]~11_combout\,
	datab => \U2|Mod1|auto_generated|divider|divider|StageOut[95]~13_combout\,
	datad => VCC,
	cin => \U2|Add0~9\,
	combout => \U2|Add0~10_combout\,
	cout => \U2|Add0~11\);

-- Location: LCCOMB_X61_Y45_N22
\U2|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add0~12_combout\ = ((\U2|Mod1|auto_generated|divider|divider|StageOut[98]~10_combout\ $ (\U2|Mod1|auto_generated|divider|divider|StageOut[96]~12_combout\ $ (!\U2|Add0~11\)))) # (GND)
-- \U2|Add0~13\ = CARRY((\U2|Mod1|auto_generated|divider|divider|StageOut[98]~10_combout\ & ((\U2|Mod1|auto_generated|divider|divider|StageOut[96]~12_combout\) # (!\U2|Add0~11\))) # (!\U2|Mod1|auto_generated|divider|divider|StageOut[98]~10_combout\ & 
-- (\U2|Mod1|auto_generated|divider|divider|StageOut[96]~12_combout\ & !\U2|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mod1|auto_generated|divider|divider|StageOut[98]~10_combout\,
	datab => \U2|Mod1|auto_generated|divider|divider|StageOut[96]~12_combout\,
	datad => VCC,
	cin => \U2|Add0~11\,
	combout => \U2|Add0~12_combout\,
	cout => \U2|Add0~13\);

-- Location: LCCOMB_X61_Y45_N24
\U2|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add0~14_combout\ = (\U2|Mod1|auto_generated|divider|divider|StageOut[97]~11_combout\ & (!\U2|Add0~13\)) # (!\U2|Mod1|auto_generated|divider|divider|StageOut[97]~11_combout\ & ((\U2|Add0~13\) # (GND)))
-- \U2|Add0~15\ = CARRY((!\U2|Add0~13\) # (!\U2|Mod1|auto_generated|divider|divider|StageOut[97]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|Mod1|auto_generated|divider|divider|StageOut[97]~11_combout\,
	datad => VCC,
	cin => \U2|Add0~13\,
	combout => \U2|Add0~14_combout\,
	cout => \U2|Add0~15\);

-- Location: LCCOMB_X61_Y45_N26
\U2|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add0~16_combout\ = (\U2|Mod1|auto_generated|divider|divider|StageOut[98]~10_combout\ & (\U2|Add0~15\ $ (GND))) # (!\U2|Mod1|auto_generated|divider|divider|StageOut[98]~10_combout\ & (!\U2|Add0~15\ & VCC))
-- \U2|Add0~17\ = CARRY((\U2|Mod1|auto_generated|divider|divider|StageOut[98]~10_combout\ & !\U2|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mod1|auto_generated|divider|divider|StageOut[98]~10_combout\,
	datad => VCC,
	cin => \U2|Add0~15\,
	combout => \U2|Add0~16_combout\,
	cout => \U2|Add0~17\);

-- Location: LCCOMB_X61_Y45_N28
\U2|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add0~18_combout\ = \U2|Add0~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U2|Add0~17\,
	combout => \U2|Add0~18_combout\);

-- Location: LCCOMB_X62_Y45_N8
\U2|write_addr[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|write_addr[7]~0_combout\ = (\U_Y|dec_count\(0) & (\U2|Mod0|auto_generated|divider|divider|StageOut[97]~2_combout\ $ (VCC))) # (!\U_Y|dec_count\(0) & (\U2|Mod0|auto_generated|divider|divider|StageOut[97]~2_combout\ & VCC))
-- \U2|write_addr[7]~1\ = CARRY((\U_Y|dec_count\(0) & \U2|Mod0|auto_generated|divider|divider|StageOut[97]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Y|dec_count\(0),
	datab => \U2|Mod0|auto_generated|divider|divider|StageOut[97]~2_combout\,
	datad => VCC,
	combout => \U2|write_addr[7]~0_combout\,
	cout => \U2|write_addr[7]~1\);

-- Location: LCCOMB_X62_Y45_N10
\U2|write_addr[8]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|write_addr[8]~2_combout\ = (\U_Y|dec_count\(1) & ((\U2|Mod0|auto_generated|divider|divider|StageOut[98]~1_combout\ & (\U2|write_addr[7]~1\ & VCC)) # (!\U2|Mod0|auto_generated|divider|divider|StageOut[98]~1_combout\ & (!\U2|write_addr[7]~1\)))) # 
-- (!\U_Y|dec_count\(1) & ((\U2|Mod0|auto_generated|divider|divider|StageOut[98]~1_combout\ & (!\U2|write_addr[7]~1\)) # (!\U2|Mod0|auto_generated|divider|divider|StageOut[98]~1_combout\ & ((\U2|write_addr[7]~1\) # (GND)))))
-- \U2|write_addr[8]~3\ = CARRY((\U_Y|dec_count\(1) & (!\U2|Mod0|auto_generated|divider|divider|StageOut[98]~1_combout\ & !\U2|write_addr[7]~1\)) # (!\U_Y|dec_count\(1) & ((!\U2|write_addr[7]~1\) # 
-- (!\U2|Mod0|auto_generated|divider|divider|StageOut[98]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Y|dec_count\(1),
	datab => \U2|Mod0|auto_generated|divider|divider|StageOut[98]~1_combout\,
	datad => VCC,
	cin => \U2|write_addr[7]~1\,
	combout => \U2|write_addr[8]~2_combout\,
	cout => \U2|write_addr[8]~3\);

-- Location: LCCOMB_X62_Y45_N12
\U2|write_addr[9]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|write_addr[9]~4_combout\ = ((\U2|Add0~0_combout\ $ (\U2|Mod0|auto_generated|divider|divider|StageOut[99]~0_combout\ $ (!\U2|write_addr[8]~3\)))) # (GND)
-- \U2|write_addr[9]~5\ = CARRY((\U2|Add0~0_combout\ & ((\U2|Mod0|auto_generated|divider|divider|StageOut[99]~0_combout\) # (!\U2|write_addr[8]~3\))) # (!\U2|Add0~0_combout\ & (\U2|Mod0|auto_generated|divider|divider|StageOut[99]~0_combout\ & 
-- !\U2|write_addr[8]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add0~0_combout\,
	datab => \U2|Mod0|auto_generated|divider|divider|StageOut[99]~0_combout\,
	datad => VCC,
	cin => \U2|write_addr[8]~3\,
	combout => \U2|write_addr[9]~4_combout\,
	cout => \U2|write_addr[9]~5\);

-- Location: LCCOMB_X62_Y45_N14
\U2|write_addr[10]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|write_addr[10]~6_combout\ = (\U2|Add0~2_combout\ & (!\U2|write_addr[9]~5\)) # (!\U2|Add0~2_combout\ & ((\U2|write_addr[9]~5\) # (GND)))
-- \U2|write_addr[10]~7\ = CARRY((!\U2|write_addr[9]~5\) # (!\U2|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add0~2_combout\,
	datad => VCC,
	cin => \U2|write_addr[9]~5\,
	combout => \U2|write_addr[10]~6_combout\,
	cout => \U2|write_addr[10]~7\);

-- Location: LCCOMB_X62_Y45_N16
\U2|write_addr[11]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|write_addr[11]~8_combout\ = (\U2|Add0~4_combout\ & (\U2|write_addr[10]~7\ $ (GND))) # (!\U2|Add0~4_combout\ & (!\U2|write_addr[10]~7\ & VCC))
-- \U2|write_addr[11]~9\ = CARRY((\U2|Add0~4_combout\ & !\U2|write_addr[10]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add0~4_combout\,
	datad => VCC,
	cin => \U2|write_addr[10]~7\,
	combout => \U2|write_addr[11]~8_combout\,
	cout => \U2|write_addr[11]~9\);

-- Location: LCCOMB_X62_Y45_N18
\U2|write_addr[12]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|write_addr[12]~10_combout\ = (\U2|Add0~6_combout\ & (!\U2|write_addr[11]~9\)) # (!\U2|Add0~6_combout\ & ((\U2|write_addr[11]~9\) # (GND)))
-- \U2|write_addr[12]~11\ = CARRY((!\U2|write_addr[11]~9\) # (!\U2|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add0~6_combout\,
	datad => VCC,
	cin => \U2|write_addr[11]~9\,
	combout => \U2|write_addr[12]~10_combout\,
	cout => \U2|write_addr[12]~11\);

-- Location: LCCOMB_X62_Y45_N20
\U2|write_addr[13]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|write_addr[13]~12_combout\ = (\U2|Add0~8_combout\ & (\U2|write_addr[12]~11\ $ (GND))) # (!\U2|Add0~8_combout\ & (!\U2|write_addr[12]~11\ & VCC))
-- \U2|write_addr[13]~13\ = CARRY((\U2|Add0~8_combout\ & !\U2|write_addr[12]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|Add0~8_combout\,
	datad => VCC,
	cin => \U2|write_addr[12]~11\,
	combout => \U2|write_addr[13]~12_combout\,
	cout => \U2|write_addr[13]~13\);

-- Location: LCCOMB_X62_Y45_N22
\U2|write_addr[14]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|write_addr[14]~14_combout\ = (\U2|Add0~10_combout\ & (!\U2|write_addr[13]~13\)) # (!\U2|Add0~10_combout\ & ((\U2|write_addr[13]~13\) # (GND)))
-- \U2|write_addr[14]~15\ = CARRY((!\U2|write_addr[13]~13\) # (!\U2|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|Add0~10_combout\,
	datad => VCC,
	cin => \U2|write_addr[13]~13\,
	combout => \U2|write_addr[14]~14_combout\,
	cout => \U2|write_addr[14]~15\);

-- Location: LCCOMB_X62_Y45_N24
\U2|write_addr[15]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|write_addr[15]~16_combout\ = (\U2|Add0~12_combout\ & (\U2|write_addr[14]~15\ $ (GND))) # (!\U2|Add0~12_combout\ & (!\U2|write_addr[14]~15\ & VCC))
-- \U2|write_addr[15]~17\ = CARRY((\U2|Add0~12_combout\ & !\U2|write_addr[14]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|Add0~12_combout\,
	datad => VCC,
	cin => \U2|write_addr[14]~15\,
	combout => \U2|write_addr[15]~16_combout\,
	cout => \U2|write_addr[15]~17\);

-- Location: LCCOMB_X62_Y45_N26
\U2|write_addr[16]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|write_addr[16]~18_combout\ = (\U2|Add0~14_combout\ & (!\U2|write_addr[15]~17\)) # (!\U2|Add0~14_combout\ & ((\U2|write_addr[15]~17\) # (GND)))
-- \U2|write_addr[16]~19\ = CARRY((!\U2|write_addr[15]~17\) # (!\U2|Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|Add0~14_combout\,
	datad => VCC,
	cin => \U2|write_addr[15]~17\,
	combout => \U2|write_addr[16]~18_combout\,
	cout => \U2|write_addr[16]~19\);

-- Location: LCCOMB_X62_Y45_N28
\U2|write_addr[17]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|write_addr[17]~20_combout\ = (\U2|Add0~16_combout\ & (\U2|write_addr[16]~19\ $ (GND))) # (!\U2|Add0~16_combout\ & (!\U2|write_addr[16]~19\ & VCC))
-- \U2|write_addr[17]~21\ = CARRY((\U2|Add0~16_combout\ & !\U2|write_addr[16]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add0~16_combout\,
	datad => VCC,
	cin => \U2|write_addr[16]~19\,
	combout => \U2|write_addr[17]~20_combout\,
	cout => \U2|write_addr[17]~21\);

-- Location: LCCOMB_X62_Y45_N30
\U2|write_addr[18]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|write_addr[18]~22_combout\ = \U2|write_addr[17]~21\ $ (\U2|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U2|Add0~18_combout\,
	cin => \U2|write_addr[17]~21\,
	combout => \U2|write_addr[18]~22_combout\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X63_Y48_N30
\U2|canvas|altsyncram_component|auto_generated|decode2|w_anode746w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode746w[3]~0_combout\ = (!\U2|write_addr[18]~22_combout\ & (\SW[0]~input_o\ & (!\U2|write_addr[16]~18_combout\ & \U2|write_addr[17]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|write_addr[18]~22_combout\,
	datab => \SW[0]~input_o\,
	datac => \U2|write_addr[16]~18_combout\,
	datad => \U2|write_addr[17]~20_combout\,
	combout => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode746w[3]~0_combout\);

-- Location: LCCOMB_X63_Y48_N4
\U2|canvas|altsyncram_component|auto_generated|decode2|w_anode757w[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode757w\(3) = (\U2|canvas|altsyncram_component|auto_generated|decode2|w_anode746w[3]~0_combout\ & (!\U2|write_addr[13]~12_combout\ & (!\U2|write_addr[14]~14_combout\ & 
-- !\U2|write_addr[15]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode746w[3]~0_combout\,
	datab => \U2|write_addr[13]~12_combout\,
	datac => \U2|write_addr[14]~14_combout\,
	datad => \U2|write_addr[15]~16_combout\,
	combout => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode757w\(3));

-- Location: LCCOMB_X57_Y45_N16
\U2|Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add2~16_combout\ = (\U1|pixel_row\(8) & (\U2|Add2~15\ $ (GND))) # (!\U1|pixel_row\(8) & (!\U2|Add2~15\ & VCC))
-- \U2|Add2~17\ = CARRY((\U1|pixel_row\(8) & !\U2|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|pixel_row\(8),
	datad => VCC,
	cin => \U2|Add2~15\,
	combout => \U2|Add2~16_combout\,
	cout => \U2|Add2~17\);

-- Location: LCCOMB_X57_Y45_N18
\U2|Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add2~18_combout\ = \U2|Add2~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U2|Add2~17\,
	combout => \U2|Add2~18_combout\);

-- Location: LCCOMB_X58_Y45_N28
\U2|Add3~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add3~20_combout\ = (\U2|Add2~16_combout\ & (\U2|Add3~19\ $ (GND))) # (!\U2|Add2~16_combout\ & (!\U2|Add3~19\ & VCC))
-- \U2|Add3~21\ = CARRY((\U2|Add2~16_combout\ & !\U2|Add3~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add2~16_combout\,
	datad => VCC,
	cin => \U2|Add3~19\,
	combout => \U2|Add3~20_combout\,
	cout => \U2|Add3~21\);

-- Location: LCCOMB_X58_Y45_N30
\U2|Add3~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add3~22_combout\ = \U2|Add3~21\ $ (\U2|Add2~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U2|Add2~18_combout\,
	cin => \U2|Add3~21\,
	combout => \U2|Add3~22_combout\);

-- Location: LCCOMB_X59_Y48_N28
\U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1414w[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1414w[2]~1_combout\ = (!\U2|Add3~22_combout\ & (\U2|Add3~20_combout\ & (!\U2|Add3~18_combout\ & \U2|read_addr~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add3~22_combout\,
	datab => \U2|Add3~20_combout\,
	datac => \U2|Add3~18_combout\,
	datad => \U2|read_addr~0_combout\,
	combout => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1414w[2]~1_combout\);

-- Location: LCCOMB_X59_Y48_N6
\U2|read_addr[15]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|read_addr[15]~1_combout\ = (\U2|read_addr~0_combout\ & \U2|Add3~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|read_addr~0_combout\,
	datac => \U2|Add3~16_combout\,
	combout => \U2|read_addr[15]~1_combout\);

-- Location: LCCOMB_X70_Y48_N2
\U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1520w[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1520w\(3) = (!\U2|read_addr[13]~16_combout\ & (!\U2|read_addr[14]~2_combout\ & (\U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1414w[2]~1_combout\ & 
-- !\U2|read_addr[15]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|read_addr[13]~16_combout\,
	datab => \U2|read_addr[14]~2_combout\,
	datac => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1414w[2]~1_combout\,
	datad => \U2|read_addr[15]~1_combout\,
	combout => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1520w\(3));

-- Location: LCCOMB_X60_Y47_N2
\U_X|dec_count[6]~_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_X|dec_count[6]~_wirecell_combout\ = !\U_X|dec_count\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_X|dec_count\(6),
	combout => \U_X|dec_count[6]~_wirecell_combout\);

-- Location: LCCOMB_X59_Y46_N30
\U2|read_addr[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|read_addr[0]~3_combout\ = (\U1|pixel_column\(0) & \U2|read_addr~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|pixel_column\(0),
	datad => \U2|read_addr~0_combout\,
	combout => \U2|read_addr[0]~3_combout\);

-- Location: LCCOMB_X60_Y46_N28
\U2|read_addr[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|read_addr[1]~4_combout\ = (\U2|read_addr~0_combout\ & \U1|pixel_column\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|read_addr~0_combout\,
	datac => \U1|pixel_column\(1),
	combout => \U2|read_addr[1]~4_combout\);

-- Location: LCCOMB_X59_Y46_N4
\U2|read_addr[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|read_addr[2]~5_combout\ = (\U1|pixel_column\(2) & \U2|read_addr~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|pixel_column\(2),
	datad => \U2|read_addr~0_combout\,
	combout => \U2|read_addr[2]~5_combout\);

-- Location: LCCOMB_X59_Y46_N26
\U2|read_addr[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|read_addr[3]~6_combout\ = (\U1|pixel_column\(3) & \U2|read_addr~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|pixel_column\(3),
	datad => \U2|read_addr~0_combout\,
	combout => \U2|read_addr[3]~6_combout\);

-- Location: LCCOMB_X59_Y46_N28
\U2|read_addr[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|read_addr[4]~7_combout\ = (\U1|pixel_column\(4) & \U2|read_addr~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|pixel_column\(4),
	datad => \U2|read_addr~0_combout\,
	combout => \U2|read_addr[4]~7_combout\);

-- Location: LCCOMB_X59_Y46_N2
\U2|read_addr[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|read_addr[5]~8_combout\ = (\U1|pixel_column\(5) & \U2|read_addr~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|pixel_column\(5),
	datad => \U2|read_addr~0_combout\,
	combout => \U2|read_addr[5]~8_combout\);

-- Location: LCCOMB_X59_Y46_N0
\U2|read_addr[6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|read_addr[6]~9_combout\ = (\U1|pixel_column\(6) & \U2|read_addr~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|pixel_column\(6),
	datad => \U2|read_addr~0_combout\,
	combout => \U2|read_addr[6]~9_combout\);

-- Location: LCCOMB_X59_Y48_N4
\U2|read_addr[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|read_addr[7]~10_combout\ = (\U2|read_addr~0_combout\ & \U2|Add3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|read_addr~0_combout\,
	datad => \U2|Add3~0_combout\,
	combout => \U2|read_addr[7]~10_combout\);

-- Location: LCCOMB_X58_Y46_N8
\U2|read_addr[8]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|read_addr[8]~11_combout\ = (\U2|read_addr~0_combout\ & \U2|Add3~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|read_addr~0_combout\,
	datac => \U2|Add3~2_combout\,
	combout => \U2|read_addr[8]~11_combout\);

-- Location: LCCOMB_X59_Y45_N30
\U2|read_addr[9]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|read_addr[9]~12_combout\ = (\U2|Add3~4_combout\ & \U2|read_addr~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|Add3~4_combout\,
	datac => \U2|read_addr~0_combout\,
	combout => \U2|read_addr[9]~12_combout\);

-- Location: LCCOMB_X58_Y45_N2
\U2|read_addr[10]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|read_addr[10]~13_combout\ = (\U2|read_addr~0_combout\ & \U2|Add3~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|read_addr~0_combout\,
	datad => \U2|Add3~6_combout\,
	combout => \U2|read_addr[10]~13_combout\);

-- Location: LCCOMB_X58_Y45_N4
\U2|read_addr[11]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|read_addr[11]~14_combout\ = (\U2|Add3~8_combout\ & \U2|read_addr~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|Add3~8_combout\,
	datac => \U2|read_addr~0_combout\,
	combout => \U2|read_addr[11]~14_combout\);

-- Location: LCCOMB_X58_Y45_N6
\U2|read_addr[12]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|read_addr[12]~15_combout\ = (\U2|Add3~10_combout\ & \U2|read_addr~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|Add3~10_combout\,
	datac => \U2|read_addr~0_combout\,
	combout => \U2|read_addr[12]~15_combout\);

-- Location: M9K_X78_Y51_N0
\U2|canvas|altsyncram_component|auto_generated|ram_block1a16\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "etch_a_sketch:U2|framebuffer:canvas|altsyncram:altsyncram_component|altsyncram_suo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 307200,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 307200,
	port_b_logical_ram_width => 1,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode757w\(3),
	portbre => VCC,
	clk0 => \CLOCK_50~inputclkctrl_outclk\,
	clk1 => \CLOCK_50~inputclkctrl_outclk\,
	ena0 => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode757w\(3),
	ena1 => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1520w\(3),
	portadatain => \U2|canvas|altsyncram_component|auto_generated|ram_block1a16_PORTADATAIN_bus\,
	portaaddr => \U2|canvas|altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\,
	portbaddr => \U2|canvas|altsyncram_component|auto_generated|ram_block1a16_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \U2|canvas|altsyncram_component|auto_generated|ram_block1a16_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X63_Y48_N26
\U2|canvas|altsyncram_component|auto_generated|decode2|w_anode778w[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode778w\(3) = (\U2|canvas|altsyncram_component|auto_generated|decode2|w_anode746w[3]~0_combout\ & (!\U2|write_addr[13]~12_combout\ & (\U2|write_addr[14]~14_combout\ & 
-- !\U2|write_addr[15]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode746w[3]~0_combout\,
	datab => \U2|write_addr[13]~12_combout\,
	datac => \U2|write_addr[14]~14_combout\,
	datad => \U2|write_addr[15]~16_combout\,
	combout => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode778w\(3));

-- Location: LCCOMB_X70_Y48_N16
\U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1541w[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1541w\(3) = (!\U2|read_addr[13]~16_combout\ & (\U2|read_addr[14]~2_combout\ & (\U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1414w[2]~1_combout\ & 
-- !\U2|read_addr[15]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|read_addr[13]~16_combout\,
	datab => \U2|read_addr[14]~2_combout\,
	datac => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1414w[2]~1_combout\,
	datad => \U2|read_addr[15]~1_combout\,
	combout => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1541w\(3));

-- Location: M9K_X78_Y50_N0
\U2|canvas|altsyncram_component|auto_generated|ram_block1a18\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "etch_a_sketch:U2|framebuffer:canvas|altsyncram:altsyncram_component|altsyncram_suo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 307200,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 307200,
	port_b_logical_ram_width => 1,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode778w\(3),
	portbre => VCC,
	clk0 => \CLOCK_50~inputclkctrl_outclk\,
	clk1 => \CLOCK_50~inputclkctrl_outclk\,
	ena0 => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode778w\(3),
	ena1 => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1541w\(3),
	portadatain => \U2|canvas|altsyncram_component|auto_generated|ram_block1a18_PORTADATAIN_bus\,
	portaaddr => \U2|canvas|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\,
	portbaddr => \U2|canvas|altsyncram_component|auto_generated|ram_block1a18_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \U2|canvas|altsyncram_component|auto_generated|ram_block1a18_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X65_Y48_N22
\U2|canvas|altsyncram_component|auto_generated|mux3|_~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|mux3|_~19_combout\ = (\U2|canvas|altsyncram_component|auto_generated|address_reg_b\(1) & ((\U2|canvas|altsyncram_component|auto_generated|address_reg_b\(0)) # 
-- ((\U2|canvas|altsyncram_component|auto_generated|ram_block1a18~portbdataout\)))) # (!\U2|canvas|altsyncram_component|auto_generated|address_reg_b\(1) & (!\U2|canvas|altsyncram_component|auto_generated|address_reg_b\(0) & 
-- (\U2|canvas|altsyncram_component|auto_generated|ram_block1a16~portbdataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|canvas|altsyncram_component|auto_generated|address_reg_b\(1),
	datab => \U2|canvas|altsyncram_component|auto_generated|address_reg_b\(0),
	datac => \U2|canvas|altsyncram_component|auto_generated|ram_block1a16~portbdataout\,
	datad => \U2|canvas|altsyncram_component|auto_generated|ram_block1a18~portbdataout\,
	combout => \U2|canvas|altsyncram_component|auto_generated|mux3|_~19_combout\);

-- Location: LCCOMB_X63_Y48_N14
\U2|canvas|altsyncram_component|auto_generated|decode2|w_anode788w[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode788w\(3) = (\U2|canvas|altsyncram_component|auto_generated|decode2|w_anode746w[3]~0_combout\ & (\U2|write_addr[13]~12_combout\ & (\U2|write_addr[14]~14_combout\ & 
-- !\U2|write_addr[15]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode746w[3]~0_combout\,
	datab => \U2|write_addr[13]~12_combout\,
	datac => \U2|write_addr[14]~14_combout\,
	datad => \U2|write_addr[15]~16_combout\,
	combout => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode788w\(3));

-- Location: LCCOMB_X70_Y48_N28
\U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1551w[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1551w\(3) = (\U2|read_addr[13]~16_combout\ & (\U2|read_addr[14]~2_combout\ & (\U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1414w[2]~1_combout\ & 
-- !\U2|read_addr[15]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|read_addr[13]~16_combout\,
	datab => \U2|read_addr[14]~2_combout\,
	datac => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1414w[2]~1_combout\,
	datad => \U2|read_addr[15]~1_combout\,
	combout => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1551w\(3));

-- Location: M9K_X78_Y48_N0
\U2|canvas|altsyncram_component|auto_generated|ram_block1a19\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "etch_a_sketch:U2|framebuffer:canvas|altsyncram:altsyncram_component|altsyncram_suo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 307200,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 307200,
	port_b_logical_ram_width => 1,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode788w\(3),
	portbre => VCC,
	clk0 => \CLOCK_50~inputclkctrl_outclk\,
	clk1 => \CLOCK_50~inputclkctrl_outclk\,
	ena0 => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode788w\(3),
	ena1 => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1551w\(3),
	portadatain => \U2|canvas|altsyncram_component|auto_generated|ram_block1a19_PORTADATAIN_bus\,
	portaaddr => \U2|canvas|altsyncram_component|auto_generated|ram_block1a19_PORTAADDR_bus\,
	portbaddr => \U2|canvas|altsyncram_component|auto_generated|ram_block1a19_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \U2|canvas|altsyncram_component|auto_generated|ram_block1a19_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X63_Y48_N8
\U2|canvas|altsyncram_component|auto_generated|decode2|w_anode768w[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode768w\(3) = (\U2|canvas|altsyncram_component|auto_generated|decode2|w_anode746w[3]~0_combout\ & (\U2|write_addr[13]~12_combout\ & (!\U2|write_addr[14]~14_combout\ & 
-- !\U2|write_addr[15]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode746w[3]~0_combout\,
	datab => \U2|write_addr[13]~12_combout\,
	datac => \U2|write_addr[14]~14_combout\,
	datad => \U2|write_addr[15]~16_combout\,
	combout => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode768w\(3));

-- Location: LCCOMB_X70_Y48_N30
\U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1531w[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1531w\(3) = (\U2|read_addr[13]~16_combout\ & (!\U2|read_addr[14]~2_combout\ & (\U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1414w[2]~1_combout\ & 
-- !\U2|read_addr[15]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|read_addr[13]~16_combout\,
	datab => \U2|read_addr[14]~2_combout\,
	datac => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1414w[2]~1_combout\,
	datad => \U2|read_addr[15]~1_combout\,
	combout => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1531w\(3));

-- Location: M9K_X78_Y53_N0
\U2|canvas|altsyncram_component|auto_generated|ram_block1a17\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "etch_a_sketch:U2|framebuffer:canvas|altsyncram:altsyncram_component|altsyncram_suo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 307200,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 307200,
	port_b_logical_ram_width => 1,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode768w\(3),
	portbre => VCC,
	clk0 => \CLOCK_50~inputclkctrl_outclk\,
	clk1 => \CLOCK_50~inputclkctrl_outclk\,
	ena0 => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode768w\(3),
	ena1 => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1531w\(3),
	portadatain => \U2|canvas|altsyncram_component|auto_generated|ram_block1a17_PORTADATAIN_bus\,
	portaaddr => \U2|canvas|altsyncram_component|auto_generated|ram_block1a17_PORTAADDR_bus\,
	portbaddr => \U2|canvas|altsyncram_component|auto_generated|ram_block1a17_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \U2|canvas|altsyncram_component|auto_generated|ram_block1a17_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X65_Y48_N24
\U2|canvas|altsyncram_component|auto_generated|mux3|_~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|mux3|_~20_combout\ = (\U2|canvas|altsyncram_component|auto_generated|mux3|_~19_combout\ & (((\U2|canvas|altsyncram_component|auto_generated|ram_block1a19~portbdataout\)) # 
-- (!\U2|canvas|altsyncram_component|auto_generated|address_reg_b\(0)))) # (!\U2|canvas|altsyncram_component|auto_generated|mux3|_~19_combout\ & (\U2|canvas|altsyncram_component|auto_generated|address_reg_b\(0) & 
-- ((\U2|canvas|altsyncram_component|auto_generated|ram_block1a17~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|canvas|altsyncram_component|auto_generated|mux3|_~19_combout\,
	datab => \U2|canvas|altsyncram_component|auto_generated|address_reg_b\(0),
	datac => \U2|canvas|altsyncram_component|auto_generated|ram_block1a19~portbdataout\,
	datad => \U2|canvas|altsyncram_component|auto_generated|ram_block1a17~portbdataout\,
	combout => \U2|canvas|altsyncram_component|auto_generated|mux3|_~20_combout\);

-- Location: LCCOMB_X63_Y44_N16
\U2|canvas|altsyncram_component|auto_generated|decode2|w_anode839w[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode839w\(3) = (\SW[0]~input_o\ & (\U2|write_addr[17]~20_combout\ & (\U2|write_addr[16]~18_combout\ & !\U2|write_addr[18]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \U2|write_addr[17]~20_combout\,
	datac => \U2|write_addr[16]~18_combout\,
	datad => \U2|write_addr[18]~22_combout\,
	combout => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode839w\(3));

-- Location: LCCOMB_X63_Y44_N28
\U2|canvas|altsyncram_component|auto_generated|decode2|w_anode850w[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode850w\(3) = (!\U2|write_addr[13]~12_combout\ & (!\U2|write_addr[14]~14_combout\ & (!\U2|write_addr[15]~16_combout\ & \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode839w\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|write_addr[13]~12_combout\,
	datab => \U2|write_addr[14]~14_combout\,
	datac => \U2|write_addr[15]~16_combout\,
	datad => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode839w\(3),
	combout => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode850w\(3));

-- Location: LCCOMB_X59_Y48_N14
\U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1414w[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1414w[2]~2_combout\ = (!\U2|Add3~22_combout\ & (\U2|Add3~20_combout\ & (\U2|Add3~18_combout\ & \U2|read_addr~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add3~22_combout\,
	datab => \U2|Add3~20_combout\,
	datac => \U2|Add3~18_combout\,
	datad => \U2|read_addr~0_combout\,
	combout => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1414w[2]~2_combout\);

-- Location: LCCOMB_X65_Y44_N2
\U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1614w[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1614w\(3) = (!\U2|read_addr[14]~2_combout\ & (!\U2|read_addr[13]~16_combout\ & (\U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1414w[2]~2_combout\ & 
-- !\U2|read_addr[15]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|read_addr[14]~2_combout\,
	datab => \U2|read_addr[13]~16_combout\,
	datac => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1414w[2]~2_combout\,
	datad => \U2|read_addr[15]~1_combout\,
	combout => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1614w\(3));

-- Location: M9K_X64_Y44_N0
\U2|canvas|altsyncram_component|auto_generated|ram_block1a24\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "etch_a_sketch:U2|framebuffer:canvas|altsyncram:altsyncram_component|altsyncram_suo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 307200,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 307200,
	port_b_logical_ram_width => 1,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode850w\(3),
	portbre => VCC,
	clk0 => \CLOCK_50~inputclkctrl_outclk\,
	clk1 => \CLOCK_50~inputclkctrl_outclk\,
	ena0 => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode850w\(3),
	ena1 => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1614w\(3),
	portadatain => \U2|canvas|altsyncram_component|auto_generated|ram_block1a24_PORTADATAIN_bus\,
	portaaddr => \U2|canvas|altsyncram_component|auto_generated|ram_block1a24_PORTAADDR_bus\,
	portbaddr => \U2|canvas|altsyncram_component|auto_generated|ram_block1a24_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \U2|canvas|altsyncram_component|auto_generated|ram_block1a24_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X63_Y44_N26
\U2|canvas|altsyncram_component|auto_generated|decode2|w_anode861w[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode861w\(3) = (\U2|write_addr[13]~12_combout\ & (!\U2|write_addr[14]~14_combout\ & (!\U2|write_addr[15]~16_combout\ & \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode839w\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|write_addr[13]~12_combout\,
	datab => \U2|write_addr[14]~14_combout\,
	datac => \U2|write_addr[15]~16_combout\,
	datad => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode839w\(3),
	combout => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode861w\(3));

-- Location: LCCOMB_X65_Y44_N24
\U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1625w[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1625w\(3) = (!\U2|read_addr[14]~2_combout\ & (\U2|read_addr[13]~16_combout\ & (\U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1414w[2]~2_combout\ & 
-- !\U2|read_addr[15]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|read_addr[14]~2_combout\,
	datab => \U2|read_addr[13]~16_combout\,
	datac => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1414w[2]~2_combout\,
	datad => \U2|read_addr[15]~1_combout\,
	combout => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1625w\(3));

-- Location: M9K_X64_Y46_N0
\U2|canvas|altsyncram_component|auto_generated|ram_block1a25\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "etch_a_sketch:U2|framebuffer:canvas|altsyncram:altsyncram_component|altsyncram_suo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 307200,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 307200,
	port_b_logical_ram_width => 1,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode861w\(3),
	portbre => VCC,
	clk0 => \CLOCK_50~inputclkctrl_outclk\,
	clk1 => \CLOCK_50~inputclkctrl_outclk\,
	ena0 => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode861w\(3),
	ena1 => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1625w\(3),
	portadatain => \U2|canvas|altsyncram_component|auto_generated|ram_block1a25_PORTADATAIN_bus\,
	portaaddr => \U2|canvas|altsyncram_component|auto_generated|ram_block1a25_PORTAADDR_bus\,
	portbaddr => \U2|canvas|altsyncram_component|auto_generated|ram_block1a25_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \U2|canvas|altsyncram_component|auto_generated|ram_block1a25_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X65_Y48_N30
\U1|green_out[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|green_out[0]~2_combout\ = (!\U2|canvas|altsyncram_component|auto_generated|address_reg_b\(1) & ((\U2|canvas|altsyncram_component|auto_generated|address_reg_b\(0) & ((\U2|canvas|altsyncram_component|auto_generated|ram_block1a25~portbdataout\))) # 
-- (!\U2|canvas|altsyncram_component|auto_generated|address_reg_b\(0) & (\U2|canvas|altsyncram_component|auto_generated|ram_block1a24~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|canvas|altsyncram_component|auto_generated|address_reg_b\(1),
	datab => \U2|canvas|altsyncram_component|auto_generated|ram_block1a24~portbdataout\,
	datac => \U2|canvas|altsyncram_component|auto_generated|ram_block1a25~portbdataout\,
	datad => \U2|canvas|altsyncram_component|auto_generated|address_reg_b\(0),
	combout => \U1|green_out[0]~2_combout\);

-- Location: LCCOMB_X63_Y44_N30
\U2|canvas|altsyncram_component|auto_generated|decode2|w_anode881w[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode881w\(3) = (\U2|write_addr[13]~12_combout\ & (\U2|write_addr[14]~14_combout\ & (!\U2|write_addr[15]~16_combout\ & \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode839w\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|write_addr[13]~12_combout\,
	datab => \U2|write_addr[14]~14_combout\,
	datac => \U2|write_addr[15]~16_combout\,
	datad => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode839w\(3),
	combout => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode881w\(3));

-- Location: LCCOMB_X65_Y44_N4
\U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1645w[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1645w\(3) = (\U2|read_addr[14]~2_combout\ & (\U2|read_addr[13]~16_combout\ & (\U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1414w[2]~2_combout\ & 
-- !\U2|read_addr[15]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|read_addr[14]~2_combout\,
	datab => \U2|read_addr[13]~16_combout\,
	datac => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1414w[2]~2_combout\,
	datad => \U2|read_addr[15]~1_combout\,
	combout => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1645w\(3));

-- Location: M9K_X78_Y43_N0
\U2|canvas|altsyncram_component|auto_generated|ram_block1a27\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "etch_a_sketch:U2|framebuffer:canvas|altsyncram:altsyncram_component|altsyncram_suo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 307200,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 307200,
	port_b_logical_ram_width => 1,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode881w\(3),
	portbre => VCC,
	clk0 => \CLOCK_50~inputclkctrl_outclk\,
	clk1 => \CLOCK_50~inputclkctrl_outclk\,
	ena0 => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode881w\(3),
	ena1 => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1645w\(3),
	portadatain => \U2|canvas|altsyncram_component|auto_generated|ram_block1a27_PORTADATAIN_bus\,
	portaaddr => \U2|canvas|altsyncram_component|auto_generated|ram_block1a27_PORTAADDR_bus\,
	portbaddr => \U2|canvas|altsyncram_component|auto_generated|ram_block1a27_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \U2|canvas|altsyncram_component|auto_generated|ram_block1a27_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X63_Y44_N24
\U2|canvas|altsyncram_component|auto_generated|decode2|w_anode871w[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode871w\(3) = (!\U2|write_addr[13]~12_combout\ & (\U2|write_addr[14]~14_combout\ & (!\U2|write_addr[15]~16_combout\ & \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode839w\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|write_addr[13]~12_combout\,
	datab => \U2|write_addr[14]~14_combout\,
	datac => \U2|write_addr[15]~16_combout\,
	datad => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode839w\(3),
	combout => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode871w\(3));

-- Location: LCCOMB_X65_Y44_N14
\U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1635w[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1635w\(3) = (\U2|read_addr[14]~2_combout\ & (!\U2|read_addr[13]~16_combout\ & (\U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1414w[2]~2_combout\ & 
-- !\U2|read_addr[15]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|read_addr[14]~2_combout\,
	datab => \U2|read_addr[13]~16_combout\,
	datac => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1414w[2]~2_combout\,
	datad => \U2|read_addr[15]~1_combout\,
	combout => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1635w\(3));

-- Location: M9K_X78_Y44_N0
\U2|canvas|altsyncram_component|auto_generated|ram_block1a26\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "etch_a_sketch:U2|framebuffer:canvas|altsyncram:altsyncram_component|altsyncram_suo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 307200,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 307200,
	port_b_logical_ram_width => 1,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode871w\(3),
	portbre => VCC,
	clk0 => \CLOCK_50~inputclkctrl_outclk\,
	clk1 => \CLOCK_50~inputclkctrl_outclk\,
	ena0 => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode871w\(3),
	ena1 => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1635w\(3),
	portadatain => \U2|canvas|altsyncram_component|auto_generated|ram_block1a26_PORTADATAIN_bus\,
	portaaddr => \U2|canvas|altsyncram_component|auto_generated|ram_block1a26_PORTAADDR_bus\,
	portbaddr => \U2|canvas|altsyncram_component|auto_generated|ram_block1a26_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \U2|canvas|altsyncram_component|auto_generated|ram_block1a26_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X65_Y48_N28
\U1|green_out[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|green_out[0]~1_combout\ = (\U2|canvas|altsyncram_component|auto_generated|address_reg_b\(1) & ((\U2|canvas|altsyncram_component|auto_generated|address_reg_b\(0) & (\U2|canvas|altsyncram_component|auto_generated|ram_block1a27~portbdataout\)) # 
-- (!\U2|canvas|altsyncram_component|auto_generated|address_reg_b\(0) & ((\U2|canvas|altsyncram_component|auto_generated|ram_block1a26~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|canvas|altsyncram_component|auto_generated|ram_block1a27~portbdataout\,
	datab => \U2|canvas|altsyncram_component|auto_generated|address_reg_b\(0),
	datac => \U2|canvas|altsyncram_component|auto_generated|ram_block1a26~portbdataout\,
	datad => \U2|canvas|altsyncram_component|auto_generated|address_reg_b\(1),
	combout => \U1|green_out[0]~1_combout\);

-- Location: LCCOMB_X63_Y44_N8
\U2|canvas|altsyncram_component|auto_generated|decode2|w_anode891w[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode891w\(3) = (!\U2|write_addr[13]~12_combout\ & (!\U2|write_addr[14]~14_combout\ & (\U2|write_addr[15]~16_combout\ & \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode839w\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|write_addr[13]~12_combout\,
	datab => \U2|write_addr[14]~14_combout\,
	datac => \U2|write_addr[15]~16_combout\,
	datad => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode839w\(3),
	combout => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode891w\(3));

-- Location: LCCOMB_X65_Y44_N22
\U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1655w[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1655w\(3) = (!\U2|read_addr[14]~2_combout\ & (!\U2|read_addr[13]~16_combout\ & (\U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1414w[2]~2_combout\ & 
-- \U2|read_addr[15]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|read_addr[14]~2_combout\,
	datab => \U2|read_addr[13]~16_combout\,
	datac => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1414w[2]~2_combout\,
	datad => \U2|read_addr[15]~1_combout\,
	combout => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1655w\(3));

-- Location: M9K_X64_Y41_N0
\U2|canvas|altsyncram_component|auto_generated|ram_block1a28\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "etch_a_sketch:U2|framebuffer:canvas|altsyncram:altsyncram_component|altsyncram_suo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 307200,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 307200,
	port_b_logical_ram_width => 1,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode891w\(3),
	portbre => VCC,
	clk0 => \CLOCK_50~inputclkctrl_outclk\,
	clk1 => \CLOCK_50~inputclkctrl_outclk\,
	ena0 => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode891w\(3),
	ena1 => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1655w\(3),
	portadatain => \U2|canvas|altsyncram_component|auto_generated|ram_block1a28_PORTADATAIN_bus\,
	portaaddr => \U2|canvas|altsyncram_component|auto_generated|ram_block1a28_PORTAADDR_bus\,
	portbaddr => \U2|canvas|altsyncram_component|auto_generated|ram_block1a28_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \U2|canvas|altsyncram_component|auto_generated|ram_block1a28_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X63_Y44_N14
\U2|canvas|altsyncram_component|auto_generated|decode2|w_anode901w[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode901w\(3) = (\U2|write_addr[13]~12_combout\ & (!\U2|write_addr[14]~14_combout\ & (\U2|write_addr[15]~16_combout\ & \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode839w\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|write_addr[13]~12_combout\,
	datab => \U2|write_addr[14]~14_combout\,
	datac => \U2|write_addr[15]~16_combout\,
	datad => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode839w\(3),
	combout => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode901w\(3));

-- Location: LCCOMB_X65_Y44_N12
\U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1665w[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1665w\(3) = (!\U2|read_addr[14]~2_combout\ & (\U2|read_addr[13]~16_combout\ & (\U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1414w[2]~2_combout\ & 
-- \U2|read_addr[15]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|read_addr[14]~2_combout\,
	datab => \U2|read_addr[13]~16_combout\,
	datac => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1414w[2]~2_combout\,
	datad => \U2|read_addr[15]~1_combout\,
	combout => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1665w\(3));

-- Location: M9K_X64_Y40_N0
\U2|canvas|altsyncram_component|auto_generated|ram_block1a29\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "etch_a_sketch:U2|framebuffer:canvas|altsyncram:altsyncram_component|altsyncram_suo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 307200,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 307200,
	port_b_logical_ram_width => 1,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode901w\(3),
	portbre => VCC,
	clk0 => \CLOCK_50~inputclkctrl_outclk\,
	clk1 => \CLOCK_50~inputclkctrl_outclk\,
	ena0 => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode901w\(3),
	ena1 => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1665w\(3),
	portadatain => \U2|canvas|altsyncram_component|auto_generated|ram_block1a29_PORTADATAIN_bus\,
	portaaddr => \U2|canvas|altsyncram_component|auto_generated|ram_block1a29_PORTAADDR_bus\,
	portbaddr => \U2|canvas|altsyncram_component|auto_generated|ram_block1a29_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \U2|canvas|altsyncram_component|auto_generated|ram_block1a29_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X65_Y48_N10
\U1|green_out[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|green_out[0]~3_combout\ = (!\U2|canvas|altsyncram_component|auto_generated|address_reg_b\(1) & ((\U2|canvas|altsyncram_component|auto_generated|address_reg_b\(0) & ((\U2|canvas|altsyncram_component|auto_generated|ram_block1a29~portbdataout\))) # 
-- (!\U2|canvas|altsyncram_component|auto_generated|address_reg_b\(0) & (\U2|canvas|altsyncram_component|auto_generated|ram_block1a28~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|canvas|altsyncram_component|auto_generated|ram_block1a28~portbdataout\,
	datab => \U2|canvas|altsyncram_component|auto_generated|ram_block1a29~portbdataout\,
	datac => \U2|canvas|altsyncram_component|auto_generated|address_reg_b\(1),
	datad => \U2|canvas|altsyncram_component|auto_generated|address_reg_b\(0),
	combout => \U1|green_out[0]~3_combout\);

-- Location: FF_X65_Y48_N21
\U2|canvas|altsyncram_component|auto_generated|address_reg_b[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U2|read_addr[15]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|canvas|altsyncram_component|auto_generated|address_reg_b\(2));

-- Location: LCCOMB_X65_Y48_N8
\U1|green_out[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|green_out[0]~4_combout\ = (\U2|canvas|altsyncram_component|auto_generated|address_reg_b\(2) & (((\U1|green_out[0]~3_combout\)))) # (!\U2|canvas|altsyncram_component|auto_generated|address_reg_b\(2) & ((\U1|green_out[0]~2_combout\) # 
-- ((\U1|green_out[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|green_out[0]~2_combout\,
	datab => \U1|green_out[0]~1_combout\,
	datac => \U1|green_out[0]~3_combout\,
	datad => \U2|canvas|altsyncram_component|auto_generated|address_reg_b\(2),
	combout => \U1|green_out[0]~4_combout\);

-- Location: LCCOMB_X63_Y44_N4
\U2|canvas|altsyncram_component|auto_generated|decode2|w_anode911w[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode911w\(3) = (!\U2|write_addr[13]~12_combout\ & (\U2|write_addr[14]~14_combout\ & (\U2|write_addr[15]~16_combout\ & \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode839w\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|write_addr[13]~12_combout\,
	datab => \U2|write_addr[14]~14_combout\,
	datac => \U2|write_addr[15]~16_combout\,
	datad => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode839w\(3),
	combout => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode911w\(3));

-- Location: LCCOMB_X65_Y44_N26
\U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1675w[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1675w\(3) = (\U2|read_addr[14]~2_combout\ & (!\U2|read_addr[13]~16_combout\ & (\U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1414w[2]~2_combout\ & 
-- \U2|read_addr[15]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|read_addr[14]~2_combout\,
	datab => \U2|read_addr[13]~16_combout\,
	datac => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1414w[2]~2_combout\,
	datad => \U2|read_addr[15]~1_combout\,
	combout => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1675w\(3));

-- Location: M9K_X64_Y43_N0
\U2|canvas|altsyncram_component|auto_generated|ram_block1a30\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "etch_a_sketch:U2|framebuffer:canvas|altsyncram:altsyncram_component|altsyncram_suo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 307200,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 307200,
	port_b_logical_ram_width => 1,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode911w\(3),
	portbre => VCC,
	clk0 => \CLOCK_50~inputclkctrl_outclk\,
	clk1 => \CLOCK_50~inputclkctrl_outclk\,
	ena0 => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode911w\(3),
	ena1 => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1675w\(3),
	portadatain => \U2|canvas|altsyncram_component|auto_generated|ram_block1a30_PORTADATAIN_bus\,
	portaaddr => \U2|canvas|altsyncram_component|auto_generated|ram_block1a30_PORTAADDR_bus\,
	portbaddr => \U2|canvas|altsyncram_component|auto_generated|ram_block1a30_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \U2|canvas|altsyncram_component|auto_generated|ram_block1a30_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X63_Y44_N18
\U2|canvas|altsyncram_component|auto_generated|decode2|w_anode921w[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode921w\(3) = (\U2|write_addr[13]~12_combout\ & (\U2|write_addr[14]~14_combout\ & (\U2|write_addr[15]~16_combout\ & \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode839w\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|write_addr[13]~12_combout\,
	datab => \U2|write_addr[14]~14_combout\,
	datac => \U2|write_addr[15]~16_combout\,
	datad => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode839w\(3),
	combout => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode921w\(3));

-- Location: LCCOMB_X65_Y44_N16
\U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1685w[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1685w\(3) = (\U2|read_addr[14]~2_combout\ & (\U2|read_addr[13]~16_combout\ & (\U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1414w[2]~2_combout\ & 
-- \U2|read_addr[15]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|read_addr[14]~2_combout\,
	datab => \U2|read_addr[13]~16_combout\,
	datac => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1414w[2]~2_combout\,
	datad => \U2|read_addr[15]~1_combout\,
	combout => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1685w\(3));

-- Location: M9K_X78_Y41_N0
\U2|canvas|altsyncram_component|auto_generated|ram_block1a31\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "etch_a_sketch:U2|framebuffer:canvas|altsyncram:altsyncram_component|altsyncram_suo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 307200,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 307200,
	port_b_logical_ram_width => 1,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode921w\(3),
	portbre => VCC,
	clk0 => \CLOCK_50~inputclkctrl_outclk\,
	clk1 => \CLOCK_50~inputclkctrl_outclk\,
	ena0 => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode921w\(3),
	ena1 => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1685w\(3),
	portadatain => \U2|canvas|altsyncram_component|auto_generated|ram_block1a31_PORTADATAIN_bus\,
	portaaddr => \U2|canvas|altsyncram_component|auto_generated|ram_block1a31_PORTAADDR_bus\,
	portbaddr => \U2|canvas|altsyncram_component|auto_generated|ram_block1a31_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \U2|canvas|altsyncram_component|auto_generated|ram_block1a31_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X65_Y48_N2
\U1|green_out[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|green_out[0]~0_combout\ = (\U2|canvas|altsyncram_component|auto_generated|address_reg_b\(1) & ((\U2|canvas|altsyncram_component|auto_generated|address_reg_b\(0) & ((\U2|canvas|altsyncram_component|auto_generated|ram_block1a31~portbdataout\))) # 
-- (!\U2|canvas|altsyncram_component|auto_generated|address_reg_b\(0) & (\U2|canvas|altsyncram_component|auto_generated|ram_block1a30~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|canvas|altsyncram_component|auto_generated|ram_block1a30~portbdataout\,
	datab => \U2|canvas|altsyncram_component|auto_generated|address_reg_b\(0),
	datac => \U2|canvas|altsyncram_component|auto_generated|ram_block1a31~portbdataout\,
	datad => \U2|canvas|altsyncram_component|auto_generated|address_reg_b\(1),
	combout => \U1|green_out[0]~0_combout\);

-- Location: LCCOMB_X65_Y48_N20
\U1|green_out[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|green_out[0]~5_combout\ = (\U2|canvas|altsyncram_component|auto_generated|address_reg_b\(3) & ((\U1|green_out[0]~4_combout\) # ((\U2|canvas|altsyncram_component|auto_generated|address_reg_b\(2) & \U1|green_out[0]~0_combout\)))) # 
-- (!\U2|canvas|altsyncram_component|auto_generated|address_reg_b\(3) & (((\U2|canvas|altsyncram_component|auto_generated|address_reg_b\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|canvas|altsyncram_component|auto_generated|address_reg_b\(3),
	datab => \U1|green_out[0]~4_combout\,
	datac => \U2|canvas|altsyncram_component|auto_generated|address_reg_b\(2),
	datad => \U1|green_out[0]~0_combout\,
	combout => \U1|green_out[0]~5_combout\);

-- Location: LCCOMB_X63_Y48_N22
\U2|canvas|altsyncram_component|auto_generated|decode2|w_anode828w[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode828w\(3) = (\U2|canvas|altsyncram_component|auto_generated|decode2|w_anode746w[3]~0_combout\ & (\U2|write_addr[13]~12_combout\ & (\U2|write_addr[14]~14_combout\ & 
-- \U2|write_addr[15]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode746w[3]~0_combout\,
	datab => \U2|write_addr[13]~12_combout\,
	datac => \U2|write_addr[14]~14_combout\,
	datad => \U2|write_addr[15]~16_combout\,
	combout => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode828w\(3));

-- Location: LCCOMB_X70_Y48_N4
\U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1591w[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1591w\(3) = (\U2|read_addr[13]~16_combout\ & (\U2|read_addr[14]~2_combout\ & (\U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1414w[2]~1_combout\ & 
-- \U2|read_addr[15]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|read_addr[13]~16_combout\,
	datab => \U2|read_addr[14]~2_combout\,
	datac => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1414w[2]~1_combout\,
	datad => \U2|read_addr[15]~1_combout\,
	combout => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1591w\(3));

-- Location: M9K_X64_Y51_N0
\U2|canvas|altsyncram_component|auto_generated|ram_block1a23\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "etch_a_sketch:U2|framebuffer:canvas|altsyncram:altsyncram_component|altsyncram_suo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 307200,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 307200,
	port_b_logical_ram_width => 1,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode828w\(3),
	portbre => VCC,
	clk0 => \CLOCK_50~inputclkctrl_outclk\,
	clk1 => \CLOCK_50~inputclkctrl_outclk\,
	ena0 => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode828w\(3),
	ena1 => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1591w\(3),
	portadatain => \U2|canvas|altsyncram_component|auto_generated|ram_block1a23_PORTADATAIN_bus\,
	portaaddr => \U2|canvas|altsyncram_component|auto_generated|ram_block1a23_PORTAADDR_bus\,
	portbaddr => \U2|canvas|altsyncram_component|auto_generated|ram_block1a23_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \U2|canvas|altsyncram_component|auto_generated|ram_block1a23_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X63_Y48_N16
\U2|canvas|altsyncram_component|auto_generated|decode2|w_anode808w[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode808w\(3) = (\U2|canvas|altsyncram_component|auto_generated|decode2|w_anode746w[3]~0_combout\ & (\U2|write_addr[13]~12_combout\ & (!\U2|write_addr[14]~14_combout\ & 
-- \U2|write_addr[15]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode746w[3]~0_combout\,
	datab => \U2|write_addr[13]~12_combout\,
	datac => \U2|write_addr[14]~14_combout\,
	datad => \U2|write_addr[15]~16_combout\,
	combout => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode808w\(3));

-- Location: LCCOMB_X65_Y48_N4
\U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1571w[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1571w\(3) = (\U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1414w[2]~1_combout\ & (\U2|read_addr[13]~16_combout\ & (!\U2|read_addr[14]~2_combout\ & 
-- \U2|read_addr[15]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1414w[2]~1_combout\,
	datab => \U2|read_addr[13]~16_combout\,
	datac => \U2|read_addr[14]~2_combout\,
	datad => \U2|read_addr[15]~1_combout\,
	combout => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1571w\(3));

-- Location: M9K_X64_Y52_N0
\U2|canvas|altsyncram_component|auto_generated|ram_block1a21\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "etch_a_sketch:U2|framebuffer:canvas|altsyncram:altsyncram_component|altsyncram_suo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 307200,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 307200,
	port_b_logical_ram_width => 1,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode808w\(3),
	portbre => VCC,
	clk0 => \CLOCK_50~inputclkctrl_outclk\,
	clk1 => \CLOCK_50~inputclkctrl_outclk\,
	ena0 => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode808w\(3),
	ena1 => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1571w\(3),
	portadatain => \U2|canvas|altsyncram_component|auto_generated|ram_block1a21_PORTADATAIN_bus\,
	portaaddr => \U2|canvas|altsyncram_component|auto_generated|ram_block1a21_PORTAADDR_bus\,
	portbaddr => \U2|canvas|altsyncram_component|auto_generated|ram_block1a21_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \U2|canvas|altsyncram_component|auto_generated|ram_block1a21_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X63_Y48_N20
\U2|canvas|altsyncram_component|auto_generated|decode2|w_anode798w[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode798w\(3) = (\U2|canvas|altsyncram_component|auto_generated|decode2|w_anode746w[3]~0_combout\ & (!\U2|write_addr[13]~12_combout\ & (!\U2|write_addr[14]~14_combout\ & 
-- \U2|write_addr[15]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode746w[3]~0_combout\,
	datab => \U2|write_addr[13]~12_combout\,
	datac => \U2|write_addr[14]~14_combout\,
	datad => \U2|write_addr[15]~16_combout\,
	combout => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode798w\(3));

-- Location: LCCOMB_X70_Y48_N10
\U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1561w[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1561w\(3) = (!\U2|read_addr[13]~16_combout\ & (!\U2|read_addr[14]~2_combout\ & (\U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1414w[2]~1_combout\ & 
-- \U2|read_addr[15]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|read_addr[13]~16_combout\,
	datab => \U2|read_addr[14]~2_combout\,
	datac => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1414w[2]~1_combout\,
	datad => \U2|read_addr[15]~1_combout\,
	combout => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1561w\(3));

-- Location: M9K_X64_Y48_N0
\U2|canvas|altsyncram_component|auto_generated|ram_block1a20\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "etch_a_sketch:U2|framebuffer:canvas|altsyncram:altsyncram_component|altsyncram_suo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 307200,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 307200,
	port_b_logical_ram_width => 1,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode798w\(3),
	portbre => VCC,
	clk0 => \CLOCK_50~inputclkctrl_outclk\,
	clk1 => \CLOCK_50~inputclkctrl_outclk\,
	ena0 => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode798w\(3),
	ena1 => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1561w\(3),
	portadatain => \U2|canvas|altsyncram_component|auto_generated|ram_block1a20_PORTADATAIN_bus\,
	portaaddr => \U2|canvas|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\,
	portbaddr => \U2|canvas|altsyncram_component|auto_generated|ram_block1a20_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \U2|canvas|altsyncram_component|auto_generated|ram_block1a20_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X63_Y48_N18
\U2|canvas|altsyncram_component|auto_generated|decode2|w_anode818w[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode818w\(3) = (\U2|canvas|altsyncram_component|auto_generated|decode2|w_anode746w[3]~0_combout\ & (!\U2|write_addr[13]~12_combout\ & (\U2|write_addr[14]~14_combout\ & 
-- \U2|write_addr[15]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode746w[3]~0_combout\,
	datab => \U2|write_addr[13]~12_combout\,
	datac => \U2|write_addr[14]~14_combout\,
	datad => \U2|write_addr[15]~16_combout\,
	combout => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode818w\(3));

-- Location: LCCOMB_X70_Y48_N0
\U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1581w[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1581w\(3) = (!\U2|read_addr[13]~16_combout\ & (\U2|read_addr[14]~2_combout\ & (\U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1414w[2]~1_combout\ & 
-- \U2|read_addr[15]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|read_addr[13]~16_combout\,
	datab => \U2|read_addr[14]~2_combout\,
	datac => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1414w[2]~1_combout\,
	datad => \U2|read_addr[15]~1_combout\,
	combout => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1581w\(3));

-- Location: M9K_X78_Y52_N0
\U2|canvas|altsyncram_component|auto_generated|ram_block1a22\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "etch_a_sketch:U2|framebuffer:canvas|altsyncram:altsyncram_component|altsyncram_suo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 307200,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 307200,
	port_b_logical_ram_width => 1,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode818w\(3),
	portbre => VCC,
	clk0 => \CLOCK_50~inputclkctrl_outclk\,
	clk1 => \CLOCK_50~inputclkctrl_outclk\,
	ena0 => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode818w\(3),
	ena1 => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1581w\(3),
	portadatain => \U2|canvas|altsyncram_component|auto_generated|ram_block1a22_PORTADATAIN_bus\,
	portaaddr => \U2|canvas|altsyncram_component|auto_generated|ram_block1a22_PORTAADDR_bus\,
	portbaddr => \U2|canvas|altsyncram_component|auto_generated|ram_block1a22_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \U2|canvas|altsyncram_component|auto_generated|ram_block1a22_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X65_Y48_N26
\U2|canvas|altsyncram_component|auto_generated|mux3|_~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|mux3|_~17_combout\ = (\U2|canvas|altsyncram_component|auto_generated|address_reg_b\(1) & (((\U2|canvas|altsyncram_component|auto_generated|ram_block1a22~portbdataout\) # 
-- (\U2|canvas|altsyncram_component|auto_generated|address_reg_b\(0))))) # (!\U2|canvas|altsyncram_component|auto_generated|address_reg_b\(1) & (\U2|canvas|altsyncram_component|auto_generated|ram_block1a20~portbdataout\ & 
-- ((!\U2|canvas|altsyncram_component|auto_generated|address_reg_b\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|canvas|altsyncram_component|auto_generated|address_reg_b\(1),
	datab => \U2|canvas|altsyncram_component|auto_generated|ram_block1a20~portbdataout\,
	datac => \U2|canvas|altsyncram_component|auto_generated|ram_block1a22~portbdataout\,
	datad => \U2|canvas|altsyncram_component|auto_generated|address_reg_b\(0),
	combout => \U2|canvas|altsyncram_component|auto_generated|mux3|_~17_combout\);

-- Location: LCCOMB_X65_Y48_N12
\U2|canvas|altsyncram_component|auto_generated|mux3|_~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|mux3|_~18_combout\ = (\U2|canvas|altsyncram_component|auto_generated|mux3|_~17_combout\ & ((\U2|canvas|altsyncram_component|auto_generated|ram_block1a23~portbdataout\) # 
-- ((!\U2|canvas|altsyncram_component|auto_generated|address_reg_b\(0))))) # (!\U2|canvas|altsyncram_component|auto_generated|mux3|_~17_combout\ & (((\U2|canvas|altsyncram_component|auto_generated|ram_block1a21~portbdataout\ & 
-- \U2|canvas|altsyncram_component|auto_generated|address_reg_b\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|canvas|altsyncram_component|auto_generated|ram_block1a23~portbdataout\,
	datab => \U2|canvas|altsyncram_component|auto_generated|ram_block1a21~portbdataout\,
	datac => \U2|canvas|altsyncram_component|auto_generated|mux3|_~17_combout\,
	datad => \U2|canvas|altsyncram_component|auto_generated|address_reg_b\(0),
	combout => \U2|canvas|altsyncram_component|auto_generated|mux3|_~18_combout\);

-- Location: LCCOMB_X65_Y48_N18
\U1|green_out[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|green_out[0]~6_combout\ = (\U2|canvas|altsyncram_component|auto_generated|address_reg_b\(3) & (((\U1|green_out[0]~5_combout\)))) # (!\U2|canvas|altsyncram_component|auto_generated|address_reg_b\(3) & ((\U1|green_out[0]~5_combout\ & 
-- ((\U2|canvas|altsyncram_component|auto_generated|mux3|_~18_combout\))) # (!\U1|green_out[0]~5_combout\ & (\U2|canvas|altsyncram_component|auto_generated|mux3|_~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|canvas|altsyncram_component|auto_generated|address_reg_b\(3),
	datab => \U2|canvas|altsyncram_component|auto_generated|mux3|_~20_combout\,
	datac => \U1|green_out[0]~5_combout\,
	datad => \U2|canvas|altsyncram_component|auto_generated|mux3|_~18_combout\,
	combout => \U1|green_out[0]~6_combout\);

-- Location: LCCOMB_X59_Y48_N12
\U2|read_addr[17]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|read_addr[17]~19_combout\ = (\U2|read_addr~0_combout\ & \U2|Add3~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|read_addr~0_combout\,
	datac => \U2|Add3~20_combout\,
	combout => \U2|read_addr[17]~19_combout\);

-- Location: FF_X59_Y48_N13
\U2|canvas|altsyncram_component|auto_generated|address_reg_b[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|read_addr[17]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|canvas|altsyncram_component|auto_generated|address_reg_b\(4));

-- Location: LCCOMB_X59_Y48_N26
\U2|read_addr[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|read_addr[18]~18_combout\ = (\U2|read_addr~0_combout\ & \U2|Add3~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|read_addr~0_combout\,
	datac => \U2|Add3~22_combout\,
	combout => \U2|read_addr[18]~18_combout\);

-- Location: FF_X59_Y48_N27
\U2|canvas|altsyncram_component|auto_generated|address_reg_b[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U2|read_addr[18]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|canvas|altsyncram_component|auto_generated|address_reg_b\(5));

-- Location: LCCOMB_X63_Y48_N24
\U2|canvas|altsyncram_component|auto_generated|decode2|w_anode932w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode932w[3]~0_combout\ = (\U2|write_addr[18]~22_combout\ & (\SW[0]~input_o\ & (!\U2|write_addr[16]~18_combout\ & !\U2|write_addr[17]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|write_addr[18]~22_combout\,
	datab => \SW[0]~input_o\,
	datac => \U2|write_addr[16]~18_combout\,
	datad => \U2|write_addr[17]~20_combout\,
	combout => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode932w[3]~0_combout\);

-- Location: LCCOMB_X63_Y48_N2
\U2|canvas|altsyncram_component|auto_generated|decode2|w_anode954w[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode954w\(3) = (\U2|write_addr[13]~12_combout\ & (!\U2|write_addr[15]~16_combout\ & (!\U2|write_addr[14]~14_combout\ & 
-- \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode932w[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|write_addr[13]~12_combout\,
	datab => \U2|write_addr[15]~16_combout\,
	datac => \U2|write_addr[14]~14_combout\,
	datad => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode932w[3]~0_combout\,
	combout => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode954w\(3));

-- Location: LCCOMB_X59_Y48_N18
\U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1696w[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1696w\(3) = ((\U2|Add3~20_combout\) # ((\U2|Add3~18_combout\) # (!\U2|read_addr~0_combout\))) # (!\U2|Add3~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add3~22_combout\,
	datab => \U2|Add3~20_combout\,
	datac => \U2|Add3~18_combout\,
	datad => \U2|read_addr~0_combout\,
	combout => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1696w\(3));

-- Location: LCCOMB_X59_Y47_N18
\U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1719w[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1719w\(3) = (!\U2|read_addr[14]~2_combout\ & (!\U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1696w\(3) & (\U2|read_addr[13]~16_combout\ & 
-- !\U2|read_addr[15]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|read_addr[14]~2_combout\,
	datab => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1696w\(3),
	datac => \U2|read_addr[13]~16_combout\,
	datad => \U2|read_addr[15]~1_combout\,
	combout => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1719w\(3));

-- Location: M9K_X64_Y49_N0
\U2|canvas|altsyncram_component|auto_generated|ram_block1a33\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "etch_a_sketch:U2|framebuffer:canvas|altsyncram:altsyncram_component|altsyncram_suo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 307200,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 307200,
	port_b_logical_ram_width => 1,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode954w\(3),
	portbre => VCC,
	clk0 => \CLOCK_50~inputclkctrl_outclk\,
	clk1 => \CLOCK_50~inputclkctrl_outclk\,
	ena0 => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode954w\(3),
	ena1 => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1719w\(3),
	portadatain => \U2|canvas|altsyncram_component|auto_generated|ram_block1a33_PORTADATAIN_bus\,
	portaaddr => \U2|canvas|altsyncram_component|auto_generated|ram_block1a33_PORTAADDR_bus\,
	portbaddr => \U2|canvas|altsyncram_component|auto_generated|ram_block1a33_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \U2|canvas|altsyncram_component|auto_generated|ram_block1a33_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X63_Y48_N0
\U2|canvas|altsyncram_component|auto_generated|decode2|w_anode974w[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode974w\(3) = (\U2|write_addr[13]~12_combout\ & (!\U2|write_addr[15]~16_combout\ & (\U2|write_addr[14]~14_combout\ & 
-- \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode932w[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|write_addr[13]~12_combout\,
	datab => \U2|write_addr[15]~16_combout\,
	datac => \U2|write_addr[14]~14_combout\,
	datad => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode932w[3]~0_combout\,
	combout => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode974w\(3));

-- Location: LCCOMB_X59_Y47_N0
\U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1739w[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1739w\(3) = (\U2|read_addr[13]~16_combout\ & (!\U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1696w\(3) & (\U2|read_addr[14]~2_combout\ & 
-- !\U2|read_addr[15]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|read_addr[13]~16_combout\,
	datab => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1696w\(3),
	datac => \U2|read_addr[14]~2_combout\,
	datad => \U2|read_addr[15]~1_combout\,
	combout => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1739w\(3));

-- Location: M9K_X51_Y52_N0
\U2|canvas|altsyncram_component|auto_generated|ram_block1a35\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "etch_a_sketch:U2|framebuffer:canvas|altsyncram:altsyncram_component|altsyncram_suo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 307200,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 307200,
	port_b_logical_ram_width => 1,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode974w\(3),
	portbre => VCC,
	clk0 => \CLOCK_50~inputclkctrl_outclk\,
	clk1 => \CLOCK_50~inputclkctrl_outclk\,
	ena0 => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode974w\(3),
	ena1 => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1739w\(3),
	portadatain => \U2|canvas|altsyncram_component|auto_generated|ram_block1a35_PORTADATAIN_bus\,
	portaaddr => \U2|canvas|altsyncram_component|auto_generated|ram_block1a35_PORTAADDR_bus\,
	portbaddr => \U2|canvas|altsyncram_component|auto_generated|ram_block1a35_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \U2|canvas|altsyncram_component|auto_generated|ram_block1a35_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X63_Y48_N12
\U2|canvas|altsyncram_component|auto_generated|decode2|w_anode964w[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode964w\(3) = (!\U2|write_addr[13]~12_combout\ & (!\U2|write_addr[15]~16_combout\ & (\U2|write_addr[14]~14_combout\ & 
-- \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode932w[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|write_addr[13]~12_combout\,
	datab => \U2|write_addr[15]~16_combout\,
	datac => \U2|write_addr[14]~14_combout\,
	datad => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode932w[3]~0_combout\,
	combout => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode964w\(3));

-- Location: LCCOMB_X59_Y47_N12
\U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1729w[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1729w\(3) = (!\U2|read_addr[13]~16_combout\ & (!\U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1696w\(3) & (\U2|read_addr[14]~2_combout\ & 
-- !\U2|read_addr[15]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|read_addr[13]~16_combout\,
	datab => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1696w\(3),
	datac => \U2|read_addr[14]~2_combout\,
	datad => \U2|read_addr[15]~1_combout\,
	combout => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1729w\(3));

-- Location: M9K_X51_Y50_N0
\U2|canvas|altsyncram_component|auto_generated|ram_block1a34\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "etch_a_sketch:U2|framebuffer:canvas|altsyncram:altsyncram_component|altsyncram_suo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 307200,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 307200,
	port_b_logical_ram_width => 1,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode964w\(3),
	portbre => VCC,
	clk0 => \CLOCK_50~inputclkctrl_outclk\,
	clk1 => \CLOCK_50~inputclkctrl_outclk\,
	ena0 => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode964w\(3),
	ena1 => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1729w\(3),
	portadatain => \U2|canvas|altsyncram_component|auto_generated|ram_block1a34_PORTADATAIN_bus\,
	portaaddr => \U2|canvas|altsyncram_component|auto_generated|ram_block1a34_PORTAADDR_bus\,
	portbaddr => \U2|canvas|altsyncram_component|auto_generated|ram_block1a34_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \U2|canvas|altsyncram_component|auto_generated|ram_block1a34_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X63_Y48_N6
\U2|canvas|altsyncram_component|auto_generated|decode2|w_anode943w[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode943w\(3) = (!\U2|write_addr[13]~12_combout\ & (!\U2|write_addr[15]~16_combout\ & (!\U2|write_addr[14]~14_combout\ & 
-- \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode932w[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|write_addr[13]~12_combout\,
	datab => \U2|write_addr[15]~16_combout\,
	datac => \U2|write_addr[14]~14_combout\,
	datad => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode932w[3]~0_combout\,
	combout => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode943w\(3));

-- Location: LCCOMB_X59_Y47_N30
\U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1708w[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1708w\(3) = (!\U2|read_addr[13]~16_combout\ & (!\U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1696w\(3) & (!\U2|read_addr[14]~2_combout\ & 
-- !\U2|read_addr[15]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|read_addr[13]~16_combout\,
	datab => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1696w\(3),
	datac => \U2|read_addr[14]~2_combout\,
	datad => \U2|read_addr[15]~1_combout\,
	combout => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1708w\(3));

-- Location: M9K_X51_Y48_N0
\U2|canvas|altsyncram_component|auto_generated|ram_block1a32\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "etch_a_sketch:U2|framebuffer:canvas|altsyncram:altsyncram_component|altsyncram_suo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 307200,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 307200,
	port_b_logical_ram_width => 1,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode943w\(3),
	portbre => VCC,
	clk0 => \CLOCK_50~inputclkctrl_outclk\,
	clk1 => \CLOCK_50~inputclkctrl_outclk\,
	ena0 => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode943w\(3),
	ena1 => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1708w\(3),
	portadatain => \U2|canvas|altsyncram_component|auto_generated|ram_block1a32_PORTADATAIN_bus\,
	portaaddr => \U2|canvas|altsyncram_component|auto_generated|ram_block1a32_PORTAADDR_bus\,
	portbaddr => \U2|canvas|altsyncram_component|auto_generated|ram_block1a32_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \U2|canvas|altsyncram_component|auto_generated|ram_block1a32_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X62_Y48_N4
\U2|canvas|altsyncram_component|auto_generated|mux3|_~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|mux3|_~12_combout\ = (\U2|canvas|altsyncram_component|auto_generated|address_reg_b\(0) & (((\U2|canvas|altsyncram_component|auto_generated|address_reg_b\(1))))) # 
-- (!\U2|canvas|altsyncram_component|auto_generated|address_reg_b\(0) & ((\U2|canvas|altsyncram_component|auto_generated|address_reg_b\(1) & (\U2|canvas|altsyncram_component|auto_generated|ram_block1a34~portbdataout\)) # 
-- (!\U2|canvas|altsyncram_component|auto_generated|address_reg_b\(1) & ((\U2|canvas|altsyncram_component|auto_generated|ram_block1a32~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|canvas|altsyncram_component|auto_generated|ram_block1a34~portbdataout\,
	datab => \U2|canvas|altsyncram_component|auto_generated|address_reg_b\(0),
	datac => \U2|canvas|altsyncram_component|auto_generated|ram_block1a32~portbdataout\,
	datad => \U2|canvas|altsyncram_component|auto_generated|address_reg_b\(1),
	combout => \U2|canvas|altsyncram_component|auto_generated|mux3|_~12_combout\);

-- Location: LCCOMB_X62_Y48_N14
\U2|canvas|altsyncram_component|auto_generated|mux3|_~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|mux3|_~13_combout\ = (\U2|canvas|altsyncram_component|auto_generated|mux3|_~12_combout\ & (((\U2|canvas|altsyncram_component|auto_generated|ram_block1a35~portbdataout\) # 
-- (!\U2|canvas|altsyncram_component|auto_generated|address_reg_b\(0))))) # (!\U2|canvas|altsyncram_component|auto_generated|mux3|_~12_combout\ & (\U2|canvas|altsyncram_component|auto_generated|ram_block1a33~portbdataout\ & 
-- ((\U2|canvas|altsyncram_component|auto_generated|address_reg_b\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|canvas|altsyncram_component|auto_generated|ram_block1a33~portbdataout\,
	datab => \U2|canvas|altsyncram_component|auto_generated|ram_block1a35~portbdataout\,
	datac => \U2|canvas|altsyncram_component|auto_generated|mux3|_~12_combout\,
	datad => \U2|canvas|altsyncram_component|auto_generated|address_reg_b\(0),
	combout => \U2|canvas|altsyncram_component|auto_generated|mux3|_~13_combout\);

-- Location: LCCOMB_X63_Y48_N10
\U2|canvas|altsyncram_component|auto_generated|decode2|w_anode994w[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode994w\(3) = (\U2|write_addr[13]~12_combout\ & (\U2|write_addr[15]~16_combout\ & (!\U2|write_addr[14]~14_combout\ & 
-- \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode932w[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|write_addr[13]~12_combout\,
	datab => \U2|write_addr[15]~16_combout\,
	datac => \U2|write_addr[14]~14_combout\,
	datad => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode932w[3]~0_combout\,
	combout => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode994w\(3));

-- Location: LCCOMB_X59_Y47_N10
\U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1759w[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1759w\(3) = (\U2|read_addr[13]~16_combout\ & (!\U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1696w\(3) & (!\U2|read_addr[14]~2_combout\ & 
-- \U2|read_addr[15]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|read_addr[13]~16_combout\,
	datab => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1696w\(3),
	datac => \U2|read_addr[14]~2_combout\,
	datad => \U2|read_addr[15]~1_combout\,
	combout => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1759w\(3));

-- Location: M9K_X51_Y51_N0
\U2|canvas|altsyncram_component|auto_generated|ram_block1a37\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "etch_a_sketch:U2|framebuffer:canvas|altsyncram:altsyncram_component|altsyncram_suo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 307200,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 2,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 307200,
	port_b_logical_ram_width => 1,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode994w\(3),
	portbre => VCC,
	clk0 => \CLOCK_50~inputclkctrl_outclk\,
	clk1 => \CLOCK_50~inputclkctrl_outclk\,
	ena0 => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode994w\(3),
	ena1 => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1759w\(3),
	portadatain => \U2|canvas|altsyncram_component|auto_generated|ram_block1a37_PORTADATAIN_bus\,
	portaaddr => \U2|canvas|altsyncram_component|auto_generated|ram_block1a37_PORTAADDR_bus\,
	portbaddr => \U2|canvas|altsyncram_component|auto_generated|ram_block1a37_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \U2|canvas|altsyncram_component|auto_generated|ram_block1a37_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X63_Y48_N28
\U2|canvas|altsyncram_component|auto_generated|decode2|w_anode984w[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode984w\(3) = (!\U2|write_addr[13]~12_combout\ & (\U2|write_addr[15]~16_combout\ & (!\U2|write_addr[14]~14_combout\ & 
-- \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode932w[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|write_addr[13]~12_combout\,
	datab => \U2|write_addr[15]~16_combout\,
	datac => \U2|write_addr[14]~14_combout\,
	datad => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode932w[3]~0_combout\,
	combout => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode984w\(3));

-- Location: LCCOMB_X59_Y47_N20
\U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1749w[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1749w\(3) = (!\U2|read_addr[13]~16_combout\ & (!\U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1696w\(3) & (!\U2|read_addr[14]~2_combout\ & 
-- \U2|read_addr[15]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|read_addr[13]~16_combout\,
	datab => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1696w\(3),
	datac => \U2|read_addr[14]~2_combout\,
	datad => \U2|read_addr[15]~1_combout\,
	combout => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1749w\(3));

-- Location: M9K_X64_Y50_N0
\U2|canvas|altsyncram_component|auto_generated|ram_block1a36\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "etch_a_sketch:U2|framebuffer:canvas|altsyncram:altsyncram_component|altsyncram_suo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 307200,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 307200,
	port_b_logical_ram_width => 1,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode984w\(3),
	portbre => VCC,
	clk0 => \CLOCK_50~inputclkctrl_outclk\,
	clk1 => \CLOCK_50~inputclkctrl_outclk\,
	ena0 => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode984w\(3),
	ena1 => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1749w\(3),
	portadatain => \U2|canvas|altsyncram_component|auto_generated|ram_block1a36_PORTADATAIN_bus\,
	portaaddr => \U2|canvas|altsyncram_component|auto_generated|ram_block1a36_PORTAADDR_bus\,
	portbaddr => \U2|canvas|altsyncram_component|auto_generated|ram_block1a36_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \U2|canvas|altsyncram_component|auto_generated|ram_block1a36_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X65_Y48_N14
\U2|canvas|altsyncram_component|auto_generated|mux3|_~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|mux3|_~14_combout\ = (\U2|canvas|altsyncram_component|auto_generated|address_reg_b\(2) & ((\U2|canvas|altsyncram_component|auto_generated|address_reg_b\(0) & 
-- (\U2|canvas|altsyncram_component|auto_generated|ram_block1a37~portbdataout\)) # (!\U2|canvas|altsyncram_component|auto_generated|address_reg_b\(0) & ((\U2|canvas|altsyncram_component|auto_generated|ram_block1a36~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|canvas|altsyncram_component|auto_generated|ram_block1a37~portbdataout\,
	datab => \U2|canvas|altsyncram_component|auto_generated|address_reg_b\(0),
	datac => \U2|canvas|altsyncram_component|auto_generated|ram_block1a36~portbdataout\,
	datad => \U2|canvas|altsyncram_component|auto_generated|address_reg_b\(2),
	combout => \U2|canvas|altsyncram_component|auto_generated|mux3|_~14_combout\);

-- Location: LCCOMB_X65_Y48_N0
\U2|canvas|altsyncram_component|auto_generated|mux3|_~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|mux3|_~15_combout\ = (\U2|canvas|altsyncram_component|auto_generated|mux3|_~13_combout\ & (((\U2|canvas|altsyncram_component|auto_generated|mux3|_~14_combout\ & 
-- !\U2|canvas|altsyncram_component|auto_generated|address_reg_b\(1))) # (!\U2|canvas|altsyncram_component|auto_generated|address_reg_b\(2)))) # (!\U2|canvas|altsyncram_component|auto_generated|mux3|_~13_combout\ & 
-- (((\U2|canvas|altsyncram_component|auto_generated|mux3|_~14_combout\ & !\U2|canvas|altsyncram_component|auto_generated|address_reg_b\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|canvas|altsyncram_component|auto_generated|mux3|_~13_combout\,
	datab => \U2|canvas|altsyncram_component|auto_generated|address_reg_b\(2),
	datac => \U2|canvas|altsyncram_component|auto_generated|mux3|_~14_combout\,
	datad => \U2|canvas|altsyncram_component|auto_generated|address_reg_b\(1),
	combout => \U2|canvas|altsyncram_component|auto_generated|mux3|_~15_combout\);

-- Location: LCCOMB_X63_Y45_N10
\U2|canvas|altsyncram_component|auto_generated|decode2|w_anode653w[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode653w\(3) = (\SW[0]~input_o\ & (!\U2|write_addr[17]~20_combout\ & (\U2|write_addr[16]~18_combout\ & !\U2|write_addr[18]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \U2|write_addr[17]~20_combout\,
	datac => \U2|write_addr[16]~18_combout\,
	datad => \U2|write_addr[18]~22_combout\,
	combout => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode653w\(3));

-- Location: LCCOMB_X63_Y45_N14
\U2|canvas|altsyncram_component|auto_generated|decode2|w_anode725w[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode725w\(3) = (\U2|canvas|altsyncram_component|auto_generated|decode2|w_anode653w\(3) & (\U2|write_addr[15]~16_combout\ & (\U2|write_addr[14]~14_combout\ & !\U2|write_addr[13]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode653w\(3),
	datab => \U2|write_addr[15]~16_combout\,
	datac => \U2|write_addr[14]~14_combout\,
	datad => \U2|write_addr[13]~12_combout\,
	combout => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode725w\(3));

-- Location: LCCOMB_X59_Y48_N8
\U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1414w[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1414w[2]~0_combout\ = (!\U2|Add3~22_combout\ & (!\U2|Add3~20_combout\ & (\U2|Add3~18_combout\ & \U2|read_addr~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add3~22_combout\,
	datab => \U2|Add3~20_combout\,
	datac => \U2|Add3~18_combout\,
	datad => \U2|read_addr~0_combout\,
	combout => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1414w[2]~0_combout\);

-- Location: LCCOMB_X70_Y48_N18
\U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1487w[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1487w\(3) = (!\U2|read_addr[13]~16_combout\ & (\U2|read_addr[14]~2_combout\ & (\U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1414w[2]~0_combout\ & 
-- \U2|read_addr[15]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|read_addr[13]~16_combout\,
	datab => \U2|read_addr[14]~2_combout\,
	datac => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1414w[2]~0_combout\,
	datad => \U2|read_addr[15]~1_combout\,
	combout => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1487w\(3));

-- Location: M9K_X64_Y53_N0
\U2|canvas|altsyncram_component|auto_generated|ram_block1a14\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "etch_a_sketch:U2|framebuffer:canvas|altsyncram:altsyncram_component|altsyncram_suo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 307200,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 307200,
	port_b_logical_ram_width => 1,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode725w\(3),
	portbre => VCC,
	clk0 => \CLOCK_50~inputclkctrl_outclk\,
	clk1 => \CLOCK_50~inputclkctrl_outclk\,
	ena0 => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode725w\(3),
	ena1 => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1487w\(3),
	portadatain => \U2|canvas|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\,
	portaaddr => \U2|canvas|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\,
	portbaddr => \U2|canvas|altsyncram_component|auto_generated|ram_block1a14_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \U2|canvas|altsyncram_component|auto_generated|ram_block1a14_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X63_Y45_N28
\U2|canvas|altsyncram_component|auto_generated|decode2|w_anode735w[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode735w\(3) = (\U2|canvas|altsyncram_component|auto_generated|decode2|w_anode653w\(3) & (\U2|write_addr[15]~16_combout\ & (\U2|write_addr[14]~14_combout\ & \U2|write_addr[13]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode653w\(3),
	datab => \U2|write_addr[15]~16_combout\,
	datac => \U2|write_addr[14]~14_combout\,
	datad => \U2|write_addr[13]~12_combout\,
	combout => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode735w\(3));

-- Location: LCCOMB_X70_Y48_N24
\U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1497w[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1497w\(3) = (\U2|read_addr[13]~16_combout\ & (\U2|read_addr[14]~2_combout\ & (\U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1414w[2]~0_combout\ & 
-- \U2|read_addr[15]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|read_addr[13]~16_combout\,
	datab => \U2|read_addr[14]~2_combout\,
	datac => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1414w[2]~0_combout\,
	datad => \U2|read_addr[15]~1_combout\,
	combout => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1497w\(3));

-- Location: M9K_X64_Y45_N0
\U2|canvas|altsyncram_component|auto_generated|ram_block1a15\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "etch_a_sketch:U2|framebuffer:canvas|altsyncram:altsyncram_component|altsyncram_suo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 307200,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 307200,
	port_b_logical_ram_width => 1,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode735w\(3),
	portbre => VCC,
	clk0 => \CLOCK_50~inputclkctrl_outclk\,
	clk1 => \CLOCK_50~inputclkctrl_outclk\,
	ena0 => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode735w\(3),
	ena1 => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1497w\(3),
	portadatain => \U2|canvas|altsyncram_component|auto_generated|ram_block1a15_PORTADATAIN_bus\,
	portaaddr => \U2|canvas|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\,
	portbaddr => \U2|canvas|altsyncram_component|auto_generated|ram_block1a15_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \U2|canvas|altsyncram_component|auto_generated|ram_block1a15_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X62_Y48_N30
\U2|canvas|altsyncram_component|auto_generated|mux3|_~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|mux3|_~8_combout\ = (\U2|canvas|altsyncram_component|auto_generated|address_reg_b\(1) & ((\U2|canvas|altsyncram_component|auto_generated|address_reg_b\(0) & 
-- ((\U2|canvas|altsyncram_component|auto_generated|ram_block1a15~portbdataout\))) # (!\U2|canvas|altsyncram_component|auto_generated|address_reg_b\(0) & (\U2|canvas|altsyncram_component|auto_generated|ram_block1a14~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|canvas|altsyncram_component|auto_generated|ram_block1a14~portbdataout\,
	datab => \U2|canvas|altsyncram_component|auto_generated|address_reg_b\(0),
	datac => \U2|canvas|altsyncram_component|auto_generated|ram_block1a15~portbdataout\,
	datad => \U2|canvas|altsyncram_component|auto_generated|address_reg_b\(1),
	combout => \U2|canvas|altsyncram_component|auto_generated|mux3|_~8_combout\);

-- Location: LCCOMB_X63_Y45_N2
\U2|canvas|altsyncram_component|auto_generated|decode2|w_anode705w[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode705w\(3) = (\U2|canvas|altsyncram_component|auto_generated|decode2|w_anode653w\(3) & (\U2|write_addr[15]~16_combout\ & (!\U2|write_addr[14]~14_combout\ & !\U2|write_addr[13]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode653w\(3),
	datab => \U2|write_addr[15]~16_combout\,
	datac => \U2|write_addr[14]~14_combout\,
	datad => \U2|write_addr[13]~12_combout\,
	combout => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode705w\(3));

-- Location: LCCOMB_X70_Y48_N22
\U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1467w[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1467w\(3) = (!\U2|read_addr[13]~16_combout\ & (!\U2|read_addr[14]~2_combout\ & (\U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1414w[2]~0_combout\ & 
-- \U2|read_addr[15]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|read_addr[13]~16_combout\,
	datab => \U2|read_addr[14]~2_combout\,
	datac => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1414w[2]~0_combout\,
	datad => \U2|read_addr[15]~1_combout\,
	combout => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1467w\(3));

-- Location: M9K_X64_Y42_N0
\U2|canvas|altsyncram_component|auto_generated|ram_block1a12\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "etch_a_sketch:U2|framebuffer:canvas|altsyncram:altsyncram_component|altsyncram_suo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 307200,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 307200,
	port_b_logical_ram_width => 1,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode705w\(3),
	portbre => VCC,
	clk0 => \CLOCK_50~inputclkctrl_outclk\,
	clk1 => \CLOCK_50~inputclkctrl_outclk\,
	ena0 => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode705w\(3),
	ena1 => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1467w\(3),
	portadatain => \U2|canvas|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\,
	portaaddr => \U2|canvas|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\,
	portbaddr => \U2|canvas|altsyncram_component|auto_generated|ram_block1a12_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \U2|canvas|altsyncram_component|auto_generated|ram_block1a12_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X63_Y45_N8
\U2|canvas|altsyncram_component|auto_generated|decode2|w_anode715w[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode715w\(3) = (\U2|canvas|altsyncram_component|auto_generated|decode2|w_anode653w\(3) & (\U2|write_addr[13]~12_combout\ & (!\U2|write_addr[14]~14_combout\ & \U2|write_addr[15]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode653w\(3),
	datab => \U2|write_addr[13]~12_combout\,
	datac => \U2|write_addr[14]~14_combout\,
	datad => \U2|write_addr[15]~16_combout\,
	combout => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode715w\(3));

-- Location: LCCOMB_X70_Y48_N20
\U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1477w[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1477w\(3) = (\U2|read_addr[13]~16_combout\ & (!\U2|read_addr[14]~2_combout\ & (\U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1414w[2]~0_combout\ & 
-- \U2|read_addr[15]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|read_addr[13]~16_combout\,
	datab => \U2|read_addr[14]~2_combout\,
	datac => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1414w[2]~0_combout\,
	datad => \U2|read_addr[15]~1_combout\,
	combout => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1477w\(3));

-- Location: M9K_X78_Y42_N0
\U2|canvas|altsyncram_component|auto_generated|ram_block1a13\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "etch_a_sketch:U2|framebuffer:canvas|altsyncram:altsyncram_component|altsyncram_suo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 307200,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 307200,
	port_b_logical_ram_width => 1,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode715w\(3),
	portbre => VCC,
	clk0 => \CLOCK_50~inputclkctrl_outclk\,
	clk1 => \CLOCK_50~inputclkctrl_outclk\,
	ena0 => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode715w\(3),
	ena1 => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1477w\(3),
	portadatain => \U2|canvas|altsyncram_component|auto_generated|ram_block1a13_PORTADATAIN_bus\,
	portaaddr => \U2|canvas|altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\,
	portbaddr => \U2|canvas|altsyncram_component|auto_generated|ram_block1a13_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \U2|canvas|altsyncram_component|auto_generated|ram_block1a13_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X65_Y48_N16
\U2|canvas|altsyncram_component|auto_generated|mux3|_~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|mux3|_~9_combout\ = (!\U2|canvas|altsyncram_component|auto_generated|address_reg_b\(1) & ((\U2|canvas|altsyncram_component|auto_generated|address_reg_b\(0) & 
-- ((\U2|canvas|altsyncram_component|auto_generated|ram_block1a13~portbdataout\))) # (!\U2|canvas|altsyncram_component|auto_generated|address_reg_b\(0) & (\U2|canvas|altsyncram_component|auto_generated|ram_block1a12~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|canvas|altsyncram_component|auto_generated|address_reg_b\(1),
	datab => \U2|canvas|altsyncram_component|auto_generated|ram_block1a12~portbdataout\,
	datac => \U2|canvas|altsyncram_component|auto_generated|address_reg_b\(0),
	datad => \U2|canvas|altsyncram_component|auto_generated|ram_block1a13~portbdataout\,
	combout => \U2|canvas|altsyncram_component|auto_generated|mux3|_~9_combout\);

-- Location: LCCOMB_X63_Y45_N4
\U2|canvas|altsyncram_component|auto_generated|decode2|w_anode695w[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode695w\(3) = (\U2|canvas|altsyncram_component|auto_generated|decode2|w_anode653w\(3) & (\U2|write_addr[13]~12_combout\ & (\U2|write_addr[14]~14_combout\ & !\U2|write_addr[15]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode653w\(3),
	datab => \U2|write_addr[13]~12_combout\,
	datac => \U2|write_addr[14]~14_combout\,
	datad => \U2|write_addr[15]~16_combout\,
	combout => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode695w\(3));

-- Location: LCCOMB_X70_Y48_N8
\U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1457w[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1457w\(3) = (\U2|read_addr[13]~16_combout\ & (\U2|read_addr[14]~2_combout\ & (\U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1414w[2]~0_combout\ & 
-- !\U2|read_addr[15]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|read_addr[13]~16_combout\,
	datab => \U2|read_addr[14]~2_combout\,
	datac => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1414w[2]~0_combout\,
	datad => \U2|read_addr[15]~1_combout\,
	combout => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1457w\(3));

-- Location: M9K_X78_Y47_N0
\U2|canvas|altsyncram_component|auto_generated|ram_block1a11\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "etch_a_sketch:U2|framebuffer:canvas|altsyncram:altsyncram_component|altsyncram_suo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 307200,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 307200,
	port_b_logical_ram_width => 1,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode695w\(3),
	portbre => VCC,
	clk0 => \CLOCK_50~inputclkctrl_outclk\,
	clk1 => \CLOCK_50~inputclkctrl_outclk\,
	ena0 => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode695w\(3),
	ena1 => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1457w\(3),
	portadatain => \U2|canvas|altsyncram_component|auto_generated|ram_block1a11_PORTADATAIN_bus\,
	portaaddr => \U2|canvas|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\,
	portbaddr => \U2|canvas|altsyncram_component|auto_generated|ram_block1a11_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \U2|canvas|altsyncram_component|auto_generated|ram_block1a11_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X63_Y45_N6
\U2|canvas|altsyncram_component|auto_generated|decode2|w_anode685w[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode685w\(3) = (\U2|canvas|altsyncram_component|auto_generated|decode2|w_anode653w\(3) & (!\U2|write_addr[13]~12_combout\ & (\U2|write_addr[14]~14_combout\ & !\U2|write_addr[15]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode653w\(3),
	datab => \U2|write_addr[13]~12_combout\,
	datac => \U2|write_addr[14]~14_combout\,
	datad => \U2|write_addr[15]~16_combout\,
	combout => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode685w\(3));

-- Location: LCCOMB_X70_Y48_N26
\U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1447w[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1447w\(3) = (!\U2|read_addr[13]~16_combout\ & (\U2|read_addr[14]~2_combout\ & (\U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1414w[2]~0_combout\ & 
-- !\U2|read_addr[15]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|read_addr[13]~16_combout\,
	datab => \U2|read_addr[14]~2_combout\,
	datac => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1414w[2]~0_combout\,
	datad => \U2|read_addr[15]~1_combout\,
	combout => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1447w\(3));

-- Location: M9K_X78_Y46_N0
\U2|canvas|altsyncram_component|auto_generated|ram_block1a10\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "etch_a_sketch:U2|framebuffer:canvas|altsyncram:altsyncram_component|altsyncram_suo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 307200,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 307200,
	port_b_logical_ram_width => 1,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode685w\(3),
	portbre => VCC,
	clk0 => \CLOCK_50~inputclkctrl_outclk\,
	clk1 => \CLOCK_50~inputclkctrl_outclk\,
	ena0 => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode685w\(3),
	ena1 => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1447w\(3),
	portadatain => \U2|canvas|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\,
	portaaddr => \U2|canvas|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\,
	portbaddr => \U2|canvas|altsyncram_component|auto_generated|ram_block1a10_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \U2|canvas|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X62_Y48_N2
\U2|canvas|altsyncram_component|auto_generated|mux3|_~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|mux3|_~5_combout\ = (\U2|canvas|altsyncram_component|auto_generated|address_reg_b\(1) & ((\U2|canvas|altsyncram_component|auto_generated|address_reg_b\(0) & 
-- (\U2|canvas|altsyncram_component|auto_generated|ram_block1a11~portbdataout\)) # (!\U2|canvas|altsyncram_component|auto_generated|address_reg_b\(0) & ((\U2|canvas|altsyncram_component|auto_generated|ram_block1a10~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|canvas|altsyncram_component|auto_generated|address_reg_b\(1),
	datab => \U2|canvas|altsyncram_component|auto_generated|address_reg_b\(0),
	datac => \U2|canvas|altsyncram_component|auto_generated|ram_block1a11~portbdataout\,
	datad => \U2|canvas|altsyncram_component|auto_generated|ram_block1a10~portbdataout\,
	combout => \U2|canvas|altsyncram_component|auto_generated|mux3|_~5_combout\);

-- Location: LCCOMB_X63_Y45_N24
\U2|canvas|altsyncram_component|auto_generated|decode2|w_anode675w[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode675w\(3) = (\U2|canvas|altsyncram_component|auto_generated|decode2|w_anode653w\(3) & (\U2|write_addr[13]~12_combout\ & (!\U2|write_addr[14]~14_combout\ & !\U2|write_addr[15]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode653w\(3),
	datab => \U2|write_addr[13]~12_combout\,
	datac => \U2|write_addr[14]~14_combout\,
	datad => \U2|write_addr[15]~16_combout\,
	combout => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode675w\(3));

-- Location: LCCOMB_X70_Y48_N12
\U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1437w[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1437w\(3) = (\U2|read_addr[13]~16_combout\ & (!\U2|read_addr[14]~2_combout\ & (\U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1414w[2]~0_combout\ & 
-- !\U2|read_addr[15]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|read_addr[13]~16_combout\,
	datab => \U2|read_addr[14]~2_combout\,
	datac => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1414w[2]~0_combout\,
	datad => \U2|read_addr[15]~1_combout\,
	combout => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1437w\(3));

-- Location: M9K_X78_Y45_N0
\U2|canvas|altsyncram_component|auto_generated|ram_block1a9\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "etch_a_sketch:U2|framebuffer:canvas|altsyncram:altsyncram_component|altsyncram_suo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 307200,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 307200,
	port_b_logical_ram_width => 1,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode675w\(3),
	portbre => VCC,
	clk0 => \CLOCK_50~inputclkctrl_outclk\,
	clk1 => \CLOCK_50~inputclkctrl_outclk\,
	ena0 => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode675w\(3),
	ena1 => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1437w\(3),
	portadatain => \U2|canvas|altsyncram_component|auto_generated|ram_block1a9_PORTADATAIN_bus\,
	portaaddr => \U2|canvas|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\,
	portbaddr => \U2|canvas|altsyncram_component|auto_generated|ram_block1a9_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \U2|canvas|altsyncram_component|auto_generated|ram_block1a9_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X63_Y45_N18
\U2|canvas|altsyncram_component|auto_generated|decode2|w_anode664w[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode664w\(3) = (\U2|canvas|altsyncram_component|auto_generated|decode2|w_anode653w\(3) & (!\U2|write_addr[13]~12_combout\ & (!\U2|write_addr[14]~14_combout\ & !\U2|write_addr[15]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode653w\(3),
	datab => \U2|write_addr[13]~12_combout\,
	datac => \U2|write_addr[14]~14_combout\,
	datad => \U2|write_addr[15]~16_combout\,
	combout => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode664w\(3));

-- Location: LCCOMB_X70_Y48_N6
\U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1426w[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1426w\(3) = (!\U2|read_addr[13]~16_combout\ & (!\U2|read_addr[14]~2_combout\ & (\U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1414w[2]~0_combout\ & 
-- !\U2|read_addr[15]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|read_addr[13]~16_combout\,
	datab => \U2|read_addr[14]~2_combout\,
	datac => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1414w[2]~0_combout\,
	datad => \U2|read_addr[15]~1_combout\,
	combout => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1426w\(3));

-- Location: M9K_X78_Y49_N0
\U2|canvas|altsyncram_component|auto_generated|ram_block1a8\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "etch_a_sketch:U2|framebuffer:canvas|altsyncram:altsyncram_component|altsyncram_suo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 307200,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 307200,
	port_b_logical_ram_width => 1,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode664w\(3),
	portbre => VCC,
	clk0 => \CLOCK_50~inputclkctrl_outclk\,
	clk1 => \CLOCK_50~inputclkctrl_outclk\,
	ena0 => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode664w\(3),
	ena1 => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1426w\(3),
	portadatain => \U2|canvas|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\,
	portaaddr => \U2|canvas|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\,
	portbaddr => \U2|canvas|altsyncram_component|auto_generated|ram_block1a8_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \U2|canvas|altsyncram_component|auto_generated|ram_block1a8_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X67_Y48_N16
\U2|canvas|altsyncram_component|auto_generated|mux3|_~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|mux3|_~6_combout\ = (!\U2|canvas|altsyncram_component|auto_generated|address_reg_b\(1) & ((\U2|canvas|altsyncram_component|auto_generated|address_reg_b\(0) & 
-- (\U2|canvas|altsyncram_component|auto_generated|ram_block1a9~portbdataout\)) # (!\U2|canvas|altsyncram_component|auto_generated|address_reg_b\(0) & ((\U2|canvas|altsyncram_component|auto_generated|ram_block1a8~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|canvas|altsyncram_component|auto_generated|address_reg_b\(0),
	datab => \U2|canvas|altsyncram_component|auto_generated|ram_block1a9~portbdataout\,
	datac => \U2|canvas|altsyncram_component|auto_generated|ram_block1a8~portbdataout\,
	datad => \U2|canvas|altsyncram_component|auto_generated|address_reg_b\(1),
	combout => \U2|canvas|altsyncram_component|auto_generated|mux3|_~6_combout\);

-- Location: LCCOMB_X62_Y48_N12
\U2|canvas|altsyncram_component|auto_generated|mux3|_~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|mux3|_~7_combout\ = (!\U2|canvas|altsyncram_component|auto_generated|address_reg_b\(2) & ((\U2|canvas|altsyncram_component|auto_generated|mux3|_~5_combout\) # 
-- (\U2|canvas|altsyncram_component|auto_generated|mux3|_~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|canvas|altsyncram_component|auto_generated|mux3|_~5_combout\,
	datac => \U2|canvas|altsyncram_component|auto_generated|mux3|_~6_combout\,
	datad => \U2|canvas|altsyncram_component|auto_generated|address_reg_b\(2),
	combout => \U2|canvas|altsyncram_component|auto_generated|mux3|_~7_combout\);

-- Location: LCCOMB_X62_Y48_N16
\U2|canvas|altsyncram_component|auto_generated|mux3|_~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|mux3|_~10_combout\ = (\U2|canvas|altsyncram_component|auto_generated|mux3|_~7_combout\) # ((\U2|canvas|altsyncram_component|auto_generated|address_reg_b\(2) & 
-- ((\U2|canvas|altsyncram_component|auto_generated|mux3|_~8_combout\) # (\U2|canvas|altsyncram_component|auto_generated|mux3|_~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|canvas|altsyncram_component|auto_generated|mux3|_~8_combout\,
	datab => \U2|canvas|altsyncram_component|auto_generated|address_reg_b\(2),
	datac => \U2|canvas|altsyncram_component|auto_generated|mux3|_~9_combout\,
	datad => \U2|canvas|altsyncram_component|auto_generated|mux3|_~7_combout\,
	combout => \U2|canvas|altsyncram_component|auto_generated|mux3|_~10_combout\);

-- Location: LCCOMB_X63_Y45_N16
\U2|canvas|altsyncram_component|auto_generated|decode2|w_anode547w[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode547w\(3) = (\SW[0]~input_o\ & (!\U2|write_addr[17]~20_combout\ & (!\U2|write_addr[16]~18_combout\ & !\U2|write_addr[18]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \U2|write_addr[17]~20_combout\,
	datac => \U2|write_addr[16]~18_combout\,
	datad => \U2|write_addr[18]~22_combout\,
	combout => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode547w\(3));

-- Location: LCCOMB_X62_Y45_N6
\U2|canvas|altsyncram_component|auto_generated|decode2|w_anode581w[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode581w\(3) = (\U2|write_addr[13]~12_combout\ & (!\U2|write_addr[15]~16_combout\ & (!\U2|write_addr[14]~14_combout\ & \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode547w\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|write_addr[13]~12_combout\,
	datab => \U2|write_addr[15]~16_combout\,
	datac => \U2|write_addr[14]~14_combout\,
	datad => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode547w\(3),
	combout => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode581w\(3));

-- Location: LCCOMB_X59_Y48_N24
\U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1392w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1392w[3]~0_combout\ = (!\U2|Add3~22_combout\ & (!\U2|Add3~20_combout\ & (!\U2|Add3~18_combout\ & \U2|read_addr~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add3~22_combout\,
	datab => \U2|Add3~20_combout\,
	datac => \U2|Add3~18_combout\,
	datad => \U2|read_addr~0_combout\,
	combout => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1392w[3]~0_combout\);

-- Location: LCCOMB_X59_Y47_N6
\U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1342w[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1342w\(3) = (!\U2|read_addr[14]~2_combout\ & (\U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1392w[3]~0_combout\ & (\U2|Add3~12_combout\ & 
-- !\U2|read_addr[15]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|read_addr[14]~2_combout\,
	datab => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1392w[3]~0_combout\,
	datac => \U2|Add3~12_combout\,
	datad => \U2|read_addr[15]~1_combout\,
	combout => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1342w\(3));

-- Location: M9K_X51_Y47_N0
\U2|canvas|altsyncram_component|auto_generated|ram_block1a1\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "etch_a_sketch:U2|framebuffer:canvas|altsyncram:altsyncram_component|altsyncram_suo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 307200,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 307200,
	port_b_logical_ram_width => 1,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode581w\(3),
	portbre => VCC,
	clk0 => \CLOCK_50~inputclkctrl_outclk\,
	clk1 => \CLOCK_50~inputclkctrl_outclk\,
	ena0 => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode581w\(3),
	ena1 => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1342w\(3),
	portadatain => \U2|canvas|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \U2|canvas|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\,
	portbaddr => \U2|canvas|altsyncram_component|auto_generated|ram_block1a1_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \U2|canvas|altsyncram_component|auto_generated|ram_block1a1_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X63_Y45_N20
\U2|canvas|altsyncram_component|auto_generated|decode2|w_anode591w[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode591w\(3) = (!\U2|write_addr[13]~12_combout\ & (!\U2|write_addr[15]~16_combout\ & (\U2|write_addr[14]~14_combout\ & \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode547w\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|write_addr[13]~12_combout\,
	datab => \U2|write_addr[15]~16_combout\,
	datac => \U2|write_addr[14]~14_combout\,
	datad => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode547w\(3),
	combout => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode591w\(3));

-- Location: LCCOMB_X59_Y48_N2
\U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1352w[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1352w\(3) = (\U2|Add3~14_combout\ & (\U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1392w[3]~0_combout\ & (!\U2|Add3~12_combout\ & !\U2|read_addr[15]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add3~14_combout\,
	datab => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1392w[3]~0_combout\,
	datac => \U2|Add3~12_combout\,
	datad => \U2|read_addr[15]~1_combout\,
	combout => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1352w\(3));

-- Location: M9K_X51_Y49_N0
\U2|canvas|altsyncram_component|auto_generated|ram_block1a2\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "etch_a_sketch:U2|framebuffer:canvas|altsyncram:altsyncram_component|altsyncram_suo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 307200,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 307200,
	port_b_logical_ram_width => 1,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode591w\(3),
	portbre => VCC,
	clk0 => \CLOCK_50~inputclkctrl_outclk\,
	clk1 => \CLOCK_50~inputclkctrl_outclk\,
	ena0 => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode591w\(3),
	ena1 => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1352w\(3),
	portadatain => \U2|canvas|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \U2|canvas|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\,
	portbaddr => \U2|canvas|altsyncram_component|auto_generated|ram_block1a2_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \U2|canvas|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X63_Y45_N22
\U2|canvas|altsyncram_component|auto_generated|decode2|w_anode564w[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode564w\(3) = (!\U2|write_addr[13]~12_combout\ & (!\U2|write_addr[15]~16_combout\ & (!\U2|write_addr[14]~14_combout\ & \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode547w\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|write_addr[13]~12_combout\,
	datab => \U2|write_addr[15]~16_combout\,
	datac => \U2|write_addr[14]~14_combout\,
	datad => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode547w\(3),
	combout => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode564w\(3));

-- Location: LCCOMB_X59_Y48_N20
\U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1325w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1325w[3]~0_combout\ = (\U2|Add3~18_combout\) # ((\U2|Add3~20_combout\) # ((\U2|Add3~16_combout\) # (\U2|Add3~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add3~18_combout\,
	datab => \U2|Add3~20_combout\,
	datac => \U2|Add3~16_combout\,
	datad => \U2|Add3~22_combout\,
	combout => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1325w[3]~0_combout\);

-- Location: LCCOMB_X59_Y48_N22
\U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1325w[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1325w[3]~1_combout\ = ((!\U2|Add3~14_combout\ & (!\U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1325w[3]~0_combout\ & !\U2|Add3~12_combout\))) # 
-- (!\U2|read_addr~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add3~14_combout\,
	datab => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1325w[3]~0_combout\,
	datac => \U2|Add3~12_combout\,
	datad => \U2|read_addr~0_combout\,
	combout => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1325w[3]~1_combout\);

-- Location: M9K_X51_Y45_N0
\U2|canvas|altsyncram_component|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "etch_a_sketch:U2|framebuffer:canvas|altsyncram:altsyncram_component|altsyncram_suo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 307200,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 307200,
	port_b_logical_ram_width => 1,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode564w\(3),
	portbre => VCC,
	clk0 => \CLOCK_50~inputclkctrl_outclk\,
	clk1 => \CLOCK_50~inputclkctrl_outclk\,
	ena0 => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode564w\(3),
	ena1 => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1325w[3]~1_combout\,
	portadatain => \U2|canvas|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \U2|canvas|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \U2|canvas|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \U2|canvas|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X62_Y48_N20
\U2|canvas|altsyncram_component|auto_generated|mux3|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|mux3|_~2_combout\ = (\U2|canvas|altsyncram_component|auto_generated|address_reg_b\(0) & (((\U2|canvas|altsyncram_component|auto_generated|address_reg_b\(1))))) # 
-- (!\U2|canvas|altsyncram_component|auto_generated|address_reg_b\(0) & ((\U2|canvas|altsyncram_component|auto_generated|address_reg_b\(1) & (\U2|canvas|altsyncram_component|auto_generated|ram_block1a2~portbdataout\)) # 
-- (!\U2|canvas|altsyncram_component|auto_generated|address_reg_b\(1) & ((\U2|canvas|altsyncram_component|auto_generated|ram_block1a0~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|canvas|altsyncram_component|auto_generated|ram_block1a2~portbdataout\,
	datab => \U2|canvas|altsyncram_component|auto_generated|address_reg_b\(0),
	datac => \U2|canvas|altsyncram_component|auto_generated|ram_block1a0~portbdataout\,
	datad => \U2|canvas|altsyncram_component|auto_generated|address_reg_b\(1),
	combout => \U2|canvas|altsyncram_component|auto_generated|mux3|_~2_combout\);

-- Location: LCCOMB_X63_Y45_N0
\U2|canvas|altsyncram_component|auto_generated|decode2|w_anode601w[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode601w\(3) = (\U2|write_addr[13]~12_combout\ & (!\U2|write_addr[15]~16_combout\ & (\U2|write_addr[14]~14_combout\ & \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode547w\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|write_addr[13]~12_combout\,
	datab => \U2|write_addr[15]~16_combout\,
	datac => \U2|write_addr[14]~14_combout\,
	datad => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode547w\(3),
	combout => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode601w\(3));

-- Location: LCCOMB_X59_Y47_N8
\U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1362w[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1362w\(3) = (\U2|Add3~12_combout\ & (\U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1392w[3]~0_combout\ & (\U2|read_addr[14]~2_combout\ & 
-- !\U2|read_addr[15]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add3~12_combout\,
	datab => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1392w[3]~0_combout\,
	datac => \U2|read_addr[14]~2_combout\,
	datad => \U2|read_addr[15]~1_combout\,
	combout => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1362w\(3));

-- Location: M9K_X64_Y47_N0
\U2|canvas|altsyncram_component|auto_generated|ram_block1a3\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "etch_a_sketch:U2|framebuffer:canvas|altsyncram:altsyncram_component|altsyncram_suo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 307200,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 307200,
	port_b_logical_ram_width => 1,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode601w\(3),
	portbre => VCC,
	clk0 => \CLOCK_50~inputclkctrl_outclk\,
	clk1 => \CLOCK_50~inputclkctrl_outclk\,
	ena0 => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode601w\(3),
	ena1 => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1362w\(3),
	portadatain => \U2|canvas|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portaaddr => \U2|canvas|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\,
	portbaddr => \U2|canvas|altsyncram_component|auto_generated|ram_block1a3_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \U2|canvas|altsyncram_component|auto_generated|ram_block1a3_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X62_Y48_N6
\U2|canvas|altsyncram_component|auto_generated|mux3|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|mux3|_~3_combout\ = (\U2|canvas|altsyncram_component|auto_generated|mux3|_~2_combout\ & (((\U2|canvas|altsyncram_component|auto_generated|ram_block1a3~portbdataout\) # 
-- (!\U2|canvas|altsyncram_component|auto_generated|address_reg_b\(0))))) # (!\U2|canvas|altsyncram_component|auto_generated|mux3|_~2_combout\ & (\U2|canvas|altsyncram_component|auto_generated|ram_block1a1~portbdataout\ & 
-- ((\U2|canvas|altsyncram_component|auto_generated|address_reg_b\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|canvas|altsyncram_component|auto_generated|ram_block1a1~portbdataout\,
	datab => \U2|canvas|altsyncram_component|auto_generated|mux3|_~2_combout\,
	datac => \U2|canvas|altsyncram_component|auto_generated|ram_block1a3~portbdataout\,
	datad => \U2|canvas|altsyncram_component|auto_generated|address_reg_b\(0),
	combout => \U2|canvas|altsyncram_component|auto_generated|mux3|_~3_combout\);

-- Location: LCCOMB_X62_Y45_N4
\U2|canvas|altsyncram_component|auto_generated|decode2|w_anode641w[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode641w\(3) = (\U2|write_addr[13]~12_combout\ & (\U2|write_addr[15]~16_combout\ & (\U2|write_addr[14]~14_combout\ & \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode547w\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|write_addr[13]~12_combout\,
	datab => \U2|write_addr[15]~16_combout\,
	datac => \U2|write_addr[14]~14_combout\,
	datad => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode547w\(3),
	combout => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode641w\(3));

-- Location: LCCOMB_X59_Y47_N28
\U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1402w[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1402w\(3) = (\U2|read_addr[14]~2_combout\ & (\U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1392w[3]~0_combout\ & (\U2|Add3~12_combout\ & 
-- \U2|read_addr[15]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|read_addr[14]~2_combout\,
	datab => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1392w[3]~0_combout\,
	datac => \U2|Add3~12_combout\,
	datad => \U2|read_addr[15]~1_combout\,
	combout => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1402w\(3));

-- Location: M9K_X51_Y44_N0
\U2|canvas|altsyncram_component|auto_generated|ram_block1a7\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "etch_a_sketch:U2|framebuffer:canvas|altsyncram:altsyncram_component|altsyncram_suo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 307200,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 307200,
	port_b_logical_ram_width => 1,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode641w\(3),
	portbre => VCC,
	clk0 => \CLOCK_50~inputclkctrl_outclk\,
	clk1 => \CLOCK_50~inputclkctrl_outclk\,
	ena0 => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode641w\(3),
	ena1 => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1402w\(3),
	portadatain => \U2|canvas|altsyncram_component|auto_generated|ram_block1a7_PORTADATAIN_bus\,
	portaaddr => \U2|canvas|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\,
	portbaddr => \U2|canvas|altsyncram_component|auto_generated|ram_block1a7_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \U2|canvas|altsyncram_component|auto_generated|ram_block1a7_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X62_Y45_N2
\U2|canvas|altsyncram_component|auto_generated|decode2|w_anode631w[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode631w\(3) = (!\U2|write_addr[13]~12_combout\ & (\U2|write_addr[15]~16_combout\ & (\U2|write_addr[14]~14_combout\ & \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode547w\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|write_addr[13]~12_combout\,
	datab => \U2|write_addr[15]~16_combout\,
	datac => \U2|write_addr[14]~14_combout\,
	datad => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode547w\(3),
	combout => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode631w\(3));

-- Location: LCCOMB_X59_Y48_N30
\U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1392w[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1392w[3]~1_combout\ = (\U2|Add3~14_combout\ & (\U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1392w[3]~0_combout\ & (!\U2|Add3~12_combout\ & 
-- \U2|read_addr[15]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add3~14_combout\,
	datab => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1392w[3]~0_combout\,
	datac => \U2|Add3~12_combout\,
	datad => \U2|read_addr[15]~1_combout\,
	combout => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1392w[3]~1_combout\);

-- Location: M9K_X51_Y46_N0
\U2|canvas|altsyncram_component|auto_generated|ram_block1a6\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "etch_a_sketch:U2|framebuffer:canvas|altsyncram:altsyncram_component|altsyncram_suo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 307200,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 307200,
	port_b_logical_ram_width => 1,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode631w\(3),
	portbre => VCC,
	clk0 => \CLOCK_50~inputclkctrl_outclk\,
	clk1 => \CLOCK_50~inputclkctrl_outclk\,
	ena0 => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode631w\(3),
	ena1 => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1392w[3]~1_combout\,
	portadatain => \U2|canvas|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portaaddr => \U2|canvas|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\,
	portbaddr => \U2|canvas|altsyncram_component|auto_generated|ram_block1a6_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \U2|canvas|altsyncram_component|auto_generated|ram_block1a6_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X63_Y45_N26
\U2|canvas|altsyncram_component|auto_generated|decode2|w_anode611w[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode611w\(3) = (!\U2|write_addr[13]~12_combout\ & (\U2|write_addr[15]~16_combout\ & (!\U2|write_addr[14]~14_combout\ & \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode547w\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|write_addr[13]~12_combout\,
	datab => \U2|write_addr[15]~16_combout\,
	datac => \U2|write_addr[14]~14_combout\,
	datad => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode547w\(3),
	combout => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode611w\(3));

-- Location: LCCOMB_X59_Y48_N16
\U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1372w[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1372w\(3) = (!\U2|Add3~14_combout\ & (!\U2|Add3~12_combout\ & (\U2|Add3~16_combout\ & \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1392w[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add3~14_combout\,
	datab => \U2|Add3~12_combout\,
	datac => \U2|Add3~16_combout\,
	datad => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1392w[3]~0_combout\,
	combout => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1372w\(3));

-- Location: M9K_X51_Y41_N0
\U2|canvas|altsyncram_component|auto_generated|ram_block1a4\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "etch_a_sketch:U2|framebuffer:canvas|altsyncram:altsyncram_component|altsyncram_suo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 307200,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 307200,
	port_b_logical_ram_width => 1,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode611w\(3),
	portbre => VCC,
	clk0 => \CLOCK_50~inputclkctrl_outclk\,
	clk1 => \CLOCK_50~inputclkctrl_outclk\,
	ena0 => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode611w\(3),
	ena1 => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1372w\(3),
	portadatain => \U2|canvas|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \U2|canvas|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\,
	portbaddr => \U2|canvas|altsyncram_component|auto_generated|ram_block1a4_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \U2|canvas|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X62_Y48_N8
\U2|canvas|altsyncram_component|auto_generated|mux3|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|mux3|_~0_combout\ = (\U2|canvas|altsyncram_component|auto_generated|address_reg_b\(1) & ((\U2|canvas|altsyncram_component|auto_generated|ram_block1a6~portbdataout\) # 
-- ((\U2|canvas|altsyncram_component|auto_generated|address_reg_b\(0))))) # (!\U2|canvas|altsyncram_component|auto_generated|address_reg_b\(1) & (((\U2|canvas|altsyncram_component|auto_generated|ram_block1a4~portbdataout\ & 
-- !\U2|canvas|altsyncram_component|auto_generated|address_reg_b\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|canvas|altsyncram_component|auto_generated|address_reg_b\(1),
	datab => \U2|canvas|altsyncram_component|auto_generated|ram_block1a6~portbdataout\,
	datac => \U2|canvas|altsyncram_component|auto_generated|ram_block1a4~portbdataout\,
	datad => \U2|canvas|altsyncram_component|auto_generated|address_reg_b\(0),
	combout => \U2|canvas|altsyncram_component|auto_generated|mux3|_~0_combout\);

-- Location: LCCOMB_X62_Y45_N0
\U2|canvas|altsyncram_component|auto_generated|decode2|w_anode621w[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode621w\(3) = (\U2|write_addr[13]~12_combout\ & (\U2|write_addr[15]~16_combout\ & (!\U2|write_addr[14]~14_combout\ & \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode547w\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|write_addr[13]~12_combout\,
	datab => \U2|write_addr[15]~16_combout\,
	datac => \U2|write_addr[14]~14_combout\,
	datad => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode547w\(3),
	combout => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode621w\(3));

-- Location: LCCOMB_X59_Y47_N24
\U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1382w[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1382w\(3) = (!\U2|read_addr[14]~2_combout\ & (\U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1392w[3]~0_combout\ & (\U2|Add3~12_combout\ & 
-- \U2|read_addr[15]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|read_addr[14]~2_combout\,
	datab => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1392w[3]~0_combout\,
	datac => \U2|Add3~12_combout\,
	datad => \U2|read_addr[15]~1_combout\,
	combout => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1382w\(3));

-- Location: M9K_X51_Y43_N0
\U2|canvas|altsyncram_component|auto_generated|ram_block1a5\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "etch_a_sketch:U2|framebuffer:canvas|altsyncram:altsyncram_component|altsyncram_suo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 307200,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 307200,
	port_b_logical_ram_width => 1,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode621w\(3),
	portbre => VCC,
	clk0 => \CLOCK_50~inputclkctrl_outclk\,
	clk1 => \CLOCK_50~inputclkctrl_outclk\,
	ena0 => \U2|canvas|altsyncram_component|auto_generated|decode2|w_anode621w\(3),
	ena1 => \U2|canvas|altsyncram_component|auto_generated|rden_decode_b|w_anode1382w\(3),
	portadatain => \U2|canvas|altsyncram_component|auto_generated|ram_block1a5_PORTADATAIN_bus\,
	portaaddr => \U2|canvas|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\,
	portbaddr => \U2|canvas|altsyncram_component|auto_generated|ram_block1a5_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \U2|canvas|altsyncram_component|auto_generated|ram_block1a5_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X62_Y48_N10
\U2|canvas|altsyncram_component|auto_generated|mux3|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|mux3|_~1_combout\ = (\U2|canvas|altsyncram_component|auto_generated|mux3|_~0_combout\ & ((\U2|canvas|altsyncram_component|auto_generated|ram_block1a7~portbdataout\) # 
-- ((!\U2|canvas|altsyncram_component|auto_generated|address_reg_b\(0))))) # (!\U2|canvas|altsyncram_component|auto_generated|mux3|_~0_combout\ & (((\U2|canvas|altsyncram_component|auto_generated|ram_block1a5~portbdataout\ & 
-- \U2|canvas|altsyncram_component|auto_generated|address_reg_b\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|canvas|altsyncram_component|auto_generated|ram_block1a7~portbdataout\,
	datab => \U2|canvas|altsyncram_component|auto_generated|mux3|_~0_combout\,
	datac => \U2|canvas|altsyncram_component|auto_generated|ram_block1a5~portbdataout\,
	datad => \U2|canvas|altsyncram_component|auto_generated|address_reg_b\(0),
	combout => \U2|canvas|altsyncram_component|auto_generated|mux3|_~1_combout\);

-- Location: LCCOMB_X62_Y48_N24
\U2|canvas|altsyncram_component|auto_generated|mux3|_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|mux3|_~4_combout\ = (!\U2|canvas|altsyncram_component|auto_generated|address_reg_b\(3) & ((\U2|canvas|altsyncram_component|auto_generated|address_reg_b\(2) & 
-- ((\U2|canvas|altsyncram_component|auto_generated|mux3|_~1_combout\))) # (!\U2|canvas|altsyncram_component|auto_generated|address_reg_b\(2) & (\U2|canvas|altsyncram_component|auto_generated|mux3|_~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|canvas|altsyncram_component|auto_generated|mux3|_~3_combout\,
	datab => \U2|canvas|altsyncram_component|auto_generated|address_reg_b\(2),
	datac => \U2|canvas|altsyncram_component|auto_generated|address_reg_b\(3),
	datad => \U2|canvas|altsyncram_component|auto_generated|mux3|_~1_combout\,
	combout => \U2|canvas|altsyncram_component|auto_generated|mux3|_~4_combout\);

-- Location: LCCOMB_X62_Y48_N18
\U2|canvas|altsyncram_component|auto_generated|mux3|_~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|mux3|_~11_combout\ = (!\U2|canvas|altsyncram_component|auto_generated|address_reg_b\(5) & ((\U2|canvas|altsyncram_component|auto_generated|mux3|_~4_combout\) # 
-- ((\U2|canvas|altsyncram_component|auto_generated|mux3|_~10_combout\ & \U2|canvas|altsyncram_component|auto_generated|address_reg_b\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|canvas|altsyncram_component|auto_generated|address_reg_b\(5),
	datab => \U2|canvas|altsyncram_component|auto_generated|mux3|_~10_combout\,
	datac => \U2|canvas|altsyncram_component|auto_generated|address_reg_b\(3),
	datad => \U2|canvas|altsyncram_component|auto_generated|mux3|_~4_combout\,
	combout => \U2|canvas|altsyncram_component|auto_generated|mux3|_~11_combout\);

-- Location: LCCOMB_X62_Y48_N0
\U2|canvas|altsyncram_component|auto_generated|mux3|_~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|canvas|altsyncram_component|auto_generated|mux3|_~16_combout\ = (\U2|canvas|altsyncram_component|auto_generated|mux3|_~11_combout\) # ((\U2|canvas|altsyncram_component|auto_generated|mux3|_~15_combout\ & 
-- (!\U2|canvas|altsyncram_component|auto_generated|address_reg_b\(3) & \U2|canvas|altsyncram_component|auto_generated|address_reg_b\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|canvas|altsyncram_component|auto_generated|mux3|_~15_combout\,
	datab => \U2|canvas|altsyncram_component|auto_generated|address_reg_b\(3),
	datac => \U2|canvas|altsyncram_component|auto_generated|address_reg_b\(5),
	datad => \U2|canvas|altsyncram_component|auto_generated|mux3|_~11_combout\,
	combout => \U2|canvas|altsyncram_component|auto_generated|mux3|_~16_combout\);

-- Location: LCCOMB_X62_Y48_N26
\U1|green_out[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|green_out[0]~7_combout\ = (\U2|canvas|altsyncram_component|auto_generated|address_reg_b\(4) & (\U1|green_out[0]~6_combout\ & (!\U2|canvas|altsyncram_component|auto_generated|address_reg_b\(5)))) # 
-- (!\U2|canvas|altsyncram_component|auto_generated|address_reg_b\(4) & (((\U2|canvas|altsyncram_component|auto_generated|mux3|_~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|green_out[0]~6_combout\,
	datab => \U2|canvas|altsyncram_component|auto_generated|address_reg_b\(4),
	datac => \U2|canvas|altsyncram_component|auto_generated|address_reg_b\(5),
	datad => \U2|canvas|altsyncram_component|auto_generated|mux3|_~16_combout\,
	combout => \U1|green_out[0]~7_combout\);

-- Location: LCCOMB_X60_Y44_N8
\U2|Add5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add5~0_combout\ = \U_Y|dec_count\(0) $ (VCC)
-- \U2|Add5~1\ = CARRY(\U_Y|dec_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Y|dec_count\(0),
	datad => VCC,
	combout => \U2|Add5~0_combout\,
	cout => \U2|Add5~1\);

-- Location: LCCOMB_X60_Y44_N10
\U2|Add5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add5~2_combout\ = (\U_Y|dec_count\(1) & (\U2|Add5~1\ & VCC)) # (!\U_Y|dec_count\(1) & (!\U2|Add5~1\))
-- \U2|Add5~3\ = CARRY((!\U_Y|dec_count\(1) & !\U2|Add5~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_Y|dec_count\(1),
	datad => VCC,
	cin => \U2|Add5~1\,
	combout => \U2|Add5~2_combout\,
	cout => \U2|Add5~3\);

-- Location: LCCOMB_X60_Y44_N12
\U2|Add5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add5~4_combout\ = (\U_Y|dec_count\(2) & (\U2|Add5~3\ $ (GND))) # (!\U_Y|dec_count\(2) & (!\U2|Add5~3\ & VCC))
-- \U2|Add5~5\ = CARRY((\U_Y|dec_count\(2) & !\U2|Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Y|dec_count\(2),
	datad => VCC,
	cin => \U2|Add5~3\,
	combout => \U2|Add5~4_combout\,
	cout => \U2|Add5~5\);

-- Location: LCCOMB_X60_Y44_N14
\U2|Add5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add5~6_combout\ = (\U_Y|dec_count\(3) & (!\U2|Add5~5\)) # (!\U_Y|dec_count\(3) & ((\U2|Add5~5\) # (GND)))
-- \U2|Add5~7\ = CARRY((!\U2|Add5~5\) # (!\U_Y|dec_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Y|dec_count\(3),
	datad => VCC,
	cin => \U2|Add5~5\,
	combout => \U2|Add5~6_combout\,
	cout => \U2|Add5~7\);

-- Location: LCCOMB_X60_Y44_N16
\U2|Add5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add5~8_combout\ = (\U_Y|dec_count\(4) & (!\U2|Add5~7\ & VCC)) # (!\U_Y|dec_count\(4) & (\U2|Add5~7\ $ (GND)))
-- \U2|Add5~9\ = CARRY((!\U_Y|dec_count\(4) & !\U2|Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_Y|dec_count\(4),
	datad => VCC,
	cin => \U2|Add5~7\,
	combout => \U2|Add5~8_combout\,
	cout => \U2|Add5~9\);

-- Location: LCCOMB_X60_Y44_N18
\U2|Add5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add5~10_combout\ = (\U2|Mod1|auto_generated|divider|divider|StageOut[95]~13_combout\ & (!\U2|Add5~9\)) # (!\U2|Mod1|auto_generated|divider|divider|StageOut[95]~13_combout\ & ((\U2|Add5~9\) # (GND)))
-- \U2|Add5~11\ = CARRY((!\U2|Add5~9\) # (!\U2|Mod1|auto_generated|divider|divider|StageOut[95]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mod1|auto_generated|divider|divider|StageOut[95]~13_combout\,
	datad => VCC,
	cin => \U2|Add5~9\,
	combout => \U2|Add5~10_combout\,
	cout => \U2|Add5~11\);

-- Location: LCCOMB_X60_Y44_N20
\U2|Add5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add5~12_combout\ = (\U2|Mod1|auto_generated|divider|divider|StageOut[96]~12_combout\ & (\U2|Add5~11\ $ (GND))) # (!\U2|Mod1|auto_generated|divider|divider|StageOut[96]~12_combout\ & (!\U2|Add5~11\ & VCC))
-- \U2|Add5~13\ = CARRY((\U2|Mod1|auto_generated|divider|divider|StageOut[96]~12_combout\ & !\U2|Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|Mod1|auto_generated|divider|divider|StageOut[96]~12_combout\,
	datad => VCC,
	cin => \U2|Add5~11\,
	combout => \U2|Add5~12_combout\,
	cout => \U2|Add5~13\);

-- Location: LCCOMB_X60_Y44_N22
\U2|Add5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add5~14_combout\ = (\U2|Mod1|auto_generated|divider|divider|StageOut[97]~11_combout\ & (!\U2|Add5~13\)) # (!\U2|Mod1|auto_generated|divider|divider|StageOut[97]~11_combout\ & ((\U2|Add5~13\) # (GND)))
-- \U2|Add5~15\ = CARRY((!\U2|Add5~13\) # (!\U2|Mod1|auto_generated|divider|divider|StageOut[97]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|Mod1|auto_generated|divider|divider|StageOut[97]~11_combout\,
	datad => VCC,
	cin => \U2|Add5~13\,
	combout => \U2|Add5~14_combout\,
	cout => \U2|Add5~15\);

-- Location: LCCOMB_X60_Y44_N24
\U2|Add5~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add5~16_combout\ = (\U2|Mod1|auto_generated|divider|divider|StageOut[98]~10_combout\ & (\U2|Add5~15\ $ (GND))) # (!\U2|Mod1|auto_generated|divider|divider|StageOut[98]~10_combout\ & (!\U2|Add5~15\ & VCC))
-- \U2|Add5~17\ = CARRY((\U2|Mod1|auto_generated|divider|divider|StageOut[98]~10_combout\ & !\U2|Add5~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mod1|auto_generated|divider|divider|StageOut[98]~10_combout\,
	datad => VCC,
	cin => \U2|Add5~15\,
	combout => \U2|Add5~16_combout\,
	cout => \U2|Add5~17\);

-- Location: LCCOMB_X60_Y45_N14
\U2|LessThan5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|LessThan5~1_cout\ = CARRY((\U1|pixel_row\(0) & !\U2|Add5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|pixel_row\(0),
	datab => \U2|Add5~0_combout\,
	datad => VCC,
	cout => \U2|LessThan5~1_cout\);

-- Location: LCCOMB_X60_Y45_N16
\U2|LessThan5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|LessThan5~3_cout\ = CARRY((\U2|Add5~2_combout\ & ((!\U2|LessThan5~1_cout\) # (!\U1|pixel_row\(1)))) # (!\U2|Add5~2_combout\ & (!\U1|pixel_row\(1) & !\U2|LessThan5~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add5~2_combout\,
	datab => \U1|pixel_row\(1),
	datad => VCC,
	cin => \U2|LessThan5~1_cout\,
	cout => \U2|LessThan5~3_cout\);

-- Location: LCCOMB_X60_Y45_N18
\U2|LessThan5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|LessThan5~5_cout\ = CARRY((\U2|Add5~4_combout\ & (\U1|pixel_row\(2) & !\U2|LessThan5~3_cout\)) # (!\U2|Add5~4_combout\ & ((\U1|pixel_row\(2)) # (!\U2|LessThan5~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add5~4_combout\,
	datab => \U1|pixel_row\(2),
	datad => VCC,
	cin => \U2|LessThan5~3_cout\,
	cout => \U2|LessThan5~5_cout\);

-- Location: LCCOMB_X60_Y45_N20
\U2|LessThan5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|LessThan5~7_cout\ = CARRY((\U1|pixel_row\(3) & (\U2|Add5~6_combout\ & !\U2|LessThan5~5_cout\)) # (!\U1|pixel_row\(3) & ((\U2|Add5~6_combout\) # (!\U2|LessThan5~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|pixel_row\(3),
	datab => \U2|Add5~6_combout\,
	datad => VCC,
	cin => \U2|LessThan5~5_cout\,
	cout => \U2|LessThan5~7_cout\);

-- Location: LCCOMB_X60_Y45_N22
\U2|LessThan5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|LessThan5~9_cout\ = CARRY((\U2|Add5~8_combout\ & (\U1|pixel_row\(4) & !\U2|LessThan5~7_cout\)) # (!\U2|Add5~8_combout\ & ((\U1|pixel_row\(4)) # (!\U2|LessThan5~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add5~8_combout\,
	datab => \U1|pixel_row\(4),
	datad => VCC,
	cin => \U2|LessThan5~7_cout\,
	cout => \U2|LessThan5~9_cout\);

-- Location: LCCOMB_X60_Y45_N24
\U2|LessThan5~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|LessThan5~11_cout\ = CARRY((\U2|Add5~10_combout\ & ((!\U2|LessThan5~9_cout\) # (!\U1|pixel_row\(5)))) # (!\U2|Add5~10_combout\ & (!\U1|pixel_row\(5) & !\U2|LessThan5~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add5~10_combout\,
	datab => \U1|pixel_row\(5),
	datad => VCC,
	cin => \U2|LessThan5~9_cout\,
	cout => \U2|LessThan5~11_cout\);

-- Location: LCCOMB_X60_Y45_N26
\U2|LessThan5~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|LessThan5~13_cout\ = CARRY((\U1|pixel_row\(6) & ((!\U2|LessThan5~11_cout\) # (!\U2|Add5~12_combout\))) # (!\U1|pixel_row\(6) & (!\U2|Add5~12_combout\ & !\U2|LessThan5~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|pixel_row\(6),
	datab => \U2|Add5~12_combout\,
	datad => VCC,
	cin => \U2|LessThan5~11_cout\,
	cout => \U2|LessThan5~13_cout\);

-- Location: LCCOMB_X60_Y45_N28
\U2|LessThan5~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|LessThan5~15_cout\ = CARRY((\U1|pixel_row\(7) & (\U2|Add5~14_combout\ & !\U2|LessThan5~13_cout\)) # (!\U1|pixel_row\(7) & ((\U2|Add5~14_combout\) # (!\U2|LessThan5~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|pixel_row\(7),
	datab => \U2|Add5~14_combout\,
	datad => VCC,
	cin => \U2|LessThan5~13_cout\,
	cout => \U2|LessThan5~15_cout\);

-- Location: LCCOMB_X60_Y45_N30
\U2|LessThan5~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|LessThan5~16_combout\ = (\U1|pixel_row\(8) & ((!\U2|Add5~16_combout\) # (!\U2|LessThan5~15_cout\))) # (!\U1|pixel_row\(8) & (!\U2|LessThan5~15_cout\ & !\U2|Add5~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|pixel_row\(8),
	datad => \U2|Add5~16_combout\,
	cin => \U2|LessThan5~15_cout\,
	combout => \U2|LessThan5~16_combout\);

-- Location: LCCOMB_X60_Y47_N4
\U2|Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add4~0_combout\ = \U_X|dec_count\(0) $ (VCC)
-- \U2|Add4~1\ = CARRY(\U_X|dec_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_X|dec_count\(0),
	datad => VCC,
	combout => \U2|Add4~0_combout\,
	cout => \U2|Add4~1\);

-- Location: LCCOMB_X60_Y47_N6
\U2|Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add4~2_combout\ = (\U_X|dec_count\(1) & (\U2|Add4~1\ & VCC)) # (!\U_X|dec_count\(1) & (!\U2|Add4~1\))
-- \U2|Add4~3\ = CARRY((!\U_X|dec_count\(1) & !\U2|Add4~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_X|dec_count\(1),
	datad => VCC,
	cin => \U2|Add4~1\,
	combout => \U2|Add4~2_combout\,
	cout => \U2|Add4~3\);

-- Location: LCCOMB_X60_Y47_N8
\U2|Add4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add4~4_combout\ = (\U_X|dec_count\(2) & (\U2|Add4~3\ $ (GND))) # (!\U_X|dec_count\(2) & (!\U2|Add4~3\ & VCC))
-- \U2|Add4~5\ = CARRY((\U_X|dec_count\(2) & !\U2|Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_X|dec_count\(2),
	datad => VCC,
	cin => \U2|Add4~3\,
	combout => \U2|Add4~4_combout\,
	cout => \U2|Add4~5\);

-- Location: LCCOMB_X60_Y47_N10
\U2|Add4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add4~6_combout\ = (\U_X|dec_count\(3) & (!\U2|Add4~5\)) # (!\U_X|dec_count\(3) & ((\U2|Add4~5\) # (GND)))
-- \U2|Add4~7\ = CARRY((!\U2|Add4~5\) # (!\U_X|dec_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_X|dec_count\(3),
	datad => VCC,
	cin => \U2|Add4~5\,
	combout => \U2|Add4~6_combout\,
	cout => \U2|Add4~7\);

-- Location: LCCOMB_X60_Y47_N12
\U2|Add4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add4~8_combout\ = (\U_X|dec_count\(4) & (\U2|Add4~7\ $ (GND))) # (!\U_X|dec_count\(4) & (!\U2|Add4~7\ & VCC))
-- \U2|Add4~9\ = CARRY((\U_X|dec_count\(4) & !\U2|Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_X|dec_count\(4),
	datad => VCC,
	cin => \U2|Add4~7\,
	combout => \U2|Add4~8_combout\,
	cout => \U2|Add4~9\);

-- Location: LCCOMB_X60_Y47_N14
\U2|Add4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add4~10_combout\ = (\U_X|dec_count\(5) & (!\U2|Add4~9\)) # (!\U_X|dec_count\(5) & ((\U2|Add4~9\) # (GND)))
-- \U2|Add4~11\ = CARRY((!\U2|Add4~9\) # (!\U_X|dec_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_X|dec_count\(5),
	datad => VCC,
	cin => \U2|Add4~9\,
	combout => \U2|Add4~10_combout\,
	cout => \U2|Add4~11\);

-- Location: LCCOMB_X60_Y47_N16
\U2|Add4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add4~12_combout\ = (\U_X|dec_count\(6) & (!\U2|Add4~11\ & VCC)) # (!\U_X|dec_count\(6) & (\U2|Add4~11\ $ (GND)))
-- \U2|Add4~13\ = CARRY((!\U_X|dec_count\(6) & !\U2|Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_X|dec_count\(6),
	datad => VCC,
	cin => \U2|Add4~11\,
	combout => \U2|Add4~12_combout\,
	cout => \U2|Add4~13\);

-- Location: LCCOMB_X60_Y47_N18
\U2|Add4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add4~14_combout\ = (\U2|Mod0|auto_generated|divider|divider|StageOut[97]~2_combout\ & (!\U2|Add4~13\)) # (!\U2|Mod0|auto_generated|divider|divider|StageOut[97]~2_combout\ & ((\U2|Add4~13\) # (GND)))
-- \U2|Add4~15\ = CARRY((!\U2|Add4~13\) # (!\U2|Mod0|auto_generated|divider|divider|StageOut[97]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mod0|auto_generated|divider|divider|StageOut[97]~2_combout\,
	datad => VCC,
	cin => \U2|Add4~13\,
	combout => \U2|Add4~14_combout\,
	cout => \U2|Add4~15\);

-- Location: LCCOMB_X60_Y47_N20
\U2|Add4~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add4~16_combout\ = (\U2|Mod0|auto_generated|divider|divider|StageOut[98]~1_combout\ & (\U2|Add4~15\ $ (GND))) # (!\U2|Mod0|auto_generated|divider|divider|StageOut[98]~1_combout\ & (!\U2|Add4~15\ & VCC))
-- \U2|Add4~17\ = CARRY((\U2|Mod0|auto_generated|divider|divider|StageOut[98]~1_combout\ & !\U2|Add4~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|Mod0|auto_generated|divider|divider|StageOut[98]~1_combout\,
	datad => VCC,
	cin => \U2|Add4~15\,
	combout => \U2|Add4~16_combout\,
	cout => \U2|Add4~17\);

-- Location: LCCOMB_X60_Y47_N22
\U2|Add4~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add4~18_combout\ = (\U2|Mod0|auto_generated|divider|divider|StageOut[99]~0_combout\ & (!\U2|Add4~17\)) # (!\U2|Mod0|auto_generated|divider|divider|StageOut[99]~0_combout\ & ((\U2|Add4~17\) # (GND)))
-- \U2|Add4~19\ = CARRY((!\U2|Add4~17\) # (!\U2|Mod0|auto_generated|divider|divider|StageOut[99]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|Mod0|auto_generated|divider|divider|StageOut[99]~0_combout\,
	datad => VCC,
	cin => \U2|Add4~17\,
	combout => \U2|Add4~18_combout\,
	cout => \U2|Add4~19\);

-- Location: LCCOMB_X60_Y46_N8
\U2|LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|LessThan3~1_cout\ = CARRY((!\U2|Add4~0_combout\ & \U1|pixel_column\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add4~0_combout\,
	datab => \U1|pixel_column\(0),
	datad => VCC,
	cout => \U2|LessThan3~1_cout\);

-- Location: LCCOMB_X60_Y46_N10
\U2|LessThan3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|LessThan3~3_cout\ = CARRY((\U1|pixel_column\(1) & (\U2|Add4~2_combout\ & !\U2|LessThan3~1_cout\)) # (!\U1|pixel_column\(1) & ((\U2|Add4~2_combout\) # (!\U2|LessThan3~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|pixel_column\(1),
	datab => \U2|Add4~2_combout\,
	datad => VCC,
	cin => \U2|LessThan3~1_cout\,
	cout => \U2|LessThan3~3_cout\);

-- Location: LCCOMB_X60_Y46_N12
\U2|LessThan3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|LessThan3~5_cout\ = CARRY((\U2|Add4~4_combout\ & (\U1|pixel_column\(2) & !\U2|LessThan3~3_cout\)) # (!\U2|Add4~4_combout\ & ((\U1|pixel_column\(2)) # (!\U2|LessThan3~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add4~4_combout\,
	datab => \U1|pixel_column\(2),
	datad => VCC,
	cin => \U2|LessThan3~3_cout\,
	cout => \U2|LessThan3~5_cout\);

-- Location: LCCOMB_X60_Y46_N14
\U2|LessThan3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|LessThan3~7_cout\ = CARRY((\U1|pixel_column\(3) & (\U2|Add4~6_combout\ & !\U2|LessThan3~5_cout\)) # (!\U1|pixel_column\(3) & ((\U2|Add4~6_combout\) # (!\U2|LessThan3~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|pixel_column\(3),
	datab => \U2|Add4~6_combout\,
	datad => VCC,
	cin => \U2|LessThan3~5_cout\,
	cout => \U2|LessThan3~7_cout\);

-- Location: LCCOMB_X60_Y46_N16
\U2|LessThan3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|LessThan3~9_cout\ = CARRY((\U1|pixel_column\(4) & ((!\U2|LessThan3~7_cout\) # (!\U2|Add4~8_combout\))) # (!\U1|pixel_column\(4) & (!\U2|Add4~8_combout\ & !\U2|LessThan3~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|pixel_column\(4),
	datab => \U2|Add4~8_combout\,
	datad => VCC,
	cin => \U2|LessThan3~7_cout\,
	cout => \U2|LessThan3~9_cout\);

-- Location: LCCOMB_X60_Y46_N18
\U2|LessThan3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|LessThan3~11_cout\ = CARRY((\U1|pixel_column\(5) & (\U2|Add4~10_combout\ & !\U2|LessThan3~9_cout\)) # (!\U1|pixel_column\(5) & ((\U2|Add4~10_combout\) # (!\U2|LessThan3~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|pixel_column\(5),
	datab => \U2|Add4~10_combout\,
	datad => VCC,
	cin => \U2|LessThan3~9_cout\,
	cout => \U2|LessThan3~11_cout\);

-- Location: LCCOMB_X60_Y46_N20
\U2|LessThan3~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|LessThan3~13_cout\ = CARRY((\U1|pixel_column\(6) & ((!\U2|LessThan3~11_cout\) # (!\U2|Add4~12_combout\))) # (!\U1|pixel_column\(6) & (!\U2|Add4~12_combout\ & !\U2|LessThan3~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|pixel_column\(6),
	datab => \U2|Add4~12_combout\,
	datad => VCC,
	cin => \U2|LessThan3~11_cout\,
	cout => \U2|LessThan3~13_cout\);

-- Location: LCCOMB_X60_Y46_N22
\U2|LessThan3~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|LessThan3~15_cout\ = CARRY((\U1|pixel_column\(7) & (\U2|Add4~14_combout\ & !\U2|LessThan3~13_cout\)) # (!\U1|pixel_column\(7) & ((\U2|Add4~14_combout\) # (!\U2|LessThan3~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|pixel_column\(7),
	datab => \U2|Add4~14_combout\,
	datad => VCC,
	cin => \U2|LessThan3~13_cout\,
	cout => \U2|LessThan3~15_cout\);

-- Location: LCCOMB_X60_Y46_N24
\U2|LessThan3~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|LessThan3~17_cout\ = CARRY((\U1|pixel_column\(8) & ((!\U2|LessThan3~15_cout\) # (!\U2|Add4~16_combout\))) # (!\U1|pixel_column\(8) & (!\U2|Add4~16_combout\ & !\U2|LessThan3~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|pixel_column\(8),
	datab => \U2|Add4~16_combout\,
	datad => VCC,
	cin => \U2|LessThan3~15_cout\,
	cout => \U2|LessThan3~17_cout\);

-- Location: LCCOMB_X60_Y46_N26
\U2|LessThan3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|LessThan3~18_combout\ = (\U1|pixel_column\(9) & ((\U2|LessThan3~17_cout\) # (!\U2|Add4~18_combout\))) # (!\U1|pixel_column\(9) & (\U2|LessThan3~17_cout\ & !\U2|Add4~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|pixel_column\(9),
	datad => \U2|Add4~18_combout\,
	cin => \U2|LessThan3~17_cout\,
	combout => \U2|LessThan3~18_combout\);

-- Location: LCCOMB_X60_Y44_N26
\U2|Add5~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add5~18_combout\ = \U2|Add5~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U2|Add5~17\,
	combout => \U2|Add5~18_combout\);

-- Location: LCCOMB_X60_Y47_N24
\U2|Add4~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add4~20_combout\ = !\U2|Add4~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U2|Add4~19\,
	combout => \U2|Add4~20_combout\);

-- Location: LCCOMB_X60_Y46_N0
\U1|green_out[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|green_out[0]~8_combout\ = (\U2|LessThan5~16_combout\ & (((\U2|LessThan3~18_combout\ & !\U2|Add4~20_combout\)) # (!\U2|Add5~18_combout\))) # (!\U2|LessThan5~16_combout\ & (\U2|LessThan3~18_combout\ & ((!\U2|Add4~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|LessThan5~16_combout\,
	datab => \U2|LessThan3~18_combout\,
	datac => \U2|Add5~18_combout\,
	datad => \U2|Add4~20_combout\,
	combout => \U1|green_out[0]~8_combout\);

-- Location: LCCOMB_X59_Y45_N28
\U1|red_out[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|red_out[0]~0_combout\ = (\U1|video_on~0_combout\ & ((\U1|green_out[0]~7_combout\) # ((!\U1|green_out[0]~9_combout\ & !\U1|green_out[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|green_out[0]~9_combout\,
	datab => \U1|video_on~0_combout\,
	datac => \U1|green_out[0]~7_combout\,
	datad => \U1|green_out[0]~8_combout\,
	combout => \U1|red_out[0]~0_combout\);

-- Location: LCCOMB_X59_Y45_N24
\U1|green_out[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|green_out[0]~10_combout\ = (\U1|video_on~0_combout\ & (\U1|green_out[0]~7_combout\ & ((\U1|green_out[0]~9_combout\) # (\U1|green_out[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|green_out[0]~9_combout\,
	datab => \U1|video_on~0_combout\,
	datac => \U1|green_out[0]~7_combout\,
	datad => \U1|green_out[0]~8_combout\,
	combout => \U1|green_out[0]~10_combout\);

-- Location: LCCOMB_X59_Y45_N2
\U1|green_out[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|green_out[0]~11_combout\ = (\U1|video_on~0_combout\ & ((\U2|LessThan4~16_combout\) # ((\U2|LessThan2~18_combout\) # (\U1|green_out[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|LessThan4~16_combout\,
	datab => \U1|video_on~0_combout\,
	datac => \U2|LessThan2~18_combout\,
	datad => \U1|green_out[0]~8_combout\,
	combout => \U1|green_out[0]~11_combout\);

-- Location: IOIBUF_X58_Y0_N22
\CLOCK2_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK2_50,
	o => \CLOCK2_50~input_o\);

-- Location: IOIBUF_X58_Y0_N8
\CLOCK3_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK3_50,
	o => \CLOCK3_50~input_o\);

-- Location: IOIBUF_X58_Y0_N15
\SMA_CLKIN~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SMA_CLKIN,
	o => \SMA_CLKIN~input_o\);

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X115_Y42_N15
\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X115_Y35_N22
\KEY[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X115_Y18_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X115_Y11_N8
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X115_Y10_N1
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X115_Y15_N1
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X115_Y4_N22
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X115_Y16_N8
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X115_Y4_N15
\SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

-- Location: IOIBUF_X115_Y5_N15
\SW[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(11),
	o => \SW[11]~input_o\);

-- Location: IOIBUF_X115_Y7_N15
\SW[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(12),
	o => \SW[12]~input_o\);

-- Location: IOIBUF_X115_Y9_N22
\SW[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(13),
	o => \SW[13]~input_o\);

-- Location: IOIBUF_X115_Y10_N8
\SW[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(14),
	o => \SW[14]~input_o\);

-- Location: IOIBUF_X115_Y6_N15
\SW[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(15),
	o => \SW[15]~input_o\);

-- Location: IOIBUF_X115_Y13_N1
\SW[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(16),
	o => \SW[16]~input_o\);

-- Location: IOIBUF_X115_Y14_N8
\SW[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(17),
	o => \SW[17]~input_o\);

-- Location: IOIBUF_X40_Y73_N1
\UART_RTS~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_UART_RTS,
	o => \UART_RTS~input_o\);

-- Location: IOIBUF_X27_Y73_N8
\UART_RXD~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_UART_RXD,
	o => \UART_RXD~input_o\);

-- Location: IOIBUF_X0_Y68_N1
\AUD_ADCDAT~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AUD_ADCDAT,
	o => \AUD_ADCDAT~input_o\);

-- Location: IOIBUF_X0_Y52_N15
\LCD_DATA[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => LCD_DATA(0),
	o => \LCD_DATA[0]~input_o\);

-- Location: IOIBUF_X0_Y44_N8
\LCD_DATA[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => LCD_DATA(1),
	o => \LCD_DATA[1]~input_o\);

-- Location: IOIBUF_X0_Y44_N1
\LCD_DATA[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => LCD_DATA(2),
	o => \LCD_DATA[2]~input_o\);

-- Location: IOIBUF_X0_Y49_N8
\LCD_DATA[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => LCD_DATA(3),
	o => \LCD_DATA[3]~input_o\);

-- Location: IOIBUF_X0_Y54_N8
\LCD_DATA[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => LCD_DATA(4),
	o => \LCD_DATA[4]~input_o\);

-- Location: IOIBUF_X0_Y55_N22
\LCD_DATA[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => LCD_DATA(5),
	o => \LCD_DATA[5]~input_o\);

-- Location: IOIBUF_X0_Y51_N15
\LCD_DATA[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => LCD_DATA(6),
	o => \LCD_DATA[6]~input_o\);

-- Location: IOIBUF_X0_Y47_N1
\LCD_DATA[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => LCD_DATA(7),
	o => \LCD_DATA[7]~input_o\);

-- Location: IOIBUF_X0_Y67_N15
\PS2_CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => PS2_CLK,
	o => \PS2_CLK~input_o\);

-- Location: IOIBUF_X0_Y59_N22
\PS2_DAT~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => PS2_DAT,
	o => \PS2_DAT~input_o\);

-- Location: IOIBUF_X0_Y67_N22
\PS2_CLK2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => PS2_CLK2,
	o => \PS2_CLK2~input_o\);

-- Location: IOIBUF_X0_Y65_N15
\PS2_DAT2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => PS2_DAT2,
	o => \PS2_DAT2~input_o\);

-- Location: IOIBUF_X5_Y0_N8
\SRAM_DQ[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(0),
	o => \SRAM_DQ[0]~input_o\);

-- Location: IOIBUF_X1_Y0_N1
\SRAM_DQ[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(1),
	o => \SRAM_DQ[1]~input_o\);

-- Location: IOIBUF_X9_Y0_N22
\SRAM_DQ[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(2),
	o => \SRAM_DQ[2]~input_o\);

-- Location: IOIBUF_X9_Y0_N15
\SRAM_DQ[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(3),
	o => \SRAM_DQ[3]~input_o\);

-- Location: IOIBUF_X7_Y0_N15
\SRAM_DQ[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(4),
	o => \SRAM_DQ[4]~input_o\);

-- Location: IOIBUF_X11_Y0_N22
\SRAM_DQ[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(5),
	o => \SRAM_DQ[5]~input_o\);

-- Location: IOIBUF_X11_Y0_N15
\SRAM_DQ[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(6),
	o => \SRAM_DQ[6]~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\SRAM_DQ[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(7),
	o => \SRAM_DQ[7]~input_o\);

-- Location: IOIBUF_X0_Y21_N15
\SRAM_DQ[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(8),
	o => \SRAM_DQ[8]~input_o\);

-- Location: IOIBUF_X0_Y22_N22
\SRAM_DQ[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(9),
	o => \SRAM_DQ[9]~input_o\);

-- Location: IOIBUF_X0_Y17_N15
\SRAM_DQ[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(10),
	o => \SRAM_DQ[10]~input_o\);

-- Location: IOIBUF_X0_Y16_N15
\SRAM_DQ[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(11),
	o => \SRAM_DQ[11]~input_o\);

-- Location: IOIBUF_X0_Y7_N8
\SRAM_DQ[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(12),
	o => \SRAM_DQ[12]~input_o\);

-- Location: IOIBUF_X3_Y0_N22
\SRAM_DQ[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(13),
	o => \SRAM_DQ[13]~input_o\);

-- Location: IOIBUF_X7_Y0_N22
\SRAM_DQ[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(14),
	o => \SRAM_DQ[14]~input_o\);

-- Location: IOIBUF_X3_Y0_N15
\SRAM_DQ[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(15),
	o => \SRAM_DQ[15]~input_o\);

-- Location: IOIBUF_X0_Y69_N8
\AUD_ADCLRCK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => AUD_ADCLRCK,
	o => \AUD_ADCLRCK~input_o\);

-- Location: IOIBUF_X0_Y60_N15
\AUD_BCLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => AUD_BCLK,
	o => \AUD_BCLK~input_o\);

-- Location: IOIBUF_X0_Y66_N15
\AUD_DACLRCK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => AUD_DACLRCK,
	o => \AUD_DACLRCK~input_o\);
END structure;


