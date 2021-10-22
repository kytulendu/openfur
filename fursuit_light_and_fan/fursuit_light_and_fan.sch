EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Simple fursuit LED eyes and fan schematic"
Date "2020-12-07"
Rev "1"
Comp "Khralkatorrix"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:Battery_Cell BT1
U 1 1 5FCE4487
P 4250 4600
F 0 "BT1" H 4368 4696 50  0000 L CNN
F 1 "5V or 9V or 12V battery" H 4368 4605 50  0000 L CNN
F 2 "" V 4250 4660 50  0001 C CNN
F 3 "~" V 4250 4660 50  0001 C CNN
	1    4250 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 4000 4250 4400
$Comp
L Motor:Fan M1
U 1 1 5FCEF87D
P 8200 4000
F 0 "M1" H 8358 4096 50  0000 L CNN
F 1 "Fan" H 8358 4005 50  0000 L CNN
F 2 "" H 8200 4010 50  0001 C CNN
F 3 "~" H 8200 4010 50  0001 C CNN
	1    8200 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 4700 4250 5300
Wire Wire Line
	8200 5300 8200 4200
Wire Wire Line
	4250 3600 4250 2850
Wire Wire Line
	8200 3700 8200 2850
$Comp
L Switch:SW_SPST SW1
U 1 1 5FCE7281
P 4250 3800
F 0 "SW1" V 4341 3712 50  0000 R CNN
F 1 "Switch on battery box" V 4250 3712 50  0000 R CNN
F 2 "" H 4250 3800 50  0001 C CNN
F 3 "~" H 4250 3800 50  0001 C CNN
F 4 "" V 4159 3712 50  0001 R CNN "Comment"
	1    4250 3800
	0    -1   -1   0   
$EndComp
Text Notes 4250 6400 0    50   ~ 0
Notes:\nLEDs resistors value is depending on voltage of battery used.\n* 430 ohm for 12V battery\n* 300 ohm for 8.4V "9V" Ni-MH or 9V Alkaline battery\n* 100 ohm for 5V USB power supply\nResistors is rated 1/4 Watts.\n\nFor fan, the size depend on the size of fursuit head, use low power usage 12V fan or 5V fan if using USB.\nI using 40mm x 10mm Noctua NF-A4x10 5V fan for this.\n\nIdealy we should have dedicated switch for LED and fan.\nbut most USB battery won't output power if the load didn't draw enought current,\nso have to connect the fan to turn on the USB battery.
$Comp
L Device:R R1
U 1 1 5FCF2333
P 6200 3550
F 0 "R1" H 6270 3596 50  0000 L CNN
F 1 "* see notes" H 6270 3505 50  0000 L CNN
F 2 "" V 6130 3550 50  0001 C CNN
F 3 "~" H 6200 3550 50  0001 C CNN
	1    6200 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 4550 6200 5300
$Comp
L Device:LED D2
U 1 1 5FCF1B1B
P 6200 4400
F 0 "D2" V 6239 4282 50  0000 R CNN
F 1 "Super bright Red LED" V 6148 4282 50  0000 R CNN
F 2 "" H 6200 4400 50  0001 C CNN
F 3 "~" H 6200 4400 50  0001 C CNN
	1    6200 4400
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D1
U 1 1 5FCF16E5
P 6200 4100
F 0 "D1" V 6239 3982 50  0000 R CNN
F 1 "Super bright Red LED" V 6148 3982 50  0000 R CNN
F 2 "" H 6200 4100 50  0001 C CNN
F 3 "~" H 6200 4100 50  0001 C CNN
	1    6200 4100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4250 2850 6200 2850
Wire Wire Line
	4250 5300 6200 5300
Connection ~ 6200 5300
Wire Wire Line
	6200 5300 8200 5300
Wire Wire Line
	6200 3950 6200 3700
Wire Wire Line
	6200 3400 6200 2850
Connection ~ 6200 2850
Wire Wire Line
	6200 2850 8200 2850
Text Notes 4350 5000 0    50   ~ 0
5V USB battery or 9V Alkaline or\n"9V" Ni-MH or 12V battery\nDepended on parts available.
$EndSCHEMATC
