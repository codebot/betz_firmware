EESchema Schematic File Version 5
EELAYER 34 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Betz Mini"
Date "2020-04-25"
Rev "A"
Comp "Open Robotics"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
Comment5 ""
Comment6 ""
Comment7 ""
Comment8 ""
Comment9 ""
$EndDescr
Connection ~ 8600 4450
Connection ~ 8600 4650
Connection ~ 8300 4650
Connection ~ 8000 4250
Connection ~ 8300 3950
Connection ~ 8300 4350
Connection ~ 9750 2850
Connection ~ 9750 2950
Connection ~ 9600 4050
Connection ~ 9600 4250
Connection ~ 9600 4450
Connection ~ 9600 4650
Connection ~ 10100 2850
Connection ~ 10100 3050
Connection ~ 8300 5900
Connection ~ 8600 5900
Connection ~ 8000 5900
Connection ~ 3150 4000
Connection ~ 2700 4000
Connection ~ 2700 4350
Connection ~ 3400 2500
Connection ~ 3400 2600
Connection ~ 3400 2700
Connection ~ 2900 7350
Wire Wire Line
	2700 3900 3400 3900
Wire Wire Line
	2700 4000 2700 3900
Wire Wire Line
	2700 4000 2850 4000
Wire Wire Line
	2700 4100 2700 4000
Wire Wire Line
	2700 4300 2700 4350
Wire Wire Line
	2700 4350 3150 4350
Wire Wire Line
	2800 7350 2900 7350
Wire Wire Line
	3050 3200 3400 3200
Wire Wire Line
	3050 3400 3400 3400
Wire Wire Line
	3050 4000 3150 4000
Wire Wire Line
	3150 2500 3400 2500
Wire Wire Line
	3150 4000 3150 4100
Wire Wire Line
	3150 4000 3400 4000
Wire Wire Line
	3150 4300 3150 4350
Wire Wire Line
	3400 2500 3400 2600
Wire Wire Line
	3400 2600 3400 2700
Wire Wire Line
	3400 2700 3400 2800
Wire Wire Line
	3400 6250 3400 6450
Wire Wire Line
	3400 6650 3700 6650
Wire Wire Line
	3400 6750 3700 6750
Wire Wire Line
	3600 6250 3400 6250
Wire Wire Line
	4450 3800 4800 3800
Wire Wire Line
	4450 3900 4800 3900
Wire Wire Line
	8000 3950 8300 3950
Wire Wire Line
	8000 4150 8000 4250
Wire Wire Line
	8000 4250 8000 4450
Wire Wire Line
	8000 4650 8300 4650
Wire Wire Line
	8000 5900 8300 5900
Wire Wire Line
	8300 3950 8600 3950
Wire Wire Line
	8300 4150 8300 4350
Wire Wire Line
	8300 4350 8300 4450
Wire Wire Line
	8300 4650 8600 4650
Wire Wire Line
	8300 5900 8600 5900
Wire Wire Line
	8600 2850 8850 2850
Wire Wire Line
	8600 2950 8850 2950
Wire Wire Line
	8600 3050 8850 3050
Wire Wire Line
	8600 3150 8850 3150
Wire Wire Line
	8600 3250 8850 3250
Wire Wire Line
	8600 3350 8850 3350
Wire Wire Line
	8600 3450 8850 3450
Wire Wire Line
	8600 3550 8850 3550
Wire Wire Line
	8600 4150 8600 4450
Wire Wire Line
	8600 4450 8850 4450
Wire Wire Line
	8600 4650 8850 4650
Wire Wire Line
	8600 5900 8900 5900
Wire Wire Line
	8850 4250 8000 4250
Wire Wire Line
	8850 4350 8300 4350
Wire Wire Line
	9600 2950 9750 2950
Wire Wire Line
	9600 3150 9750 3150
Wire Wire Line
	9600 3250 9750 3250
Wire Wire Line
	9600 3450 9750 3450
Wire Wire Line
	9600 3550 9750 3550
Wire Wire Line
	9600 3950 9600 4050
Wire Wire Line
	9600 4050 9800 4050
Wire Wire Line
	9600 4150 9600 4250
Wire Wire Line
	9600 4250 9800 4250
Wire Wire Line
	9600 4350 9600 4450
Wire Wire Line
	9600 4450 9800 4450
Wire Wire Line
	9600 4550 9600 4650
Wire Wire Line
	9600 4650 9800 4650
Wire Wire Line
	9750 2850 9600 2850
Wire Wire Line
	9750 2850 10100 2850
Wire Wire Line
	9750 2950 9750 2850
Wire Wire Line
	10100 2850 10450 2850
Wire Wire Line
	10100 3050 10450 3050
Text Notes 5750 6450 0    50   ~ 0
todo items:\n* status LED\n* debug UART\n* rs485 transceiver\n* 24v -> 3v3 supply
Text Notes 9600 2500 0    50   ~ 0
todo: bulk caps \non connector board
Text Notes 10100 3450 0    50   ~ 0
datasheet: 100n\neval board: 470n
Text Label 3350 3200 2    50   ~ 0
NRST
Text Label 3350 3400 2    50   ~ 0
VREF
Text Label 3400 6250 0    50   ~ 0
NRST
Text Label 3450 6650 0    50   ~ 0
SWCLK
Text Label 3450 6750 0    50   ~ 0
SWDIO
Text Label 4400 6450 2    50   ~ 0
+3V3
Text Label 4400 6550 2    50   ~ 0
RX
Text Label 4400 6650 2    50   ~ 0
TXE
Text Label 4400 6750 2    50   ~ 0
SA
Text Label 4400 6850 2    50   ~ 0
SB
Text Label 4400 6950 2    50   ~ 0
SC
Text Label 4550 3800 0    50   ~ 0
SWDIO
Text Label 4550 3900 0    50   ~ 0
SWCLK
Text Label 4900 6450 0    50   ~ 0
TX
Text Label 4900 6550 0    50   ~ 0
GND
Text Label 4900 6650 0    50   ~ 0
VBUS
Text Label 4900 6750 0    50   ~ 0
SA
Text Label 4900 6850 0    50   ~ 0
SB
Text Label 4900 6950 0    50   ~ 0
SC
Text Label 8000 3950 0    50   ~ 0
VREF
Text Label 8600 2850 0    50   ~ 0
FAULT
Text Label 8600 2950 0    50   ~ 0
SLEEP
Text Label 8600 3050 0    50   ~ 0
ENA
Text Label 8600 3150 0    50   ~ 0
ENB
Text Label 8600 3250 0    50   ~ 0
ENC
Text Label 8600 3350 0    50   ~ 0
PWMA
Text Label 8600 3450 0    50   ~ 0
PWMB
Text Label 8600 3550 0    50   ~ 0
PWMC
Text Label 8750 4250 2    50   ~ 0
IA
Text Label 8750 4350 2    50   ~ 0
IB
Text Label 8750 4450 2    50   ~ 0
IC
Text Label 9600 3150 0    50   ~ 0
VCP
Text Label 9600 3250 0    50   ~ 0
CP1
Text Label 9600 3450 0    50   ~ 0
CP2
Text Label 9600 3550 0    50   ~ 0
VG
Text Label 9650 4050 0    50   ~ 0
SA
Text Label 9650 4250 0    50   ~ 0
SB
Text Label 9650 4450 0    50   ~ 0
SC
$Comp
L power:+3V3 #PWR0109
U 1 1 5EAEE76B
P 2900 6150
F 0 "#PWR0109" H 2900 6000 50  0001 C CNN
F 1 "+3V3" H 2915 6320 50  0000 C CNN
F 2 "" H 2900 6150 50  0001 C CNN
F 3 "" H 2900 6150 50  0001 C CNN
	1    2900 6150
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0101
U 1 1 5EACE9C2
P 3150 2500
F 0 "#PWR0101" H 3150 2350 50  0001 C CNN
F 1 "+3V3" H 3165 2670 50  0000 C CNN
F 2 "" H 3150 2500 50  0001 C CNN
F 3 "" H 3150 2500 50  0001 C CNN
	1    3150 2500
	1    0    0    -1  
$EndComp
$Comp
L power:VBUS #PWR0105
U 1 1 5EAE342B
P 9750 2850
F 0 "#PWR0105" H 9750 2700 50  0001 C CNN
F 1 "VBUS" H 9765 3020 50  0000 C CNN
F 2 "" H 9750 2850 50  0001 C CNN
F 3 "" H 9750 2850 50  0001 C CNN
	1    9750 2850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5EAE92DF
P 2700 4350
F 0 "#PWR0108" H 2700 4100 50  0001 C CNN
F 1 "GND" H 2704 4180 50  0001 C CNN
F 2 "" H 2700 4350 50  0001 C CNN
F 3 "" H 2700 4350 50  0001 C CNN
	1    2700 4350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 5EAF0B8F
P 2900 7350
F 0 "#PWR0111" H 2900 7100 50  0001 C CNN
F 1 "GND" H 2904 7180 50  0001 C CNN
F 2 "" H 2900 7350 50  0001 C CNN
F 3 "" H 2900 7350 50  0001 C CNN
	1    2900 7350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5EAF5CF7
P 3600 6450
F 0 "#PWR0110" H 3600 6200 50  0001 C CNN
F 1 "GND" H 3604 6280 50  0001 C CNN
F 2 "" H 3600 6450 50  0001 C CNN
F 3 "" H 3600 6450 50  0001 C CNN
	1    3600 6450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 5EAD553B
P 8000 5900
F 0 "#PWR0107" H 8000 5650 50  0001 C CNN
F 1 "GND" H 8004 5730 50  0001 C CNN
F 2 "" H 8000 5900 50  0001 C CNN
F 3 "" H 8000 5900 50  0001 C CNN
	1    8000 5900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5EAD5659
P 8600 4650
F 0 "#PWR0103" H 8600 4400 50  0001 C CNN
F 1 "GND" H 8604 4480 50  0001 C CNN
F 2 "" H 8600 4650 50  0001 C CNN
F 3 "" H 8600 4650 50  0001 C CNN
	1    8600 4650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5EAE5680
P 9750 3750
F 0 "#PWR0104" H 9750 3500 50  0001 C CNN
F 1 "GND" H 9754 3580 50  0001 C CNN
F 2 "" H 9750 3750 50  0001 C CNN
F 3 "" H 9750 3750 50  0001 C CNN
	1    9750 3750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5EAE888E
P 9800 4650
F 0 "#PWR0106" H 9800 4400 50  0001 C CNN
F 1 "GND" H 9804 4480 50  0001 C CNN
F 2 "" H 9800 4650 50  0001 C CNN
F 3 "" H 9800 4650 50  0001 C CNN
	1    9800 4650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5EAED9CE
P 10100 3050
F 0 "#PWR0102" H 10100 2800 50  0001 C CNN
F 1 "GND" H 10104 2880 50  0001 C CNN
F 2 "" H 10100 3050 50  0001 C CNN
F 3 "" H 10100 3050 50  0001 C CNN
	1    10100 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R1
U 1 1 5EAD0E56
P 8000 4050
F 0 "R1" H 8059 4095 50  0000 L CNN
F 1 "4k7" H 8059 4005 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 8000 4050 50  0001 C CNN
F 3 "~" H 8000 4050 50  0001 C CNN
	1    8000 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R2
U 1 1 5EAD19B7
P 8000 4550
F 0 "R2" H 8059 4595 50  0000 L CNN
F 1 "4k7" H 8059 4505 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 8000 4550 50  0001 C CNN
F 3 "~" H 8000 4550 50  0001 C CNN
	1    8000 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R3
U 1 1 5EAD038B
P 8300 4050
F 0 "R3" H 8359 4095 50  0000 L CNN
F 1 "4k7" H 8359 4005 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 8300 4050 50  0001 C CNN
F 3 "~" H 8300 4050 50  0001 C CNN
	1    8300 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R4
U 1 1 5EACFB6D
P 8300 4550
F 0 "R4" H 8359 4595 50  0000 L CNN
F 1 "4k7" H 8359 4505 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 8300 4550 50  0001 C CNN
F 3 "~" H 8300 4550 50  0001 C CNN
	1    8300 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R6
U 1 1 5EACBDF1
P 8600 4050
F 0 "R6" H 8659 4095 50  0000 L CNN
F 1 "4k7" H 8659 4005 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 8600 4050 50  0001 C CNN
F 3 "~" H 8600 4050 50  0001 C CNN
	1    8600 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R7
U 1 1 5EACC212
P 8600 4550
F 0 "R7" H 8659 4595 50  0000 L CNN
F 1 "4k7" H 8659 4505 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 8600 4550 50  0001 C CNN
F 3 "~" H 8600 4550 50  0001 C CNN
	1    8600 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal_Small X1
U 1 1 5EAE22CC
P 2950 4000
F 0 "X1" H 2800 4050 50  0000 C CNN
F 1 "8 MHz" H 3150 4050 50  0000 C CNN
F 2 "Crystal:Crystal_SMD_5032-2Pin_5.0x3.2mm" H 2950 4000 50  0001 C CNN
F 3 "~" H 2950 4000 50  0001 C CNN
	1    2950 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C6
U 1 1 5EAE4CA3
P 2700 4200
F 0 "C6" H 2792 4245 50  0000 L CNN
F 1 "15p" H 2791 4155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2700 4200 50  0001 C CNN
F 3 "~" H 2700 4200 50  0001 C CNN
	1    2700 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C7
U 1 1 5EAE6656
P 3150 4200
F 0 "C7" H 3242 4245 50  0000 L CNN
F 1 "15p" H 3241 4155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3150 4200 50  0001 C CNN
F 3 "~" H 3150 4200 50  0001 C CNN
	1    3150 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C8
U 1 1 5EAF2CF4
P 3600 6350
F 0 "C8" H 3692 6395 50  0000 L CNN
F 1 "100n" H 3691 6305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3600 6350 50  0001 C CNN
F 3 "~" H 3600 6350 50  0001 C CNN
	1    3600 6350
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5EAE675C
P 9750 3050
F 0 "C1" H 9842 3095 50  0000 L CNN
F 1 "1u" H 9841 3005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9750 3050 50  0001 C CNN
F 3 "~" H 9750 3050 50  0001 C CNN
	1    9750 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5EAE156A
P 9750 3350
F 0 "C2" H 9842 3395 50  0000 L CNN
F 1 "100n" H 9841 3305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9750 3350 50  0001 C CNN
F 3 "~" H 9750 3350 50  0001 C CNN
	1    9750 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 5EAE1DE1
P 9750 3650
F 0 "C3" H 9842 3695 50  0000 L CNN
F 1 "4u7" H 9841 3605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9750 3650 50  0001 C CNN
F 3 "~" H 9750 3650 50  0001 C CNN
	1    9750 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 5EAEBC9B
P 10100 2950
F 0 "C4" H 10192 2995 50  0000 L CNN
F 1 "22u" H 10191 2905 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric" H 10100 2950 50  0001 C CNN
F 3 "~" H 10100 2950 50  0001 C CNN
	1    10100 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C5
U 1 1 5EAEC182
P 10450 2950
F 0 "C5" H 10542 2995 50  0000 L CNN
F 1 "22u" H 10541 2905 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric" H 10450 2950 50  0001 C CNN
F 3 "~" H 10450 2950 50  0001 C CNN
	1    10450 2950
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 5EAD0ADD
P 8000 5800
F 0 "H1" H 8100 5850 50  0000 L CNN
F 1 "MountingHole_Pad" H 8100 5760 50  0001 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_DIN965_Pad" H 8000 5800 50  0001 C CNN
F 3 "~" H 8000 5800 50  0001 C CNN
	1    8000 5800
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 5EAD1649
P 8300 5800
F 0 "H2" H 8400 5850 50  0000 L CNN
F 1 "MountingHole_Pad" H 8350 5900 50  0001 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_DIN965_Pad" H 8300 5800 50  0001 C CNN
F 3 "~" H 8300 5800 50  0001 C CNN
	1    8300 5800
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 5EAD410E
P 8600 5800
F 0 "H3" H 8700 5850 50  0000 L CNN
F 1 "MountingHole_Pad" H 8650 5900 50  0001 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_DIN965_Pad" H 8600 5800 50  0001 C CNN
F 3 "~" H 8600 5800 50  0001 C CNN
	1    8600 5800
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 5EAD49D6
P 8900 5800
F 0 "H4" H 9000 5850 50  0000 L CNN
F 1 "MountingHole_Pad" H 8950 5900 50  0001 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_DIN965_Pad" H 8900 5800 50  0001 C CNN
F 3 "~" H 8900 5800 50  0001 C CNN
	1    8900 5800
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x06_Odd_Even J1
U 1 1 5EAD8152
P 4600 6650
F 0 "J1" H 4650 7066 50  0000 C CNN
F 1 "upstairs" H 4650 6975 50  0000 C CNN
F 2 "Connector_PinHeader_2.00mm:PinHeader_2x06_P2.00mm_Vertical" H 4600 6650 50  0001 C CNN
F 3 "~" H 4600 6650 50  0001 C CNN
	1    4600 6650
	1    0    0    -1  
$EndComp
$Comp
L encoders:AS5047D U2
U 1 1 5EAC600D
P 6250 2800
F 0 "U2" H 6275 3385 60  0000 C CNN
F 1 "AS5047U" H 6275 3278 60  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 7000 2100 60  0001 C CNN
F 3 "" H 7000 2100 60  0001 C CNN
	1    6250 2800
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_ARM_JTAG_SWD_10 J2
U 1 1 5EAECF75
P 2900 6750
F 0 "J2" H 2460 6795 50  0000 R CNN
F 1 "Conn_ARM_JTAG_SWD_10" H 2460 6705 50  0000 R CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_2x05_P1.27mm_Vertical" H 2900 6750 50  0001 C CNN
F 3 "http://infocenter.arm.com/help/topic/com.arm.doc.ddi0314h/DDI0314H_coresight_components_trm.pdf" V 2550 5500 50  0001 C CNN
	1    2900 6750
	1    0    0    -1  
$EndComp
$Comp
L mps_bldc_drivers:MP6540 U4
U 1 1 5EACB5CF
P 9250 3750
F 0 "U4" H 9225 4914 50  0000 C CNN
F 1 "MP6540" H 9225 4823 50  0000 C CNN
F 2 "MPS:MP6540" H 9150 4500 50  0001 C CNN
F 3 "" H 9150 4500 50  0001 C CNN
	1    9250 3750
	1    0    0    -1  
$EndComp
$Comp
L BLDC:IIS328DQ U3
U 1 1 5EAC8C50
P 6350 4550
F 0 "U3" H 6375 5511 50  0000 C CNN
F 1 "IIS328DQ" H 6375 5420 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-24-1EP_4x4mm_P0.5mm_EP2.6x2.6mm" H 6350 4550 50  0001 C CNN
F 3 "" H 6350 4550 50  0001 C CNN
	1    6350 4550
	1    0    0    -1  
$EndComp
$Comp
L stm32g474ceu6:stm32g474ceu6 U1
U 1 1 5EAC4FEA
P 3950 4100
F 0 "U1" H 3925 5964 50  0000 C CNN
F 1 "stm32g474ceu6" H 3925 5873 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-48-1EP_7x7mm_P0.5mm_EP5.6x5.6mm" H 3250 4300 50  0001 C CNN
F 3 "" H 3250 4300 50  0001 C CNN
	1    3950 4100
	1    0    0    -1  
$EndComp
$EndSCHEMATC
