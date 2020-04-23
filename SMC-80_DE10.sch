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
L power:VCC #PWR07
U 1 1 5E6DA593
P 2350 4450
F 0 "#PWR07" H 2350 4300 50  0001 C CNN
F 1 "VCC" H 2367 4623 50  0000 C CNN
F 2 "" H 2350 4450 50  0001 C CNN
F 3 "" H 2350 4450 50  0001 C CNN
	1    2350 4450
	-1   0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 5E6DA599
P 2500 4600
F 0 "D1" H 2493 4345 50  0000 C CNN
F 1 "GRN" H 2493 4436 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2500 4600 50  0001 C CNN
F 3 "~" H 2500 4600 50  0001 C CNN
	1    2500 4600
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5E6DA59F
P 2850 4700
AR Path="/5D0F9837/5E6DA59F" Ref="R?"  Part="1" 
AR Path="/5CFABACD/5D0BF766/5E6DA59F" Ref="R?"  Part="1" 
AR Path="/5D1AF052/5E6DA59F" Ref="R?"  Part="1" 
AR Path="/5E6DA59F" Ref="R1"  Part="1" 
F 0 "R1" H 2715 4735 50  0000 L CNN
F 1 "1K" V 2850 4650 32  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2850 4700 50  0001 C CNN
F 3 "~" H 2850 4700 50  0001 C CNN
	1    2850 4700
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5E75C5FC
P 2850 4900
F 0 "#PWR08" H 2850 4650 50  0001 C CNN
F 1 "GND" H 2855 4727 50  0000 C CNN
F 2 "" H 2850 4900 50  0001 C CNN
F 3 "" H 2850 4900 50  0001 C CNN
	1    2850 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 4450 2350 4600
Wire Wire Line
	2650 4600 2850 4600
Wire Wire Line
	2850 4800 2850 4900
Text Label 850  2450 2    50   ~ 0
~M1
Text Label 950  2250 2    50   ~ 0
~IORQ
Text Notes 1050 2850 0    50   ~ 0
AA20
Text Notes 1050 2450 0    50   ~ 0
AB21
Text Notes 1050 2750 0    50   ~ 0
AA19
Text Notes 1050 2650 0    50   ~ 0
Y19
Text Notes 1050 2550 0    50   ~ 0
AB20
$Comp
L Connector_Generic:Conn_01x10 J1
U 1 1 5DB380CF
P 1550 1550
F 0 "J1" H 1630 1542 50  0000 L CNN
F 1 "Arduino1" H 1630 1451 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x10_P2.54mm_Vertical" H 1550 1550 50  0001 C CNN
F 3 "~" H 1550 1550 50  0001 C CNN
	1    1550 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 1950 750  1950
Wire Wire Line
	1350 2450 750  2450
Wire Wire Line
	1350 2050 750  2050
Wire Wire Line
	1350 2250 750  2250
Wire Wire Line
	1350 2350 750  2350
NoConn ~ 1350 1350
Wire Wire Line
	600  1450 1350 1450
$Comp
L power:GND #PWR01
U 1 1 5DBC0D0A
P 600 1450
F 0 "#PWR01" H 600 1200 50  0001 C CNN
F 1 "GND" H 605 1277 50  0000 C CNN
F 2 "" H 600 1450 50  0001 C CNN
F 3 "" H 600 1450 50  0001 C CNN
	1    600  1450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2800 3000 3400 3000
Text Label 4300 2900 0    50   ~ 0
CLK
Text Notes 3150 3000 0    50   ~ 0
AB3
Wire Wire Line
	2800 2300 3400 2300
Wire Wire Line
	2800 2400 3400 2400
Wire Wire Line
	2800 2600 3400 2600
Wire Wire Line
	2800 2700 3400 2700
Text Label 2800 2400 0    50   ~ 0
D2
Text Label 2800 2600 0    50   ~ 0
D4
Text Label 2800 2700 0    50   ~ 0
D6
Text Label 2800 2000 0    50   ~ 0
~RD
Wire Wire Line
	3400 2000 2800 2000
Text Label 2800 2300 0    50   ~ 0
D0
Text Notes 3150 2000 0    50   ~ 0
AB12
Text Notes 3150 2100 0    50   ~ 0
AB11
Text Notes 3150 2200 0    50   ~ 0
AB10
Text Notes 3150 2300 0    50   ~ 0
AA9
Text Notes 3150 2400 0    50   ~ 0
AA8
Text Label 4500 2600 2    50   ~ 0
D3
Text Label 4500 2400 2    50   ~ 0
D1
Wire Wire Line
	3900 2600 4500 2600
Wire Wire Line
	3900 2400 4500 2400
Text Label 4500 2800 2    50   ~ 0
D7
Text Label 4500 2700 2    50   ~ 0
D5
Wire Wire Line
	3900 2800 4500 2800
Wire Wire Line
	3900 2700 4500 2700
Text Notes 4000 2100 0    50   ~ 0
W11
Text Notes 4000 2200 0    50   ~ 0
AA10
Text Notes 4000 2300 0    50   ~ 0
Y8
Text Notes 4000 2400 0    50   ~ 0
Y7
Wire Wire Line
	3400 2100 2800 2100
Wire Wire Line
	3400 2200 2800 2200
Text Label 2800 2200 0    50   ~ 0
A14
Text Label 750  1650 0    50   ~ 0
A16
Text Label 750  1850 0    50   ~ 0
A18
Text Label 2800 2100 0    50   ~ 0
A12
Wire Wire Line
	1350 1850 750  1850
Wire Wire Line
	750  1650 1350 1650
Text Notes 3150 2600 0    50   ~ 0
AA7
Text Notes 3150 2700 0    50   ~ 0
AA6
Text Notes 3150 2800 0    50   ~ 0
AA5
Text Notes 3150 2900 0    50   ~ 0
AB3
Wire Wire Line
	4500 2100 3900 2100
Wire Wire Line
	4500 2200 3900 2200
Wire Wire Line
	1350 1750 750  1750
Text Label 4500 2100 2    50   ~ 0
A13
Text Label 4500 2200 2    50   ~ 0
A15
Text Label 900  1750 2    50   ~ 0
A17
Text Notes 4000 2600 0    50   ~ 0
Y6
Text Notes 4000 2600 0    50   ~ 0
Y5
Text Notes 4000 2700 0    50   ~ 0
Y4
Wire Wire Line
	2500 3200 2500 3100
$Comp
L power:GND #PWR06
U 1 1 5DA1CD65
P 2500 3200
F 0 "#PWR06" H 2500 2950 50  0001 C CNN
F 1 "GND" H 2505 3027 50  0000 C CNN
F 2 "" H 2500 3200 50  0001 C CNN
F 3 "" H 2500 3200 50  0001 C CNN
	1    2500 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 2900 2500 2500
Text Notes 3150 1900 0    50   ~ 0
W12
Text Notes 4000 2900 0    50   ~ 0
AA2
Text Notes 4000 2800 0    50   ~ 0
Y3
Text Notes 4000 2000 0    50   ~ 0
Y11
Text Notes 4000 1900 0    50   ~ 0
AB13
Text Notes 4000 1800 0    50   ~ 0
W13
Text Notes 4000 1700 0    50   ~ 0
AA15
Text Notes 4000 1300 0    50   ~ 0
W8
Text Notes 4000 1500 0    50   ~ 0
V5
Text Notes 4000 1400 0    50   ~ 0
W7
Text Notes 4000 1200 0    50   ~ 0
W9
Text Notes 4000 1100 0    50   ~ 0
W10
Text Notes 3150 1800 0    50   ~ 0
AA14
Text Notes 3150 1700 0    50   ~ 0
W5
Text Notes 3150 1500 0    50   ~ 0
W6
Text Notes 3150 1400 0    50   ~ 0
V7
Text Notes 3150 1300 0    50   ~ 0
V8
Connection ~ 2450 1600
$Comp
L power:+5V #PWR02
U 1 1 5DA0C153
P 2450 1600
F 0 "#PWR02" H 2450 1450 50  0001 C CNN
F 1 "+5V" H 2465 1773 50  0000 C CNN
F 2 "" H 2450 1600 50  0001 C CNN
F 3 "" H 2450 1600 50  0001 C CNN
	1    2450 1600
	1    0    0    -1  
$EndComp
Connection ~ 2500 2500
Wire Wire Line
	4500 1700 3900 1700
$Comp
L Device:C_Small C1
U 1 1 5DC1E4EE
P 2500 3000
F 0 "C1" H 2592 3046 50  0000 L CNN
F 1 "100nF" H 2592 2955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2500 3000 50  0001 C CNN
F 3 "~" H 2500 3000 50  0001 C CNN
	1    2500 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 2500 3900 2500
Wire Wire Line
	3900 1400 4500 1400
Wire Wire Line
	4500 2000 3900 2000
Connection ~ 4750 2500
Wire Wire Line
	4500 1900 3900 1900
Text Label 4500 1800 2    50   ~ 0
A9
Text Label 4500 1900 2    50   ~ 0
A11
Wire Wire Line
	4500 1800 3900 1800
Text Label 4500 2000 2    50   ~ 0
~WR
Wire Wire Line
	3400 1700 2800 1700
Text Label 2800 1800 0    50   ~ 0
A8
Text Label 2800 1900 0    50   ~ 0
A10
Wire Wire Line
	3400 1800 2800 1800
Text Label 4500 2300 2    50   ~ 0
~RESET
Wire Wire Line
	3400 1900 2800 1900
Text Label 4500 1200 2    50   ~ 0
RAM_~CE
Wire Wire Line
	3900 2300 4500 2300
Wire Wire Line
	3900 1100 4500 1100
Text Label 4500 1100 2    50   ~ 0
ROM_~CE
NoConn ~ 3400 1200
NoConn ~ 3400 1100
$Comp
L Connector_Generic:Conn_02x20_Odd_Even J2
U 1 1 5D754F95
P 3600 2000
F 0 "J2" H 3650 3117 50  0000 C CNN
F 1 "DE10-Lite GPIO" H 3650 3026 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x20_P2.54mm_Vertical" H 3600 2000 50  0001 C CNN
F 3 "~" H 3600 2000 50  0001 C CNN
	1    3600 2000
	1    0    0    -1  
$EndComp
Text Label 2800 1600 0    50   ~ 0
5V
$Comp
L power:VCC #PWR04
U 1 1 5D95CB6D
P 2500 2500
F 0 "#PWR04" H 2500 2350 50  0001 C CNN
F 1 "VCC" H 2517 2673 50  0000 C CNN
F 2 "" H 2500 2500 50  0001 C CNN
F 3 "" H 2500 2500 50  0001 C CNN
	1    2500 2500
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5D95CB67
P 2450 1600
F 0 "#FLG01" H 2450 1675 50  0001 C CNN
F 1 "PWR_FLAG" H 2450 1773 50  0000 C CNN
F 2 "" H 2450 1600 50  0001 C CNN
F 3 "~" H 2450 1600 50  0001 C CNN
	1    2450 1600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3400 1600 2450 1600
Text Label 4500 2500 2    50   ~ 0
GND
Text Label 2800 2500 0    50   ~ 0
3V3
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5D964468
P 2500 2500
F 0 "#FLG02" H 2500 2575 50  0001 C CNN
F 1 "PWR_FLAG" H 2500 2673 50  0000 C CNN
F 2 "" H 2500 2500 50  0001 C CNN
F 3 "~" H 2500 2500 50  0001 C CNN
	1    2500 2500
	0    -1   -1   0   
$EndComp
$Comp
L power:PWR_FLAG #FLG03
U 1 1 5D96378E
P 4750 2500
F 0 "#FLG03" H 4750 2575 50  0001 C CNN
F 1 "PWR_FLAG" H 4750 2673 50  0000 C CNN
F 2 "" H 4750 2500 50  0001 C CNN
F 3 "~" H 4750 2500 50  0001 C CNN
	1    4750 2500
	1    0    0    -1  
$EndComp
Text Label 4500 1700 2    50   ~ 0
A7
Text Label 2800 1700 0    50   ~ 0
A6
Text Label 4500 1500 2    50   ~ 0
A5
Text Label 2800 1500 0    50   ~ 0
A4
Text Label 4500 1400 2    50   ~ 0
A3
Text Label 2800 1400 0    50   ~ 0
A2
Text Label 4500 1300 2    50   ~ 0
A1
Text Label 2800 1300 0    50   ~ 0
A0
$Comp
L power:GND #PWR05
U 1 1 5D763690
P 4900 2500
F 0 "#PWR05" H 4900 2250 50  0001 C CNN
F 1 "GND" H 4905 2327 50  0000 C CNN
F 2 "" H 4900 2500 50  0001 C CNN
F 3 "" H 4900 2500 50  0001 C CNN
	1    4900 2500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5D762CD7
P 4900 1600
F 0 "#PWR03" H 4900 1350 50  0001 C CNN
F 1 "GND" H 4905 1427 50  0000 C CNN
F 2 "" H 4900 1600 50  0001 C CNN
F 3 "" H 4900 1600 50  0001 C CNN
	1    4900 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 2500 4750 2500
Wire Wire Line
	3400 2500 2500 2500
Wire Wire Line
	4900 1600 3900 1600
Wire Wire Line
	4500 1500 3900 1500
Wire Wire Line
	4500 1300 3900 1300
Wire Wire Line
	3400 1500 2800 1500
Wire Wire Line
	3400 1400 2800 1400
Wire Wire Line
	3400 1300 2800 1300
Wire Wire Line
	4500 1200 3900 1200
Text Label 950  2050 2    50   ~ 0
~MREQ
Text Label 950  1950 2    50   ~ 0
~HALT
Text Label 950  2350 2    50   ~ 0
~WAIT
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
F15 "CLK_U" I L 7300 1700 50 
F16 "~RESET" I L 7300 1800 50 
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
	3900 3000 4500 3000
Text Label 4450 3000 2    50   ~ 0
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
Text Label 3050 3000 2    50   ~ 0
CLK_U
Wire Wire Line
	3900 2900 4500 2900
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
NoConn ~ 4850 5400
NoConn ~ 1350 1250
NoConn ~ 1350 1150
$Comp
L Connector_Generic:Conn_01x08 J3
U 1 1 5DB3A357
P 1550 2550
F 0 "J3" H 1630 2542 50  0000 L CNN
F 1 "Arduino2" H 1630 2451 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 1550 2550 50  0001 C CNN
F 3 "~" H 1550 2550 50  0001 C CNN
	1    1550 2550
	1    0    0    -1  
$EndComp
NoConn ~ 1350 1550
NoConn ~ 1350 2550
NoConn ~ 1350 2650
NoConn ~ 1350 2750
NoConn ~ 1350 2850
NoConn ~ 1350 2950
NoConn ~ 3400 2900
NoConn ~ 3400 2800
Wire Bus Line
	6050 2950 6050 3750
Wire Bus Line
	6050 1200 6050 2800
$EndSCHEMATC
