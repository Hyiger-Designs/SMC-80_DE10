EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
Title "SMC-80 Lite - Terasic DE10 Z80 Adapter Board"
Date "2020-05-02"
Rev "1.0"
Comp "Hyiger Designs"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:VCC #PWR02
U 1 1 5E6DA593
P 2850 5450
F 0 "#PWR02" H 2850 5300 50  0001 C CNN
F 1 "VCC" H 2867 5623 50  0000 C CNN
F 2 "" H 2850 5450 50  0001 C CNN
F 3 "" H 2850 5450 50  0001 C CNN
	1    2850 5450
	-1   0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 5E6DA599
P 3000 5600
F 0 "D1" H 2993 5345 50  0000 C CNN
F 1 "GRN" H 2993 5436 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3000 5600 50  0001 C CNN
F 3 "~" H 3000 5600 50  0001 C CNN
	1    3000 5600
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5E6DA59F
P 3350 5700
AR Path="/5D0F9837/5E6DA59F" Ref="R?"  Part="1" 
AR Path="/5CFABACD/5D0BF766/5E6DA59F" Ref="R?"  Part="1" 
AR Path="/5D1AF052/5E6DA59F" Ref="R?"  Part="1" 
AR Path="/5E6DA59F" Ref="R1"  Part="1" 
F 0 "R1" H 3215 5735 50  0000 L CNN
F 1 "1K" V 3350 5650 32  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3350 5700 50  0001 C CNN
F 3 "~" H 3350 5700 50  0001 C CNN
	1    3350 5700
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5E75C5FC
P 3350 5900
F 0 "#PWR06" H 3350 5650 50  0001 C CNN
F 1 "GND" H 3355 5727 50  0000 C CNN
F 2 "" H 3350 5900 50  0001 C CNN
F 3 "" H 3350 5900 50  0001 C CNN
	1    3350 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 5450 2850 5600
Wire Wire Line
	3150 5600 3350 5600
Wire Wire Line
	3350 5800 3350 5900
Text Label 1450 3550 2    50   ~ 0
~M1
Text Label 1450 3350 2    50   ~ 0
~IORQ
Text Notes 1550 3550 0    50   ~ 0
AB9
Text Notes 1550 2750 0    50   ~ 0
AA19
Text Notes 1550 2650 0    50   ~ 0
Y19
Text Notes 1550 2550 0    50   ~ 0
AB20
$Comp
L Connector_Generic:Conn_01x10 J1
U 1 1 5DB380CF
P 2050 2550
F 0 "J1" H 2130 2542 50  0000 L CNN
F 1 "Arduino1" H 2130 2451 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x10_P2.54mm_Vertical" H 2050 2550 50  0001 C CNN
F 3 "~" H 2050 2550 50  0001 C CNN
	1    2050 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 3050 1250 3050
Wire Wire Line
	1850 3550 1250 3550
Wire Wire Line
	1850 3250 1250 3250
Wire Wire Line
	1850 3350 1250 3350
Wire Wire Line
	1850 3450 1250 3450
Wire Wire Line
	1100 2450 1850 2450
$Comp
L power:GND #PWR01
U 1 1 5DBC0D0A
P 1100 2450
F 0 "#PWR01" H 1100 2200 50  0001 C CNN
F 1 "GND" H 1105 2277 50  0000 C CNN
F 2 "" H 1100 2450 50  0001 C CNN
F 3 "" H 1100 2450 50  0001 C CNN
	1    1100 2450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3300 4000 3900 4000
Text Label 4850 3700 0    50   ~ 0
CLK
Text Notes 3650 4000 0    50   ~ 0
AB2
Wire Wire Line
	3300 3300 3900 3300
Wire Wire Line
	5000 3400 4400 3400
Wire Wire Line
	5000 3600 4400 3600
Wire Wire Line
	5000 3800 4400 3800
Text Label 5000 3400 2    50   ~ 0
D2
Text Label 5000 3600 2    50   ~ 0
D4
Text Label 5000 3800 2    50   ~ 0
D6
Text Label 3300 3000 0    50   ~ 0
~RD
Wire Wire Line
	3900 3000 3300 3000
Text Label 4900 3300 0    50   ~ 0
D0
Text Notes 3650 3000 0    50   ~ 0
AB12
Text Notes 3650 3100 0    50   ~ 0
AB11
Text Notes 3650 3200 0    50   ~ 0
AB10
Text Notes 3650 3300 0    50   ~ 0
AA9
Text Notes 3650 3400 0    50   ~ 0
AA8
Text Label 3300 3600 0    50   ~ 0
D3
Text Label 3300 3400 0    50   ~ 0
D1
Wire Wire Line
	3900 3600 3300 3600
Wire Wire Line
	3900 3400 3300 3400
Text Label 3300 3800 0    50   ~ 0
D7
Text Label 3300 3700 0    50   ~ 0
D5
Wire Wire Line
	3900 3700 3300 3700
Wire Wire Line
	4400 3700 5000 3700
Text Notes 4500 3100 0    50   ~ 0
W11
Text Notes 4500 3200 0    50   ~ 0
AA10
Text Notes 4500 3300 0    50   ~ 0
Y8
Text Notes 4600 3400 2    50   ~ 0
Y7
Wire Wire Line
	4400 3100 5000 3100
Wire Wire Line
	4400 3200 5000 3200
Text Label 5000 3200 2    50   ~ 0
A14
Text Label 1250 2750 0    50   ~ 0
MA16
Text Label 1250 2950 0    50   ~ 0
MA18
Text Label 5000 3100 2    50   ~ 0
A12
Wire Wire Line
	1850 2950 1250 2950
Wire Wire Line
	1250 2750 1850 2750
Text Notes 3650 3600 0    50   ~ 0
AA7
Text Notes 3650 3700 0    50   ~ 0
AA6
Wire Wire Line
	3300 3100 3900 3100
Wire Wire Line
	3300 3200 3900 3200
Wire Wire Line
	1850 2850 1250 2850
Text Label 3300 3100 0    50   ~ 0
A13
Text Label 3300 3200 0    50   ~ 0
A15
Text Label 1450 2850 2    50   ~ 0
MA17
Text Notes 4500 3600 0    50   ~ 0
Y6
Text Notes 4500 3700 0    50   ~ 0
Y5
Text Notes 4500 3800 0    50   ~ 0
Y4
Wire Wire Line
	3000 4200 3000 4100
$Comp
L power:GND #PWR05
U 1 1 5DA1CD65
P 3000 4200
F 0 "#PWR05" H 3000 3950 50  0001 C CNN
F 1 "GND" H 3005 4027 50  0000 C CNN
F 2 "" H 3000 4200 50  0001 C CNN
F 3 "" H 3000 4200 50  0001 C CNN
	1    3000 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 3900 3000 3500
Text Notes 3650 2900 0    50   ~ 0
W12
Text Notes 4500 4000 0    50   ~ 0
AA2
Text Notes 4500 3000 0    50   ~ 0
Y11
Text Notes 4500 2900 0    50   ~ 0
AB13
Text Notes 4500 2800 0    50   ~ 0
W13
Text Notes 4500 2700 0    50   ~ 0
AA15
Text Notes 4500 2300 0    50   ~ 0
W8
Text Notes 4500 2500 0    50   ~ 0
V5
Text Notes 4500 2400 0    50   ~ 0
W7
Text Notes 4500 2200 0    50   ~ 0
W9
Text Notes 4500 2100 0    50   ~ 0
W10
Text Notes 3650 2800 0    50   ~ 0
AA14
Text Notes 3650 2700 0    50   ~ 0
W5
Text Notes 3650 2500 0    50   ~ 0
W6
Text Notes 3650 2400 0    50   ~ 0
V7
Text Notes 3650 2300 0    50   ~ 0
V8
Connection ~ 2950 2600
$Comp
L power:+5V #PWR03
U 1 1 5DA0C153
P 2950 2600
F 0 "#PWR03" H 2950 2450 50  0001 C CNN
F 1 "+5V" H 2965 2773 50  0000 C CNN
F 2 "" H 2950 2600 50  0001 C CNN
F 3 "" H 2950 2600 50  0001 C CNN
	1    2950 2600
	1    0    0    -1  
$EndComp
Connection ~ 3000 3500
Wire Wire Line
	3300 2700 3900 2700
$Comp
L Device:C_Small C1
U 1 1 5DC1E4EE
P 3000 4000
F 0 "C1" H 3092 4046 50  0000 L CNN
F 1 "100nF" H 3092 3955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3000 4000 50  0001 C CNN
F 3 "~" H 3000 4000 50  0001 C CNN
	1    3000 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 3500 4400 3500
Wire Wire Line
	3900 2400 3300 2400
Wire Wire Line
	5000 3000 4400 3000
Connection ~ 5250 3500
Wire Wire Line
	3300 2900 3900 2900
Text Label 3300 2800 0    50   ~ 0
A9
Text Label 3300 2900 0    50   ~ 0
A11
Wire Wire Line
	3300 2800 3900 2800
Text Label 5000 3000 2    50   ~ 0
~WR
Wire Wire Line
	4400 2700 5000 2700
Text Label 5000 2800 2    50   ~ 0
A8
Text Label 5000 2900 2    50   ~ 0
A10
Wire Wire Line
	4400 2800 5000 2800
Text Label 3550 3300 2    50   ~ 0
~RESET
Wire Wire Line
	4400 2900 5000 2900
Text Label 5000 2200 2    50   ~ 0
RAM_~CE
Wire Wire Line
	4400 3300 5000 3300
Wire Wire Line
	4400 2100 5000 2100
Text Label 5000 2100 2    50   ~ 0
ROM_~CE
NoConn ~ 3900 2200
NoConn ~ 3900 2100
$Comp
L Connector_Generic:Conn_02x20_Odd_Even J3
U 1 1 5D754F95
P 4100 3000
F 0 "J3" H 4150 4117 50  0000 C CNN
F 1 "DE10-Lite GPIO" H 4150 4026 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x20_P2.54mm_Vertical" H 4100 3000 50  0001 C CNN
F 3 "~" H 4100 3000 50  0001 C CNN
	1    4100 3000
	1    0    0    -1  
$EndComp
Text Label 3300 2600 0    50   ~ 0
5V
$Comp
L power:VCC #PWR04
U 1 1 5D95CB6D
P 3000 3500
F 0 "#PWR04" H 3000 3350 50  0001 C CNN
F 1 "VCC" H 3017 3673 50  0000 C CNN
F 2 "" H 3000 3500 50  0001 C CNN
F 3 "" H 3000 3500 50  0001 C CNN
	1    3000 3500
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5D95CB67
P 2950 2600
F 0 "#FLG01" H 2950 2675 50  0001 C CNN
F 1 "PWR_FLAG" H 2950 2773 50  0000 C CNN
F 2 "" H 2950 2600 50  0001 C CNN
F 3 "~" H 2950 2600 50  0001 C CNN
	1    2950 2600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3900 2600 2950 2600
Text Label 5000 3500 2    50   ~ 0
GND
Text Label 3300 3500 0    50   ~ 0
3V3
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5D964468
P 3000 3500
F 0 "#FLG02" H 3000 3575 50  0001 C CNN
F 1 "PWR_FLAG" H 3000 3673 50  0000 C CNN
F 2 "" H 3000 3500 50  0001 C CNN
F 3 "~" H 3000 3500 50  0001 C CNN
	1    3000 3500
	0    -1   -1   0   
$EndComp
$Comp
L power:PWR_FLAG #FLG03
U 1 1 5D96378E
P 5250 3500
F 0 "#FLG03" H 5250 3575 50  0001 C CNN
F 1 "PWR_FLAG" H 5250 3673 50  0000 C CNN
F 2 "" H 5250 3500 50  0001 C CNN
F 3 "~" H 5250 3500 50  0001 C CNN
	1    5250 3500
	1    0    0    -1  
$EndComp
Text Label 3300 2700 0    50   ~ 0
A7
Text Label 5000 2700 2    50   ~ 0
A6
Text Label 3300 2500 0    50   ~ 0
A5
Text Label 5000 2500 2    50   ~ 0
A4
Text Label 3300 2400 0    50   ~ 0
A3
Text Label 5000 2400 2    50   ~ 0
A2
Text Label 3300 2300 0    50   ~ 0
A1
Text Label 5000 2300 2    50   ~ 0
A0
$Comp
L power:GND #PWR08
U 1 1 5D763690
P 5400 3500
F 0 "#PWR08" H 5400 3250 50  0001 C CNN
F 1 "GND" H 5405 3327 50  0000 C CNN
F 2 "" H 5400 3500 50  0001 C CNN
F 3 "" H 5400 3500 50  0001 C CNN
	1    5400 3500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5D762CD7
P 5400 2600
F 0 "#PWR07" H 5400 2350 50  0001 C CNN
F 1 "GND" H 5405 2427 50  0000 C CNN
F 2 "" H 5400 2600 50  0001 C CNN
F 3 "" H 5400 2600 50  0001 C CNN
	1    5400 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 3500 5250 3500
Wire Wire Line
	3900 3500 3000 3500
Wire Wire Line
	5400 2600 4400 2600
Wire Wire Line
	3300 2500 3900 2500
Wire Wire Line
	3300 2300 3900 2300
Wire Wire Line
	4400 2500 5000 2500
Wire Wire Line
	4400 2400 5000 2400
Wire Wire Line
	4400 2300 5000 2300
Wire Wire Line
	5000 2200 4400 2200
Text Label 1450 3250 2    50   ~ 0
~MREQ
Text Label 1450 3050 2    50   ~ 0
~HALT
Text Label 1450 3450 2    50   ~ 0
~WAIT
$Sheet
S 7800 2500 1500 1550
U 5F2A9FE8
F0 "Ram Rom and CPU" 50
F1 "ram_rom_sio_cpu.sch" 50
F2 "D[0..7]" T R 9300 2850 50 
F3 "~M1" O R 9300 3050 50 
F4 "~MREQ" O R 9300 3450 50 
F5 "~IORQ" O R 9300 3550 50 
F6 "CLK" I L 7800 2800 50 
F7 "~RD" O R 9300 3250 50 
F8 "~WR" O R 9300 3350 50 
F9 "~WAIT" I L 7800 3550 50 
F10 "~HALT" O R 9300 3150 50 
F11 "RAM_~CE~" I L 7800 3250 50 
F12 "ROM_~CE~" I L 7800 3150 50 
F13 "SIO_~CE~" I L 7800 3350 50 
F14 "CLK_U" I L 7800 2900 50 
F15 "~RESET" I L 7800 3000 50 
F16 "A[0..15]" O R 9300 2650 50 
F17 "MA[14..18]" I L 7800 2650 50 
$EndSheet
Wire Wire Line
	7200 3150 7800 3150
Text Label 7500 3150 2    50   ~ 0
ROM_~CE
Text Label 7500 3250 2    50   ~ 0
RAM_~CE
Wire Wire Line
	7200 3250 7800 3250
Wire Wire Line
	7200 3350 7800 3350
Text Label 9800 3050 2    50   ~ 0
~M1
Wire Wire Line
	9900 3050 9300 3050
Wire Bus Line
	9300 2650 9900 2650
Text Label 9800 2650 2    50   ~ 0
A[0..15]
Wire Bus Line
	9300 2850 9900 2850
Text Label 9800 2850 2    50   ~ 0
D[0..7]
Wire Wire Line
	9900 3150 9300 3150
Text Label 9800 3150 2    50   ~ 0
~HALT
Wire Wire Line
	7800 3550 7200 3550
Text Label 7400 3550 2    50   ~ 0
~WAIT
Text Label 7500 3350 2    50   ~ 0
SIO_~CE
Wire Wire Line
	4400 4000 5000 4000
Text Label 4950 4000 2    50   ~ 0
SIO_~CE
Wire Wire Line
	9900 3350 9300 3350
Text Label 9800 3350 2    50   ~ 0
~WR
Text Label 9700 3250 0    50   ~ 0
~RD
Wire Wire Line
	9900 3250 9300 3250
Wire Wire Line
	7200 2800 7800 2800
Text Label 7200 2800 0    50   ~ 0
CLK
Text Label 7450 3000 2    50   ~ 0
~RESET
Wire Wire Line
	7200 3000 7800 3000
Text Label 3550 4000 2    50   ~ 0
CLK_U
Wire Wire Line
	3900 3800 3300 3800
Text Label 7450 2900 2    50   ~ 0
CLK_U
Wire Wire Line
	7200 2900 7800 2900
Wire Wire Line
	9900 3450 9300 3450
Text Label 9800 3450 2    50   ~ 0
~MREQ
Text Label 9800 3550 2    50   ~ 0
~IORQ
Wire Wire Line
	9900 3550 9300 3550
Wire Wire Line
	5900 2200 6450 2200
Wire Wire Line
	5900 2300 6450 2300
Wire Wire Line
	5900 2400 6450 2400
Wire Wire Line
	5900 2500 6450 2500
Wire Wire Line
	5900 2600 6450 2600
Wire Wire Line
	5900 2700 6450 2700
Wire Wire Line
	5900 2800 6450 2800
Wire Wire Line
	5900 2900 6450 2900
Wire Wire Line
	5900 3000 6450 3000
Wire Wire Line
	5900 3100 6450 3100
Wire Wire Line
	5900 3200 6450 3200
Wire Wire Line
	5900 3300 6450 3300
Wire Wire Line
	5900 3400 6450 3400
Wire Wire Line
	5900 3500 6450 3500
Wire Wire Line
	5900 3600 6450 3600
Wire Wire Line
	5900 3700 6450 3700
Wire Wire Line
	5900 4750 6450 4750
Wire Wire Line
	5900 4850 6450 4850
Wire Wire Line
	5900 4950 6450 4950
Wire Wire Line
	5900 5050 6450 5050
Wire Wire Line
	5900 5150 6450 5150
Wire Wire Line
	5900 5250 6450 5250
Wire Wire Line
	5900 5350 6450 5350
Wire Wire Line
	5900 5450 6450 5450
Text Label 6200 2200 2    50   ~ 0
A0
Text Label 6200 2300 2    50   ~ 0
A1
Text Label 6200 2400 2    50   ~ 0
A2
Text Label 6200 2500 2    50   ~ 0
A3
Text Label 6200 2600 2    50   ~ 0
A4
Text Label 6200 2700 2    50   ~ 0
A5
Text Label 6200 2800 2    50   ~ 0
A6
Text Label 6200 2900 2    50   ~ 0
A7
Text Label 6200 3000 2    50   ~ 0
A8
Text Label 6200 3100 2    50   ~ 0
A9
Text Label 6200 3200 2    50   ~ 0
A10
Text Label 6200 3300 2    50   ~ 0
A11
Text Label 6200 3400 2    50   ~ 0
A12
Text Label 6200 3500 2    50   ~ 0
A13
Text Label 6200 3600 2    50   ~ 0
A14
Text Label 6200 3700 2    50   ~ 0
A15
Text Label 6200 4750 2    50   ~ 0
D0
Text Label 6200 4850 2    50   ~ 0
D1
Text Label 6200 4950 2    50   ~ 0
D2
Text Label 6200 5050 2    50   ~ 0
D3
Text Label 6200 5150 2    50   ~ 0
D4
Text Label 6200 5250 2    50   ~ 0
D5
Text Label 6200 5350 2    50   ~ 0
D6
Text Label 6200 5450 2    50   ~ 0
D7
Entry Wire Line
	6450 2200 6550 2300
Entry Wire Line
	6450 2300 6550 2400
Entry Wire Line
	6450 2400 6550 2500
Entry Wire Line
	6450 2500 6550 2600
Entry Wire Line
	6450 2600 6550 2700
Entry Wire Line
	6450 2700 6550 2800
Entry Wire Line
	6450 2800 6550 2900
Entry Wire Line
	6450 2900 6550 3000
Entry Wire Line
	6450 3000 6550 3100
Entry Wire Line
	6450 3100 6550 3200
Entry Wire Line
	6450 3200 6550 3300
Entry Wire Line
	6450 3300 6550 3400
Entry Wire Line
	6450 3400 6550 3500
Entry Wire Line
	6450 3500 6550 3600
Entry Wire Line
	6450 3600 6550 3700
Entry Wire Line
	6450 3700 6550 3800
Entry Wire Line
	6450 4750 6550 4850
Entry Wire Line
	6450 4850 6550 4950
Entry Wire Line
	6450 4950 6550 5050
Entry Wire Line
	6450 5050 6550 5150
Entry Wire Line
	6450 5150 6550 5250
Entry Wire Line
	6450 5250 6550 5350
Entry Wire Line
	6450 5350 6550 5450
Entry Wire Line
	6450 5450 6550 5550
NoConn ~ 5350 6400
NoConn ~ 1850 2250
NoConn ~ 1850 2150
$Comp
L Connector_Generic:Conn_01x08 J2
U 1 1 5DB3A357
P 2050 3550
F 0 "J2" H 2130 3542 50  0000 L CNN
F 1 "Arduino2" H 2130 3451 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 2050 3550 50  0001 C CNN
F 3 "~" H 2050 3550 50  0001 C CNN
	1    2050 3550
	1    0    0    -1  
$EndComp
NoConn ~ 1850 3650
NoConn ~ 1850 3750
NoConn ~ 1850 3850
NoConn ~ 1850 3950
NoConn ~ 3900 3900
Text Label 1250 2550 0    50   ~ 0
MA14
Wire Wire Line
	1250 2550 1850 2550
Wire Wire Line
	1850 2650 1250 2650
Text Label 1450 2650 2    50   ~ 0
MA15
Wire Bus Line
	7200 2650 7800 2650
Text Label 7700 2650 2    50   ~ 0
MA[14..18]
Wire Wire Line
	5900 4000 6450 4000
Wire Wire Line
	5900 4100 6450 4100
Wire Wire Line
	5900 4200 6450 4200
Wire Wire Line
	5900 4300 6450 4300
Wire Wire Line
	5900 4400 6450 4400
Text Label 6200 4000 2    50   ~ 0
MA14
Text Label 6200 4100 2    50   ~ 0
MA15
Text Label 6200 4200 2    50   ~ 0
MA16
Text Label 6200 4300 2    50   ~ 0
MA17
Text Label 6200 4400 2    50   ~ 0
MA18
Entry Wire Line
	6450 4000 6550 4100
Entry Wire Line
	6450 4100 6550 4200
Entry Wire Line
	6450 4200 6550 4300
Entry Wire Line
	6450 4300 6550 4400
Entry Wire Line
	6450 4400 6550 4500
Text Notes 1550 3250 0    50   ~ 0
AA12
Text Notes 1550 3350 0    50   ~ 0
AA11
Text Notes 1550 3450 0    50   ~ 0
Y10
NoConn ~ 1850 2350
NoConn ~ -2850 -1550
Text Notes 1550 2850 0    50   ~ 0
AB19
Text Notes 1550 2950 0    50   ~ 0
AA17
Text Notes 1550 3050 0    50   ~ 0
AB17
NoConn ~ 4400 3900
Text Notes 3650 3800 0    50   ~ 0
AA5
Wire Bus Line
	6550 4100 6550 4500
Wire Bus Line
	6550 4800 6550 5600
Wire Bus Line
	6550 2200 6550 3800
$EndSCHEMATC
