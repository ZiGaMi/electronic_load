EESchema Schematic File Version 4
LIBS:ElectronicLoad-cache
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
L Device:Opamp_Quad_Generic U4
U 3 1 5BF9B6BF
P 8975 4050
F 0 "U4" H 8975 4417 50  0000 C CNN
F 1 "AD8606" H 8975 4326 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 8975 4050 50  0001 C CNN
F 3 "~" H 8975 4050 50  0001 C CNN
	3    8975 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:Opamp_Quad_Generic U4
U 2 1 5BF9B801
P 8925 5675
F 0 "U4" H 9200 5900 50  0000 C CNN
F 1 "AD8606" H 9125 5825 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 8925 5675 50  0001 C CNN
F 3 "~" H 8925 5675 50  0001 C CNN
	2    8925 5675
	-1   0    0    -1  
$EndComp
$Comp
L Device:Opamp_Quad_Generic U4
U 1 1 5BF9B8ED
P 7850 2825
F 0 "U4" H 7850 3192 50  0000 C CNN
F 1 "AD8606" H 7850 3101 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 7850 2825 50  0001 C CNN
F 3 "~" H 7850 2825 50  0001 C CNN
	1    7850 2825
	1    0    0    -1  
$EndComp
$Comp
L Device:Opamp_Quad_Generic U4
U 5 1 5BF9B934
P 9600 1400
F 0 "U4" H 9558 1446 50  0000 L CNN
F 1 "AD8606" H 9558 1355 50  0000 L CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 9600 1400 50  0001 C CNN
F 3 "~" H 9600 1400 50  0001 C CNN
	5    9600 1400
	1    0    0    -1  
$EndComp
$Comp
L LOGICchain:+3V3 #PWR040
U 1 1 5BF9B99D
P 9500 1100
F 0 "#PWR040" H 9500 950 50  0001 C CNN
F 1 "+3V3" H 9515 1273 50  0000 C CNN
F 2 "" H 9500 1100 50  0001 C CNN
F 3 "" H 9500 1100 50  0001 C CNN
	1    9500 1100
	1    0    0    -1  
$EndComp
$Comp
L LOGICchain:GND #PWR041
U 1 1 5BF9B9F5
P 9500 1700
F 0 "#PWR041" H 9500 1450 50  0001 C CNN
F 1 "GND" H 9505 1527 50  0000 C CNN
F 2 "" H 9500 1700 50  0001 C CNN
F 3 "" H 9500 1700 50  0001 C CNN
	1    9500 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C18
U 1 1 5BF9BBDE
P 10000 1425
F 0 "C18" H 10092 1471 50  0000 L CNN
F 1 "100n" H 10092 1380 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 10000 1425 50  0001 C CNN
F 3 "~" H 10000 1425 50  0001 C CNN
	1    10000 1425
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C17
U 1 1 5BF9BD05
P 8900 6300
F 0 "C17" V 9000 6225 50  0000 C CNN
F 1 "10p" V 9075 6250 50  0000 C CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 8900 6300 50  0001 C CNN
F 3 "~" H 8900 6300 50  0001 C CNN
	1    8900 6300
	0    1    1    0   
$EndComp
$Comp
L LOGICchain:+3V3 #PWR043
U 1 1 5BF9BF55
P 10000 1325
F 0 "#PWR043" H 10000 1175 50  0001 C CNN
F 1 "+3V3" H 10015 1498 50  0000 C CNN
F 2 "" H 10000 1325 50  0001 C CNN
F 3 "" H 10000 1325 50  0001 C CNN
	1    10000 1325
	1    0    0    -1  
$EndComp
$Comp
L LOGICchain:GND #PWR044
U 1 1 5BF9BF70
P 10000 1525
F 0 "#PWR044" H 10000 1275 50  0001 C CNN
F 1 "GND" H 10005 1352 50  0000 C CNN
F 2 "" H 10000 1525 50  0001 C CNN
F 3 "" H 10000 1525 50  0001 C CNN
	1    10000 1525
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R24
U 1 1 5BF9C190
P 10000 5675
F 0 "R24" H 10125 5800 50  0000 L CNN
F 1 "1R / 10W" H 10125 5650 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_Power_L50.0mm_W9.0mm_P55.88mm" H 10000 5675 50  0001 C CNN
F 3 "~" H 10000 5675 50  0001 C CNN
	1    10000 5675
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R20
U 1 1 5BF9C272
P 8900 6125
F 0 "R20" V 8750 6075 50  0000 C CNN
F 1 "20k" V 8825 6100 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 8900 6125 50  0001 C CNN
F 3 "~" H 8900 6125 50  0001 C CNN
	1    8900 6125
	0    1    1    0   
$EndComp
Wire Wire Line
	8800 6300 8475 6300
Wire Wire Line
	8475 6300 8475 6125
Wire Wire Line
	8475 5675 8625 5675
Wire Wire Line
	8800 6125 8475 6125
Connection ~ 8475 6125
Wire Wire Line
	8475 6125 8475 5675
Wire Wire Line
	9000 6300 9325 6300
Wire Wire Line
	9325 6300 9325 6125
Wire Wire Line
	9325 5775 9225 5775
Wire Wire Line
	9000 6125 9325 6125
Connection ~ 9325 6125
Wire Wire Line
	9325 6125 9325 5775
Wire Wire Line
	9325 5775 9500 5775
Connection ~ 9325 5775
Wire Wire Line
	9225 5575 9500 5575
$Comp
L Device:R_Small R23
U 1 1 5BF9C72E
P 9600 5775
F 0 "R23" V 9675 5725 50  0000 C CNN
F 1 "10k" V 9750 5750 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 9600 5775 50  0001 C CNN
F 3 "~" H 9600 5775 50  0001 C CNN
	1    9600 5775
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R22
U 1 1 5BF9C778
P 9600 5575
F 0 "R22" V 9450 5525 50  0000 C CNN
F 1 "10k" V 9525 5550 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 9600 5575 50  0001 C CNN
F 3 "~" H 9600 5575 50  0001 C CNN
	1    9600 5575
	0    1    1    0   
$EndComp
$Comp
L LOGICchain:GNDPWR #PWR042
U 1 1 5BF9CB73
P 10000 6025
F 0 "#PWR042" H 10000 5825 50  0001 C CNN
F 1 "GNDPWR" H 10000 5900 50  0000 C CNN
F 2 "" H 10000 5975 50  0001 C CNN
F 3 "" H 10000 5975 50  0001 C CNN
	1    10000 6025
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_Darlington_BCE Q5
U 1 1 5BF9CFFA
P 9900 4050
F 0 "Q5" H 10091 4096 50  0000 L CNN
F 1 "TIP41A" H 10091 4005 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-220-3_Vertical" H 10100 4150 50  0001 C CNN
F 3 "~" H 9900 4050 50  0001 C CNN
	1    9900 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R21
U 1 1 5BF9D19B
P 9550 4050
F 0 "R21" V 9400 4000 50  0000 C CNN
F 1 "10R" V 9475 4025 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 9550 4050 50  0001 C CNN
F 3 "~" H 9550 4050 50  0001 C CNN
	1    9550 4050
	0    1    1    0   
$EndComp
Wire Wire Line
	9650 4050 9700 4050
$Comp
L Device:C_Small C16
U 1 1 5BF9D6F7
P 8900 4625
F 0 "C16" V 9000 4550 50  0000 C CNN
F 1 "1n" V 9075 4575 50  0000 C CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 8900 4625 50  0001 C CNN
F 3 "~" H 8900 4625 50  0001 C CNN
	1    8900 4625
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R19
U 1 1 5BF9D6FD
P 8900 4450
F 0 "R19" V 8750 4400 50  0000 C CNN
F 1 "DNS" V 8825 4425 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 8900 4450 50  0001 C CNN
F 3 "~" H 8900 4450 50  0001 C CNN
	1    8900 4450
	0    1    1    0   
$EndComp
Wire Wire Line
	8800 4625 8475 4625
Wire Wire Line
	8475 4625 8475 4450
Wire Wire Line
	8800 4450 8475 4450
Wire Wire Line
	9000 4625 9325 4625
Wire Wire Line
	9325 4625 9325 4450
Wire Wire Line
	9000 4450 9325 4450
Wire Wire Line
	9275 4050 9325 4050
Wire Wire Line
	9325 4450 9325 4050
Connection ~ 9325 4450
Connection ~ 9325 4050
Wire Wire Line
	9325 4050 9450 4050
Wire Wire Line
	8675 4150 8475 4150
Wire Wire Line
	8475 4150 8475 4450
Connection ~ 8475 4450
$Comp
L Device:R_Small R17
U 1 1 5BF9F23A
P 8075 4150
F 0 "R17" V 7925 4100 50  0000 C CNN
F 1 "10k" V 8000 4125 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 8075 4150 50  0001 C CNN
F 3 "~" H 8075 4150 50  0001 C CNN
	1    8075 4150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8475 4150 8175 4150
Connection ~ 8475 4150
Connection ~ 8475 5675
Text Notes 8325 4950 0    50   ~ 0
Ti=100us\nOscilations occur if Ti is too low!!!
Text Notes 7750 6075 0    50   ~ 0
I = 0...1A\nUin = 0...1V\nUIsense = 3*Uin\nFc = 800kHz
Text Notes 7775 4525 0    50   ~ 0
Iload = 0...1 A\nVact= 0...3 V
$Comp
L Device:R_Small R12
U 1 1 5BFA02C4
P 6375 3550
F 0 "R12" V 6300 3575 50  0000 C CNN
F 1 "1k" V 6225 3575 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 6375 3550 50  0001 C CNN
F 3 "~" H 6375 3550 50  0001 C CNN
	1    6375 3550
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C11
U 1 1 5BFA0351
P 6675 3775
F 0 "C11" H 6850 3800 50  0000 C CNN
F 1 "1u" H 6825 3900 50  0000 C CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 6675 3775 50  0001 C CNN
F 3 "~" H 6675 3775 50  0001 C CNN
	1    6675 3775
	-1   0    0    1   
$EndComp
Wire Wire Line
	6475 3550 6675 3550
Wire Wire Line
	6675 3550 6675 3675
$Comp
L LOGICchain:GND #PWR033
U 1 1 5BFA0BBB
P 6675 3950
F 0 "#PWR033" H 6675 3700 50  0001 C CNN
F 1 "GND" H 6680 3777 50  0000 C CNN
F 2 "" H 6675 3950 50  0001 C CNN
F 3 "" H 6675 3950 50  0001 C CNN
	1    6675 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6675 3950 6675 3875
$Comp
L Device:R_Small R13
U 1 1 5BFA125D
P 6950 3550
F 0 "R13" V 6875 3575 50  0000 C CNN
F 1 "10k" V 6800 3575 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 6950 3550 50  0001 C CNN
F 3 "~" H 6950 3550 50  0001 C CNN
	1    6950 3550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7050 3550 7250 3550
Wire Wire Line
	6675 3550 6850 3550
Connection ~ 6675 3550
$Comp
L Device:C_Small C12
U 1 1 5BFA2AE5
P 7250 3775
F 0 "C12" H 7400 3800 50  0000 C CNN
F 1 "100n" H 7400 3900 50  0000 C CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 7250 3775 50  0001 C CNN
F 3 "~" H 7250 3775 50  0001 C CNN
	1    7250 3775
	-1   0    0    1   
$EndComp
Wire Wire Line
	7250 3550 7250 3675
$Comp
L LOGICchain:GND #PWR036
U 1 1 5BFA2AEC
P 7250 3950
F 0 "#PWR036" H 7250 3700 50  0001 C CNN
F 1 "GND" H 7255 3777 50  0000 C CNN
F 2 "" H 7250 3950 50  0001 C CNN
F 3 "" H 7250 3950 50  0001 C CNN
	1    7250 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 3950 7250 3875
Wire Wire Line
	6275 3550 6075 3550
Text Label 6075 3550 0    50   ~ 0
PWM
$Comp
L power:VBUS #PWR046
U 1 1 5BFA6AE5
P 11050 3200
F 0 "#PWR046" H 11050 3050 50  0001 C CNN
F 1 "VBUS" H 11065 3373 50  0000 C CNN
F 2 "" H 11050 3200 50  0001 C CNN
F 3 "" H 11050 3200 50  0001 C CNN
	1    11050 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:Fuse_Small F1
U 1 1 5BFA6C70
P 10375 3200
F 0 "F1" H 10375 3385 50  0000 C CNN
F 1 "1A" H 10375 3294 50  0000 C CNN
F 2 "Fuse_Holders_and_Fuses:Fuseholder5x20_horiz_SemiClosed_Casing10x25mm" H 10375 3200 50  0001 C CNN
F 3 "~" H 10375 3200 50  0001 C CNN
	1    10375 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	10275 3200 10000 3200
Wire Wire Line
	10475 3200 10675 3200
$Comp
L Device:D_Zener_Small D5
U 1 1 5BFA91BA
P 10675 3400
F 0 "D5" V 10629 3468 50  0000 L CNN
F 1 "SMAJ12" V 10720 3468 50  0000 L CNN
F 2 "Diodes_SMD:D_SMB" V 10675 3400 50  0001 C CNN
F 3 "~" V 10675 3400 50  0001 C CNN
	1    10675 3400
	0    1    1    0   
$EndComp
Wire Wire Line
	10675 3300 10675 3200
Connection ~ 10675 3200
Wire Wire Line
	10675 3200 11050 3200
$Comp
L LOGICchain:GNDPWR #PWR045
U 1 1 5BFA9D28
P 10675 3575
F 0 "#PWR045" H 10675 3375 50  0001 C CNN
F 1 "GNDPWR" H 10675 3450 50  0000 C CNN
F 2 "" H 10675 3525 50  0001 C CNN
F 3 "" H 10675 3525 50  0001 C CNN
	1    10675 3575
	1    0    0    -1  
$EndComp
Wire Wire Line
	10675 3575 10675 3500
Text Notes 10050 2650 0    79   ~ 16
Input protection
Text Notes 9525 825  0    79   ~ 16
OPAMP supply
Text Notes 8550 5325 0    79   ~ 16
Current sense
Wire Wire Line
	7550 2925 7550 3150
Wire Wire Line
	7550 3150 8150 3150
Wire Wire Line
	8150 3150 8150 2825
Wire Wire Line
	8150 2825 8625 2825
Connection ~ 8150 2825
$Comp
L Device:R_Small R14
U 1 1 5BFB64FB
P 6950 2625
F 0 "R14" H 6825 2675 50  0000 C CNN
F 1 "22k" H 6850 2600 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 6950 2625 50  0001 C CNN
F 3 "~" H 6950 2625 50  0001 C CNN
	1    6950 2625
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R15
U 1 1 5BFB7F67
P 6950 2825
F 0 "R15" H 6825 2875 50  0000 C CNN
F 1 "8k2" H 6850 2800 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 6950 2825 50  0001 C CNN
F 3 "~" H 6950 2825 50  0001 C CNN
	1    6950 2825
	1    0    0    -1  
$EndComp
$Comp
L power:VBUS #PWR034
U 1 1 5BFB8084
P 6950 2525
F 0 "#PWR034" H 6950 2375 50  0001 C CNN
F 1 "VBUS" H 6965 2698 50  0000 C CNN
F 2 "" H 6950 2525 50  0001 C CNN
F 3 "" H 6950 2525 50  0001 C CNN
	1    6950 2525
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 2725 7075 2725
Connection ~ 6950 2725
$Comp
L Device:C_Small C14
U 1 1 5BFB8E67
P 7075 2850
F 0 "C14" H 7167 2896 50  0000 L CNN
F 1 "100n" H 7167 2805 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 7075 2850 50  0001 C CNN
F 3 "~" H 7075 2850 50  0001 C CNN
	1    7075 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7075 2750 7075 2725
Connection ~ 7075 2725
Wire Wire Line
	7075 2725 6950 2725
Wire Wire Line
	7075 2950 6950 2950
Wire Wire Line
	6950 2950 6950 2925
Text Notes 7500 2300 0    79   ~ 16
Vdc sense
Text Label 7100 5675 0    50   ~ 0
Isense
Text Label 8375 2825 0    50   ~ 0
Usense
$Comp
L MCU_ST_STM32F0:STM32F031K6Tx U3
U 1 1 5BFC1739
P 5350 5250
F 0 "U3" H 5600 6200 50  0000 C CNN
F 1 "STM32F031K6Tx" H 5850 6125 50  0000 C CNN
F 2 "Housings_QFP:LQFP-32_7x7mm_Pitch0.8mm" H 4850 4350 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00104043.pdf" H 5350 5250 50  0001 C CNN
	1    5350 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R7
U 1 1 5BFC1937
P 4575 4750
F 0 "R7" V 4500 4775 50  0000 C CNN
F 1 "10k" V 4425 4775 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 4575 4750 50  0001 C CNN
F 3 "~" H 4575 4750 50  0001 C CNN
	1    4575 4750
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R6
U 1 1 5BFC1C3E
P 4500 4375
F 0 "R6" H 4375 4425 50  0000 C CNN
F 1 "47k" H 4400 4350 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 4500 4375 50  0001 C CNN
F 3 "~" H 4500 4375 50  0001 C CNN
	1    4500 4375
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 4550 4500 4550
$Comp
L LOGICchain:+3.3V #PWR020
U 1 1 5BFC2E70
P 4500 4275
F 0 "#PWR020" H 4500 4125 50  0001 C CNN
F 1 "+3.3V" H 4515 4448 50  0000 C CNN
F 2 "" H 4500 4275 50  0001 C CNN
F 3 "" H 4500 4275 50  0001 C CNN
	1    4500 4275
	1    0    0    -1  
$EndComp
$Comp
L LOGICchain:+3.3V #PWR025
U 1 1 5BFC2EBA
P 5250 4350
F 0 "#PWR025" H 5250 4200 50  0001 C CNN
F 1 "+3.3V" H 5265 4523 50  0000 C CNN
F 2 "" H 5250 4350 50  0001 C CNN
F 3 "" H 5250 4350 50  0001 C CNN
	1    5250 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 4750 4675 4750
Wire Wire Line
	4475 4750 4350 4750
$Comp
L LOGICchain:GND #PWR019
U 1 1 5BFCB3A3
P 4350 4750
F 0 "#PWR019" H 4350 4500 50  0001 C CNN
F 1 "GND" H 4355 4577 50  0000 C CNN
F 2 "" H 4350 4750 50  0001 C CNN
F 3 "" H 4350 4750 50  0001 C CNN
	1    4350 4750
	1    0    0    -1  
$EndComp
$Comp
L LOGICchain:GND #PWR026
U 1 1 5BFCDC6C
P 5250 6250
F 0 "#PWR026" H 5250 6000 50  0001 C CNN
F 1 "GND" H 5255 6077 50  0000 C CNN
F 2 "" H 5250 6250 50  0001 C CNN
F 3 "" H 5250 6250 50  0001 C CNN
	1    5250 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 6250 5250 6250
Connection ~ 5250 6250
Wire Wire Line
	5850 5950 6200 5950
Text Label 5950 5850 0    50   ~ 0
SWDIO
Text Label 5950 5950 0    50   ~ 0
SWCLK
Wire Wire Line
	4500 4550 4500 4475
Wire Wire Line
	4500 4550 4075 4550
Connection ~ 4500 4550
Text Label 4075 4550 0    50   ~ 0
NRST
$Comp
L LOGICchain:+3V3 #PWR02
U 1 1 5BFDEB32
P 1175 1225
F 0 "#PWR02" H 1175 1075 50  0001 C CNN
F 1 "+3V3" H 1190 1398 50  0000 C CNN
F 2 "" H 1175 1225 50  0001 C CNN
F 3 "" H 1175 1225 50  0001 C CNN
	1    1175 1225
	1    0    0    -1  
$EndComp
Wire Wire Line
	1025 1225 1175 1225
Text Label 1225 1525 0    50   ~ 0
SWDIO
Text Label 1225 1325 0    50   ~ 0
SWCLK
Wire Wire Line
	1025 1325 1450 1325
Wire Wire Line
	1025 1525 1450 1525
Wire Wire Line
	1025 1425 1175 1425
Wire Wire Line
	1175 1425 1175 1725
$Comp
L LOGICchain:GND #PWR03
U 1 1 5BFECA1F
P 1175 1725
F 0 "#PWR03" H 1175 1475 50  0001 C CNN
F 1 "GND" H 1180 1552 50  0000 C CNN
F 2 "" H 1175 1725 50  0001 C CNN
F 3 "" H 1175 1725 50  0001 C CNN
	1    1175 1725
	1    0    0    -1  
$EndComp
Text Notes 750  900  0    79   ~ 16
Programming\nterminal
Text Label 5925 4550 0    50   ~ 0
Usense
Text Label 5925 4650 0    50   ~ 0
Isense
Wire Wire Line
	5850 4650 6200 4650
Wire Wire Line
	5850 4550 6200 4550
Text Label 5925 4750 0    50   ~ 0
PWM
Wire Wire Line
	6200 4750 5850 4750
Text Label 5925 4850 0    50   ~ 0
BTN
Wire Wire Line
	5850 4850 6200 4850
$Comp
L Device:LED_Small D1
U 1 1 5C02A4C1
P 2250 1700
F 0 "D1" V 2296 1632 50  0000 R CNN
F 1 " m Suffix" V 2205 1632 50  0000 R CNN
F 2 "LEDs:LED_0603_HandSoldering" V 2250 1700 50  0001 C CNN
F 3 "~" V 2250 1700 50  0001 C CNN
	1    2250 1700
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R2
U 1 1 5C02A76B
P 2250 1500
F 0 "R2" H 2025 1550 50  0000 C CNN
F 1 "3k3" H 2075 1475 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 2250 1500 50  0001 C CNN
F 3 "~" H 2250 1500 50  0001 C CNN
	1    2250 1500
	1    0    0    -1  
$EndComp
$Comp
L LOGICchain:GND #PWR08
U 1 1 5C02AADE
P 2250 1900
F 0 "#PWR08" H 2250 1650 50  0001 C CNN
F 1 "GND" H 2255 1727 50  0000 C CNN
F 2 "" H 2250 1900 50  0001 C CNN
F 3 "" H 2250 1900 50  0001 C CNN
	1    2250 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 1800 2250 1900
Wire Wire Line
	2250 1400 2250 1250
Text Label 2250 1250 0    50   ~ 0
LED_PREFIX
Text Notes 2225 1150 0    50   ~ 10
Indication of\nmili (10E-3) \nrange
Wire Wire Line
	2250 1250 2675 1250
Text Label 5925 4950 0    50   ~ 0
LED_PREFIX
$Comp
L Device:LED_Small D2
U 1 1 5C03312B
P 3050 1700
F 0 "D2" V 3096 1632 50  0000 R CNN
F 1 "CC" V 3005 1632 50  0000 R CNN
F 2 "LEDs:LED_0603_HandSoldering" V 3050 1700 50  0001 C CNN
F 3 "~" V 3050 1700 50  0001 C CNN
	1    3050 1700
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R3
U 1 1 5C033131
P 3050 1500
F 0 "R3" H 2825 1550 50  0000 C CNN
F 1 "3k3" H 2875 1475 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 3050 1500 50  0001 C CNN
F 3 "~" H 3050 1500 50  0001 C CNN
	1    3050 1500
	1    0    0    -1  
$EndComp
$Comp
L LOGICchain:GND #PWR013
U 1 1 5C033137
P 3050 1900
F 0 "#PWR013" H 3050 1650 50  0001 C CNN
F 1 "GND" H 3055 1727 50  0000 C CNN
F 2 "" H 3050 1900 50  0001 C CNN
F 3 "" H 3050 1900 50  0001 C CNN
	1    3050 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 1800 3050 1900
Wire Wire Line
	3050 1400 3050 1250
Text Label 3050 1250 0    50   ~ 0
LED_CC_MODE
Wire Wire Line
	3050 1250 3475 1250
$Comp
L Device:LED_Small D3
U 1 1 5C035F09
P 3850 1700
F 0 "D3" V 3896 1632 50  0000 R CNN
F 1 "CP" V 3805 1632 50  0000 R CNN
F 2 "LEDs:LED_0603_HandSoldering" V 3850 1700 50  0001 C CNN
F 3 "~" V 3850 1700 50  0001 C CNN
	1    3850 1700
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R4
U 1 1 5C035F0F
P 3850 1500
F 0 "R4" H 3625 1550 50  0000 C CNN
F 1 "3k3" H 3675 1475 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 3850 1500 50  0001 C CNN
F 3 "~" H 3850 1500 50  0001 C CNN
	1    3850 1500
	1    0    0    -1  
$EndComp
$Comp
L LOGICchain:GND #PWR014
U 1 1 5C035F15
P 3850 1900
F 0 "#PWR014" H 3850 1650 50  0001 C CNN
F 1 "GND" H 3855 1727 50  0000 C CNN
F 2 "" H 3850 1900 50  0001 C CNN
F 3 "" H 3850 1900 50  0001 C CNN
	1    3850 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 1800 3850 1900
Wire Wire Line
	3850 1400 3850 1250
Text Label 3850 1250 0    50   ~ 0
LED_CP_MODE
$Comp
L Device:LED_Small D4
U 1 1 5C035F20
P 4650 1700
F 0 "D4" V 4696 1632 50  0000 R CNN
F 1 "CR" V 4605 1632 50  0000 R CNN
F 2 "LEDs:LED_0603_HandSoldering" V 4650 1700 50  0001 C CNN
F 3 "~" V 4650 1700 50  0001 C CNN
	1    4650 1700
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R5
U 1 1 5C035F26
P 4650 1500
F 0 "R5" H 4425 1550 50  0000 C CNN
F 1 "3k3" H 4475 1475 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 4650 1500 50  0001 C CNN
F 3 "~" H 4650 1500 50  0001 C CNN
	1    4650 1500
	1    0    0    -1  
$EndComp
$Comp
L LOGICchain:GND #PWR018
U 1 1 5C035F2C
P 4650 1900
F 0 "#PWR018" H 4650 1650 50  0001 C CNN
F 1 "GND" H 4655 1727 50  0000 C CNN
F 2 "" H 4650 1900 50  0001 C CNN
F 3 "" H 4650 1900 50  0001 C CNN
	1    4650 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 1800 4650 1900
Wire Wire Line
	4650 1400 4650 1250
Text Label 4650 1250 0    50   ~ 0
LED_CR_MODE
Wire Wire Line
	3850 1250 4375 1250
Wire Wire Line
	4650 1250 5175 1250
Text Notes 3000 1150 0    50   ~ 10
Indication of \nconstatn current \nmode - CC
Text Notes 3825 1150 0    50   ~ 10
Indication of \nconstatn current \nmode - CP
Text Notes 4650 1150 0    50   ~ 10
Indication of \nconstatn current \nmode - CR
Text Label 5925 5050 0    50   ~ 0
LED_CC_MODE
Text Label 5925 5150 0    50   ~ 0
LED_CP_MODE
Text Label 5925 5250 0    50   ~ 0
LED_CR_MODE
Wire Wire Line
	5850 4950 6450 4950
Wire Wire Line
	5850 5050 6450 5050
Wire Wire Line
	5850 5150 6450 5150
Wire Wire Line
	5850 5250 6450 5250
$Comp
L Display_Character:CC56-12SEKWA U1
U 1 1 5C054986
P 2125 4475
F 0 "U1" H 2125 5050 50  0000 C CNN
F 1 "CC56-12SEKWA" H 2125 5051 50  0001 C CNN
F 2 "LOGICchain:7SegmentLCD_10x32" H 2125 3875 50  0001 C CNN
F 3 "http://www.kingbright.com/attachments/file/psearch/000/00/00/CC56-12SEKWA(Ver.7A).pdf" H 1695 4505 50  0001 C CNN
	1    2125 4475
	1    0    0    -1  
$EndComp
$Comp
L Connector:USB_B_Micro J2
U 1 1 5C05F049
P 950 2800
F 0 "J2" H 1005 3176 50  0000 C CNN
F 1 "USB_B_Micro" H 1005 3176 50  0001 C CNN
F 2 "LOGICchain:USBMicro_629105150521_WE" H 1100 2750 50  0001 C CNN
F 3 "~" H 1100 2750 50  0001 C CNN
	1    950  2800
	1    0    0    -1  
$EndComp
$Comp
L LOGICchain:+5V #PWR06
U 1 1 5C05F689
P 1625 2600
F 0 "#PWR06" H 1625 2450 50  0001 C CNN
F 1 "+5V" H 1640 2773 50  0000 C CNN
F 2 "" H 1625 2600 50  0001 C CNN
F 3 "" H 1625 2600 50  0001 C CNN
	1    1625 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1625 2600 1250 2600
$Comp
L Device:C_Small C2
U 1 1 5C0666F9
P 1625 2850
F 0 "C2" H 1717 2896 50  0000 L CNN
F 1 "4u7" H 1717 2805 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 1625 2850 50  0001 C CNN
F 3 "~" H 1625 2850 50  0001 C CNN
	1    1625 2850
	1    0    0    -1  
$EndComp
Connection ~ 1625 2600
$Comp
L LOGICchain:GND #PWR07
U 1 1 5C0668DC
P 1625 3200
F 0 "#PWR07" H 1625 2950 50  0001 C CNN
F 1 "GND" H 1630 3027 50  0000 C CNN
F 2 "" H 1625 3200 50  0001 C CNN
F 3 "" H 1625 3200 50  0001 C CNN
	1    1625 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  3200 1625 3200
Connection ~ 1625 3200
Wire Wire Line
	1625 2950 1625 3200
Wire Wire Line
	1625 2750 1625 2600
$Comp
L LOGICchain:NL1134 U2
U 1 1 5C07D55C
P 2875 2675
F 0 "U2" H 2950 2940 50  0000 C CNN
F 1 "NL1134" H 2950 2849 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-5_HandSoldering" H 2875 2675 50  0001 C CNN
F 3 "" H 2875 2675 50  0001 C CNN
	1    2875 2675
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R1
U 1 1 5C08CFFE
P 725 3300
F 0 "R1" H 600 3350 50  0000 C CNN
F 1 "1M" H 625 3275 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 725 3300 50  0001 C CNN
F 3 "~" H 725 3300 50  0001 C CNN
	1    725  3300
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5C08D28D
P 850 3300
F 0 "C1" H 942 3346 50  0000 L CNN
F 1 "1n" H 942 3255 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 850 3300 50  0001 C CNN
F 3 "~" H 850 3300 50  0001 C CNN
	1    850  3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	725  3200 850  3200
Connection ~ 850  3200
$Comp
L LOGICchain:GND #PWR01
U 1 1 5C094F5F
P 850 3400
F 0 "#PWR01" H 850 3150 50  0001 C CNN
F 1 "GND" H 855 3227 50  0000 C CNN
F 2 "" H 850 3400 50  0001 C CNN
F 3 "" H 850 3400 50  0001 C CNN
	1    850  3400
	1    0    0    -1  
$EndComp
Connection ~ 850  3400
Wire Wire Line
	725  3400 850  3400
$Comp
L LOGICchain:GND #PWR012
U 1 1 5C095346
P 2175 3000
F 0 "#PWR012" H 2175 2750 50  0001 C CNN
F 1 "GND" H 2180 2827 50  0000 C CNN
F 2 "" H 2175 3000 50  0001 C CNN
F 3 "" H 2175 3000 50  0001 C CNN
	1    2175 3000
	1    0    0    -1  
$EndComp
$Comp
L LOGICchain:GND #PWR015
U 1 1 5C0953B5
P 3550 2975
F 0 "#PWR015" H 3550 2725 50  0001 C CNN
F 1 "GND" H 3555 2802 50  0000 C CNN
F 2 "" H 3550 2975 50  0001 C CNN
F 3 "" H 3550 2975 50  0001 C CNN
	1    3550 2975
	1    0    0    -1  
$EndComp
NoConn ~ 3375 2975
Wire Wire Line
	2525 2675 2175 2675
Connection ~ 2525 2675
Wire Wire Line
	3550 2675 3550 2750
$Comp
L LOGICchain:+5V #PWR011
U 1 1 5C0ADBC4
P 2175 2675
F 0 "#PWR011" H 2175 2525 50  0001 C CNN
F 1 "+5V" H 2190 2848 50  0000 C CNN
F 2 "" H 2175 2675 50  0001 C CNN
F 3 "" H 2175 2675 50  0001 C CNN
	1    2175 2675
	1    0    0    -1  
$EndComp
Wire Wire Line
	2525 2675 2525 2825
$Comp
L Device:C_Small C3
U 1 1 5C0B249D
P 2175 2850
F 0 "C3" H 2267 2896 50  0000 L CNN
F 1 "2u2" H 2267 2805 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2175 2850 50  0001 C CNN
F 3 "~" H 2175 2850 50  0001 C CNN
	1    2175 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 5C0B2604
P 3550 2850
F 0 "C4" H 3642 2896 50  0000 L CNN
F 1 "2u2" H 3642 2805 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3550 2850 50  0001 C CNN
F 3 "~" H 3550 2850 50  0001 C CNN
	1    3550 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 2950 3550 2975
$Comp
L LOGICchain:GND #PWR017
U 1 1 5C0B28EF
P 4650 7500
F 0 "#PWR017" H 4650 7250 50  0001 C CNN
F 1 "GND" H 4655 7327 50  0000 C CNN
F 2 "" H 4650 7500 50  0001 C CNN
F 3 "" H 4650 7500 50  0001 C CNN
	1    4650 7500
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C5
U 1 1 5C0B28F7
P 4650 7375
F 0 "C5" H 4742 7421 50  0000 L CNN
F 1 "100n" H 4742 7330 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 4650 7375 50  0001 C CNN
F 3 "~" H 4650 7375 50  0001 C CNN
	1    4650 7375
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 7475 4650 7500
Connection ~ 3550 2675
Wire Wire Line
	2175 2750 2175 2675
Connection ~ 2175 2675
Wire Wire Line
	2525 2975 2175 2975
Wire Wire Line
	2175 2975 2175 2950
Wire Wire Line
	2175 2975 2175 3000
Connection ~ 2175 2975
Text Notes 700  2300 0    79   ~ 16
USB supply\n( 5V )
Text Notes 2800 2350 0    79   ~ 16
LDO
Text Notes 1500 3825 0    79   ~ 16
Seven segment display
Text Notes 5150 4025 0    79   ~ 16
MCU
Text Notes 4600 6925 0    79   ~ 16
MCU supply\nfiltering
$Comp
L Device:Q_PNP_BEC Q1
U 1 1 5C104519
P 1125 5950
F 0 "Q1" H 1316 5904 50  0000 L CNN
F 1 "BC856A" H 1316 5995 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 1325 6050 50  0001 C CNN
F 3 "~" H 1125 5950 50  0001 C CNN
	1    1125 5950
	1    0    0    1   
$EndComp
Wire Wire Line
	1225 6150 1225 6325
Wire Wire Line
	1225 6325 1350 6325
Text Label 1225 6325 0    50   ~ 0
CA1
$Comp
L LOGICchain:+3.3V #PWR04
U 1 1 5C1139D9
P 1225 5750
F 0 "#PWR04" H 1225 5600 50  0001 C CNN
F 1 "+3.3V" H 1240 5923 50  0000 C CNN
F 2 "" H 1225 5750 50  0001 C CNN
F 3 "" H 1225 5750 50  0001 C CNN
	1    1225 5750
	1    0    0    -1  
$EndComp
Text Notes 1125 5250 0    50   ~ 0
Maximum current consumption\nwhen all segments are on:\nIsmax = 40mA (Rs=680Ohm)
Wire Wire Line
	925  5950 700  5950
$Comp
L Device:Q_PNP_BEC Q3
U 1 1 5C11DFDB
P 2125 5950
F 0 "Q3" H 2316 5904 50  0000 L CNN
F 1 "BC856A" H 2316 5995 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 2325 6050 50  0001 C CNN
F 3 "~" H 2125 5950 50  0001 C CNN
	1    2125 5950
	1    0    0    1   
$EndComp
Wire Wire Line
	2225 6150 2225 6325
Wire Wire Line
	2225 6325 2350 6325
Text Label 2225 6325 0    50   ~ 0
CA2
$Comp
L LOGICchain:+3.3V #PWR09
U 1 1 5C11DFE5
P 2225 5750
F 0 "#PWR09" H 2225 5600 50  0001 C CNN
F 1 "+3.3V" H 2240 5923 50  0000 C CNN
F 2 "" H 2225 5750 50  0001 C CNN
F 3 "" H 2225 5750 50  0001 C CNN
	1    2225 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1925 5950 1700 5950
$Comp
L Device:Q_PNP_BEC Q2
U 1 1 5C1288CA
P 1125 6850
F 0 "Q2" H 1316 6804 50  0000 L CNN
F 1 "BC856A" H 1316 6895 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 1325 6950 50  0001 C CNN
F 3 "~" H 1125 6850 50  0001 C CNN
	1    1125 6850
	1    0    0    1   
$EndComp
Wire Wire Line
	1225 7050 1225 7225
Wire Wire Line
	1225 7225 1350 7225
Text Label 1225 7225 0    50   ~ 0
CA3
$Comp
L LOGICchain:+3.3V #PWR05
U 1 1 5C1288D3
P 1225 6650
F 0 "#PWR05" H 1225 6500 50  0001 C CNN
F 1 "+3.3V" H 1240 6823 50  0000 C CNN
F 2 "" H 1225 6650 50  0001 C CNN
F 3 "" H 1225 6650 50  0001 C CNN
	1    1225 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	925  6850 700  6850
$Comp
L Device:Q_PNP_BEC Q4
U 1 1 5C1288DB
P 2125 6850
F 0 "Q4" H 2316 6804 50  0000 L CNN
F 1 "BC856A" H 2316 6895 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 2325 6950 50  0001 C CNN
F 3 "~" H 2125 6850 50  0001 C CNN
	1    2125 6850
	1    0    0    1   
$EndComp
Wire Wire Line
	2225 7050 2225 7225
Wire Wire Line
	2225 7225 2350 7225
Text Label 2225 7225 0    50   ~ 0
CA4
$Comp
L LOGICchain:+3.3V #PWR010
U 1 1 5C1288E4
P 2225 6650
F 0 "#PWR010" H 2225 6500 50  0001 C CNN
F 1 "+3.3V" H 2240 6823 50  0000 C CNN
F 2 "" H 2225 6650 50  0001 C CNN
F 3 "" H 2225 6650 50  0001 C CNN
	1    2225 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1925 6850 1700 6850
Text Label 1700 6850 0    50   ~ 0
BASE_CA4
Text Label 3275 4575 0    50   ~ 0
CA1
Wire Wire Line
	3225 4575 3425 4575
Text Label 3275 4675 0    50   ~ 0
CA2
Wire Wire Line
	3225 4675 3425 4675
Text Label 3275 4775 0    50   ~ 0
CA3
Wire Wire Line
	3225 4775 3425 4775
Text Label 3275 4875 0    50   ~ 0
CA4
Wire Wire Line
	3225 4875 3425 4875
Wire Wire Line
	1025 4175 800  4175
Text Label 800  4175 0    50   ~ 0
a
Wire Wire Line
	1025 4275 800  4275
Text Label 800  4275 0    50   ~ 0
b
Wire Wire Line
	1025 4375 800  4375
Text Label 800  4375 0    50   ~ 0
c
Wire Wire Line
	1025 4475 800  4475
Text Label 800  4475 0    50   ~ 0
d
Wire Wire Line
	1025 4575 800  4575
Text Label 800  4575 0    50   ~ 0
e
Wire Wire Line
	1025 4675 800  4675
Text Label 800  4675 0    50   ~ 0
f
Wire Wire Line
	1025 4775 800  4775
Text Label 800  4775 0    50   ~ 0
g
Wire Wire Line
	1025 4875 800  4875
Text Label 800  4875 0    50   ~ 0
dpx
$Comp
L Device:R_Pack04 RN1
U 1 1 5C1842A3
P 3225 7450
F 0 "RN1" V 2808 7450 50  0000 C CNN
F 1 "1k" V 2899 7450 50  0000 C CNN
F 2 "Resistors_SMD:R_Array_Convex_4x0603" V 3500 7450 50  0001 C CNN
F 3 "~" H 3225 7450 50  0001 C CNN
	1    3225 7450
	0    1    1    0   
$EndComp
$Comp
L Device:R_Pack04 RN2
U 1 1 5C18B7DB
P 3250 5925
F 0 "RN2" V 2833 5925 50  0000 C CNN
F 1 "330R" V 2924 5925 50  0000 C CNN
F 2 "Resistors_SMD:R_Array_Convex_4x0603" V 3525 5925 50  0001 C CNN
F 3 "~" H 3250 5925 50  0001 C CNN
	1    3250 5925
	0    1    1    0   
$EndComp
$Comp
L Device:R_Pack04 RN3
U 1 1 5C18B879
P 3250 6625
F 0 "RN3" V 2833 6625 50  0000 C CNN
F 1 "330R" V 2924 6625 50  0000 C CNN
F 2 "Resistors_SMD:R_Array_Convex_4x0603" V 3525 6625 50  0001 C CNN
F 3 "~" H 3250 6625 50  0001 C CNN
	1    3250 6625
	0    1    1    0   
$EndComp
Wire Wire Line
	3050 5725 2825 5725
Text Label 2825 5725 0    50   ~ 0
a
Wire Wire Line
	3050 5825 2825 5825
Text Label 2825 6025 0    50   ~ 0
b
Wire Wire Line
	3050 5925 2825 5925
Text Label 2825 6725 0    50   ~ 0
c
Wire Wire Line
	3050 6025 2825 6025
Text Label 2825 6525 0    50   ~ 0
d
Wire Wire Line
	3050 6425 2825 6425
Text Label 2825 6425 0    50   ~ 0
e
Wire Wire Line
	3050 6525 2825 6525
Text Label 2825 5825 0    50   ~ 0
f
Wire Wire Line
	3050 6625 2825 6625
Text Label 2825 5925 0    50   ~ 0
g
Wire Wire Line
	3050 6725 2825 6725
Text Label 2825 6625 0    50   ~ 0
dpx
Text Label 3525 7250 0    50   ~ 0
MCU_CA1
Wire Wire Line
	3425 7250 3850 7250
Text Label 3525 7350 0    50   ~ 0
MCU_CA2
Wire Wire Line
	3425 7350 3850 7350
Text Label 3525 7550 0    50   ~ 0
MCU_CA3
Wire Wire Line
	3425 7450 3850 7450
Text Label 3525 7450 0    50   ~ 0
MCU_CA4
Wire Wire Line
	3425 7550 3850 7550
Text Label 1700 5950 0    50   ~ 0
BASE_CA2
Text Label 700  6850 0    50   ~ 0
BASE_CA3
Text Label 700  5950 0    50   ~ 0
BASE_CA1
Text Label 2625 7250 0    50   ~ 0
BASE_CA1
Wire Wire Line
	2625 7250 3025 7250
Text Label 2625 7350 0    50   ~ 0
BASE_CA2
Wire Wire Line
	2625 7350 3025 7350
Text Label 2625 7550 0    50   ~ 0
BASE_CA3
Wire Wire Line
	2625 7450 3025 7450
Text Label 2625 7450 0    50   ~ 0
BASE_CA4
Wire Wire Line
	2625 7550 3025 7550
Wire Wire Line
	3450 5725 3850 5725
Text Label 3850 5725 2    50   ~ 0
MCU_a
Wire Wire Line
	3450 5825 3850 5825
Wire Wire Line
	3450 5925 3850 5925
Wire Wire Line
	3450 6025 3850 6025
Text Label 3850 6025 2    50   ~ 0
MCU_b
Text Label 3850 6725 2    50   ~ 0
MCU_c
Text Label 3850 6525 2    50   ~ 0
MCU_d
Wire Wire Line
	3450 6425 3850 6425
Text Label 3850 6425 2    50   ~ 0
MCU_e
Wire Wire Line
	3450 6525 3850 6525
Wire Wire Line
	3450 6625 3850 6625
Wire Wire Line
	3450 6725 3850 6725
Text Label 3850 5825 2    50   ~ 0
MCU_f
Text Label 3850 5925 2    50   ~ 0
MCU_g
Text Label 3850 6625 2    50   ~ 0
MCU_dpx
Wire Wire Line
	4750 6050 4350 6050
Text Label 4350 6050 0    50   ~ 0
MCU_a
Wire Wire Line
	4750 5950 4350 5950
Wire Wire Line
	4750 5850 4350 5850
Wire Wire Line
	4750 5750 4350 5750
Text Label 4350 5950 0    50   ~ 0
MCU_b
Text Label 4350 5850 0    50   ~ 0
MCU_c
Text Label 4350 5750 0    50   ~ 0
MCU_d
Wire Wire Line
	4750 5650 4350 5650
Text Label 4350 5650 0    50   ~ 0
MCU_e
Wire Wire Line
	4750 5550 4350 5550
Wire Wire Line
	4750 5450 4350 5450
Wire Wire Line
	4350 5150 4750 5150
Text Label 4350 5550 0    50   ~ 0
MCU_f
Text Label 4350 5450 0    50   ~ 0
MCU_g
Text Label 4675 5150 2    50   ~ 0
MCU_dpx
Text Label 5925 5550 0    50   ~ 0
MCU_CA1
Wire Wire Line
	5850 5550 6250 5550
Text Label 5925 5650 0    50   ~ 0
MCU_CA2
Wire Wire Line
	5850 5650 6250 5650
Text Label 5925 5750 0    50   ~ 0
MCU_CA3
Wire Wire Line
	5850 5750 6250 5750
Text Label 5925 6050 0    50   ~ 0
MCU_CA4
$Comp
L Device:Rotary_Encoder_Switch SW1
U 1 1 5C2FC3B5
P 7450 1550
F 0 "SW1" H 7450 1917 50  0000 C CNN
F 1 "EC11E09244BS" H 7450 1826 50  0000 C CNN
F 2 "LOGICchain:EC11E09244BS" H 7300 1710 50  0001 C CNN
F 3 "~" H 7450 1810 50  0001 C CNN
	1    7450 1550
	1    0    0    -1  
$EndComp
NoConn ~ 1250 2800
NoConn ~ 1250 2900
NoConn ~ 1250 3000
$Comp
L LOGICchain:+3.3VA #PWR027
U 1 1 5C33F4D9
P 5450 4275
F 0 "#PWR027" H 5450 4125 50  0001 C CNN
F 1 "+3.3VA" H 5465 4448 50  0000 C CNN
F 2 "" H 5450 4275 50  0001 C CNN
F 3 "" H 5450 4275 50  0001 C CNN
	1    5450 4275
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 4275 5450 4350
$Comp
L LOGICchain:+3.3VA #PWR029
U 1 1 5C34A279
P 5250 7250
F 0 "#PWR029" H 5250 7100 50  0001 C CNN
F 1 "+3.3VA" H 5265 7423 50  0000 C CNN
F 2 "" H 5250 7250 50  0001 C CNN
F 3 "" H 5250 7250 50  0001 C CNN
	1    5250 7250
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C9
U 1 1 5C34A605
P 5250 7350
F 0 "C9" H 5075 7350 50  0000 C CNN
F 1 "100n" H 5075 7450 50  0000 C CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 5250 7350 50  0001 C CNN
F 3 "~" H 5250 7350 50  0001 C CNN
	1    5250 7350
	-1   0    0    1   
$EndComp
$Comp
L LOGICchain:GND #PWR030
U 1 1 5C3552ED
P 5250 7450
F 0 "#PWR030" H 5250 7200 50  0001 C CNN
F 1 "GND" H 5255 7277 50  0000 C CNN
F 2 "" H 5250 7450 50  0001 C CNN
F 3 "" H 5250 7450 50  0001 C CNN
	1    5250 7450
	1    0    0    -1  
$EndComp
$Comp
L Device:L_Core_Ferrite_Small L1
U 1 1 5C355745
P 4950 7250
F 0 "L1" V 5155 7250 50  0000 C CNN
F 1 "100MHz" V 5064 7250 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 4950 7250 50  0001 C CNN
F 3 "~" H 4950 7250 50  0001 C CNN
	1    4950 7250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5050 7250 5250 7250
Connection ~ 5250 7250
Wire Wire Line
	4850 7250 4650 7250
$Comp
L LOGICchain:+3.3V #PWR023
U 1 1 5C3A1B54
P 4650 7250
F 0 "#PWR023" H 4650 7100 50  0001 C CNN
F 1 "+3.3V" H 4665 7423 50  0000 C CNN
F 2 "" H 4650 7250 50  0001 C CNN
F 3 "" H 4650 7250 50  0001 C CNN
	1    4650 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7475 3550 7250 3550
Connection ~ 7250 3550
Wire Wire Line
	7150 1550 6975 1550
Wire Wire Line
	6975 1550 6975 1750
$Comp
L LOGICchain:GND #PWR032
U 1 1 5C41B191
P 6975 1750
F 0 "#PWR032" H 6975 1500 50  0001 C CNN
F 1 "GND" H 6980 1577 50  0000 C CNN
F 2 "" H 6975 1750 50  0001 C CNN
F 3 "" H 6975 1750 50  0001 C CNN
	1    6975 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R10
U 1 1 5C431E4D
P 6250 1175
F 0 "R10" H 6100 1225 50  0000 C CNN
F 1 "10k" H 6500 1125 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 6250 1175 50  0001 C CNN
F 3 "~" H 6250 1175 50  0001 C CNN
	1    6250 1175
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R11
U 1 1 5C431EFB
P 6400 1175
F 0 "R11" H 6525 1225 50  0000 C CNN
F 1 "10k" H 6100 1125 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 6400 1175 50  0001 C CNN
F 3 "~" H 6400 1175 50  0001 C CNN
	1    6400 1175
	1    0    0    -1  
$EndComp
$Comp
L LOGICchain:+3.3V #PWR031
U 1 1 5C432627
P 6250 925
F 0 "#PWR031" H 6250 775 50  0001 C CNN
F 1 "+3.3V" H 6265 1098 50  0000 C CNN
F 2 "" H 6250 925 50  0001 C CNN
F 3 "" H 6250 925 50  0001 C CNN
	1    6250 925 
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R8
U 1 1 5C485793
P 6700 1450
F 0 "R8" V 6550 1475 50  0000 C CNN
F 1 "1k" V 6625 1475 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 6700 1450 50  0001 C CNN
F 3 "~" H 6700 1450 50  0001 C CNN
	1    6700 1450
	0    -1   1    0   
$EndComp
$Comp
L Device:R_Small R9
U 1 1 5C48593A
P 6700 1650
F 0 "R9" V 6775 1675 50  0000 C CNN
F 1 "1k" V 6625 1675 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 6700 1650 50  0001 C CNN
F 3 "~" H 6700 1650 50  0001 C CNN
	1    6700 1650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6600 1450 6250 1450
Wire Wire Line
	6600 1650 6400 1650
$Comp
L Device:C_Small C10
U 1 1 5C49E4FF
P 6400 1850
F 0 "C10" H 6492 1896 50  0000 L CNN
F 1 "100n" H 6492 1805 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 6400 1850 50  0001 C CNN
F 3 "~" H 6400 1850 50  0001 C CNN
	1    6400 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C8
U 1 1 5C49E680
P 6250 1850
F 0 "C8" H 6475 1900 50  0000 R CNN
F 1 "100n" H 6525 1800 50  0000 R CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 6250 1850 50  0001 C CNN
F 3 "~" H 6250 1850 50  0001 C CNN
	1    6250 1850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6250 1750 6250 1450
Connection ~ 6250 1450
Wire Wire Line
	6400 1750 6400 1650
Connection ~ 6400 1650
$Comp
L LOGICchain:GND #PWR028
U 1 1 5C4B7A83
P 6250 2075
F 0 "#PWR028" H 6250 1825 50  0001 C CNN
F 1 "GND" H 6255 1902 50  0000 C CNN
F 2 "" H 6250 2075 50  0001 C CNN
F 3 "" H 6250 2075 50  0001 C CNN
	1    6250 2075
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 2075 6250 2050
Wire Wire Line
	5800 1650 6400 1650
Wire Wire Line
	5800 1450 6250 1450
Text Label 5800 1450 0    50   ~ 0
phase_A
Text Label 5800 1650 0    50   ~ 0
phase_B
Text Label 5925 5350 0    50   ~ 0
phase_A
Wire Wire Line
	5850 5350 6250 5350
Text Label 5925 5450 0    50   ~ 0
phase_B
Wire Wire Line
	5850 5450 6250 5450
Wire Wire Line
	7750 1650 8000 1650
$Comp
L Device:R_Small R16
U 1 1 5C57CE18
P 8500 1250
F 0 "R16" H 8375 1250 50  0000 C CNN
F 1 "10k" H 8400 1175 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 8500 1250 50  0001 C CNN
F 3 "~" H 8500 1250 50  0001 C CNN
	1    8500 1250
	1    0    0    -1  
$EndComp
$Comp
L LOGICchain:+3.3V #PWR037
U 1 1 5C57D263
P 8500 1150
F 0 "#PWR037" H 8500 1000 50  0001 C CNN
F 1 "+3.3V" H 8515 1323 50  0000 C CNN
F 2 "" H 8500 1150 50  0001 C CNN
F 3 "" H 8500 1150 50  0001 C CNN
	1    8500 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8325 1450 8500 1450
$Comp
L Device:C_Small C15
U 1 1 5C598565
P 8500 1550
F 0 "C15" H 8592 1596 50  0000 L CNN
F 1 "100n" H 8592 1505 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 8500 1550 50  0001 C CNN
F 3 "~" H 8500 1550 50  0001 C CNN
	1    8500 1550
	1    0    0    -1  
$EndComp
$Comp
L LOGICchain:GND #PWR039
U 1 1 5C5986B7
P 8500 1650
F 0 "#PWR039" H 8500 1400 50  0001 C CNN
F 1 "GND" H 8505 1477 50  0000 C CNN
F 2 "" H 8500 1650 50  0001 C CNN
F 3 "" H 8500 1650 50  0001 C CNN
	1    8500 1650
	1    0    0    -1  
$EndComp
Text Label 8600 1450 0    50   ~ 0
BTN
$Comp
L Connector_Generic:Conn_01x02 J3
U 1 1 5C5E0536
P 10700 1500
F 0 "J3" H 10620 1267 50  0000 C CNN
F 1 "Conn_01x02" H 10620 1266 50  0001 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_bornier-2_P5.08mm" H 10700 1500 50  0001 C CNN
F 3 "~" H 10700 1500 50  0001 C CNN
	1    10700 1500
	-1   0    0    1   
$EndComp
$Comp
L LOGICchain:GNDPWR #PWR0101
U 1 1 5C5E0905
P 10900 1500
F 0 "#PWR0101" H 10900 1300 50  0001 C CNN
F 1 "GNDPWR" H 10900 1375 50  0000 C CNN
F 2 "" H 10900 1450 50  0001 C CNN
F 3 "" H 10900 1450 50  0001 C CNN
	1    10900 1500
	1    0    0    -1  
$EndComp
$Comp
L power:VBUS #PWR0102
U 1 1 5C5E0998
P 10900 1400
F 0 "#PWR0102" H 10900 1250 50  0001 C CNN
F 1 "VBUS" H 10915 1573 50  0000 C CNN
F 2 "" H 10900 1400 50  0001 C CNN
F 3 "" H 10900 1400 50  0001 C CNN
	1    10900 1400
	1    0    0    -1  
$EndComp
Text Notes 10550 1075 0    79   ~ 16
Input \nterminal
Text Notes 3250 725  0    79   ~ 16
Indication LEDs
$Comp
L Device:R_Small R25
U 1 1 5C6509D3
P 4950 3175
F 0 "R25" V 4875 3200 50  0000 C CNN
F 1 "0R" V 4800 3200 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" H 4950 3175 50  0001 C CNN
F 3 "~" H 4950 3175 50  0001 C CNN
	1    4950 3175
	0    -1   -1   0   
$EndComp
$Comp
L LOGICchain:GND #PWR047
U 1 1 5C650BE0
P 4650 3175
F 0 "#PWR047" H 4650 2925 50  0001 C CNN
F 1 "GND" H 4655 3002 50  0000 C CNN
F 2 "" H 4650 3175 50  0001 C CNN
F 3 "" H 4650 3175 50  0001 C CNN
	1    4650 3175
	1    0    0    -1  
$EndComp
$Comp
L LOGICchain:GNDPWR #PWR048
U 1 1 5C650CFF
P 5225 3175
F 0 "#PWR048" H 5225 2975 50  0001 C CNN
F 1 "GNDPWR" H 5225 3050 50  0000 C CNN
F 2 "" H 5225 3125 50  0001 C CNN
F 3 "" H 5225 3125 50  0001 C CNN
	1    5225 3175
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 3175 4850 3175
Wire Wire Line
	5050 3175 5225 3175
$Comp
L Connector_Generic:Conn_01x01 J4
U 1 1 5C05E539
P 6250 6800
F 0 "J4" V 6216 6712 50  0000 R CNN
F 1 "Conn_01x01" H 6125 6712 50  0001 R CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad" H 6250 6800 50  0001 C CNN
F 3 "~" H 6250 6800 50  0001 C CNN
	1    6250 6800
	0    -1   -1   0   
$EndComp
$Comp
L LOGICchain:GNDPWR #PWR049
U 1 1 5C05E540
P 6250 7000
F 0 "#PWR049" H 6250 6800 50  0001 C CNN
F 1 "GNDPWR" H 6250 6875 50  0000 C CNN
F 2 "" H 6250 6950 50  0001 C CNN
F 3 "" H 6250 6950 50  0001 C CNN
	1    6250 7000
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J5
U 1 1 5C07AC4B
P 6600 6800
F 0 "J5" V 6566 6712 50  0000 R CNN
F 1 "Conn_01x01" H 6475 6712 50  0001 R CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad" H 6600 6800 50  0001 C CNN
F 3 "~" H 6600 6800 50  0001 C CNN
	1    6600 6800
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J6
U 1 1 5C088E26
P 6225 7325
F 0 "J6" V 6191 7237 50  0000 R CNN
F 1 "Conn_01x01" H 6100 7237 50  0001 R CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad" H 6225 7325 50  0001 C CNN
F 3 "~" H 6225 7325 50  0001 C CNN
	1    6225 7325
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J7
U 1 1 5C088E33
P 6575 7325
F 0 "J7" V 6541 7237 50  0000 R CNN
F 1 "Conn_01x01" H 6450 7237 50  0001 R CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad" H 6575 7325 50  0001 C CNN
F 3 "~" H 6575 7325 50  0001 C CNN
	1    6575 7325
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1025 1625 1450 1625
Text Label 1275 1625 0    50   ~ 0
NRST
$Comp
L Connector_Generic:Conn_01x05 J1
U 1 1 5C0D70BE
P 825 1425
F 0 "J1" H 745 1750 50  0000 C CNN
F 1 "Conn_01x05" H 745 1751 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x05_Pitch2.54mm" H 825 1425 50  0001 C CNN
F 3 "~" H 825 1425 50  0001 C CNN
	1    825  1425
	-1   0    0    -1  
$EndComp
$Comp
L LOGICchain:GND #PWR0103
U 1 1 5C0F4D0D
P 6600 7000
F 0 "#PWR0103" H 6600 6750 50  0001 C CNN
F 1 "GND" H 6605 6827 50  0000 C CNN
F 2 "" H 6600 7000 50  0001 C CNN
F 3 "" H 6600 7000 50  0001 C CNN
	1    6600 7000
	1    0    0    -1  
$EndComp
$Comp
L LOGICchain:GND #PWR0104
U 1 1 5C0F4DA4
P 6575 7525
F 0 "#PWR0104" H 6575 7275 50  0001 C CNN
F 1 "GND" H 6580 7352 50  0000 C CNN
F 2 "" H 6575 7525 50  0001 C CNN
F 3 "" H 6575 7525 50  0001 C CNN
	1    6575 7525
	1    0    0    -1  
$EndComp
$Comp
L LOGICchain:+3.3V #PWR0105
U 1 1 5C0F570C
P 3550 2675
F 0 "#PWR0105" H 3550 2525 50  0001 C CNN
F 1 "+3.3V" H 3565 2848 50  0000 C CNN
F 2 "" H 3550 2675 50  0001 C CNN
F 3 "" H 3550 2675 50  0001 C CNN
	1    3550 2675
	1    0    0    -1  
$EndComp
Wire Wire Line
	3375 2675 3550 2675
Wire Wire Line
	4650 7275 4650 7250
Connection ~ 4650 7250
Text Notes 7125 6925 0    118  ~ 24
Electronic Load
Text Notes 10575 7650 0    50   ~ 0
REV1.1
Text Notes 8125 7650 0    50   ~ 0
01.12.2018
Text Notes 4400 3075 0    79   ~ 16
Ground connection
$Comp
L LOGICchain:GNDPWR #PWR0106
U 1 1 5C14CAEC
P 6950 2950
F 0 "#PWR0106" H 6950 2750 50  0001 C CNN
F 1 "GNDPWR" H 6950 2825 50  0000 C CNN
F 2 "" H 6950 2900 50  0001 C CNN
F 3 "" H 6950 2900 50  0001 C CNN
	1    6950 2950
	1    0    0    -1  
$EndComp
Connection ~ 6950 2950
$Comp
L Device:R_Small R18
U 1 1 5C57D189
P 8225 1450
F 0 "R18" V 8150 1475 50  0000 C CNN
F 1 "1k" V 8075 1475 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 8225 1450 50  0001 C CNN
F 3 "~" H 8225 1450 50  0001 C CNN
	1    8225 1450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8500 1450 8500 1350
Connection ~ 8500 1450
Wire Wire Line
	7750 1450 8125 1450
$Comp
L LOGICchain:GND #PWR0107
U 1 1 5C178067
P 8000 1650
F 0 "#PWR0107" H 8000 1400 50  0001 C CNN
F 1 "GND" H 8005 1477 50  0000 C CNN
F 2 "" H 8000 1650 50  0001 C CNN
F 3 "" H 8000 1650 50  0001 C CNN
	1    8000 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 1450 8750 1450
Text Notes 8625 1300 0    50   ~ 0
Active low\nTaurise = 1.0ms\nTaufall = 100us
Wire Wire Line
	6800 1450 7150 1450
Wire Wire Line
	6800 1650 7150 1650
Wire Wire Line
	6250 1275 6250 1450
Wire Wire Line
	6250 925  6250 950 
Wire Wire Line
	6400 1075 6400 950 
Wire Wire Line
	6400 950  6250 950 
Connection ~ 6250 950 
Wire Wire Line
	6250 950  6250 1075
Text Notes 6625 1175 0    50   ~ 0
Taurise = 1.0 ms\nTaufall = 100us
Text Notes 6900 925  0    79   ~ 16
Rotary encoder with\npushbutton
Wire Wire Line
	6400 1275 6400 1650
Wire Wire Line
	6400 1950 6400 2050
Wire Wire Line
	6400 2050 6250 2050
Connection ~ 6250 2050
Wire Wire Line
	6250 2050 6250 1950
NoConn ~ 4750 5250
NoConn ~ 6225 7525
Wire Wire Line
	5350 4350 5450 4350
Connection ~ 5450 4350
Wire Wire Line
	5850 5850 6200 5850
Wire Wire Line
	5850 6050 6250 6050
Wire Wire Line
	7100 5675 7650 5675
Wire Wire Line
	7475 3550 7475 3950
Connection ~ 7650 5675
Wire Wire Line
	7650 5675 8475 5675
Wire Wire Line
	7975 4150 7650 4150
Wire Wire Line
	7650 4150 7650 5675
Text Notes 8225 2575 0    50   ~ 0
Usense = 0.2715 * VBUS\n12bit ADC -> VbusRES = 3mV
Wire Wire Line
	10000 5775 10000 6025
Wire Wire Line
	10000 3200 10000 3850
Wire Wire Line
	10000 4250 10000 5575
Wire Wire Line
	9700 5575 10000 5575
Connection ~ 10000 5575
Wire Wire Line
	9700 5775 10000 5775
Connection ~ 10000 5775
Text Notes 10075 2775 0    50   ~ 0
Max input voltage: 12V
Wire Wire Line
	7475 3950 8675 3950
$EndSCHEMATC
