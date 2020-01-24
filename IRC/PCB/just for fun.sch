EESchema Schematic File Version 4
LIBS:just for fun-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "ManualBot"
Date "2018-10-30"
Rev "rev1"
Comp "Robotics And Automation Centre"
Comment1 "deadpool"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L STM32F103C8T6:BluePill U1
U 1 1 5BD76DC8
P 5750 2750
F 0 "U1" H 5750 3975 50  0000 C CNN
F 1 "BluePill" H 5750 3884 50  0000 C CNN
F 2 "BluePill:STM32BluePill" H 5550 3500 50  0001 C CNN
F 3 "" H 5550 3500 50  0001 C CNN
	1    5750 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:LED GREEN1
U 1 1 5BD78FF0
P 8450 3600
F 0 "GREEN1" V 8488 3482 50  0000 R CNN
F 1 "LED" V 8397 3482 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 8450 3600 50  0001 C CNN
F 3 "~" H 8450 3600 50  0001 C CNN
	1    8450 3600
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED BLUE1
U 1 1 5BD791B4
P 8050 3600
F 0 "BLUE1" V 8088 3483 50  0000 R CNN
F 1 "LED" V 7997 3483 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 8050 3600 50  0001 C CNN
F 3 "~" H 8050 3600 50  0001 C CNN
	1    8050 3600
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED RED1
U 1 1 5BD791FA
P 7650 3600
F 0 "RED1" V 7688 3482 50  0000 R CNN
F 1 "LED" V 7597 3482 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 7650 3600 50  0001 C CNN
F 3 "~" H 7650 3600 50  0001 C CNN
	1    7650 3600
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R2
U 1 1 5BD794B2
P 7650 4050
F 0 "R2" H 7720 4096 50  0000 L CNN
F 1 "330" H 7720 4005 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7580 4050 50  0001 C CNN
F 3 "~" H 7650 4050 50  0001 C CNN
	1    7650 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5BD79516
P 8050 4050
F 0 "R3" H 8120 4096 50  0000 L CNN
F 1 "330" H 8120 4005 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7980 4050 50  0001 C CNN
F 3 "~" H 8050 4050 50  0001 C CNN
	1    8050 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5BD79550
P 8450 4050
F 0 "R4" H 8520 4096 50  0000 L CNN
F 1 "330" H 8520 4005 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 8380 4050 50  0001 C CNN
F 3 "~" H 8450 4050 50  0001 C CNN
	1    8450 4050
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Female J7
U 1 1 5BD79C3B
P 5150 1200
F 0 "J7" V 5250 1250 50  0000 L CNN
F 1 "Conn_01x04_Female" V 4900 900 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Horizontal" H 5150 1200 50  0001 C CNN
F 3 "~" H 5150 1200 50  0001 C CNN
	1    5150 1200
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_BJT:BC547 Q1
U 1 1 5BD7E4AF
P 7000 4200
F 0 "Q1" H 7191 4246 50  0000 L CNN
F 1 "BC547" H 7191 4155 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 7200 4125 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 7000 4200 50  0001 L CNN
	1    7000 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5BD7E59E
P 7100 3850
F 0 "R1" H 7170 3896 50  0000 L CNN
F 1 "470" H 7170 3805 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7030 3850 50  0001 C CNN
F 3 "~" H 7100 3850 50  0001 C CNN
	1    7100 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 4200 8050 4400
Wire Wire Line
	8450 4200 8450 4400
Wire Wire Line
	7650 3750 7650 3900
Wire Wire Line
	8050 3750 8050 3900
Wire Wire Line
	8450 3750 8450 3900
$Comp
L Connector:Conn_01x06_Female DRIVER_B1
U 1 1 5BEC16B0
P 4500 2100
F 0 "DRIVER_B1" H 4527 2076 50  0000 L CNN
F 1 "Conn_01x06_Female" H 4200 1700 50  0000 L CNN
F 2 "BluePill:L298N" H 4500 2100 50  0001 C CNN
F 3 "~" H 4500 2100 50  0001 C CNN
	1    4500 2100
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x06_Female DRIVER_A1
U 1 1 5BEC17C5
P 3950 2800
F 0 "DRIVER_A1" H 3977 2776 50  0000 L CNN
F 1 "Conn_01x06_Female" H 3650 2400 50  0000 L CNN
F 2 "BluePill:L298N" H 3950 2800 50  0001 C CNN
F 3 "~" H 3950 2800 50  0001 C CNN
	1    3950 2800
	-1   0    0    1   
$EndComp
Wire Wire Line
	5300 3100 5300 3150
Wire Wire Line
	5300 2800 5300 2850
Wire Wire Line
	5300 2950 5300 2900
Wire Wire Line
	4150 2600 4150 2650
Wire Wire Line
	4150 2650 4750 2650
Wire Wire Line
	4750 1900 4700 1900
$Comp
L Connector:Conn_01x06_Male GND_RAIL1
U 1 1 5BEF3499
P 8350 1750
F 0 "GND_RAIL1" V 8410 1990 50  0000 L CNN
F 1 "Conn_01x06_Male" V 8501 1990 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Horizontal" H 8350 1750 50  0001 C CNN
F 3 "~" H 8350 1750 50  0001 C CNN
	1    8350 1750
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x06_Male POS_RAIL1
U 1 1 5BEF35CE
P 8350 2000
F 0 "POS_RAIL1" V 8410 2240 50  0000 L CNN
F 1 "Conn_01x06_Male" V 8501 2240 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Horizontal" H 8350 2000 50  0001 C CNN
F 3 "~" H 8350 2000 50  0001 C CNN
	1    8350 2000
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x06_Male Servo_Rail1
U 1 1 5BEF364E
P 8350 2250
F 0 "Servo_Rail1" V 8410 2490 50  0000 L CNN
F 1 "Conn_01x06_Male" V 8501 2490 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Horizontal" H 8350 2250 50  0001 C CNN
F 3 "~" H 8350 2250 50  0001 C CNN
	1    8350 2250
	0    1    1    0   
$EndComp
Wire Wire Line
	8550 2200 8450 2200
Connection ~ 8050 2200
Wire Wire Line
	8050 2200 7800 2200
Connection ~ 8150 2200
Wire Wire Line
	8150 2200 8050 2200
Connection ~ 8250 2200
Wire Wire Line
	8250 2200 8150 2200
Connection ~ 8350 2200
Wire Wire Line
	8350 2200 8250 2200
Connection ~ 8450 2200
Wire Wire Line
	8450 2200 8350 2200
Wire Wire Line
	8550 2350 8550 2450
Wire Wire Line
	8550 2800 6950 2800
Wire Wire Line
	6950 2800 6950 3250
Wire Wire Line
	6950 3250 6200 3250
Wire Wire Line
	8450 2350 8450 2450
Wire Wire Line
	8450 2700 6900 2700
Wire Wire Line
	6900 2700 6900 3150
Wire Wire Line
	6900 3150 6200 3150
Wire Wire Line
	8350 2350 8350 2450
Wire Wire Line
	6800 2600 6800 3050
Wire Wire Line
	6800 3050 6200 3050
Wire Wire Line
	8250 2350 8250 2450
Wire Wire Line
	8250 2550 6750 2550
Wire Wire Line
	6700 2500 8150 2500
Wire Wire Line
	8150 2500 8150 2450
$Comp
L Connector:Screw_Terminal_01x02 Battery1
U 1 1 5BF18DF6
P 8250 1100
F 0 "Battery1" H 8330 1092 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 8330 1001 50  0000 L CNN
F 2 "TerminalBlock_MetzConnect:TerminalBlock_MetzConnect_Type094_RT03502HBLU_1x02_P5.00mm_Horizontal" H 8250 1100 50  0001 C CNN
F 3 "~" H 8250 1100 50  0001 C CNN
	1    8250 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 1100 7950 1100
$Comp
L pspice:DIODE D1
U 1 1 5BF26B8E
P 6100 1000
F 0 "D1" H 6100 735 50  0000 C CNN
F 1 "DIODE" H 6100 826 50  0000 C CNN
F 2 "Diode_THT:D_DO-15_P12.70mm_Horizontal" H 6100 1000 50  0001 C CNN
F 3 "~" H 6100 1000 50  0001 C CNN
	1    6100 1000
	-1   0    0    1   
$EndComp
Wire Wire Line
	5900 1000 5700 1000
$Comp
L Connector:Conn_01x03_Male J13
U 1 1 5BF37571
P 9800 2150
F 0 "J13" H 9906 2428 50  0000 C CNN
F 1 "Conn_01x03_Male" V 9906 2337 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Horizontal" H 9800 2150 50  0001 C CNN
F 3 "~" H 9800 2150 50  0001 C CNN
	1    9800 2150
	-1   0    0    1   
$EndComp
Wire Wire Line
	8550 2150 8550 2200
Connection ~ 8550 2200
Connection ~ 8550 2450
Wire Wire Line
	8550 2450 8550 2800
Connection ~ 8450 2450
Wire Wire Line
	8450 2450 8450 2700
Connection ~ 8350 2450
Wire Wire Line
	8350 2450 8350 2600
Connection ~ 8250 2450
Wire Wire Line
	8250 2450 8250 2550
Connection ~ 8150 2450
Wire Wire Line
	8150 2450 8150 2350
Wire Wire Line
	7850 1950 8050 1950
Connection ~ 8050 1950
Wire Wire Line
	8050 1950 8150 1950
Connection ~ 8150 1950
Wire Wire Line
	8150 1950 8250 1950
Connection ~ 8250 1950
Wire Wire Line
	8250 1950 8350 1950
Connection ~ 8350 1950
Wire Wire Line
	8350 1950 8450 1950
Connection ~ 8450 1950
Wire Wire Line
	8450 1950 8550 1950
Wire Wire Line
	9600 1950 9600 2050
Connection ~ 8550 1950
Wire Wire Line
	6300 2250 6300 2150
Wire Wire Line
	6300 2150 6200 2150
Wire Wire Line
	7050 3350 7050 3600
$Comp
L Device:Buzzer BZ1
U 1 1 5BF09723
P 6750 1900
F 0 "BZ1" V 6802 1713 50  0000 R CNN
F 1 "Buzzer" V 6711 1713 50  0000 R CNN
F 2 "Buzzer_Beeper:Buzzer_12x9.5RM7.6" V 6725 2000 50  0001 C CNN
F 3 "~" V 6725 2000 50  0001 C CNN
	1    6750 1900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6850 2000 7050 2000
$Comp
L Connector:Screw_Terminal_01x02 Motor_Pwr1
U 1 1 5BF1BEC9
P 4050 2100
F 0 "Motor_Pwr1" H 4130 2092 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 4130 2001 50  0000 L CNN
F 2 "TerminalBlock_MetzConnect:TerminalBlock_MetzConnect_Type094_RT03502HBLU_1x02_P5.00mm_Horizontal" H 4050 2100 50  0001 C CNN
F 3 "~" H 4050 2100 50  0001 C CNN
	1    4050 2100
	-1   0    0    1   
$EndComp
Wire Wire Line
	4250 2000 4250 1700
Wire Wire Line
	4250 1700 3750 1700
Wire Wire Line
	3750 1700 3750 2700
Wire Wire Line
	3750 1700 3750 650 
Wire Wire Line
	3750 650  7950 650 
Connection ~ 3750 1700
Wire Wire Line
	6300 2250 9600 2250
$Comp
L BuckBoostConverter:BuckBoost U2
U 1 1 5BF47D33
P 7400 1400
F 0 "U2" V 7025 1475 50  0000 C CNN
F 1 "BuckBoost" V 7116 1475 50  0000 C CNN
F 2 "BuckBoost:BuckBoostConverter(5A)" H 7450 1600 50  0001 C CNN
F 3 "" H 7450 1600 50  0001 C CNN
	1    7400 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 3550 5150 4050
$Comp
L Device:Laserdiode_1A3C LD1
U 1 1 5BF3A712
P 7350 3950
F 0 "LD1" V 7346 3862 50  0000 R CNN
F 1 "Laserdiode_1A3C" V 7255 3862 50  0000 R CNN
F 2 "BluePill:LASER" H 7250 3925 50  0001 C CNN
F 3 "~" H 7380 3750 50  0001 C CNN
	1    7350 3950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5150 3550 5300 3550
$Comp
L LogicLevelConverter:SparkfunLogicLevelConverter U3
U 1 1 5BF77E25
P 4750 3200
F 0 "U3" H 4700 3575 50  0000 C CNN
F 1 "SparkfunLogicLevelConverter" H 4700 3484 50  0000 C CNN
F 2 "BluePill:Logic_level" H 4550 3400 50  0001 C CNN
F 3 "" H 4550 3400 50  0001 C CNN
	1    4750 3200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5BFAFED0
P 7350 4250
F 0 "#PWR0101" H 7350 4000 50  0001 C CNN
F 1 "GND" H 7355 4077 50  0000 C CNN
F 2 "" H 7350 4250 50  0001 C CNN
F 3 "" H 7350 4250 50  0001 C CNN
	1    7350 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 3550 5150 3150
Wire Wire Line
	5150 3150 5000 3150
Connection ~ 5150 3550
Wire Wire Line
	4500 3150 4500 3200
Wire Wire Line
	4500 3200 4750 3200
Wire Wire Line
	4750 3200 4750 3550
Wire Wire Line
	4750 3550 5150 3550
Wire Wire Line
	4500 3050 4400 3050
Wire Wire Line
	4700 1800 4700 1850
Wire Wire Line
	5300 3450 5300 3500
Wire Wire Line
	5300 3500 5700 3500
Wire Wire Line
	5300 3350 5050 3350
Wire Wire Line
	5050 3350 5050 3450
Wire Wire Line
	5050 3450 5000 3450
Wire Wire Line
	5000 3350 5000 3300
Wire Wire Line
	5300 3300 5300 3250
Wire Wire Line
	5000 3050 5000 3100
Wire Wire Line
	5000 3100 5300 3100
Wire Wire Line
	5000 2950 5000 3000
Wire Wire Line
	4150 2900 4150 2850
Wire Wire Line
	4150 2850 4700 2850
Wire Wire Line
	5250 2850 5250 2900
Wire Wire Line
	5250 2900 5300 2900
Wire Wire Line
	5300 2800 5000 2800
Wire Wire Line
	5300 2750 5100 2750
Wire Wire Line
	4150 2750 4150 2700
$Comp
L power:GND #PWR0102
U 1 1 5C07106D
P 3850 2800
F 0 "#PWR0102" H 3850 2550 50  0001 C CNN
F 1 "GND" H 3855 2627 50  0000 C CNN
F 2 "" H 3850 2800 50  0001 C CNN
F 3 "" H 3850 2800 50  0001 C CNN
	1    3850 2800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5C071127
P 4250 2100
F 0 "#PWR0103" H 4250 1850 50  0001 C CNN
F 1 "GND" H 4255 1927 50  0000 C CNN
F 2 "" H 4250 2100 50  0001 C CNN
F 3 "" H 4250 2100 50  0001 C CNN
	1    4250 2100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5C07123A
P 6950 1150
F 0 "#PWR0104" H 6950 900 50  0001 C CNN
F 1 "GND" H 6955 977 50  0000 C CNN
F 2 "" H 6950 1150 50  0001 C CNN
F 3 "" H 6950 1150 50  0001 C CNN
	1    6950 1150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5C07130C
P 7850 1150
F 0 "#PWR0105" H 7850 900 50  0001 C CNN
F 1 "GND" H 7855 977 50  0000 C CNN
F 2 "" H 7850 1150 50  0001 C CNN
F 3 "" H 7850 1150 50  0001 C CNN
	1    7850 1150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5C071347
P 8050 1200
F 0 "#PWR0106" H 8050 950 50  0001 C CNN
F 1 "GND" H 8055 1027 50  0000 C CNN
F 2 "" H 8050 1200 50  0001 C CNN
F 3 "" H 8050 1200 50  0001 C CNN
	1    8050 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 1950 9600 1950
$Comp
L power:GND #PWR0107
U 1 1 5C07153E
P 5150 4050
F 0 "#PWR0107" H 5150 3800 50  0001 C CNN
F 1 "GND" H 5155 3877 50  0000 C CNN
F 2 "" H 5150 4050 50  0001 C CNN
F 3 "" H 5150 4050 50  0001 C CNN
	1    5150 4050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5C0715CB
P 7650 4650
F 0 "#PWR0108" H 7650 4400 50  0001 C CNN
F 1 "GND" H 7655 4477 50  0000 C CNN
F 2 "" H 7650 4650 50  0001 C CNN
F 3 "" H 7650 4650 50  0001 C CNN
	1    7650 4650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 5C071606
P 8050 4400
F 0 "#PWR0109" H 8050 4150 50  0001 C CNN
F 1 "GND" H 8055 4227 50  0000 C CNN
F 2 "" H 8050 4400 50  0001 C CNN
F 3 "" H 8050 4400 50  0001 C CNN
	1    8050 4400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5C071641
P 8450 4400
F 0 "#PWR0110" H 8450 4150 50  0001 C CNN
F 1 "GND" H 8455 4227 50  0000 C CNN
F 2 "" H 8450 4400 50  0001 C CNN
F 3 "" H 8450 4400 50  0001 C CNN
	1    8450 4400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 5C071724
P 7850 1950
F 0 "#PWR0111" H 7850 1700 50  0001 C CNN
F 1 "GND" H 7855 1777 50  0000 C CNN
F 2 "" H 7850 1950 50  0001 C CNN
F 3 "" H 7850 1950 50  0001 C CNN
	1    7850 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 2200 9600 2150
Wire Wire Line
	9600 2200 8550 2200
$Comp
L power:GND #PWR0112
U 1 1 5C08167B
P 7050 2000
F 0 "#PWR0112" H 7050 1750 50  0001 C CNN
F 1 "GND" H 7055 1827 50  0000 C CNN
F 2 "" H 7050 2000 50  0001 C CNN
F 3 "" H 7050 2000 50  0001 C CNN
	1    7050 2000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 5C09AB40
P 5250 1400
F 0 "#PWR0113" H 5250 1150 50  0001 C CNN
F 1 "GND" H 5255 1227 50  0000 C CNN
F 2 "" H 5250 1400 50  0001 C CNN
F 3 "" H 5250 1400 50  0001 C CNN
	1    5250 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 3250 5100 3250
Wire Wire Line
	4400 1850 4700 1850
Wire Wire Line
	4500 2400 4700 2400
Wire Wire Line
	4700 2400 4700 2300
Wire Wire Line
	4500 2400 4500 2950
Wire Wire Line
	4150 3000 4150 3350
Wire Wire Line
	4150 3350 4500 3350
Wire Wire Line
	3900 3450 3900 2550
Wire Wire Line
	3900 2550 4150 2550
Wire Wire Line
	4150 2550 4150 2500
Wire Wire Line
	3900 3450 4500 3450
Wire Wire Line
	5700 1000 5700 3500
$Comp
L Connector:Screw_Terminal_01x03 J1
U 1 1 5C0D1E4E
P 3550 2800
F 0 "J1" H 3470 2475 50  0000 C CNN
F 1 "Screw_Terminal_01x03" H 3470 2566 50  0000 C CNN
F 2 "TerminalBlock_MetzConnect:TerminalBlock_MetzConnect_Type094_RT03503HBLU_1x03_P5.00mm_Horizontal" H 3550 2800 50  0001 C CNN
F 3 "~" H 3550 2800 50  0001 C CNN
	1    3550 2800
	-1   0    0    1   
$EndComp
Wire Wire Line
	3750 2800 3850 2800
Wire Wire Line
	4500 3250 3750 3250
Wire Wire Line
	3750 3250 3750 2900
Wire Wire Line
	6200 1950 6250 1950
Wire Wire Line
	6250 1950 6250 1450
Wire Wire Line
	6800 2600 8350 2600
Wire Wire Line
	7350 3000 7250 3000
Wire Wire Line
	7250 3000 7250 1700
Wire Wire Line
	7050 3150 7050 3300
Wire Wire Line
	7050 3300 6700 3300
Wire Wire Line
	7150 3450 7150 3250
Wire Wire Line
	7050 3600 6450 3600
Wire Wire Line
	6950 1600 6900 1600
Wire Wire Line
	6600 1600 6600 1000
Wire Wire Line
	6300 1000 6600 1000
Wire Wire Line
	7950 650  7950 1100
Wire Wire Line
	7250 1700 6850 1700
Wire Wire Line
	6850 1700 6850 1600
Connection ~ 6850 1600
Wire Wire Line
	6850 1600 6600 1600
$Comp
L pspice:DIODE D5
U 1 1 5C03375C
P 4950 2650
F 0 "D5" H 4950 2385 50  0000 C CNN
F 1 "DIODE" H 4950 2476 50  0000 C CNN
F 2 "Diode_THT:D_DO-15_P12.70mm_Horizontal" H 4950 2650 50  0001 C CNN
F 3 "~" H 4950 2650 50  0001 C CNN
	1    4950 2650
	-1   0    0    1   
$EndComp
Wire Wire Line
	5150 2650 5300 2650
$Comp
L pspice:DIODE D3
U 1 1 5C033954
P 4900 2750
F 0 "D3" H 4900 2485 50  0000 C CNN
F 1 "DIODE" H 4900 2576 50  0000 C CNN
F 2 "Diode_THT:D_DO-15_P12.70mm_Horizontal" H 4900 2750 50  0001 C CNN
F 3 "~" H 4900 2750 50  0001 C CNN
	1    4900 2750
	-1   0    0    1   
$EndComp
Wire Wire Line
	4700 2750 4150 2750
$Comp
L pspice:DIODE D2
U 1 1 5C0339AC
P 4800 2800
F 0 "D2" H 4800 2535 50  0000 C CNN
F 1 "DIODE" H 4800 2626 50  0000 C CNN
F 2 "Diode_THT:D_DO-15_P12.70mm_Horizontal" H 4800 2800 50  0001 C CNN
F 3 "~" H 4800 2800 50  0001 C CNN
	1    4800 2800
	-1   0    0    1   
$EndComp
Wire Wire Line
	4600 2800 4150 2800
$Comp
L pspice:DIODE D4
U 1 1 5C033A14
P 4900 2850
F 0 "D4" H 4900 2585 50  0000 C CNN
F 1 "DIODE" H 4900 2676 50  0000 C CNN
F 2 "Diode_THT:D_DO-15_P12.70mm_Horizontal" H 4900 2850 50  0001 C CNN
F 3 "~" H 4900 2850 50  0001 C CNN
	1    4900 2850
	-1   0    0    1   
$EndComp
Wire Wire Line
	5100 2850 5250 2850
Wire Wire Line
	7950 1100 7950 1600
Wire Wire Line
	7950 1600 7850 1600
Connection ~ 7950 1100
Wire Wire Line
	6750 2950 6200 2950
Wire Wire Line
	6750 2550 6750 2950
Wire Wire Line
	6700 2650 6200 2650
Wire Wire Line
	6700 2500 6700 2650
Wire Wire Line
	6650 2550 6650 2450
Wire Wire Line
	6200 2550 6650 2550
Wire Wire Line
	8050 2350 8050 2450
Wire Wire Line
	8050 2450 6650 2450
Connection ~ 8050 2450
Wire Wire Line
	6200 2250 6250 2250
Wire Wire Line
	6250 2250 6250 2300
Wire Wire Line
	6250 2300 6650 2300
Wire Wire Line
	6650 2300 6650 2000
Wire Wire Line
	6200 2350 6450 2350
Wire Wire Line
	6450 2350 6450 3600
Wire Wire Line
	6600 3450 6600 2450
Wire Wire Line
	6600 2450 6200 2450
Wire Wire Line
	6600 3450 7150 3450
Wire Wire Line
	6700 3300 6700 2750
Wire Wire Line
	6700 2750 6200 2750
Wire Wire Line
	7650 4200 7650 4650
Wire Wire Line
	6200 2850 6300 2850
$Comp
L power:GND #PWR01
U 1 1 5C0CBAF8
P 7100 4400
F 0 "#PWR01" H 7100 4150 50  0001 C CNN
F 1 "GND" H 7105 4227 50  0000 C CNN
F 2 "" H 7100 4400 50  0001 C CNN
F 3 "" H 7100 4400 50  0001 C CNN
	1    7100 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 3000 7350 3600
Wire Wire Line
	7350 3600 7100 3600
Wire Wire Line
	7100 3600 7100 3700
Connection ~ 7350 3600
Wire Wire Line
	7350 3600 7350 3750
Wire Wire Line
	6300 4200 6300 2850
Wire Wire Line
	6300 4200 6800 4200
$Comp
L pspice:DIODE D8
U 1 1 5C0405D2
P 5100 1850
F 0 "D8" H 5100 1585 50  0000 C CNN
F 1 "DIODE" H 5100 1676 50  0000 C CNN
F 2 "Diode_THT:D_DO-15_P12.70mm_Horizontal" H 5100 1850 50  0001 C CNN
F 3 "~" H 5100 1850 50  0001 C CNN
	1    5100 1850
	-1   0    0    1   
$EndComp
$Comp
L pspice:DIODE D9
U 1 1 5C0406EA
P 4900 2100
F 0 "D9" H 4900 1835 50  0000 C CNN
F 1 "DIODE" H 4900 1926 50  0000 C CNN
F 2 "Diode_THT:D_DO-15_P12.70mm_Horizontal" H 4900 2100 50  0001 C CNN
F 3 "~" H 4900 2100 50  0001 C CNN
	1    4900 2100
	-1   0    0    1   
$EndComp
Wire Wire Line
	5300 2050 5250 2050
Wire Wire Line
	5250 2050 5250 2200
Wire Wire Line
	5250 2200 5100 2200
Wire Wire Line
	5300 2250 5300 2300
Wire Wire Line
	5300 2300 5500 2300
Wire Wire Line
	5500 2300 5500 1600
Wire Wire Line
	5500 1600 5050 1600
Wire Wire Line
	5350 1450 5350 1400
Wire Wire Line
	5050 1400 5050 1600
Wire Wire Line
	5150 1400 5150 1550
Wire Wire Line
	5150 1550 5550 1550
Wire Wire Line
	5550 1550 5550 2400
Wire Wire Line
	5550 2400 5300 2400
Wire Wire Line
	5300 2400 5300 2350
Wire Wire Line
	5000 3300 5300 3300
Wire Wire Line
	5300 3000 5300 3050
Wire Wire Line
	5000 3000 5300 3000
Wire Wire Line
	5100 3250 5100 3600
Wire Wire Line
	5100 3600 4800 3600
Wire Wire Line
	4800 3600 4800 3650
Wire Wire Line
	7650 3350 7050 3350
Wire Wire Line
	7650 3350 7650 3450
Wire Wire Line
	8050 3150 7050 3150
Wire Wire Line
	8050 3150 8050 3450
Wire Wire Line
	7150 3250 8450 3250
Wire Wire Line
	8450 3250 8450 3450
Connection ~ 7100 3700
Wire Wire Line
	7100 3700 7100 3750
Wire Wire Line
	5200 3650 5200 3850
Wire Wire Line
	5200 3850 5800 3850
Wire Wire Line
	5800 3850 5800 1450
Wire Wire Line
	5350 1450 5800 1450
Wire Wire Line
	5200 3650 5300 3650
Connection ~ 5800 1450
Wire Wire Line
	5800 1450 6250 1450
$Comp
L pspice:DIODE D6
U 1 1 5C040DFB
P 4900 2250
F 0 "D6" H 4900 1985 50  0000 C CNN
F 1 "DIODE" H 4900 2076 50  0000 C CNN
F 2 "Diode_THT:D_DO-15_P12.70mm_Horizontal" H 4900 2250 50  0001 C CNN
F 3 "~" H 4900 2250 50  0001 C CNN
	1    4900 2250
	-1   0    0    1   
$EndComp
Wire Wire Line
	4400 1850 4400 3050
Wire Wire Line
	4700 2000 4800 2000
Wire Wire Line
	4700 2200 4700 2250
Wire Wire Line
	5100 2250 5100 2200
Wire Wire Line
	5100 2100 5200 2100
Wire Wire Line
	5200 2100 5200 1950
Wire Wire Line
	5200 1950 5300 1950
$Comp
L pspice:DIODE D7
U 1 1 5C040A5B
P 5050 1700
F 0 "D7" H 5050 1435 50  0000 C CNN
F 1 "DIODE" H 5050 1526 50  0000 C CNN
F 2 "Diode_THT:D_DO-15_P12.70mm_Horizontal" H 5050 1700 50  0001 C CNN
F 3 "~" H 5050 1700 50  0001 C CNN
	1    5050 1700
	-1   0    0    1   
$EndComp
Wire Wire Line
	5250 1700 5250 1750
Wire Wire Line
	5250 1750 5300 1750
Wire Wire Line
	4750 1700 4850 1700
Wire Wire Line
	4750 1700 4750 1900
Wire Wire Line
	4800 2000 4800 1850
Wire Wire Line
	4800 1850 4900 1850
$Comp
L Device:R R5
U 1 1 5C12B13F
P 4950 3650
F 0 "R5" V 4743 3650 50  0000 C CNN
F 1 "R" V 4834 3650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4880 3650 50  0001 C CNN
F 3 "~" H 4950 3650 50  0001 C CNN
	1    4950 3650
	0    1    1    0   
$EndComp
Wire Wire Line
	5100 3650 5200 3650
Connection ~ 5200 3650
$Comp
L pspice:DIODE D10
U 1 1 5C0546C8
P 7600 2200
F 0 "D10" H 7600 1935 50  0000 C CNN
F 1 "DIODE" H 7600 2026 50  0000 C CNN
F 2 "Diode_THT:D_DO-15_P12.70mm_Horizontal" H 7600 2200 50  0001 C CNN
F 3 "~" H 7600 2200 50  0001 C CNN
	1    7600 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 2200 7350 2200
Wire Wire Line
	6900 1600 6900 1650
Wire Wire Line
	6900 1650 7350 1650
Wire Wire Line
	7350 1650 7350 2200
Connection ~ 6900 1600
Wire Wire Line
	6900 1600 6850 1600
$EndSCHEMATC