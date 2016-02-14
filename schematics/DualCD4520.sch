EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:teensy_3.1
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Teensy ROM Dumper with two CD4520"
Date ""
Rev "01"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 4520 U2
U 1 1 56C04726
P 7450 2100
F 0 "U2" H 7500 2550 50  0000 C CNN
F 1 "4520" H 7650 1750 50  0000 C CNN
F 2 "" H 7450 2100 60  0000 C CNN
F 3 "" H 7450 2100 60  0000 C CNN
	1    7450 2100
	1    0    0    -1  
$EndComp
$Comp
L 4520 U2
U 2 1 56C047A9
P 7450 5400
F 0 "U2" H 7500 5850 50  0000 C CNN
F 1 "4520" H 7650 5050 50  0000 C CNN
F 2 "" H 7450 5400 60  0000 C CNN
F 3 "" H 7450 5400 60  0000 C CNN
	2    7450 5400
	1    0    0    -1  
$EndComp
$Comp
L 4520 U3
U 1 1 56C0487C
P 7450 3200
F 0 "U3" H 7500 3650 50  0000 C CNN
F 1 "4520" H 7650 2850 50  0000 C CNN
F 2 "" H 7450 3200 60  0000 C CNN
F 3 "" H 7450 3200 60  0000 C CNN
	1    7450 3200
	1    0    0    -1  
$EndComp
$Comp
L 4520 U3
U 2 1 56C048F1
P 7450 4300
F 0 "U3" H 7500 4750 50  0000 C CNN
F 1 "4520" H 7650 3950 50  0000 C CNN
F 2 "" H 7450 4300 60  0000 C CNN
F 3 "" H 7450 4300 60  0000 C CNN
	2    7450 4300
	1    0    0    -1  
$EndComp
$Comp
L Teensy_3.1 U1
U 1 1 56C049F7
P 4250 3600
F 0 "U1" H 4300 4650 60  0000 C CNN
F 1 "Teensy_3.1" H 4350 5100 60  0000 C CNN
F 2 "" H 4350 3600 60  0000 C CNN
F 3 "" H 4350 3600 60  0000 C CNN
	1    4250 3600
	1    0    0    -1  
$EndComp
NoConn ~ 4000 4800
NoConn ~ 4150 4800
NoConn ~ 4300 4800
NoConn ~ 4450 4800
NoConn ~ 4600 4800
NoConn ~ 5250 2450
$Comp
L CONN_01X16 P2
U 1 1 56C05570
P 1700 3800
F 0 "P2" H 1700 4650 50  0000 C CNN
F 1 "CONN_01X16" V 1800 3800 50  0000 C CNN
F 2 "" H 1700 3800 50  0000 C CNN
F 3 "" H 1700 3800 50  0000 C CNN
	1    1700 3800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3250 4250 1900 4250
Wire Wire Line
	3250 4100 3150 4100
Wire Wire Line
	3150 4100 3150 4150
Wire Wire Line
	3150 4150 1900 4150
Wire Wire Line
	3250 3950 3050 3950
Wire Wire Line
	3050 3950 3050 4050
Wire Wire Line
	3050 4050 1900 4050
Wire Wire Line
	3250 3800 2950 3800
Wire Wire Line
	2950 3800 2950 3950
Wire Wire Line
	2950 3950 1900 3950
Wire Wire Line
	3250 3650 2850 3650
Wire Wire Line
	2850 3650 2850 3850
Wire Wire Line
	2850 3850 1900 3850
Wire Wire Line
	3250 3500 2750 3500
Wire Wire Line
	2750 3500 2750 3750
Wire Wire Line
	2750 3750 1900 3750
Wire Wire Line
	3250 3350 2650 3350
Wire Wire Line
	2650 3350 2650 3650
Wire Wire Line
	2650 3650 1900 3650
Wire Wire Line
	3250 3200 2550 3200
Wire Wire Line
	2550 3200 2550 3550
Wire Wire Line
	2550 3550 1900 3550
Wire Wire Line
	3250 3050 2450 3050
Wire Wire Line
	2450 3050 2450 3450
Wire Wire Line
	2450 3450 1900 3450
Wire Wire Line
	3250 2900 2350 2900
Wire Wire Line
	2350 2900 2350 3350
Wire Wire Line
	2350 3350 1900 3350
Wire Wire Line
	3250 2750 2250 2750
Wire Wire Line
	2250 2750 2250 3250
Wire Wire Line
	2250 3250 1900 3250
Wire Wire Line
	3250 2600 2150 2600
Wire Wire Line
	2150 2600 2150 3150
Wire Wire Line
	2150 3150 1900 3150
Wire Wire Line
	3250 2450 2050 2450
Wire Wire Line
	2050 2450 2050 3050
Wire Wire Line
	2050 3050 1900 3050
Wire Wire Line
	5250 4250 5350 4250
Wire Wire Line
	5350 4250 5350 4950
Wire Wire Line
	5350 4950 3250 4950
Wire Wire Line
	3250 4950 3250 4350
Wire Wire Line
	3250 4350 1900 4350
Wire Wire Line
	5250 4100 5450 4100
Wire Wire Line
	5450 4100 5450 5050
Wire Wire Line
	5450 5050 3150 5050
Wire Wire Line
	3150 5050 3150 4450
Wire Wire Line
	3150 4450 1900 4450
Wire Wire Line
	5250 3950 5550 3950
Wire Wire Line
	5550 3950 5550 5150
Wire Wire Line
	5550 5150 3050 5150
Wire Wire Line
	3050 5150 3050 4550
Wire Wire Line
	3050 4550 1900 4550
$Comp
L CONN_01X17 P1
U 1 1 56C056DA
P 9650 3850
F 0 "P1" H 9650 4750 50  0000 C CNN
F 1 "CONN_01X17" V 9750 3850 50  0000 C CNN
F 2 "" H 9650 3850 50  0000 C CNN
F 3 "" H 9650 3850 50  0000 C CNN
	1    9650 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 3050 9450 3050
Wire Wire Line
	9350 1750 9350 3050
Wire Wire Line
	9350 1750 8050 1750
Wire Wire Line
	8050 1850 9250 1850
Wire Wire Line
	9250 1850 9250 3150
Wire Wire Line
	9250 3150 9450 3150
Wire Wire Line
	9150 3250 9450 3250
Wire Wire Line
	9150 1950 9150 3250
Wire Wire Line
	9150 1950 8050 1950
Wire Wire Line
	8050 2050 9050 2050
Wire Wire Line
	9050 2050 9050 3350
Wire Wire Line
	9050 3350 9450 3350
Wire Wire Line
	8950 3450 9450 3450
Wire Wire Line
	8950 2850 8950 3450
Wire Wire Line
	8950 2850 8050 2850
Wire Wire Line
	8850 3550 9450 3550
Wire Wire Line
	8850 2950 8850 3550
Wire Wire Line
	8850 2950 8050 2950
Wire Wire Line
	8050 3050 8750 3050
Wire Wire Line
	8750 3050 8750 3650
Wire Wire Line
	8750 3650 9450 3650
Wire Wire Line
	8650 3750 9450 3750
Wire Wire Line
	8650 3150 8650 3750
Wire Wire Line
	8050 3150 8650 3150
Wire Wire Line
	9450 3850 8650 3850
Wire Wire Line
	8650 3850 8650 3950
Wire Wire Line
	8650 3950 8050 3950
Wire Wire Line
	9450 3950 8750 3950
Wire Wire Line
	8750 3950 8750 4050
Wire Wire Line
	8750 4050 8050 4050
Wire Wire Line
	9450 4050 8850 4050
Wire Wire Line
	8850 4050 8850 4150
Wire Wire Line
	8850 4150 8050 4150
Wire Wire Line
	9450 4150 8950 4150
Wire Wire Line
	8950 4250 8950 4150
Wire Wire Line
	8050 4250 8950 4250
Wire Wire Line
	9450 4250 9050 4250
Wire Wire Line
	9050 4250 9050 5050
Wire Wire Line
	9050 5050 8050 5050
Wire Wire Line
	9450 4350 9150 4350
Wire Wire Line
	9150 4350 9150 5150
Wire Wire Line
	9150 5150 8050 5150
Wire Wire Line
	9450 4450 9250 4450
Wire Wire Line
	9250 4450 9250 5250
Wire Wire Line
	9250 5250 8050 5250
Wire Wire Line
	9450 4550 9350 4550
Wire Wire Line
	9350 4550 9350 5350
Wire Wire Line
	9350 5350 8050 5350
Wire Wire Line
	5250 3800 5650 3800
Wire Wire Line
	5650 3800 5650 5900
Wire Wire Line
	5650 5900 9450 5900
Wire Wire Line
	9450 5900 9450 4650
Wire Wire Line
	5750 3650 5250 3650
Wire Wire Line
	5850 3500 5250 3500
NoConn ~ 5250 3350
NoConn ~ 5250 3200
NoConn ~ 5250 3050
NoConn ~ 5250 2900
NoConn ~ 5250 2750
NoConn ~ 5250 2600
Wire Wire Line
	5750 1950 5750 5250
Wire Wire Line
	5750 1950 6850 1950
Wire Wire Line
	5750 5250 6850 5250
Connection ~ 5750 3650
Wire Wire Line
	6850 4150 5750 4150
Connection ~ 5750 4150
Wire Wire Line
	5750 3050 6850 3050
Connection ~ 5750 3050
Wire Wire Line
	5850 2050 5850 5350
Wire Wire Line
	5850 2050 6850 2050
Wire Wire Line
	5850 3150 6850 3150
Connection ~ 5850 3150
Wire Wire Line
	5850 5350 6850 5350
Connection ~ 5850 3500
Wire Wire Line
	5850 4250 6850 4250
Connection ~ 5850 4250
Wire Wire Line
	8150 2050 8150 2600
Wire Wire Line
	8150 2600 6750 2600
Wire Wire Line
	6750 2600 6750 3250
Wire Wire Line
	6750 3250 6850 3250
Connection ~ 8150 2050
Connection ~ 8150 3150
Wire Wire Line
	8150 3150 8150 3700
Wire Wire Line
	8150 3700 6750 3700
Wire Wire Line
	6750 3700 6750 4350
Wire Wire Line
	6750 4350 6850 4350
Wire Wire Line
	8150 4250 8150 4800
Wire Wire Line
	8150 4800 6750 4800
Wire Wire Line
	6750 4800 6750 5450
Wire Wire Line
	6750 5450 6850 5450
Connection ~ 8150 4250
$Comp
L +5V #PWR01
U 1 1 56C07A26
P 6850 2150
F 0 "#PWR01" H 6850 2000 50  0001 C CNN
F 1 "+5V" H 6850 2290 50  0000 C CNN
F 2 "" H 6850 2150 50  0000 C CNN
F 3 "" H 6850 2150 50  0000 C CNN
	1    6850 2150
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR02
U 1 1 56C07A4F
P 7300 1700
F 0 "#PWR02" H 7300 1550 50  0001 C CNN
F 1 "+5V" H 7300 1840 50  0000 C CNN
F 2 "" H 7300 1700 50  0000 C CNN
F 3 "" H 7300 1700 50  0000 C CNN
	1    7300 1700
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR03
U 1 1 56C07A9D
P 7300 2800
F 0 "#PWR03" H 7300 2650 50  0001 C CNN
F 1 "+5V" H 7300 2940 50  0000 C CNN
F 2 "" H 7300 2800 50  0000 C CNN
F 3 "" H 7300 2800 50  0000 C CNN
	1    7300 2800
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR04
U 1 1 56C07ABF
P 7300 3900
F 0 "#PWR04" H 7300 3750 50  0001 C CNN
F 1 "+5V" H 7300 4040 50  0000 C CNN
F 2 "" H 7300 3900 50  0000 C CNN
F 3 "" H 7300 3900 50  0000 C CNN
	1    7300 3900
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR05
U 1 1 56C07AE1
P 7300 5000
F 0 "#PWR05" H 7300 4850 50  0001 C CNN
F 1 "+5V" H 7300 5140 50  0000 C CNN
F 2 "" H 7300 5000 50  0000 C CNN
F 3 "" H 7300 5000 50  0000 C CNN
	1    7300 5000
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR06
U 1 1 56C07B03
P 5250 2300
F 0 "#PWR06" H 5250 2150 50  0001 C CNN
F 1 "+5V" H 5250 2440 50  0000 C CNN
F 2 "" H 5250 2300 50  0000 C CNN
F 3 "" H 5250 2300 50  0000 C CNN
	1    5250 2300
	0    1    1    0   
$EndComp
$Comp
L GND #PWR07
U 1 1 56C07B25
P 3250 2300
F 0 "#PWR07" H 3250 2050 50  0001 C CNN
F 1 "GND" H 3250 2150 50  0000 C CNN
F 2 "" H 3250 2300 50  0000 C CNN
F 3 "" H 3250 2300 50  0000 C CNN
	1    3250 2300
	0    1    1    0   
$EndComp
$Comp
L GND #PWR08
U 1 1 56C07B55
P 7300 2400
F 0 "#PWR08" H 7300 2150 50  0001 C CNN
F 1 "GND" H 7300 2250 50  0000 C CNN
F 2 "" H 7300 2400 50  0000 C CNN
F 3 "" H 7300 2400 50  0000 C CNN
	1    7300 2400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 56C07B77
P 7300 3500
F 0 "#PWR09" H 7300 3250 50  0001 C CNN
F 1 "GND" H 7300 3350 50  0000 C CNN
F 2 "" H 7300 3500 50  0000 C CNN
F 3 "" H 7300 3500 50  0000 C CNN
	1    7300 3500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 56C07B99
P 7300 4600
F 0 "#PWR010" H 7300 4350 50  0001 C CNN
F 1 "GND" H 7300 4450 50  0000 C CNN
F 2 "" H 7300 4600 50  0000 C CNN
F 3 "" H 7300 4600 50  0000 C CNN
	1    7300 4600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 56C07BBB
P 1100 7050
F 0 "#PWR011" H 1100 6800 50  0001 C CNN
F 1 "GND" H 1100 6900 50  0000 C CNN
F 2 "" H 1100 7050 50  0000 C CNN
F 3 "" H 1100 7050 50  0000 C CNN
	1    1100 7050
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR012
U 1 1 56C07BDD
P 1100 6500
F 0 "#PWR012" H 1100 6350 50  0001 C CNN
F 1 "+5V" H 1100 6640 50  0000 C CNN
F 2 "" H 1100 6500 50  0000 C CNN
F 3 "" H 1100 6500 50  0000 C CNN
	1    1100 6500
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG013
U 1 1 56C07BFF
P 1100 7050
F 0 "#FLG013" H 1100 7145 50  0001 C CNN
F 1 "PWR_FLAG" H 1100 7230 50  0000 C CNN
F 2 "" H 1100 7050 50  0000 C CNN
F 3 "" H 1100 7050 50  0000 C CNN
	1    1100 7050
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG014
U 1 1 56C07C21
P 1100 6500
F 0 "#FLG014" H 1100 6595 50  0001 C CNN
F 1 "PWR_FLAG" H 1100 6680 50  0000 C CNN
F 2 "" H 1100 6500 50  0000 C CNN
F 3 "" H 1100 6500 50  0000 C CNN
	1    1100 6500
	-1   0    0    1   
$EndComp
Text Notes 9600 2850 0    60   ~ 0
To Address Pins
Text Notes 1150 2850 0    60   ~ 0
To Data Pins
$EndSCHEMATC