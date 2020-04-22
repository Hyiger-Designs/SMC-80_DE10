EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
Title "DE10-Lite RAM/ROM/IDE Board"
Date "2019-10-18"
Rev "1.0"
Comp "Hyiger Designs"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:GND #PWR02
U 1 1 5D4C11EB
P 2800 1050
AR Path="/5D4C11EB" Ref="#PWR02"  Part="1" 
AR Path="/5CB63856/5D4C11EB" Ref="#PWR?"  Part="1" 
AR Path="/5CB5AB00/5CB63856/5D4C11EB" Ref="#PWR?"  Part="1" 
AR Path="/5CFABACD/5D4C11EB" Ref="#PWR?"  Part="1" 
AR Path="/5CF9C1ED/5D4C11EB" Ref="#PWR?"  Part="1" 
F 0 "#PWR02" H 2800 800 50  0001 C CNN
F 1 "GND" H 2800 875 50  0000 C CNN
F 2 "" H 2800 1050 50  0001 C CNN
F 3 "" H 2800 1050 50  0001 C CNN
	1    2800 1050
	-1   0    0    -1  
$EndComp
Text Label 2475 1050 0    50   ~ 0
GND
$Comp
L Connector_Generic:Conn_02x20_Odd_Even J1
U 1 1 5D46B3E5
P 2100 1950
F 0 "J1" H 2150 3050 50  0000 C CNN
F 1 "IDE" H 2150 2950 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x20_P2.54mm_Horizontal" H 2100 1950 50  0001 C CNN
F 3 "~" H 2100 1950 50  0001 C CNN
	1    2100 1950
	1    0    0    -1  
$EndComp
Text Label 2575 2750 0    50   ~ 0
A2
$Comp
L power:VCC #PWR08
U 1 1 5D4C46A0
P 2875 2400
F 0 "#PWR08" H 2875 2250 50  0001 C CNN
F 1 "VCC" H 2892 2573 50  0000 C CNN
F 2 "" H 2875 2400 50  0001 C CNN
F 3 "" H 2875 2400 50  0001 C CNN
	1    2875 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5D4C469F
P 2950 2550
AR Path="/5D0F9837/5D4C469F" Ref="R?"  Part="1" 
AR Path="/5CFABACD/5D0BF766/5D4C469F" Ref="R?"  Part="1" 
AR Path="/5D1AF052/5D4C469F" Ref="R?"  Part="1" 
AR Path="/5D4C469F" Ref="R4"  Part="1" 
F 0 "R4" H 2815 2585 50  0000 L CNN
F 1 "10K" V 2950 2500 32  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2950 2550 50  0001 C CNN
F 3 "~" H 2950 2550 50  0001 C CNN
	1    2950 2550
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5D4C469E
P 2800 2550
AR Path="/5D0F9837/5D4C469E" Ref="R?"  Part="1" 
AR Path="/5CFABACD/5D0BF766/5D4C469E" Ref="R?"  Part="1" 
AR Path="/5D1AF052/5D4C469E" Ref="R?"  Part="1" 
AR Path="/5D4C469E" Ref="R3"  Part="1" 
F 0 "R3" H 2665 2585 50  0000 L CNN
F 1 "10K" V 2800 2500 32  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2800 2550 50  0001 C CNN
F 3 "~" H 2800 2550 50  0001 C CNN
	1    2800 2550
	1    0    0    -1  
$EndComp
NoConn ~ 2400 1550
NoConn ~ 2400 1650
NoConn ~ 2400 1450
NoConn ~ 2400 1350
Wire Wire Line
	2800 1050 2400 1050
Wire Wire Line
	2800 2750 2400 2750
$Comp
L power:GND #PWR05
U 1 1 5D4B78ED
P 2600 2150
AR Path="/5D4B78ED" Ref="#PWR05"  Part="1" 
AR Path="/5CB63856/5D4B78ED" Ref="#PWR?"  Part="1" 
AR Path="/5CB5AB00/5CB63856/5D4B78ED" Ref="#PWR?"  Part="1" 
AR Path="/5CFABACD/5D4B78ED" Ref="#PWR?"  Part="1" 
AR Path="/5CF9C1ED/5D4B78ED" Ref="#PWR?"  Part="1" 
F 0 "#PWR05" H 2600 1900 50  0001 C CNN
F 1 "GND" H 2600 1975 50  0000 C CNN
F 2 "" H 2600 2150 50  0001 C CNN
F 3 "" H 2600 2150 50  0001 C CNN
	1    2600 2150
	-1   0    0    -1  
$EndComp
$Comp
L power:VCC #PWR09
U 1 1 5D542446
P 775 2650
F 0 "#PWR09" H 775 2500 50  0001 C CNN
F 1 "VCC" H 792 2823 50  0000 C CNN
F 2 "" H 775 2650 50  0001 C CNN
F 3 "" H 775 2650 50  0001 C CNN
	1    775  2650
	-1   0    0    -1  
$EndComp
$Comp
L power:VCC #PWR07
U 1 1 5D51FEB4
P 1150 2250
F 0 "#PWR07" H 1150 2100 50  0001 C CNN
F 1 "VCC" H 1167 2423 50  0000 C CNN
F 2 "" H 1150 2250 50  0001 C CNN
F 3 "" H 1150 2250 50  0001 C CNN
	1    1150 2250
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5D51C572
P 1150 2350
AR Path="/5D0F9837/5D51C572" Ref="R?"  Part="1" 
AR Path="/5CFABACD/5D0BF766/5D51C572" Ref="R?"  Part="1" 
AR Path="/5D1AF052/5D51C572" Ref="R?"  Part="1" 
AR Path="/5D51C572" Ref="R2"  Part="1" 
F 0 "R2" H 950 2350 50  0000 L CNN
F 1 "10K" V 1150 2300 32  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1150 2350 50  0001 C CNN
F 3 "~" H 1150 2350 50  0001 C CNN
	1    1150 2350
	-1   0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 5D52F622
P 925 2950
F 0 "D1" H 918 2695 50  0000 C CNN
F 1 "GRN" H 918 2786 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 925 2950 50  0001 C CNN
F 3 "~" H 925 2950 50  0001 C CNN
	1    925  2950
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5D55D5FF
P 1325 1950
AR Path="/5D55D5FF" Ref="#PWR04"  Part="1" 
AR Path="/5CB63856/5D55D5FF" Ref="#PWR?"  Part="1" 
AR Path="/5CB5AB00/5CB63856/5D55D5FF" Ref="#PWR?"  Part="1" 
AR Path="/5CFABACD/5D55D5FF" Ref="#PWR?"  Part="1" 
AR Path="/5CF9C1ED/5D55D5FF" Ref="#PWR?"  Part="1" 
F 0 "#PWR04" H 1325 1700 50  0001 C CNN
F 1 "GND" H 1325 1775 50  0000 C CNN
F 2 "" H 1325 1950 50  0001 C CNN
F 3 "" H 1325 1950 50  0001 C CNN
	1    1325 1950
	-1   0    0    -1  
$EndComp
Text Label 1600 2950 0    50   ~ 0
~ACTIVE
Text Label 1650 1450 0    50   ~ 0
D4
Text Label 1650 1350 0    50   ~ 0
D5
Text Label 1650 1750 0    50   ~ 0
D1
Text Label 1650 1850 0    50   ~ 0
D0
Text Label 1625 2650 0    50   ~ 0
A1
$Comp
L Device:R_Small R?
U 1 1 5D53634D
P 775 2750
AR Path="/5D0F9837/5D53634D" Ref="R?"  Part="1" 
AR Path="/5CFABACD/5D0BF766/5D53634D" Ref="R?"  Part="1" 
AR Path="/5D1AF052/5D53634D" Ref="R?"  Part="1" 
AR Path="/5D53634D" Ref="R5"  Part="1" 
F 0 "R5" H 640 2785 50  0000 L CNN
F 1 "1K" V 775 2700 32  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 775 2750 50  0001 C CNN
F 3 "~" H 775 2750 50  0001 C CNN
	1    775  2750
	-1   0    0    -1  
$EndComp
Text Label 1675 2250 0    50   ~ 0
~RD
Text Label 1650 1150 0    50   ~ 0
D7
Text Label 1475 1950 0    50   ~ 0
GND
Text Label 1675 2150 0    50   ~ 0
~WR
Text Label 1650 1650 0    50   ~ 0
D2
Text Label 1650 1250 0    50   ~ 0
D6
Text Label 1650 1550 0    50   ~ 0
D3
Text Label 1600 1050 0    50   ~ 0
~RESET
Text Label 1625 2750 0    50   ~ 0
A0
Text Label 1625 2850 0    50   ~ 0
IDE_~CE~
Wire Wire Line
	1900 2150 1500 2150
Wire Wire Line
	1075 2950 1900 2950
Wire Wire Line
	1900 2250 1500 2250
Wire Wire Line
	1900 2650 1500 2650
Wire Wire Line
	1900 2750 1500 2750
Wire Wire Line
	1900 2850 1500 2850
Wire Wire Line
	775  2950 775  2850
Wire Wire Line
	1325 1950 1900 1950
NoConn ~ 1900 2050
NoConn ~ 1900 2350
NoConn ~ 1900 2550
Wire Wire Line
	1900 1350 1500 1350
Wire Wire Line
	1900 1450 1500 1450
Wire Wire Line
	1900 1850 1500 1850
Wire Wire Line
	1900 1150 1500 1150
Wire Wire Line
	1900 1250 1500 1250
Wire Wire Line
	1900 1050 1500 1050
Wire Wire Line
	1900 1550 1500 1550
Wire Wire Line
	1500 1650 1900 1650
Wire Wire Line
	1500 1750 1900 1750
NoConn ~ 2400 1750
NoConn ~ 2400 1850
NoConn ~ 2400 2350
NoConn ~ 2400 2550
NoConn ~ 2400 1150
NoConn ~ 2400 1250
$Comp
L de10-lite-ram-rom-ide-rescue:C_Small-Device-sbc_z80-rescue-THS-80-rescue-de10-lite-ram-rom-rescue C?
U 1 1 5D65939B
P 3300 2050
AR Path="/5D65A6A0/5D65939B" Ref="C?"  Part="1" 
AR Path="/5D65939B" Ref="C1"  Part="1" 
F 0 "C1" H 3400 2050 50  0000 L CNN
F 1 "100nF" H 3000 2050 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3300 2050 50  0001 C CNN
F 3 "https://www.mouser.com/datasheet/2/396/mlcc02_e-1307760.pdf" H 3300 2050 50  0001 C CNN
F 4 "Multilayer Ceramic Capacitors MLCC - SMD/SMT 0603 6.3V 0.47uF 10% X7R" H 3392 2196 50  0001 C CNN "Description"
F 5 "Taiyo Yuden" H 3300 2050 50  0001 C CNN "MFR"
F 6 "JMK107B7474KA-T" H 3300 2050 50  0001 C CNN "MPN"
F 7 "963-JMK107B7474KA-T" H 3392 2196 50  0001 C CNN "SPN"
F 8 "Mouser" H 3300 2050 50  0001 C CNN "SPR"
F 9 "https://www.mouser.com/ProductDetail/963-JMK107B7474KA-T" H 3392 2196 50  0001 C CNN "SPURL"
	1    3300 2050
	-1   0    0    -1  
$EndComp
$Comp
L de10-lite-ram-rom-ide-rescue:GND-power-sbc_z80-rescue-THS-80-rescue-de10-lite-ram-rom-rescue #PWR06
U 1 1 5D65A340
P 3300 2150
AR Path="/5D65A340" Ref="#PWR06"  Part="1" 
AR Path="/5CB63856/5D65A340" Ref="#PWR?"  Part="1" 
AR Path="/5CB5AB00/5CB63856/5D65A340" Ref="#PWR?"  Part="1" 
AR Path="/5CFABACD/5D65A340" Ref="#PWR?"  Part="1" 
AR Path="/5CF9C1ED/5D65A340" Ref="#PWR?"  Part="1" 
F 0 "#PWR06" H 3300 1900 50  0001 C CNN
F 1 "GND" H 3300 1975 50  0000 C CNN
F 2 "" H 3300 2150 50  0001 C CNN
F 3 "" H 3300 2150 50  0001 C CNN
	1    3300 2150
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5E062C26
P 2400 2950
F 0 "#PWR010" H 2400 2700 50  0001 C CNN
F 1 "GND" H 2405 2777 50  0000 C CNN
F 2 "" H 2400 2950 50  0001 C CNN
F 3 "" H 2400 2950 50  0001 C CNN
	1    2400 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 2450 1150 2450
$Comp
L power:VCC #PWR01
U 1 1 5D97B057
P 1500 850
F 0 "#PWR01" H 1500 700 50  0001 C CNN
F 1 "VCC" H 1517 1023 50  0000 C CNN
F 2 "" H 1500 850 50  0001 C CNN
F 3 "" H 1500 850 50  0001 C CNN
	1    1500 850 
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5D97B05D
P 1500 950
AR Path="/5D0F9837/5D97B05D" Ref="R?"  Part="1" 
AR Path="/5CFABACD/5D0BF766/5D97B05D" Ref="R?"  Part="1" 
AR Path="/5D1AF052/5D97B05D" Ref="R?"  Part="1" 
AR Path="/5D97B05D" Ref="R1"  Part="1" 
F 0 "R1" H 1300 950 50  0000 L CNN
F 1 "10K" V 1500 900 32  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1500 950 50  0001 C CNN
F 3 "~" H 1500 950 50  0001 C CNN
	1    1500 950 
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2400 2050 2450 2050
Wire Wire Line
	2450 2050 2450 2150
Wire Wire Line
	2450 2450 2400 2450
Wire Wire Line
	2400 2250 2450 2250
Connection ~ 2450 2250
Wire Wire Line
	2450 2250 2450 2450
Wire Wire Line
	2400 2150 2450 2150
Connection ~ 2450 2150
Wire Wire Line
	2450 2150 2450 2250
Wire Wire Line
	2450 2150 2600 2150
Wire Wire Line
	2400 2650 2800 2650
Wire Wire Line
	2400 2850 2950 2850
Wire Wire Line
	2800 2450 2800 2400
Wire Wire Line
	2800 2400 2875 2400
Wire Wire Line
	2950 2400 2950 2450
Wire Wire Line
	2950 2650 2950 2850
Connection ~ 2875 2400
Wire Wire Line
	2875 2400 2950 2400
$Comp
L power:VCC #PWR03
U 1 1 5DD46FCA
P 3300 1750
F 0 "#PWR03" H 3300 1600 50  0001 C CNN
F 1 "VCC" H 3317 1923 50  0000 C CNN
F 2 "" H 3300 1750 50  0001 C CNN
F 3 "" H 3300 1750 50  0001 C CNN
	1    3300 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 1950 3300 1950
$Comp
L power:GND #PWR015
U 1 1 5D9B5551
P 8050 6150
AR Path="/5D9B5551" Ref="#PWR015"  Part="1" 
AR Path="/5CB63856/5D9B5551" Ref="#PWR?"  Part="1" 
AR Path="/5CB5AB00/5CB63856/5D9B5551" Ref="#PWR?"  Part="1" 
AR Path="/5CFABACD/5D9B5551" Ref="#PWR?"  Part="1" 
AR Path="/5CF9C1ED/5D9B5551" Ref="#PWR?"  Part="1" 
AR Path="/5DFE5C15/5D9B5551" Ref="#PWR?"  Part="1" 
F 0 "#PWR015" H 8050 5900 50  0001 C CNN
F 1 "GND" H 8055 5977 50  0000 C CNN
F 2 "" H 8050 6150 50  0001 C CNN
F 3 "" H 8050 6150 50  0001 C CNN
	1    8050 6150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R8
U 1 1 5D9B555A
P 8050 6050
AR Path="/5D9B555A" Ref="R8"  Part="1" 
AR Path="/5DFE5C15/5D9B555A" Ref="R?"  Part="1" 
F 0 "R8" H 8109 6096 50  0000 L CNN
F 1 "100K" V 8050 6000 30  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8050 6050 50  0001 C CNN
F 3 "~" H 8050 6050 50  0001 C CNN
	1    8050 6050
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x06 J2
U 1 1 5D9B5560
P 8400 5550
AR Path="/5D9B5560" Ref="J2"  Part="1" 
AR Path="/5DFE5C15/5D9B5560" Ref="J?"  Part="1" 
F 0 "J2" H 8480 5542 50  0000 L CNN
F 1 "Port A" H 8480 5451 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 8400 5550 50  0001 C CNN
F 3 "~" H 8400 5550 50  0001 C CNN
	1    8400 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 5950 8050 5850
Wire Wire Line
	8200 5850 8050 5850
Wire Wire Line
	8200 5450 8050 5450
Wire Wire Line
	8200 5350 8200 5150
Wire Wire Line
	8200 5150 8700 5150
$Comp
L Device:Jumper_NC_Small JP1
U 1 1 5DA6289B
P 3300 1850
F 0 "JP1" V 3254 1924 50  0000 L CNN
F 1 "IDE PWR" V 3345 1924 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 3300 1850 50  0001 C CNN
F 3 "~" H 3300 1850 50  0001 C CNN
	1    3300 1850
	0    1    1    0   
$EndComp
Connection ~ 3300 1950
Text Notes 1150 3200 0    50   ~ 0
IDE Activity
$Comp
L power:GND #PWR012
U 1 1 5DC5C82F
P 8700 5150
F 0 "#PWR012" H 8700 4900 50  0001 C CNN
F 1 "GND" H 8705 4977 50  0000 C CNN
F 2 "" H 8700 5150 50  0001 C CNN
F 3 "" H 8700 5150 50  0001 C CNN
	1    8700 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R6
U 1 1 5DA45090
P 8050 5250
AR Path="/5DA45090" Ref="R6"  Part="1" 
AR Path="/5DFE5C15/5DA45090" Ref="R?"  Part="1" 
F 0 "R6" H 8100 5200 50  0000 L CNN
F 1 "100K" V 8050 5200 30  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8050 5250 50  0001 C CNN
F 3 "~" H 8050 5250 50  0001 C CNN
	1    8050 5250
	-1   0    0    1   
$EndComp
Wire Wire Line
	8050 5350 8050 5450
Wire Wire Line
	8050 5150 8050 5050
NoConn ~ 8200 5550
$Comp
L power:VCC #PWR011
U 1 1 5DB35A99
P 8050 5050
F 0 "#PWR011" H 8050 4900 50  0001 C CNN
F 1 "VCC" H 8067 5223 50  0000 C CNN
F 2 "" H 8050 5050 50  0001 C CNN
F 3 "" H 8050 5050 50  0001 C CNN
	1    8050 5050
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR013
U 1 1 5E6DA593
P 1100 3950
F 0 "#PWR013" H 1100 3800 50  0001 C CNN
F 1 "VCC" H 1117 4123 50  0000 C CNN
F 2 "" H 1100 3950 50  0001 C CNN
F 3 "" H 1100 3950 50  0001 C CNN
	1    1100 3950
	-1   0    0    -1  
$EndComp
$Comp
L Device:LED D2
U 1 1 5E6DA599
P 1250 4100
F 0 "D2" H 1243 3845 50  0000 C CNN
F 1 "GRN" H 1243 3936 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1250 4100 50  0001 C CNN
F 3 "~" H 1250 4100 50  0001 C CNN
	1    1250 4100
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5E6DA59F
P 1600 4200
AR Path="/5D0F9837/5E6DA59F" Ref="R?"  Part="1" 
AR Path="/5CFABACD/5D0BF766/5E6DA59F" Ref="R?"  Part="1" 
AR Path="/5D1AF052/5E6DA59F" Ref="R?"  Part="1" 
AR Path="/5E6DA59F" Ref="R7"  Part="1" 
F 0 "R7" H 1465 4235 50  0000 L CNN
F 1 "1K" V 1600 4150 32  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1600 4200 50  0001 C CNN
F 3 "~" H 1600 4200 50  0001 C CNN
	1    1600 4200
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR014
U 1 1 5E75C5FC
P 1600 4400
F 0 "#PWR014" H 1600 4150 50  0001 C CNN
F 1 "GND" H 1605 4227 50  0000 C CNN
F 2 "" H 1600 4400 50  0001 C CNN
F 3 "" H 1600 4400 50  0001 C CNN
	1    1600 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 3950 1100 4100
Wire Wire Line
	1400 4100 1600 4100
Wire Wire Line
	1600 4300 1600 4400
Text Label 1100 5300 2    50   ~ 0
~M1
Text Label 1150 5700 2    50   ~ 0
~IORQ
Text Notes 1250 5300 0    50   ~ 0
AA20
Text Notes 1250 5400 0    50   ~ 0
AB21
Text Notes 1250 7100 0    50   ~ 0
AB5
Text Notes 1250 7000 0    50   ~ 0
AB6
Text Notes 1250 6900 0    50   ~ 0
AB7
Text Notes 1250 6800 0    50   ~ 0
AB8
Text Notes 1250 5900 0    50   ~ 0
AA19
Text Notes 1250 5800 0    50   ~ 0
Y19
Text Notes 1250 5700 0    50   ~ 0
AB20
NoConn ~ 1550 6600
NoConn ~ 1550 6500
Wire Wire Line
	950  7000 1550 7000
NoConn ~ 1550 6700
NoConn ~ 1550 6100
$Comp
L Connector_Generic:Conn_01x10 J3
U 1 1 5DB380CF
P 1750 5700
F 0 "J3" H 1830 5692 50  0000 L CNN
F 1 "Arduino1" H 1830 5601 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x10_P2.54mm_Vertical" H 1750 5700 50  0001 C CNN
F 3 "~" H 1750 5700 50  0001 C CNN
	1    1750 5700
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x08 J5
U 1 1 5DB3A357
P 1750 6700
F 0 "J5" H 1830 6692 50  0000 L CNN
F 1 "Arduino2" H 1830 6601 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 1750 6700 50  0001 C CNN
F 3 "~" H 1750 6700 50  0001 C CNN
	1    1750 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 5300 950  5300
Wire Wire Line
	1550 5400 950  5400
Wire Wire Line
	1550 5700 950  5700
Wire Wire Line
	1550 5800 950  5800
Wire Wire Line
	1550 5900 950  5900
NoConn ~ 1550 5500
Wire Wire Line
	950  7100 1550 7100
Wire Wire Line
	950  6800 1550 6800
Wire Wire Line
	950  6900 1550 6900
Wire Wire Line
	800  5600 1550 5600
$Comp
L power:GND #PWR016
U 1 1 5DBC0D0A
P 800 5600
F 0 "#PWR016" H 800 5350 50  0001 C CNN
F 1 "GND" H 805 5427 50  0000 C CNN
F 2 "" H 800 5600 50  0001 C CNN
F 3 "" H 800 5600 50  0001 C CNN
	1    800  5600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3000 7150 3600 7150
Text Label 3000 7150 0    50   ~ 0
CLK
Text Notes 3350 7150 0    50   ~ 0
AB3
Wire Wire Line
	3000 6750 3600 6750
Wire Wire Line
	3000 6850 3600 6850
Wire Wire Line
	3000 6950 3600 6950
Wire Wire Line
	3000 7050 3600 7050
Text Label 3000 6850 0    50   ~ 0
D2
Text Label 3000 6950 0    50   ~ 0
D4
Text Label 3000 7050 0    50   ~ 0
D6
Text Label 3000 6150 0    50   ~ 0
~RD
Wire Wire Line
	3600 6150 3000 6150
Text Label 3000 6750 0    50   ~ 0
D0
Text Notes 3350 6150 0    50   ~ 0
AB12
Text Notes 3350 6250 0    50   ~ 0
AB11
Text Notes 3350 6350 0    50   ~ 0
AB10
Text Notes 3350 6450 0    50   ~ 0
AA9
Text Notes 3350 6550 0    50   ~ 0
AA8
Text Label 4700 6850 2    50   ~ 0
D3
Text Label 4700 6750 2    50   ~ 0
D1
Wire Wire Line
	4100 6850 4700 6850
Wire Wire Line
	4100 6750 4700 6750
Text Label 4700 7050 2    50   ~ 0
D7
Text Label 4700 6950 2    50   ~ 0
D5
Wire Wire Line
	4100 7050 4700 7050
Wire Wire Line
	4100 6950 4700 6950
Text Notes 4200 6250 0    50   ~ 0
W11
Text Notes 4200 6350 0    50   ~ 0
AA10
Text Notes 4200 6450 0    50   ~ 0
Y8
Text Notes 4200 6550 0    50   ~ 0
Y7
Wire Wire Line
	3600 6250 3000 6250
Wire Wire Line
	3600 6350 3000 6350
Text Label 3000 6350 0    50   ~ 0
A14
Text Label 3000 6450 0    50   ~ 0
A16
Text Label 3000 6550 0    50   ~ 0
A18
Text Label 3000 6250 0    50   ~ 0
A12
Wire Wire Line
	3600 6550 3000 6550
Wire Wire Line
	3000 6450 3600 6450
Text Notes 3350 6750 0    50   ~ 0
AA7
Text Notes 3350 6850 0    50   ~ 0
AA6
Text Notes 3350 6950 0    50   ~ 0
AA5
Text Notes 3350 7050 0    50   ~ 0
AB3
Wire Wire Line
	4700 6250 4100 6250
Wire Wire Line
	4700 6350 4100 6350
Wire Wire Line
	4700 6450 4100 6450
Text Label 4700 6250 2    50   ~ 0
A13
Text Label 4700 6350 2    50   ~ 0
A15
Text Label 4700 6450 2    50   ~ 0
A17
Text Notes 4200 6750 0    50   ~ 0
Y6
Text Notes 4200 6850 0    50   ~ 0
Y5
Text Notes 4200 6950 0    50   ~ 0
Y4
Wire Wire Line
	2700 7350 2700 7250
$Comp
L power:GND #PWR021
U 1 1 5DA1CD65
P 2700 7350
F 0 "#PWR021" H 2700 7100 50  0001 C CNN
F 1 "GND" H 2705 7177 50  0000 C CNN
F 2 "" H 2700 7350 50  0001 C CNN
F 3 "" H 2700 7350 50  0001 C CNN
	1    2700 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 7050 2700 6650
Text Notes 3350 6050 0    50   ~ 0
W12
Text Notes 4200 7150 0    50   ~ 0
AA2
Text Notes 4200 7050 0    50   ~ 0
Y3
Text Notes 4200 6150 0    50   ~ 0
Y11
Text Notes 4200 6050 0    50   ~ 0
AB13
Text Notes 4200 5950 0    50   ~ 0
W13
Text Notes 4200 5850 0    50   ~ 0
AA15
Text Notes 4200 5450 0    50   ~ 0
W8
Text Notes 4200 5650 0    50   ~ 0
V5
Text Notes 4200 5550 0    50   ~ 0
W7
Text Notes 4200 5350 0    50   ~ 0
W9
Text Notes 4200 5250 0    50   ~ 0
W10
Text Notes 3350 5950 0    50   ~ 0
AA14
Text Notes 3350 5850 0    50   ~ 0
W5
Text Notes 3350 5650 0    50   ~ 0
W6
Text Notes 3350 5550 0    50   ~ 0
V7
Text Notes 3350 5450 0    50   ~ 0
V8
Connection ~ 2650 5750
$Comp
L power:+5V #PWR017
U 1 1 5DA0C153
P 2650 5750
F 0 "#PWR017" H 2650 5600 50  0001 C CNN
F 1 "+5V" H 2665 5923 50  0000 C CNN
F 2 "" H 2650 5750 50  0001 C CNN
F 3 "" H 2650 5750 50  0001 C CNN
	1    2650 5750
	1    0    0    -1  
$EndComp
Connection ~ 2700 6650
Wire Wire Line
	4700 5850 4100 5850
$Comp
L Device:C_Small C2
U 1 1 5DC1E4EE
P 2700 7150
F 0 "C2" H 2792 7196 50  0000 L CNN
F 1 "100nF" H 2792 7105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2700 7150 50  0001 C CNN
F 3 "~" H 2700 7150 50  0001 C CNN
	1    2700 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 6650 4100 6650
Wire Wire Line
	4100 5550 4700 5550
Wire Wire Line
	4700 6150 4100 6150
Connection ~ 4950 6650
Wire Wire Line
	4700 6050 4100 6050
Text Label 4700 5950 2    50   ~ 0
A9
Text Label 4700 6050 2    50   ~ 0
A11
Wire Wire Line
	4700 5950 4100 5950
Text Label 4700 6150 2    50   ~ 0
~WR
Wire Wire Line
	3600 5850 3000 5850
Text Label 3000 5950 0    50   ~ 0
A8
Text Label 3000 6050 0    50   ~ 0
A10
Wire Wire Line
	3600 5950 3000 5950
Text Label 4700 5250 2    50   ~ 0
~RESET
Wire Wire Line
	3600 6050 3000 6050
Text Label 4700 5350 2    50   ~ 0
RAM_~CE
Text Label 4700 7150 2    50   ~ 0
IDE_~CE~
Wire Wire Line
	4100 5250 4700 5250
Wire Wire Line
	4100 6550 4700 6550
Wire Wire Line
	4100 7150 4700 7150
Text Label 4700 6550 2    50   ~ 0
ROM_~CE
NoConn ~ 3600 5350
NoConn ~ 3600 5250
$Comp
L Connector_Generic:Conn_02x20_Odd_Even J4
U 1 1 5D754F95
P 3800 6150
F 0 "J4" H 3850 7267 50  0000 C CNN
F 1 "DE10-Lite GPIO" H 3850 7176 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x20_P2.54mm_Vertical" H 3800 6150 50  0001 C CNN
F 3 "~" H 3800 6150 50  0001 C CNN
	1    3800 6150
	1    0    0    -1  
$EndComp
Text Label 3000 5750 0    50   ~ 0
5V
$Comp
L power:VCC #PWR019
U 1 1 5D95CB6D
P 2700 6650
F 0 "#PWR019" H 2700 6500 50  0001 C CNN
F 1 "VCC" H 2717 6823 50  0000 C CNN
F 2 "" H 2700 6650 50  0001 C CNN
F 3 "" H 2700 6650 50  0001 C CNN
	1    2700 6650
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5D95CB67
P 2650 5750
F 0 "#FLG01" H 2650 5825 50  0001 C CNN
F 1 "PWR_FLAG" H 2650 5923 50  0000 C CNN
F 2 "" H 2650 5750 50  0001 C CNN
F 3 "~" H 2650 5750 50  0001 C CNN
	1    2650 5750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3600 5750 2650 5750
Text Label 4700 6650 2    50   ~ 0
GND
Text Label 3000 6650 0    50   ~ 0
3V3
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5D964468
P 2700 6650
F 0 "#FLG02" H 2700 6725 50  0001 C CNN
F 1 "PWR_FLAG" H 2700 6823 50  0000 C CNN
F 2 "" H 2700 6650 50  0001 C CNN
F 3 "~" H 2700 6650 50  0001 C CNN
	1    2700 6650
	0    -1   -1   0   
$EndComp
$Comp
L power:PWR_FLAG #FLG03
U 1 1 5D96378E
P 4950 6650
F 0 "#FLG03" H 4950 6725 50  0001 C CNN
F 1 "PWR_FLAG" H 4950 6823 50  0000 C CNN
F 2 "" H 4950 6650 50  0001 C CNN
F 3 "~" H 4950 6650 50  0001 C CNN
	1    4950 6650
	1    0    0    -1  
$EndComp
Text Label 4700 5850 2    50   ~ 0
A7
Text Label 3000 5850 0    50   ~ 0
A6
Text Label 4700 5650 2    50   ~ 0
A5
Text Label 3000 5650 0    50   ~ 0
A4
Text Label 4700 5550 2    50   ~ 0
A3
Text Label 3000 5550 0    50   ~ 0
A2
Text Label 4700 5450 2    50   ~ 0
A1
Text Label 3000 5450 0    50   ~ 0
A0
$Comp
L power:GND #PWR020
U 1 1 5D763690
P 5100 6650
F 0 "#PWR020" H 5100 6400 50  0001 C CNN
F 1 "GND" H 5105 6477 50  0000 C CNN
F 2 "" H 5100 6650 50  0001 C CNN
F 3 "" H 5100 6650 50  0001 C CNN
	1    5100 6650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR018
U 1 1 5D762CD7
P 5100 5750
F 0 "#PWR018" H 5100 5500 50  0001 C CNN
F 1 "GND" H 5105 5577 50  0000 C CNN
F 2 "" H 5100 5750 50  0001 C CNN
F 3 "" H 5100 5750 50  0001 C CNN
	1    5100 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 6650 4950 6650
Wire Wire Line
	3600 6650 2700 6650
Wire Wire Line
	5100 5750 4100 5750
Wire Wire Line
	4700 5650 4100 5650
Wire Wire Line
	4700 5450 4100 5450
Wire Wire Line
	3600 5650 3000 5650
Wire Wire Line
	3600 5550 3000 5550
Wire Wire Line
	3600 5450 3000 5450
Wire Wire Line
	4700 5350 4100 5350
Text Label 950  7100 0    50   ~ 0
~CTS
Text Label 950  7000 0    50   ~ 0
TX
Text Label 950  6900 0    50   ~ 0
RX
Text Label 950  6800 0    50   ~ 0
~RTS
Connection ~ 8050 5450
Connection ~ 8050 5850
Text Label 7050 5500 0    50   ~ 0
~RTS
Text Label 7050 5800 0    50   ~ 0
~CTS
Wire Wire Line
	8050 5450 7800 5450
Wire Wire Line
	7250 5800 7000 5800
Wire Wire Line
	7800 5850 8050 5850
Wire Wire Line
	7800 5650 8200 5650
Wire Wire Line
	8200 5750 7800 5750
Wire Wire Line
	7000 5500 7250 5500
Wire Wire Line
	7000 5600 7250 5600
Wire Wire Line
	7000 5700 7250 5700
Text Label 7075 5600 0    50   ~ 0
RX
Text Label 7075 5700 0    50   ~ 0
TX
Text Label 1150 5400 2    50   ~ 0
~MREQ
Text Label 1150 5800 2    50   ~ 0
~HALT
Text Label 1150 5900 2    50   ~ 0
~WAIT
NoConn ~ 1550 6000
$Comp
L Device:R_Pack04 RN?
U 1 1 5F154B93
P 7450 5700
AR Path="/5D70CA34/5F154B93" Ref="RN?"  Part="1" 
AR Path="/5F154B93" Ref="RN1"  Part="1" 
F 0 "RN1" V 7150 5700 50  0000 C CNN
F 1 "2K2" V 7050 5700 50  0000 C CNN
F 2 "Resistor_SMD:R_Cat16-4" V 7925 5700 50  0001 C CNN
F 3 "~" H 7450 5700 50  0001 C CNN
	1    7450 5700
	0    1    1    0   
$EndComp
Wire Wire Line
	7650 5500 7800 5500
Wire Wire Line
	7800 5500 7800 5450
Wire Wire Line
	7650 5600 7800 5600
Wire Wire Line
	7800 5600 7800 5650
Wire Wire Line
	7650 5700 7800 5700
Wire Wire Line
	7800 5700 7800 5750
Wire Wire Line
	7650 5800 7800 5800
Wire Wire Line
	7800 5800 7800 5850
$Sheet
S 7300 1500 1500 1550
U 5F2A9FE8
F0 "Ram Rom and CPU" 50
F1 "ram_rom_sio_cpu.sch" 50
F2 "A[0..18]" O R 8800 1650 50 
F3 "D[0..7]" T R 8800 1750 50 
F4 "~M1" O R 8800 1950 50 
F5 "~MREQ" O R 8800 2350 50 
F6 "~IORQ" O R 8800 2450 50 
F7 "CLK" I L 7300 1600 50 
F8 "~RD" O R 8800 2150 50 
F9 "~WR" O R 8800 2250 50 
F10 "~WAIT" I L 7300 2550 50 
F11 "~HALT" O R 8800 2050 50 
F12 "RAM_~CE~" I L 7300 2150 50 
F13 "ROM_~CE~" I L 7300 2050 50 
F14 "SIO_~CE~" I L 7300 2250 50 
F15 "TXA" O R 8800 2950 50 
F16 "RXA" I L 7300 2950 50 
F17 "CLK_U" I L 7300 1700 50 
F18 "~RTSA" O R 8800 2850 50 
F19 "~CTSA" I L 7300 2850 50 
F20 "~RESET" I L 7300 1800 50 
$EndSheet
Wire Wire Line
	6700 2050 7300 2050
Text Label 7000 2050 2    50   ~ 0
ROM_~CE
Text Label 7000 2150 2    50   ~ 0
RAM_~CE
Wire Wire Line
	6700 2150 7300 2150
Wire Wire Line
	6700 2250 7300 2250
Wire Wire Line
	8800 2950 9400 2950
Wire Wire Line
	6700 2850 7300 2850
Wire Wire Line
	8800 2850 9400 2850
Wire Wire Line
	6700 2950 7300 2950
Text Label 6700 2850 0    50   ~ 0
~CTS
Text Label 9200 2950 0    50   ~ 0
TX
Text Label 6700 2950 0    50   ~ 0
RX
Text Label 9200 2850 0    50   ~ 0
~RTS
Text Label 9300 1950 2    50   ~ 0
~M1
Wire Wire Line
	9400 1950 8800 1950
Wire Bus Line
	8800 1650 9400 1650
Text Label 9300 1650 2    50   ~ 0
A[0..18]
Wire Bus Line
	8800 1750 9400 1750
Text Label 9300 1750 2    50   ~ 0
D[0..7]
Wire Wire Line
	9400 2050 8800 2050
Text Label 9300 2050 2    50   ~ 0
~HALT
Wire Wire Line
	7300 2550 6700 2550
Text Label 6900 2550 2    50   ~ 0
~WAIT
Text Label 7000 2250 2    50   ~ 0
SIO_~CE
Wire Wire Line
	950  6200 1550 6200
Text Label 1250 6200 2    50   ~ 0
SIO_~CE
Wire Wire Line
	9400 2250 8800 2250
Text Label 9300 2250 2    50   ~ 0
~WR
Text Label 9200 2150 0    50   ~ 0
~RD
Wire Wire Line
	9400 2150 8800 2150
Wire Wire Line
	6700 1600 7300 1600
Text Label 6700 1600 0    50   ~ 0
CLK
Text Label 6950 1800 2    50   ~ 0
~RESET
Wire Wire Line
	6700 1800 7300 1800
Text Label 1200 6400 2    50   ~ 0
CLK_U
Wire Wire Line
	950  6400 1550 6400
Text Label 6950 1700 2    50   ~ 0
CLK_U
Wire Wire Line
	6700 1700 7300 1700
Wire Wire Line
	9400 2350 8800 2350
Text Label 9300 2350 2    50   ~ 0
~MREQ
Text Label 9300 2450 2    50   ~ 0
~IORQ
Wire Wire Line
	9400 2450 8800 2450
Wire Wire Line
	5400 1200 5950 1200
Wire Wire Line
	5400 1300 5950 1300
Wire Wire Line
	5400 1400 5950 1400
Wire Wire Line
	5400 1500 5950 1500
Wire Wire Line
	5400 1600 5950 1600
Wire Wire Line
	5400 1700 5950 1700
Wire Wire Line
	5400 1800 5950 1800
Wire Wire Line
	5400 1900 5950 1900
Wire Wire Line
	5400 2000 5950 2000
Wire Wire Line
	5400 2100 5950 2100
Wire Wire Line
	5400 2200 5950 2200
Wire Wire Line
	5400 2300 5950 2300
Wire Wire Line
	5400 2400 5950 2400
Wire Wire Line
	5400 2500 5950 2500
Wire Wire Line
	5400 2600 5950 2600
Wire Wire Line
	5400 2700 5950 2700
Wire Wire Line
	5400 2900 5950 2900
Wire Wire Line
	5400 3000 5950 3000
Wire Wire Line
	5400 3100 5950 3100
Wire Wire Line
	5400 3200 5950 3200
Wire Wire Line
	5400 3300 5950 3300
Wire Wire Line
	5400 3400 5950 3400
Wire Wire Line
	5400 3500 5950 3500
Wire Wire Line
	5400 3600 5950 3600
Text Label 5700 1200 2    50   ~ 0
A0
Text Label 5700 1300 2    50   ~ 0
A1
Text Label 5700 1400 2    50   ~ 0
A2
Text Label 5700 1500 2    50   ~ 0
A3
Text Label 5700 1600 2    50   ~ 0
A4
Text Label 5700 1700 2    50   ~ 0
A5
Text Label 5700 1800 2    50   ~ 0
A6
Text Label 5700 1900 2    50   ~ 0
A7
Text Label 5700 2000 2    50   ~ 0
A8
Text Label 5700 2100 2    50   ~ 0
A9
Text Label 5700 2200 2    50   ~ 0
A10
Text Label 5700 2300 2    50   ~ 0
A11
Text Label 5700 2400 2    50   ~ 0
A12
Text Label 5700 2500 2    50   ~ 0
A13
Text Label 5700 2600 2    50   ~ 0
A14
Text Label 5700 2700 2    50   ~ 0
A15
Text Label 5700 2900 2    50   ~ 0
D0
Text Label 5700 3000 2    50   ~ 0
D1
Text Label 5700 3100 2    50   ~ 0
D2
Text Label 5700 3200 2    50   ~ 0
D3
Text Label 5700 3300 2    50   ~ 0
D4
Text Label 5700 3400 2    50   ~ 0
D5
Text Label 5700 3500 2    50   ~ 0
D6
Text Label 5700 3600 2    50   ~ 0
D7
Entry Wire Line
	5950 1200 6050 1300
Entry Wire Line
	5950 1300 6050 1400
Entry Wire Line
	5950 1400 6050 1500
Entry Wire Line
	5950 1500 6050 1600
Entry Wire Line
	5950 1600 6050 1700
Entry Wire Line
	5950 1700 6050 1800
Entry Wire Line
	5950 1800 6050 1900
Entry Wire Line
	5950 1900 6050 2000
Entry Wire Line
	5950 2000 6050 2100
Entry Wire Line
	5950 2100 6050 2200
Entry Wire Line
	5950 2200 6050 2300
Entry Wire Line
	5950 2300 6050 2400
Entry Wire Line
	5950 2400 6050 2500
Entry Wire Line
	5950 2500 6050 2600
Entry Wire Line
	5950 2600 6050 2700
Entry Wire Line
	5950 2700 6050 2800
Entry Wire Line
	5950 2900 6050 3000
Entry Wire Line
	5950 3000 6050 3100
Entry Wire Line
	5950 3100 6050 3200
Entry Wire Line
	5950 3200 6050 3300
Entry Wire Line
	5950 3300 6050 3400
Entry Wire Line
	5950 3400 6050 3500
Entry Wire Line
	5950 3500 6050 3600
Entry Wire Line
	5950 3600 6050 3700
Wire Bus Line
	6050 2950 6050 3750
Wire Bus Line
	6050 1200 6050 2800
$EndSCHEMATC
