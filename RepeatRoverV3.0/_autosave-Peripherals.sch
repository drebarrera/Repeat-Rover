EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
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
L Device:C C?
U 1 1 6336AFC4
P 10600 1500
AR Path="/6336AFC4" Ref="C?"  Part="1" 
AR Path="/63354A1D/6336AFC4" Ref="C?"  Part="1" 
F 0 "C?" H 10485 1454 50  0000 R CNN
F 1 ".1uF" H 10485 1545 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 10638 1350 50  0001 C CNN
F 3 "~" H 10600 1500 50  0001 C CNN
	1    10600 1500
	-1   0    0    1   
$EndComp
$Comp
L Interface_Expansion:PCA9516 h-bridge?
U 1 1 6336AFCA
P 8550 2150
AR Path="/6336AFCA" Ref="h-bridge?"  Part="1" 
AR Path="/63354A1D/6336AFCA" Ref="h-bridge?"  Part="1" 
F 0 "h-bridge?" H 8630 3000 50  0000 L CNN
F 1 "YX-1818BM" H 8630 2900 50  0000 L CNN
F 2 "" H 8630 2900 50  0000 L CNN
F 3 "http://www.nxp.com/documents/data_sheet/PCA9518.pdf" H 6950 2400 50  0001 C CNN
	1    8550 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6336AFD0
P 9950 1550
AR Path="/6336AFD0" Ref="C?"  Part="1" 
AR Path="/63354A1D/6336AFD0" Ref="C?"  Part="1" 
F 0 "C?" V 9750 1750 50  0000 R CNN
F 1 ".1uF" V 9850 1800 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 9988 1400 50  0001 C CNN
F 3 "~" H 9950 1550 50  0001 C CNN
	1    9950 1550
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6336AFD6
P 9400 2900
AR Path="/6336AFD6" Ref="#PWR?"  Part="1" 
AR Path="/63354A1D/6336AFD6" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9400 2650 50  0001 C CNN
F 1 "GND" H 9400 2700 50  0000 C CNN
F 2 "" H 9400 2900 50  0001 C CNN
F 3 "" H 9400 2900 50  0001 C CNN
	1    9400 2900
	1    0    0    -1  
$EndComp
$Comp
L RepeatRover-rescue:+3.3V-power #PWR?
U 1 1 6336AFDC
P 7650 1950
AR Path="/6336AFDC" Ref="#PWR?"  Part="1" 
AR Path="/63354A1D/6336AFDC" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7650 1800 50  0001 C CNN
F 1 "+3.3V" H 7665 2123 50  0000 C CNN
F 2 "" H 7650 1950 50  0001 C CNN
F 3 "" H 7650 1950 50  0001 C CNN
	1    7650 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 1650 9800 1550
Wire Wire Line
	9400 2550 9400 2900
Wire Wire Line
	9400 2450 9400 2550
Wire Wire Line
	9400 2050 9400 2450
Wire Wire Line
	9400 1750 9400 2050
Wire Wire Line
	9150 2550 9400 2550
Wire Wire Line
	9150 2450 9400 2450
Wire Wire Line
	9150 2050 9400 2050
Wire Wire Line
	9150 1750 9400 1750
Wire Wire Line
	9150 1650 9800 1650
Wire Wire Line
	7950 2650 7650 2650
Wire Wire Line
	7650 2150 7950 2150
Wire Wire Line
	7650 2150 7650 2650
Wire Wire Line
	7650 2150 7650 1950
NoConn ~ 7950 2350
NoConn ~ 7950 1650
Connection ~ 9400 2550
Connection ~ 9400 2450
Connection ~ 9400 2050
Connection ~ 7650 2150
$Comp
L HallEffect:DRV5057 U?
U 1 1 6336DBD8
P 10100 5000
AR Path="/6336DBD8" Ref="U?"  Part="1" 
AR Path="/63354A1D/6336DBD8" Ref="U?"  Part="1" 
F 0 "U?" H 10100 5315 50  0000 C CNN
F 1 "DRV5057" H 10100 5224 50  0000 C CNN
F 2 "Hall Effect Footprint:SENSOR_DRV5055A2QLPGM" H 10100 5200 50  0001 C CNN
F 3 "" H 10100 5200 50  0001 C CNN
	1    10100 5000
	1    0    0    -1  
$EndComp
$Comp
L HallEffect:DRV5057 U?
U 1 1 6336DBDE
P 10100 5750
AR Path="/6336DBDE" Ref="U?"  Part="1" 
AR Path="/63354A1D/6336DBDE" Ref="U?"  Part="1" 
F 0 "U?" H 10100 6065 50  0000 C CNN
F 1 "DRV5057" H 10100 5974 50  0000 C CNN
F 2 "Hall Effect Footprint:SENSOR_DRV5055A2QLPGM" H 10100 5950 50  0001 C CNN
F 3 "" H 10100 5950 50  0001 C CNN
	1    10100 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	10400 5100 10800 5100
Wire Wire Line
	10800 5100 10800 5850
Wire Wire Line
	10800 5850 10400 5850
Wire Wire Line
	10800 5850 10800 6200
Connection ~ 10800 5850
$Comp
L power:GND #PWR?
U 1 1 6336DBE9
P 10800 6200
AR Path="/6336DBE9" Ref="#PWR?"  Part="1" 
AR Path="/63354A1D/6336DBE9" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 10800 5950 50  0001 C CNN
F 1 "GND" H 10805 6027 50  0000 C CNN
F 2 "" H 10800 6200 50  0001 C CNN
F 3 "" H 10800 6200 50  0001 C CNN
	1    10800 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 5700 9300 5700
Wire Wire Line
	9300 5700 9300 4950
Wire Wire Line
	9300 4950 9800 4950
Wire Wire Line
	9300 4950 9300 4700
Connection ~ 9300 4950
$Comp
L power:+3.3V #PWR?
U 1 1 6336DBF4
P 9300 4700
AR Path="/6336DBF4" Ref="#PWR?"  Part="1" 
AR Path="/63354A1D/6336DBF4" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9300 4550 50  0001 C CNN
F 1 "+3.3V" H 9315 4873 50  0000 C CNN
F 2 "" H 9300 4700 50  0001 C CNN
F 3 "" H 9300 4700 50  0001 C CNN
	1    9300 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 5200 9500 5200
Wire Wire Line
	9800 5950 9500 5950
Text Label 9500 5200 0    50   ~ 0
WSS1
Text Label 9500 5950 0    50   ~ 0
WSS2
Connection ~ 2850 7100
Connection ~ 3050 4550
Connection ~ 3150 5600
Connection ~ 3150 5700
NoConn ~ 1400 4350
NoConn ~ 1400 4450
NoConn ~ 2800 4050
NoConn ~ 2800 4150
Wire Wire Line
	1250 5900 950  5900
Wire Wire Line
	1250 6000 950  6000
Wire Wire Line
	1250 6300 1250 7100
Wire Wire Line
	1250 7100 2400 7100
Wire Wire Line
	1400 3950 1200 3950
Wire Wire Line
	1400 4150 1200 4150
Wire Wire Line
	2700 7100 2850 7100
Wire Wire Line
	2800 3750 3000 3750
Wire Wire Line
	2800 3950 3050 3950
Wire Wire Line
	2800 4250 3050 4250
Wire Wire Line
	2800 4450 3050 4450
Wire Wire Line
	2850 5600 3150 5600
Wire Wire Line
	2850 5700 3150 5700
Wire Wire Line
	2850 6600 2850 7100
Wire Wire Line
	2850 7100 2850 7350
Wire Wire Line
	3000 3750 3000 3550
Wire Wire Line
	3050 4450 3050 4550
Wire Wire Line
	3050 4550 2800 4550
Wire Wire Line
	3050 4550 3050 4650
Wire Wire Line
	3150 5600 3150 5350
Wire Wire Line
	3150 5700 3150 5600
Wire Wire Line
	3150 6000 3150 7100
Wire Wire Line
	3150 7100 2850 7100
Text Label 950  5900 0    50   ~ 0
SCL
Text Label 950  6000 0    50   ~ 0
SDA
Text Label 1200 3950 0    50   ~ 0
SCLK
Text Label 1200 4150 0    50   ~ 0
MOSI
Text Label 3050 3950 2    50   ~ 0
MISO
Text Label 3050 4250 2    50   ~ 0
CS
$Comp
L RepeatRover-rescue:+3.3V-power #PWR?
U 1 1 633785C2
P 3000 3550
F 0 "#PWR?" H 3000 3400 50  0001 C CNN
F 1 "+3.3V" H 3015 3723 50  0000 C CNN
F 2 "" H 3000 3550 50  0001 C CNN
F 3 "" H 3000 3550 50  0001 C CNN
	1    3000 3550
	1    0    0    -1  
$EndComp
$Comp
L power:+3V0 #PWR?
U 1 1 633785C8
P 3150 5350
F 0 "#PWR?" H 3150 5200 50  0001 C CNN
F 1 "+3V0" H 3165 5523 50  0000 C CNN
F 2 "" H 3150 5350 50  0001 C CNN
F 3 "" H 3150 5350 50  0001 C CNN
	1    3150 5350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 633785CE
P 2850 7350
F 0 "#PWR?" H 2850 7100 50  0001 C CNN
F 1 "GND" H 2855 7177 50  0000 C CNN
F 2 "" H 2850 7350 50  0001 C CNN
F 3 "" H 2850 7350 50  0001 C CNN
	1    2850 7350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 633785D4
P 3050 4650
F 0 "#PWR?" H 3050 4400 50  0001 C CNN
F 1 "GND" H 3055 4477 50  0000 C CNN
F 2 "" H 3050 4650 50  0001 C CNN
F 3 "" H 3050 4650 50  0001 C CNN
	1    3050 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 633785DA
P 2550 7100
F 0 "C?" V 2298 7100 50  0000 C CNN
F 1 "10uF" V 2389 7100 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2588 6950 50  0001 C CNN
F 3 "~" H 2550 7100 50  0001 C CNN
	1    2550 7100
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 633785E0
P 3150 5850
F 0 "C?" H 3035 5804 50  0000 R CNN
F 1 "1uF" H 3035 5895 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3188 5700 50  0001 C CNN
F 3 "~" H 3150 5850 50  0001 C CNN
	1    3150 5850
	-1   0    0    1   
$EndComp
$Comp
L 104031-0811:104031-0811 SD_SLOT?
U 1 1 633785EA
P 2100 4150
AR Path="/633785EA" Ref="SD_SLOT?"  Part="1" 
AR Path="/63354A1D/633785EA" Ref="SD_SLOT"  Part="1" 
F 0 "SD_SLOT" H 2100 4815 50  0000 C CNN
F 1 "104031-0811" H 2100 4724 50  0000 C CNN
F 2 "104031-0811:MOLEX_104031-0811" H 2100 4150 50  0001 L BNN
F 3 "" H 2100 4150 50  0001 L BNN
F 4 "Molex" H 2100 4150 50  0001 L BNN "MANUFACTURER"
F 5 "B2" H 2100 4150 50  0001 L BNN "PARTREV"
F 6 "Manufacturer Recommendations" H 2100 4150 50  0001 L BNN "STANDARD"
F 7 "1.57mm" H 2100 4150 50  0001 L BNN "MAXIMUM_PACKAGE_HEIGHT"
	1    2100 4150
	1    0    0    -1  
$EndComp
$Comp
L MMC5983MA:MMC5983MA MAG?
U 1 1 633785F4
P 2050 6100
AR Path="/633785F4" Ref="MAG?"  Part="1" 
AR Path="/63354A1D/633785F4" Ref="MAG"  Part="1" 
F 0 "MAG" H 2050 6867 50  0000 C CNN
F 1 "MMC5983MA" H 2050 6776 50  0000 C CNN
F 2 "MMC5983MA:PQFN50P300X300X100-16N" H 2050 6100 50  0001 L BNN
F 3 "" H 2050 6100 50  0001 L BNN
F 4 "A" H 2050 6100 50  0001 L BNN "PARTREV"
F 5 "1.00 mm" H 2050 6100 50  0001 L BNN "MAXIMUM_PACKAGE_HEIGHT"
F 6 "IPC 7351B" H 2050 6100 50  0001 L BNN "STANDARD"
F 7 "Memsic Inc." H 2050 6100 50  0001 L BNN "MANUFACTURER"
	1    2050 6100
	1    0    0    -1  
$EndComp
$Comp
L HallEffect:YX1818BM U_HB?
U 1 1 633785FA
P 2200 1250
F 0 "U_HB?" H 2200 1375 50  0000 C CNN
F 1 "YX1818BM" H 2200 1284 50  0000 C CNN
F 2 "Package_SO:SOP-16_4.55x10.3mm_P1.27mm" H 2200 1250 50  0001 C CNN
F 3 "" H 2200 1250 50  0001 C CNN
	1    2200 1250
	1    0    0    -1  
$EndComp
$Comp
L Motor:Motor_DC M?
U 1 1 63378600
P 3400 1150
F 0 "M?" V 3695 1100 50  0000 C CNN
F 1 "Motor_DC" V 3604 1100 50  0000 C CNN
F 2 "" H 3400 1060 50  0001 C CNN
F 3 "~" H 3400 1060 50  0001 C CNN
	1    3400 1150
	0    -1   -1   0   
$EndComp
$Comp
L Motor:Motor_DC M?
U 1 1 63378606
P 3400 2150
F 0 "M?" V 3695 2100 50  0000 C CNN
F 1 "Motor_DC" V 3604 2100 50  0000 C CNN
F 2 "" H 3400 2060 50  0001 C CNN
F 3 "~" H 3400 2060 50  0001 C CNN
	1    3400 2150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1850 1650 1350 1650
Wire Wire Line
	1850 1500 1350 1500
Wire Wire Line
	1850 2100 1350 2100
Wire Wire Line
	1850 2250 1350 2250
Wire Wire Line
	1850 2400 1600 2400
Wire Wire Line
	1050 2400 1050 1800
Wire Wire Line
	1050 1800 1850 1800
Wire Wire Line
	1050 1800 1050 1400
Connection ~ 1050 1800
$Comp
L power:+6V #PWR?
U 1 1 63378615
P 1050 1400
F 0 "#PWR?" H 1050 1250 50  0001 C CNN
F 1 "+6V" H 1065 1573 50  0000 C CNN
F 2 "" H 1050 1400 50  0001 C CNN
F 3 "" H 1050 1400 50  0001 C CNN
	1    1050 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 2100 2750 2100
Wire Wire Line
	2750 2100 2750 2750
Wire Wire Line
	2750 2750 2200 2750
Wire Wire Line
	1600 2750 1600 2700
$Comp
L Device:C C?
U 1 1 6337861F
P 1600 2550
F 0 "C?" H 1485 2504 50  0000 R CNN
F 1 "100uF" H 1485 2595 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1638 2400 50  0001 C CNN
F 3 "~" H 1600 2550 50  0001 C CNN
	1    1600 2550
	-1   0    0    1   
$EndComp
Connection ~ 1600 2400
Wire Wire Line
	1600 2400 1050 2400
Wire Wire Line
	2550 2400 2900 2400
Wire Wire Line
	2550 1950 2900 1950
Wire Wire Line
	3700 1950 3700 2150
$Comp
L Device:C C?
U 1 1 6337862A
P 2900 2100
F 0 "C?" H 2785 2054 50  0000 R CNN
F 1 ".1uF" H 2785 2145 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2938 1950 50  0001 C CNN
F 3 "~" H 2900 2100 50  0001 C CNN
	1    2900 2100
	-1   0    0    1   
$EndComp
Connection ~ 2900 1950
Wire Wire Line
	2900 1950 3700 1950
$Comp
L Device:C C?
U 1 1 63378632
P 2900 1550
F 0 "C?" H 2785 1504 50  0000 R CNN
F 1 ".1uF" H 2785 1595 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2938 1400 50  0001 C CNN
F 3 "~" H 2900 1550 50  0001 C CNN
	1    2900 1550
	-1   0    0    1   
$EndComp
Wire Wire Line
	2900 2250 2900 2400
Connection ~ 2900 2400
Wire Wire Line
	3200 2400 3200 2150
Wire Wire Line
	2900 2400 3200 2400
Wire Wire Line
	2550 1350 2900 1350
Wire Wire Line
	3200 1350 3200 1150
Wire Wire Line
	2550 1800 2900 1800
Wire Wire Line
	3700 1800 3700 1150
Wire Wire Line
	2900 1400 2900 1350
Connection ~ 2900 1350
Wire Wire Line
	2900 1350 3200 1350
Wire Wire Line
	2900 1700 2900 1800
Connection ~ 2900 1800
Wire Wire Line
	2900 1800 3700 1800
Text Label 1350 1500 0    50   ~ 0
INA
Text Label 1350 1650 0    50   ~ 0
INB
Text Label 1350 2100 0    50   ~ 0
INC
Text Label 1350 2250 0    50   ~ 0
IND
Wire Wire Line
	2550 1500 2750 1500
Wire Wire Line
	2750 1500 2750 2100
Connection ~ 2750 2100
$Comp
L power:GND #PWR?
U 1 1 6337864D
P 2200 2750
F 0 "#PWR?" H 2200 2500 50  0001 C CNN
F 1 "GND" H 2205 2577 50  0000 C CNN
F 2 "" H 2200 2750 50  0001 C CNN
F 3 "" H 2200 2750 50  0001 C CNN
	1    2200 2750
	1    0    0    -1  
$EndComp
Connection ~ 2200 2750
Wire Wire Line
	2200 2750 1600 2750
Wire Notes Line
	4250 4950 500  4950
Wire Notes Line
	500  7800 4250 7800
Wire Notes Line
	4250 600  500  600 
Wire Notes Line
	500  600  500  7800
Wire Notes Line
	4250 600  4250 7800
Wire Notes Line
	500  3050 4250 3050
Text Notes 600  750  0    50   ~ 0
YX1818BM Motor Driver\n
Text Notes 600  3200 0    50   ~ 0
SD Card Slot\n
Text Notes 550  5100 0    50   ~ 0
3-Axis Magnetometer\n
Wire Notes Line
	11200 4200 8900 4200
Wire Notes Line
	8900 4200 8900 6500
Wire Notes Line
	8900 6500 11200 6500
Wire Notes Line
	11200 4200 11200 6500
Text Notes 8950 6450 0    50   ~ 0
Hall Effect Sensors\n
$EndSCHEMATC
