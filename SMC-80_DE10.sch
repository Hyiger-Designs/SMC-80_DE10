EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
Title "SMC-80 Lite - Terasic DE10 Z80 Adapter Board"
Date "2020-05-06"
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
	850  2450 1850 2450
$Comp
L power:GND #PWR01
U 1 1 5DBC0D0A
P 850 2450
F 0 "#PWR01" H 850 2200 50  0001 C CNN
F 1 "GND" H 855 2277 50  0000 C CNN
F 2 "" H 850 2450 50  0001 C CNN
F 3 "" H 850 2450 50  0001 C CNN
	1    850  2450
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
Text Label 4950 3800 2    50   ~ 0
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
Text Label 3350 3600 0    50   ~ 0
D3
Text Label 3300 3400 0    50   ~ 0
D1
Wire Wire Line
	3900 3600 3300 3600
Wire Wire Line
	3900 3400 3300 3400
Text Label 3350 3800 0    50   ~ 0
D7
Text Label 3350 3700 0    50   ~ 0
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
Text Label 5000 3500 2    50   ~ 0
GND
Text Label 3350 3500 0    50   ~ 0
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
Wire Wire Line
	6350 2900 6950 2900
Text Label 6650 2900 2    50   ~ 0
ROM_~CE
Text Label 6650 3000 2    50   ~ 0
RAM_~CE
Wire Wire Line
	6350 3000 6950 3000
Wire Wire Line
	6350 3100 6950 3100
Text Label 8950 2800 2    50   ~ 0
~M1
Wire Wire Line
	9050 2800 8450 2800
Wire Bus Line
	8450 2400 9050 2400
Text Label 8950 2400 2    50   ~ 0
A[0..15]
Wire Bus Line
	8450 2600 9050 2600
Text Label 8950 2600 2    50   ~ 0
D[0..7]
Wire Wire Line
	9050 2900 8450 2900
Text Label 8950 2900 2    50   ~ 0
~HALT
Wire Wire Line
	6950 3300 6350 3300
Text Label 6550 3300 2    50   ~ 0
~WAIT
Text Label 6650 3100 2    50   ~ 0
SIO_~CE
Wire Wire Line
	4400 4000 5000 4000
Text Label 4950 4000 2    50   ~ 0
SIO_~CE
Wire Wire Line
	9050 3100 8450 3100
Text Label 8950 3100 2    50   ~ 0
~WR
Text Label 8850 3000 0    50   ~ 0
~RD
Wire Wire Line
	9050 3000 8450 3000
Wire Wire Line
	6350 2550 6950 2550
Text Label 6350 2550 0    50   ~ 0
CLK
Text Label 6600 2750 2    50   ~ 0
~RESET
Wire Wire Line
	6350 2750 6950 2750
Text Label 3600 4000 2    50   ~ 0
CLK_U
Wire Wire Line
	3900 3800 3300 3800
Text Label 6600 2650 2    50   ~ 0
CLK_U
Wire Wire Line
	6350 2650 6950 2650
Wire Wire Line
	9050 3200 8450 3200
Text Label 8950 3200 2    50   ~ 0
~MREQ
Text Label 8950 3300 2    50   ~ 0
~IORQ
Wire Wire Line
	9050 3300 8450 3300
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
Text Label 1250 2550 0    50   ~ 0
MA14
Wire Wire Line
	1250 2550 1850 2550
Wire Wire Line
	1850 2650 1250 2650
Text Label 1450 2650 2    50   ~ 0
MA15
Wire Bus Line
	6350 2400 6950 2400
Text Label 6850 2400 2    50   ~ 0
MA[14..18]
Text Notes 1550 3250 0    50   ~ 0
AA12
Text Notes 1550 3350 0    50   ~ 0
AA11
Text Notes 1550 3450 0    50   ~ 0
Y10
NoConn ~ 1850 2350
Text Notes 1550 2850 0    50   ~ 0
AB19
Text Notes 1550 2950 0    50   ~ 0
AA17
Text Notes 1550 3050 0    50   ~ 0
AB17
Text Notes 3650 3800 0    50   ~ 0
AA5
Entry Bus Bus
	6350 2400 6250 2500
Entry Wire Line
	6350 2550 6250 2650
Entry Wire Line
	6350 2650 6250 2750
Entry Wire Line
	6350 2750 6250 2850
Entry Wire Line
	6350 2900 6250 3000
Entry Wire Line
	6350 3000 6250 3100
Entry Wire Line
	6350 3100 6250 3200
Entry Wire Line
	6350 3300 6250 3400
Entry Bus Bus
	9050 2400 9150 2500
Entry Bus Bus
	9050 2600 9150 2700
Entry Wire Line
	9050 2800 9150 2900
Entry Wire Line
	9050 2900 9150 3000
Entry Wire Line
	9050 3000 9150 3100
Entry Wire Line
	9050 3100 9150 3200
Entry Wire Line
	9050 3200 9150 3300
Entry Wire Line
	9050 3300 9150 3400
Entry Wire Line
	1250 2550 1150 2650
Entry Wire Line
	1250 2650 1150 2750
Entry Wire Line
	1250 2750 1150 2850
Entry Wire Line
	1250 2850 1150 2950
Entry Wire Line
	1250 3050 1150 3150
Entry Wire Line
	1250 3250 1150 3350
Entry Wire Line
	1250 3350 1150 3450
Entry Wire Line
	1250 3450 1150 3550
Entry Wire Line
	1250 3550 1150 3650
Entry Wire Line
	5000 2100 5100 2200
Entry Wire Line
	5000 2200 5100 2300
Entry Wire Line
	5000 2300 5100 2400
Entry Wire Line
	5000 2400 5100 2500
Entry Wire Line
	5000 2500 5100 2600
Entry Wire Line
	5000 2700 5100 2800
Entry Wire Line
	5000 2800 5100 2900
Entry Wire Line
	5000 2900 5100 3000
Entry Wire Line
	5000 3000 5100 3100
Entry Wire Line
	5000 3100 5100 3200
Entry Wire Line
	5000 3600 5100 3700
Entry Wire Line
	5000 3700 5100 3800
Entry Wire Line
	5000 3800 5100 3900
Entry Wire Line
	5000 4000 5100 4100
Entry Wire Line
	5000 3300 5100 3400
Entry Wire Line
	5000 3400 5100 3500
Entry Wire Line
	3300 2300 3200 2400
Entry Wire Line
	3300 2400 3200 2500
Entry Wire Line
	3300 2500 3200 2600
Entry Wire Line
	3300 2700 3200 2800
Entry Wire Line
	3300 2800 3200 2900
Entry Wire Line
	3300 2900 3200 3000
Entry Wire Line
	3300 3000 3200 3100
Entry Wire Line
	3300 3100 3200 3200
Entry Wire Line
	3300 3200 3200 3300
Entry Wire Line
	3300 3300 3200 3400
Entry Wire Line
	3300 3400 3200 3500
Entry Wire Line
	3300 3600 3200 3700
Entry Wire Line
	3300 3700 3200 3800
Entry Wire Line
	3300 3800 3200 3900
Entry Wire Line
	3300 4000 3200 4100
Wire Wire Line
	6950 3650 6350 3650
Entry Wire Line
	6350 3500 6250 3600
Entry Wire Line
	6350 3650 6250 3750
Wire Wire Line
	3300 3900 3900 3900
Text Notes 3650 3900 0    50   ~ 0
AB3
Wire Wire Line
	4400 3900 5000 3900
Text Notes 4500 3900 0    50   ~ 0
Y3
Entry Wire Line
	5000 3900 5100 4000
Entry Wire Line
	3300 3900 3200 4000
Text Label 3350 3900 0    50   ~ 0
C~D
Text Label 4850 3900 0    50   ~ 0
B~A
Text Label 6400 3650 0    50   ~ 0
B~A
Text Label 6400 3500 0    50   ~ 0
C~D
Wire Wire Line
	6950 3500 6350 3500
$Sheet
S 6950 2250 1500 1550
U 5F2A9FE8
F0 "Ram Rom and CPU" 50
F1 "ram_rom_sio_cpu.sch" 50
F2 "D[0..7]" T R 8450 2600 50 
F3 "~M1" O R 8450 2800 50 
F4 "~MREQ" O R 8450 3200 50 
F5 "~IORQ" O R 8450 3300 50 
F6 "CLK" I L 6950 2550 50 
F7 "~RD" O R 8450 3000 50 
F8 "~WR" O R 8450 3100 50 
F9 "~WAIT" I L 6950 3300 50 
F10 "~HALT" O R 8450 2900 50 
F11 "RAM_~CE~" I L 6950 3000 50 
F12 "ROM_~CE~" I L 6950 2900 50 
F13 "SIO_~CE~" I L 6950 3100 50 
F14 "CLK_U" I L 6950 2650 50 
F15 "~RESET" I L 6950 2750 50 
F16 "A[0..15]" O R 8450 2400 50 
F17 "MA[14..18]" I L 6950 2400 50 
F18 "C~D" I L 6950 3500 50 
F19 "B~A" I L 6950 3650 50 
$EndSheet
Wire Wire Line
	3000 3500 3900 3500
Wire Wire Line
	2950 2600 3900 2600
Wire Wire Line
	4400 3500 5250 3500
Wire Wire Line
	4400 2600 5400 2600
Wire Bus Line
	9150 2500 9150 3400
Wire Bus Line
	1150 2550 1150 3650
Wire Bus Line
	6250 2500 6250 3750
Wire Bus Line
	3200 2400 3200 4100
Wire Bus Line
	5100 2200 5100 4100
$EndSCHEMATC
