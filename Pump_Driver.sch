EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCU_Microchip_ATmega:ATmega328P-AU U2
U 1 1 5FF68088
P 3750 2950
F 0 "U2" H 3750 1361 50  0000 C CNN
F 1 "ATmega328P-AU" H 3750 1270 50  0000 C CNN
F 2 "Package_QFP:TQFP-32_7x7mm_P0.8mm" H 3750 2950 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 3750 2950 50  0001 C CNN
	1    3750 2950
	1    0    0    -1  
$EndComp
Text GLabel 10650 2500 2    50   Input ~ 0
RESET
Text GLabel 4350 2250 2    50   Input ~ 0
SCK
Text GLabel 4350 2150 2    50   Input ~ 0
MISO
Text GLabel 4350 2050 2    50   Input ~ 0
MOSI
Text GLabel 4350 1950 2    50   Input ~ 0
D10
Text GLabel 4350 1850 2    50   Input ~ 0
D9
Text GLabel 4350 1750 2    50   Input ~ 0
D8
Text GLabel 4350 3150 2    50   Input ~ 0
A5
Text GLabel 4350 3050 2    50   Input ~ 0
A4
Text GLabel 4350 2950 2    50   Input ~ 0
A3
Text GLabel 4350 2850 2    50   Input ~ 0
A2
Text GLabel 4350 2750 2    50   Input ~ 0
A1
Text GLabel 4350 2650 2    50   Input ~ 0
A0
Text GLabel 4350 4150 2    50   Input ~ 0
D7
Text GLabel 4350 4050 2    50   Input ~ 0
D6
Text GLabel 4350 3950 2    50   Input ~ 0
D5
Text GLabel 4350 3850 2    50   Input ~ 0
D4
Text GLabel 4350 3750 2    50   Input ~ 0
D3
Text GLabel 4350 3650 2    50   Input ~ 0
D2
Text GLabel 4350 3550 2    50   Input ~ 0
TX
Text GLabel 4350 3450 2    50   Input ~ 0
RX
$Comp
L power:GND #PWR04
U 1 1 5FF7E58D
P 2400 2050
F 0 "#PWR04" H 2400 1800 50  0001 C CNN
F 1 "GND" H 2405 1877 50  0000 C CNN
F 2 "" H 2400 2050 50  0001 C CNN
F 3 "" H 2400 2050 50  0001 C CNN
	1    2400 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5FF7EB57
P 2400 1900
F 0 "C3" H 2515 1946 50  0000 L CNN
F 1 "100nF" H 2515 1855 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 2438 1750 50  0001 C CNN
F 3 "~" H 2400 1900 50  0001 C CNN
	1    2400 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 1750 2400 1750
$Comp
L power:+5V #PWR011
U 1 1 5FF80D82
P 3750 900
F 0 "#PWR011" H 3750 750 50  0001 C CNN
F 1 "+5V" H 3765 1073 50  0000 C CNN
F 2 "" H 3750 900 50  0001 C CNN
F 3 "" H 3750 900 50  0001 C CNN
	1    3750 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 900  3750 1450
Wire Wire Line
	3750 900  3850 900 
Wire Wire Line
	3850 900  3850 1450
Connection ~ 3750 900 
$Comp
L Device:C C5
U 1 1 5FF823C3
P 3200 1100
F 0 "C5" H 3315 1146 50  0000 L CNN
F 1 "1uF" H 3315 1055 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 3238 950 50  0001 C CNN
F 3 "~" H 3200 1100 50  0001 C CNN
	1    3200 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5FF828C8
P 2250 1100
F 0 "C1" H 2365 1146 50  0000 L CNN
F 1 "1uF" H 2365 1055 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 2288 950 50  0001 C CNN
F 3 "~" H 2250 1100 50  0001 C CNN
	1    2250 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C4
U 1 1 5FF83224
P 2750 1100
F 0 "C4" H 2868 1146 50  0000 L CNN
F 1 "4.7uF_16v" H 2750 1000 50  0000 L CNN
F 2 "Capacitor_SMD:C_Elec_4x5.4" H 2788 950 50  0001 C CNN
F 3 "~" H 2750 1100 50  0001 C CNN
	1    2750 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 900  3200 900 
Wire Wire Line
	2250 900  2250 950 
Wire Wire Line
	2750 900  2750 950 
Connection ~ 2750 900 
Wire Wire Line
	2750 900  2250 900 
Wire Wire Line
	3200 950  3200 900 
Connection ~ 3200 900 
Wire Wire Line
	3200 900  2750 900 
$Comp
L power:GND #PWR07
U 1 1 5FF84028
P 2750 1350
F 0 "#PWR07" H 2750 1100 50  0001 C CNN
F 1 "GND" H 2755 1177 50  0000 C CNN
F 2 "" H 2750 1350 50  0001 C CNN
F 3 "" H 2750 1350 50  0001 C CNN
	1    2750 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 1250 2750 1250
Wire Wire Line
	2750 1250 3200 1250
Connection ~ 2750 1250
Wire Wire Line
	2750 1250 2750 1350
$Comp
L Device:Crystal_GND2 Y1
U 1 1 5FF85B36
P 5050 2400
F 0 "Y1" V 5096 2531 50  0000 L CNN
F 1 "16MhZ Crystal" V 5005 2531 50  0000 L CNN
F 2 "Crystal:Resonator_SMD_muRata_CSTxExxV-3Pin_3.0x1.1mm" H 5050 2400 50  0001 C CNN
F 3 "~" H 5050 2400 50  0001 C CNN
	1    5050 2400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4350 2350 4700 2350
Wire Wire Line
	4700 2350 4700 2250
Wire Wire Line
	4700 2250 5050 2250
Wire Wire Line
	4350 2450 4350 2550
Wire Wire Line
	4350 2550 5050 2550
$Comp
L power:GND #PWR019
U 1 1 5FF87180
P 8950 2800
F 0 "#PWR019" H 8950 2550 50  0001 C CNN
F 1 "GND" H 8955 2627 50  0000 C CNN
F 2 "" H 8950 2800 50  0001 C CNN
F 3 "" H 8950 2800 50  0001 C CNN
	1    8950 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 2400 5500 2400
$Comp
L power:GND #PWR012
U 1 1 5FF8793F
P 3750 4750
F 0 "#PWR012" H 3750 4500 50  0001 C CNN
F 1 "GND" H 3755 4577 50  0000 C CNN
F 2 "" H 3750 4750 50  0001 C CNN
F 3 "" H 3750 4750 50  0001 C CNN
	1    3750 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 4450 3750 4750
$Comp
L power:GND #PWR01
U 1 1 5FF8041E
P 1100 2150
F 0 "#PWR01" H 1100 1900 50  0001 C CNN
F 1 "GND" H 1105 1977 50  0000 C CNN
F 2 "" H 1100 2150 50  0001 C CNN
F 3 "" H 1100 2150 50  0001 C CNN
	1    1100 2150
	1    0    0    -1  
$EndComp
Text GLabel 1700 1900 2    50   Input ~ 0
RESET
$Comp
L Switch:SW_Push SW1
U 1 1 5FF81A1B
P 1300 1900
F 0 "SW1" H 1300 2185 50  0000 C CNN
F 1 "SW1_Reset" H 1300 2094 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_PTS810" H 1300 2100 50  0001 C CNN
F 3 "~" H 1300 2100 50  0001 C CNN
	1    1300 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 1900 1500 1900
Wire Wire Line
	1100 1900 1100 2150
Text GLabel 1200 2650 0    50   Input ~ 0
RESET
$Comp
L Device:R R1
U 1 1 5FF82F29
P 1600 2650
F 0 "R1" V 1393 2650 50  0000 C CNN
F 1 "1K" V 1484 2650 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 1530 2650 50  0001 C CNN
F 3 "~" H 1600 2650 50  0001 C CNN
	1    1600 2650
	0    1    1    0   
$EndComp
Wire Wire Line
	1200 2650 1450 2650
$Comp
L power:+5V #PWR05
U 1 1 5FF83E4D
P 2100 2500
F 0 "#PWR05" H 2100 2350 50  0001 C CNN
F 1 "+5V" H 2115 2673 50  0000 C CNN
F 2 "" H 2100 2500 50  0001 C CNN
F 3 "" H 2100 2500 50  0001 C CNN
	1    2100 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 2650 2100 2650
Wire Wire Line
	2100 2650 2100 2500
Text GLabel 7500 4150 0    50   Input ~ 0
VIN
Wire Wire Line
	7650 4150 7650 4550
Wire Wire Line
	7650 4550 7750 4550
$Comp
L power:GND #PWR06
U 1 1 5FF85E89
P 8200 4850
F 0 "#PWR06" H 8200 4600 50  0001 C CNN
F 1 "GND" H 8205 4677 50  0000 C CNN
F 2 "" H 8200 4850 50  0001 C CNN
F 3 "" H 8200 4850 50  0001 C CNN
	1    8200 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 4150 7500 4150
$Comp
L power:+5V #PWR010
U 1 1 5FF871C6
P 8900 4450
F 0 "#PWR010" H 8900 4300 50  0001 C CNN
F 1 "+5V" H 8915 4623 50  0000 C CNN
F 2 "" H 8900 4450 50  0001 C CNN
F 3 "" H 8900 4450 50  0001 C CNN
	1    8900 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 4550 8700 4550
Wire Wire Line
	8700 4550 8700 4400
$Comp
L Device:R R2
U 1 1 5FF89E8A
P 8700 4800
F 0 "R2" H 8630 4754 50  0000 R CNN
F 1 "1K" H 8630 4845 50  0000 R CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 8630 4800 50  0001 C CNN
F 3 "~" H 8700 4800 50  0001 C CNN
	1    8700 4800
	-1   0    0    1   
$EndComp
Wire Wire Line
	8700 4550 8700 4650
Connection ~ 8700 4550
$Comp
L power:GND #PWR09
U 1 1 5FF8ABB9
P 8700 5700
F 0 "#PWR09" H 8700 5450 50  0001 C CNN
F 1 "GND" H 8705 5527 50  0000 C CNN
F 2 "" H 8700 5700 50  0001 C CNN
F 3 "" H 8700 5700 50  0001 C CNN
	1    8700 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 4950 8700 5150
$Comp
L Device:LED D1
U 1 1 5FF8BDF9
P 8700 5300
F 0 "D1" V 8739 5183 50  0000 R CNN
F 1 "Yellow LED" V 8648 5183 50  0000 R CNN
F 2 "LED_SMD:LED_1206_3216Metric" H 8700 5300 50  0001 C CNN
F 3 "~" H 8700 5300 50  0001 C CNN
	1    8700 5300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8700 5450 8700 5700
Wire Wire Line
	8900 4450 8900 4550
Wire Wire Line
	8900 4550 9150 4550
Text GLabel 9750 4550 2    50   Input ~ 0
VUSB
Wire Wire Line
	9750 4550 9450 4550
$Comp
L power:+5V #PWR08
U 1 1 5FF90296
P 8700 4400
F 0 "#PWR08" H 8700 4250 50  0001 C CNN
F 1 "+5V" H 8715 4573 50  0000 C CNN
F 2 "" H 8700 4400 50  0001 C CNN
F 3 "" H 8700 4400 50  0001 C CNN
	1    8700 4400
	1    0    0    -1  
$EndComp
Text GLabel 10150 4550 1    50   Input ~ 0
VUSB
$Comp
L Device:CP C6
U 1 1 5FF92107
P 9750 5100
F 0 "C6" H 9868 5146 50  0000 L CNN
F 1 "4.7uF_16v" H 9750 5000 50  0000 L CNN
F 2 "Capacitor_SMD:C_Elec_4x5.4" H 9788 4950 50  0001 C CNN
F 3 "~" H 9750 5100 50  0001 C CNN
	1    9750 5100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 5FF92B32
P 10500 5100
F 0 "C7" H 10615 5146 50  0000 L CNN
F 1 "100nF" H 10615 5055 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 10538 4950 50  0001 C CNN
F 3 "~" H 10500 5100 50  0001 C CNN
	1    10500 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 4700 9750 4950
Wire Wire Line
	10500 4700 10500 4950
Wire Wire Line
	9750 4700 10150 4700
$Comp
L power:GND #PWR013
U 1 1 5FF94855
P 10150 5450
F 0 "#PWR013" H 10150 5200 50  0001 C CNN
F 1 "GND" H 10155 5277 50  0000 C CNN
F 2 "" H 10150 5450 50  0001 C CNN
F 3 "" H 10150 5450 50  0001 C CNN
	1    10150 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 5250 9750 5450
Wire Wire Line
	9750 5450 10150 5450
Wire Wire Line
	10150 5450 10500 5450
Wire Wire Line
	10500 5450 10500 5250
Connection ~ 10150 5450
Wire Wire Line
	10150 4550 10150 4700
Connection ~ 10150 4700
Wire Wire Line
	10150 4700 10500 4700
$Comp
L Interface_USB:CH340G U4
U 1 1 5FF97169
P 9450 2200
F 0 "U4" H 9450 1511 50  0000 C CNN
F 1 "CH340G" H 9450 1420 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 9500 1650 50  0001 L CNN
F 3 "http://www.datasheet5.com/pdf-local-2195953" H 9100 3000 50  0001 C CNN
	1    9450 2200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR021
U 1 1 5FF9834E
P 9450 1450
F 0 "#PWR021" H 9450 1300 50  0001 C CNN
F 1 "+5V" H 9465 1623 50  0000 C CNN
F 2 "" H 9450 1450 50  0001 C CNN
F 3 "" H 9450 1450 50  0001 C CNN
	1    9450 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 1450 9450 1600
$Comp
L Device:C C8
U 1 1 5FF9A053
P 9050 1450
F 0 "C8" H 9165 1496 50  0000 L CNN
F 1 "100nF" H 9165 1405 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 9088 1300 50  0001 C CNN
F 3 "~" H 9050 1450 50  0001 C CNN
	1    9050 1450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9350 1600 9350 1450
Wire Wire Line
	9350 1450 9200 1450
$Comp
L power:GND #PWR018
U 1 1 5FF9B892
P 8750 1450
F 0 "#PWR018" H 8750 1200 50  0001 C CNN
F 1 "GND" H 8755 1277 50  0000 C CNN
F 2 "" H 8750 1450 50  0001 C CNN
F 3 "" H 8750 1450 50  0001 C CNN
	1    8750 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 1450 8750 1450
$Comp
L power:+3V3 #PWR020
U 1 1 5FF9CB70
P 9350 1300
F 0 "#PWR020" H 9350 1150 50  0001 C CNN
F 1 "+3V3" H 9365 1473 50  0000 C CNN
F 2 "" H 9350 1300 50  0001 C CNN
F 3 "" H 9350 1300 50  0001 C CNN
	1    9350 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 1300 9350 1450
Connection ~ 9350 1450
$Comp
L Device:Crystal_GND2 Y2
U 1 1 5FF9E576
P 8650 2500
F 0 "Y2" V 8696 2631 50  0000 L CNN
F 1 "12MhZ Crystal" V 8605 2631 50  0000 L CNN
F 2 "Crystal:Resonator_SMD_muRata_CSTxExxV-3Pin_3.0x1.1mm" H 8650 2500 50  0001 C CNN
F 3 "~" H 8650 2500 50  0001 C CNN
	1    8650 2500
	0    1    1    0   
$EndComp
Wire Wire Line
	9050 2400 8900 2400
Wire Wire Line
	8900 2400 8900 2350
Wire Wire Line
	8900 2350 8650 2350
Wire Wire Line
	8650 2650 9050 2650
Wire Wire Line
	9050 2650 9050 2600
Wire Wire Line
	8950 2800 9450 2800
Wire Wire Line
	8400 2800 8950 2800
Connection ~ 8950 2800
$Comp
L Device:C C9
U 1 1 5FFA8007
P 10250 2500
F 0 "C9" H 10365 2546 50  0000 L CNN
F 1 "100nF" H 10365 2455 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 10288 2350 50  0001 C CNN
F 3 "~" H 10250 2500 50  0001 C CNN
	1    10250 2500
	0    1    1    0   
$EndComp
Wire Wire Line
	9850 2500 10100 2500
Wire Wire Line
	10400 2500 10650 2500
Text GLabel 10350 1300 1    50   Input ~ 0
TX
Text GLabel 10100 1250 1    50   Input ~ 0
RX
$Comp
L Device:R R4
U 1 1 5FFB0632
P 10100 1550
F 0 "R4" H 10030 1504 50  0000 R CNN
F 1 "1K" H 10030 1595 50  0000 R CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 10030 1550 50  0001 C CNN
F 3 "~" H 10100 1550 50  0001 C CNN
	1    10100 1550
	-1   0    0    1   
$EndComp
$Comp
L Device:R R6
U 1 1 5FFB145A
P 10350 1600
F 0 "R6" H 10280 1554 50  0000 R CNN
F 1 "1K" H 10280 1645 50  0000 R CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 10280 1600 50  0001 C CNN
F 3 "~" H 10350 1600 50  0001 C CNN
	1    10350 1600
	-1   0    0    1   
$EndComp
Wire Wire Line
	10100 1250 10100 1400
Wire Wire Line
	10100 1700 10100 1800
Wire Wire Line
	10100 1800 9850 1800
Wire Wire Line
	9850 1900 10350 1900
Wire Wire Line
	10350 1900 10350 1750
Wire Wire Line
	10350 1450 10350 1300
$Comp
L Connector:USB_B_Micro J3
U 1 1 5FFB6423
P 7850 2000
F 0 "J3" V 7953 2330 50  0000 L CNN
F 1 "USB_B_Micro" V 7862 2330 50  0000 L CNN
F 2 "Connector_USB:USB_Micro-B_GCT_USB3076-30-A" H 8000 1950 50  0001 C CNN
F 3 "~" H 8000 1950 50  0001 C CNN
	1    7850 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 2000 9050 2000
Wire Wire Line
	9050 2000 9050 2100
Wire Wire Line
	8150 2100 8950 2100
Wire Wire Line
	8950 2100 8950 2200
Wire Wire Line
	8950 2200 9050 2200
Wire Wire Line
	8400 2500 8400 2800
Wire Wire Line
	8450 2500 8400 2500
Text GLabel 8250 1450 1    50   Input ~ 0
VUSB
Wire Wire Line
	8250 1450 8250 1800
Wire Wire Line
	8250 1800 8150 1800
$Comp
L power:GND #PWR014
U 1 1 5FFDFE5E
P 7850 2500
F 0 "#PWR014" H 7850 2250 50  0001 C CNN
F 1 "GND" H 7855 2327 50  0000 C CNN
F 2 "" H 7850 2500 50  0001 C CNN
F 3 "" H 7850 2500 50  0001 C CNN
	1    7850 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 2400 7850 2500
Text GLabel 5300 4250 3    50   Input ~ 0
RX
Text GLabel 5550 4250 3    50   Input ~ 0
TX
$Comp
L Device:LED D3
U 1 1 5FFC2C36
P 5300 3900
F 0 "D3" V 5339 3783 50  0000 R CNN
F 1 "Green LED" V 5250 4450 50  0000 R CNN
F 2 "LED_SMD:LED_1206_3216Metric" H 5300 3900 50  0001 C CNN
F 3 "~" H 5300 3900 50  0001 C CNN
	1    5300 3900
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D4
U 1 1 5FFC3709
P 5550 3900
F 0 "D4" V 5589 3783 50  0000 R CNN
F 1 "Red LED" V 5498 3783 50  0000 R CNN
F 2 "LED_SMD:LED_1206_3216Metric" H 5550 3900 50  0001 C CNN
F 3 "~" H 5550 3900 50  0001 C CNN
	1    5550 3900
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR022
U 1 1 5FFC3C1C
P 5300 3000
F 0 "#PWR022" H 5300 2850 50  0001 C CNN
F 1 "+5V" H 5315 3173 50  0000 C CNN
F 2 "" H 5300 3000 50  0001 C CNN
F 3 "" H 5300 3000 50  0001 C CNN
	1    5300 3000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR023
U 1 1 5FFC457D
P 5550 3000
F 0 "#PWR023" H 5550 2850 50  0001 C CNN
F 1 "+5V" H 5565 3173 50  0000 C CNN
F 2 "" H 5550 3000 50  0001 C CNN
F 3 "" H 5550 3000 50  0001 C CNN
	1    5550 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 3000 5300 3300
Wire Wire Line
	5550 3000 5550 3300
Wire Wire Line
	5300 3600 5300 3750
Wire Wire Line
	5550 3600 5550 3750
Wire Wire Line
	5300 4050 5300 4250
Wire Wire Line
	5550 4050 5550 4250
Text GLabel 4350 3250 2    50   Input ~ 0
RESET
$Comp
L power:GND #PWR015
U 1 1 5FFCE929
P 5500 2400
F 0 "#PWR015" H 5500 2150 50  0001 C CNN
F 1 "GND" H 5505 2227 50  0000 C CNN
F 2 "" H 5500 2400 50  0001 C CNN
F 3 "" H 5500 2400 50  0001 C CNN
	1    5500 2400
	1    0    0    -1  
$EndComp
$Comp
L Driver_Motor:TMC2130_BS U3
U 1 1 5FFC2E34
P 5800 6250
F 0 "U3" H 5775 6925 50  0000 C CNN
F 1 "TMC2130_BS" H 5775 6834 50  0000 C CNN
F 2 "TMC_2208:tmc_2208" H 5800 6400 50  0001 C CNN
F 3 "" H 5800 6400 50  0001 C CNN
	1    5800 6250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR016
U 1 1 5FFC70C3
P 4900 5800
F 0 "#PWR016" H 4900 5650 50  0001 C CNN
F 1 "+5V" H 4915 5973 50  0000 C CNN
F 2 "" H 4900 5800 50  0001 C CNN
F 3 "" H 4900 5800 50  0001 C CNN
	1    4900 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 5800 4900 5900
Wire Wire Line
	4900 5900 5350 5900
Text GLabel 6200 6500 2    50   Input ~ 0
D7
Text GLabel 6200 5800 2    50   Input ~ 0
D3
Text GLabel 6200 5900 2    50   Input ~ 0
D2
Text GLabel 6200 6200 2    50   Input ~ 0
D10
Text GLabel 6200 6300 2    50   Input ~ 0
SCK
Text GLabel 6200 6100 2    50   Input ~ 0
MISO
Text GLabel 6200 6400 2    50   Input ~ 0
MOSI
$Comp
L Device:CP C2
U 1 1 5FFCC88A
P 7750 4700
F 0 "C2" H 7868 4746 50  0000 L CNN
F 1 "10uF" H 7450 4600 50  0000 L CNN
F 2 "Capacitor_SMD:C_Elec_4x5.4" H 7788 4550 50  0001 C CNN
F 3 "~" H 7750 4700 50  0001 C CNN
	1    7750 4700
	1    0    0    -1  
$EndComp
Connection ~ 7750 4550
Wire Wire Line
	7750 4550 7900 4550
$Comp
L power:GND #PWR03
U 1 1 5FFCD01A
P 7750 4850
F 0 "#PWR03" H 7750 4600 50  0001 C CNN
F 1 "GND" H 7755 4677 50  0000 C CNN
F 2 "" H 7750 4850 50  0001 C CNN
F 3 "" H 7750 4850 50  0001 C CNN
	1    7750 4850
	1    0    0    -1  
$EndComp
Text GLabel 5200 6850 3    50   Input ~ 0
VIN
Wire Wire Line
	5200 6850 5200 6500
Wire Wire Line
	5200 6500 5350 6500
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 5FFD2C82
P 1750 3450
F 0 "J1" V 1622 3530 50  0000 L CNN
F 1 "Input Voltage" V 1713 3530 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 1750 3450 50  0001 C CNN
F 3 "~" H 1750 3450 50  0001 C CNN
	1    1750 3450
	0    1    1    0   
$EndComp
Text GLabel 1750 3050 1    50   Input ~ 0
VIN
Wire Wire Line
	1750 3050 1750 3250
$Comp
L power:GND #PWR02
U 1 1 5FFD5AE2
P 1300 3100
F 0 "#PWR02" H 1300 2850 50  0001 C CNN
F 1 "GND" H 1305 2927 50  0000 C CNN
F 2 "" H 1300 3100 50  0001 C CNN
F 3 "" H 1300 3100 50  0001 C CNN
	1    1300 3100
	0    1    1    0   
$EndComp
Wire Wire Line
	1300 3100 1650 3100
Wire Wire Line
	1650 3100 1650 3250
$Comp
L Connector_Generic:Conn_01x04 J2
U 1 1 5FFD914F
P 4500 6200
F 0 "J2" H 4418 5775 50  0000 C CNN
F 1 "Motor Leads" H 4418 5866 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 4500 6200 50  0001 C CNN
F 3 "~" H 4500 6200 50  0001 C CNN
	1    4500 6200
	-1   0    0    1   
$EndComp
Wire Wire Line
	4700 6000 5350 6000
Wire Wire Line
	4700 6100 5350 6100
Wire Wire Line
	4700 6200 5350 6200
Wire Wire Line
	4700 6300 5350 6300
$Comp
L power:GND #PWR017
U 1 1 5FFE895A
P 5100 6500
F 0 "#PWR017" H 5100 6250 50  0001 C CNN
F 1 "GND" H 5105 6327 50  0000 C CNN
F 2 "" H 5100 6500 50  0001 C CNN
F 3 "" H 5100 6500 50  0001 C CNN
	1    5100 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 6500 5100 6400
Wire Wire Line
	5100 6400 5350 6400
$Comp
L Diode:BAT42W-V D2
U 1 1 5FFFC1CF
P 9300 4550
F 0 "D2" H 9300 4766 50  0000 C CNN
F 1 "BAT42W-V" H 9300 4675 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 9300 4375 50  0001 C CNN
F 3 "http://www.vishay.com/docs/85660/bat42.pdf" H 9300 4550 50  0001 C CNN
	1    9300 4550
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:AMS1117-5.0 U1
U 1 1 60000A47
P 8200 4550
F 0 "U1" H 8200 4792 50  0000 C CNN
F 1 "AMS1117-5.0" H 8200 4701 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 8200 4750 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 8300 4300 50  0001 C CNN
	1    8200 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5FFFE0F9
P 5300 3450
F 0 "R3" H 5230 3404 50  0000 R CNN
F 1 "1K" H 5230 3495 50  0000 R CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 5230 3450 50  0001 C CNN
F 3 "~" H 5300 3450 50  0001 C CNN
	1    5300 3450
	-1   0    0    1   
$EndComp
$Comp
L Device:R R5
U 1 1 5FFFE685
P 5550 3450
F 0 "R5" H 5480 3404 50  0000 R CNN
F 1 "1K" H 5480 3495 50  0000 R CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 5480 3450 50  0001 C CNN
F 3 "~" H 5550 3450 50  0001 C CNN
	1    5550 3450
	-1   0    0    1   
$EndComp
Text Label 8800 3400 0    118  ~ 0
CH340_FTDI
Text Label 8450 6250 0    118  ~ 0
Voltage_Regulator
Text Label 5100 7450 0    118  ~ 0
TMC2130_BGT
$Comp
L Connector_Generic:Conn_01x04 J4
U 1 1 60095277
P 1850 3950
F 0 "J4" H 1768 3525 50  0000 C CNN
F 1 "Serial" H 1768 3616 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 1850 3950 50  0001 C CNN
F 3 "~" H 1850 3950 50  0001 C CNN
	1    1850 3950
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR024
U 1 1 60095ED6
P 1850 4550
F 0 "#PWR024" H 1850 4300 50  0001 C CNN
F 1 "GND" H 1855 4377 50  0000 C CNN
F 2 "" H 1850 4550 50  0001 C CNN
F 3 "" H 1850 4550 50  0001 C CNN
	1    1850 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 4550 1850 4150
$Comp
L power:+5V #PWR0101
U 1 1 600BCB6E
P 1750 4400
F 0 "#PWR0101" H 1750 4250 50  0001 C CNN
F 1 "+5V" H 1765 4573 50  0000 C CNN
F 2 "" H 1750 4400 50  0001 C CNN
F 3 "" H 1750 4400 50  0001 C CNN
	1    1750 4400
	-1   0    0    1   
$EndComp
Wire Wire Line
	1750 4400 1750 4150
Text GLabel 1950 4300 3    50   Input ~ 0
TX
Text GLabel 2050 4300 3    50   Input ~ 0
RX
Wire Wire Line
	1950 4300 1950 4150
Wire Wire Line
	2050 4300 2050 4150
NoConn ~ 6200 6000
$EndSCHEMATC
