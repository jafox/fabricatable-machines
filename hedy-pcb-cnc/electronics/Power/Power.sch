EESchema Schematic File Version 4
LIBS:Power-cache
EELAYER 26 0
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
L Switch:SW_DIP_x02 SW?
U 1 1 5B9A94A1
P 2200 1850
F 0 "SW?" H 2200 2217 50  0000 C CNN
F 1 "ON OFF SWITCH" H 2200 2126 50  0000 C CNN
F 2 "" H 2200 1850 50  0001 C CNN
F 3 "" H 2200 1850 50  0001 C CNN
	1    2200 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 1850 2500 1950
$Comp
L Relay:AZ850-x CONTACTOR_NO
U 1 1 5B9A9CD5
P 5200 2150
F 0 "CONTACTOR_NO" V 5967 2150 50  0000 C CNN
F 1 "AZ850-x" V 5876 2150 50  0000 C CNN
F 2 "Relay_THT:Relay_DPDT_FRT5" H 5750 2200 50  0001 C CNN
F 3 "http://www.azettler.com/pdfs/az850.pdf" H 5000 2150 50  0001 C CNN
	1    5200 2150
	0    1    -1   0   
$EndComp
$Comp
L Relay:AZ850-x CONTACTOR_NO
U 1 1 5B9A9EB7
P 6100 2150
F 0 "CONTACTOR_NO" V 6867 2150 50  0000 C CNN
F 1 "AZ850-x" V 6776 2150 50  0000 C CNN
F 2 "Relay_THT:Relay_DPDT_FRT5" H 6650 2200 50  0001 C CNN
F 3 "http://www.azettler.com/pdfs/az850.pdf" H 5900 2150 50  0001 C CNN
	1    6100 2150
	0    1    -1   0   
$EndComp
NoConn ~ 5500 1850
NoConn ~ 6400 1850
NoConn ~ 6400 2250
NoConn ~ 5500 2250
Wire Wire Line
	5500 1650 5800 1650
Wire Wire Line
	5800 1650 5800 1750
Wire Wire Line
	5500 2050 5800 2050
Wire Wire Line
	5800 2050 5800 2150
$Comp
L Switch:SW_DIP_x02 DOOR_SWITCH_NC
U 1 1 5B9AA73E
P 4000 2800
F 0 "DOOR_SWITCH_NC" V 3954 3030 50  0000 L CNN
F 1 "SW_DIP_x02" V 4045 3030 50  0000 L CNN
F 2 "" H 4000 2800 50  0001 C CNN
F 3 "" H 4000 2800 50  0001 C CNN
	1    4000 2800
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_DIP_x02 Emergency_STOP_NC
U 1 1 5B9AADF7
P 4000 3750
F 0 "Emergency_STOP_NC" V 3954 3980 50  0000 L CNN
F 1 "SW_DIP_x02" V 4045 3980 50  0000 L CNN
F 2 "" H 4000 3750 50  0001 C CNN
F 3 "" H 4000 3750 50  0001 C CNN
	1    4000 3750
	0    1    1    0   
$EndComp
Wire Wire Line
	4000 3100 4000 3450
Wire Wire Line
	4100 3100 4100 3450
$Comp
L Connector:Conn_WallPlug_Earth P?
U 1 1 5B9AB579
P 1100 1850
F 0 "P?" H 1165 2175 50  0000 C CNN
F 1 "Conn_WallPlug_Earth" H 1165 2084 50  0000 C CNN
F 2 "" H 1500 1850 50  0001 C CNN
F 3 "~" H 1500 1850 50  0001 C CNN
	1    1100 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 1750 1900 1750
Wire Wire Line
	1900 1850 1400 1850
Wire Wire Line
	1400 1850 1400 1950
$Comp
L Converter_ACDC:VTX-214-015-105 36V_PSU
U 1 1 5B9ABC32
P 3950 1850
F 0 "36V_PSU" H 3950 2217 50  0000 C CNN
F 1 "VTX-214-015-105" H 3950 2126 50  0000 C CNN
F 2 "Converter_ACDC:Converter_ACDC_Vigortronix_VTX-214-015-1xx_THT" H 3950 2200 50  0001 C CNN
F 3 "http://www.vigortronix.com/15WattSMPSPCBModuleAC-DC" H 5050 1050 50  0001 C CNN
	1    3950 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 2150 2650 2150
Wire Wire Line
	4900 1950 4900 2150
Wire Wire Line
	4100 4050 5500 4050
Wire Wire Line
	5500 4050 5500 2550
Wire Wire Line
	4000 4050 4000 4250
Wire Wire Line
	4000 4250 6400 4250
Wire Wire Line
	6400 4250 6400 2550
Text Notes 4400 3150 0    50   ~ 0
Check normally closed and open on switches and contactors\n
$Comp
L Connector:Screw_Terminal_01x02 HRBL_SHIELD
U 1 1 5B9B1053
P 9200 2400
F 0 "HRBL_SHIELD" V 9073 2480 50  0000 L CNN
F 1 "Screw_Terminal_01x02" V 9164 2480 50  0000 L CNN
F 2 "" H 9200 2400 50  0001 C CNN
F 3 "~" H 9200 2400 50  0001 C CNN
	1    9200 2400
	0    1    1    0   
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 SPINDLE_DRIVER
U 1 1 5B9B0F7B
P 7650 2400
F 0 "SPINDLE_DRIVER" V 7523 2480 50  0000 L CNN
F 1 "Screw_Terminal_01x02" V 7614 2480 50  0000 L CNN
F 2 "" H 7650 2400 50  0001 C CNN
F 3 "~" H 7650 2400 50  0001 C CNN
	1    7650 2400
	0    1    1    0   
$EndComp
Wire Wire Line
	9200 2200 9200 1650
Wire Wire Line
	9100 2200 9100 2050
Wire Wire Line
	6400 2050 7550 2050
Wire Wire Line
	6400 1650 7650 1650
Wire Wire Line
	7650 2200 7650 1650
Connection ~ 7650 1650
Wire Wire Line
	7650 1650 9200 1650
Wire Wire Line
	7550 2200 7550 2050
Connection ~ 7550 2050
Wire Wire Line
	7550 2050 9100 2050
Wire Notes Line
	7250 2250 8200 2250
Wire Notes Line
	8200 2250 8200 3050
Wire Notes Line
	8200 3050 7250 3050
Wire Notes Line
	7250 3050 7250 2250
Wire Notes Line
	8900 2250 9400 2250
Wire Notes Line
	9400 2250 9400 3050
Wire Notes Line
	9400 3050 8900 3050
Wire Notes Line
	8900 3050 8900 2250
Text Notes 7500 2700 0    50   ~ 0
Spindle driver
Text Notes 8950 2700 0    50   ~ 0
HRBL shield
Text Notes 7600 3350 0    50   ~ 0
Spindle
Text Notes 8800 3300 0    50   ~ 0
X,Y,Z motors and sensors
Wire Notes Line
	10000 2700 10000 3050
Wire Notes Line
	10000 3050 10800 3050
Wire Notes Line
	10800 3050 10800 2700
Wire Notes Line
	10800 2700 10000 2700
Wire Notes Line
	10000 2850 9400 2850
Text Notes 10100 2900 0    50   ~ 0
Gcode sender
Text Notes 9600 2850 0    50   ~ 0
USB
Wire Notes Line
	7500 3200 8000 3200
Wire Notes Line
	8000 3200 8000 3400
Wire Notes Line
	8000 3400 7500 3400
Wire Notes Line
	7500 3400 7500 3200
Wire Notes Line
	8750 3200 9800 3200
Wire Notes Line
	9800 3200 9800 3350
Wire Notes Line
	9800 3350 8750 3350
Wire Notes Line
	8750 3350 8750 3200
Wire Notes Line
	7700 3200 7700 3050
Wire Notes Line
	9150 3200 9150 3050
Wire Notes Line
	8250 2700 8900 2700
Text Notes 3450 3800 0    50   ~ 0
2 NC 1 NO
Text Notes 3600 2850 0    50   ~ 0
2 NC
Wire Wire Line
	2500 1950 2800 1950
Wire Wire Line
	3000 2500 4000 2500
$Comp
L Device:Polyfuse POLYFUSE
U 1 1 5B9A9611
P 2700 1750
F 0 "POLYFUSE" V 2475 1750 50  0000 C CNN
F 1 "Polyfuse" V 2566 1750 50  0000 C CNN
F 2 "" H 2750 1550 50  0001 L CNN
F 3 "~" H 2700 1750 50  0001 C CNN
	1    2700 1750
	0    1    1    0   
$EndComp
Wire Wire Line
	2550 1750 2500 1750
Wire Wire Line
	2850 1750 2900 1750
$Comp
L Connector:Conn_WallSocket_Earth J?
U 1 1 5BA52863
P 3150 2950
F 0 "J?" H 3405 2961 50  0000 L CNN
F 1 "Conn_WallSocket_Earth" H 3405 2870 50  0000 L CNN
F 2 "" H 2850 3050 50  0001 C CNN
F 3 "~" H 2850 3050 50  0001 C CNN
	1    3150 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 2750 2900 2750
Wire Wire Line
	2900 2750 2900 1750
Connection ~ 2900 1750
Wire Wire Line
	2950 2950 2800 2950
Wire Wire Line
	2800 2950 2800 1950
Connection ~ 2800 1950
Wire Wire Line
	2950 3150 2650 3150
Wire Wire Line
	2650 3150 2650 2150
Connection ~ 2650 2150
$Comp
L Connector:Conn_WallSocket_Earth J?
U 1 1 5BA54EE7
P 3150 3550
F 0 "J?" H 3405 3561 50  0000 L CNN
F 1 "Conn_WallSocket_Earth" H 3405 3470 50  0000 L CNN
F 2 "" H 2850 3650 50  0001 C CNN
F 3 "~" H 2850 3650 50  0001 C CNN
	1    3150 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 2750 2900 3350
Wire Wire Line
	2900 3350 2950 3350
Connection ~ 2900 2750
Wire Wire Line
	2800 2950 2800 3550
Wire Wire Line
	2800 3550 2950 3550
Connection ~ 2800 2950
Wire Wire Line
	2650 3150 2650 3750
Wire Wire Line
	2650 3750 2950 3750
Connection ~ 2650 3150
Wire Wire Line
	2800 1950 3000 1950
Wire Wire Line
	3000 2500 3000 1950
Connection ~ 3000 1950
Wire Wire Line
	4350 1750 4900 1750
Wire Wire Line
	4900 1950 4350 1950
Wire Wire Line
	2650 2150 3950 2150
Wire Wire Line
	3000 1950 3050 1950
Wire Wire Line
	4350 2350 4350 3000
Wire Wire Line
	4350 3000 5800 3000
Wire Wire Line
	5800 3000 5800 2550
Wire Wire Line
	4900 2550 4450 2550
Wire Wire Line
	4450 2550 4450 2200
Wire Wire Line
	4450 2200 3250 2200
Wire Wire Line
	3250 2200 3250 1750
Connection ~ 3250 1750
Wire Wire Line
	3250 1750 3550 1750
Wire Wire Line
	2900 1750 3150 1750
Wire Wire Line
	3150 1750 3150 2350
Connection ~ 3150 1750
Wire Wire Line
	3150 1750 3250 1750
Wire Wire Line
	3150 2350 4350 2350
Wire Wire Line
	4100 2500 4100 2400
Wire Wire Line
	4100 2400 3050 2400
Wire Wire Line
	3050 2400 3050 1950
Connection ~ 3050 1950
Wire Wire Line
	3050 1950 3550 1950
$EndSCHEMATC
