EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 11693 16535 portrait
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
L power:PWR_FLAG #FLG0101
U 1 1 5E6613AF
P 1000 1075
F 0 "#FLG0101" H 1000 1150 50  0001 C CNN
F 1 "PWR_FLAG" H 1000 1251 50  0000 C CNN
F 2 "" H 1000 1075 50  0001 C CNN
F 3 "~" H 1000 1075 50  0001 C CNN
	1    1000 1075
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0103
U 1 1 5E663452
P 1500 1075
F 0 "#PWR0103" H 1500 925 50  0001 C CNN
F 1 "VCC" H 1517 1251 50  0000 C CNN
F 2 "" H 1500 1075 50  0001 C CNN
F 3 "" H 1500 1075 50  0001 C CNN
	1    1500 1075
	1    0    0    -1  
$EndComp
$Comp
L angelina_integrated:MJ-4PP-9 J1
U 1 1 5E664EEA
P 4650 1350
F 0 "J1" H 4682 1631 50  0000 C CNN
F 1 "MJ-4PP-9" H 4682 1538 50  0000 C CNN
F 2 "angelina_integerated:MJ-4PP-9_1side" H 4925 1525 50  0001 C CNN
F 3 "" H 4925 1525 50  0001 C CNN
	1    4650 1350
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push RSW1
U 1 1 5E667BA5
P 8250 1300
F 0 "RSW1" H 8250 1590 50  0000 C CNN
F 1 "RESET" H 8250 1497 50  0000 C CNN
F 2 "angelina_integerated:ResetSW" H 8250 1500 50  0001 C CNN
F 3 "~" H 8250 1500 50  0001 C CNN
	1    8250 1300
	1    0    0    -1  
$EndComp
Text GLabel 8050 1300 0    50   Input ~ 0
reset
$Comp
L power:GND #PWR0104
U 1 1 5E66BA88
P 8450 1300
F 0 "#PWR0104" H 8450 1050 50  0001 C CNN
F 1 "GND" H 8455 1124 50  0000 C CNN
F 2 "" H 8450 1300 50  0001 C CNN
F 3 "" H 8450 1300 50  0001 C CNN
	1    8450 1300
	1    0    0    -1  
$EndComp
$Comp
L angelina_integrated:ProMicro_r U1
U 1 1 5E671BA1
P 2950 1800
F 0 "U1" H 3000 2795 60  0000 C CNN
F 1 "ProMicro_r" H 3000 2685 60  0000 C CNN
F 2 "angelina_integerated:ProMicro" H 3100 750 60  0001 C CNN
F 3 "" H 3100 750 60  0000 C CNN
	1    2950 1800
	1    0    0    -1  
$EndComp
Text GLabel 2300 1300 0    50   Input ~ 0
reset
$Comp
L power:GND #PWR0105
U 1 1 5E67853B
P 2300 1200
F 0 "#PWR0105" H 2300 950 50  0001 C CNN
F 1 "GND" V 2305 1070 50  0000 R CNN
F 2 "" H 2300 1200 50  0001 C CNN
F 3 "" H 2300 1200 50  0001 C CNN
	1    2300 1200
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR0106
U 1 1 5E678E47
P 2300 1400
F 0 "#PWR0106" H 2300 1250 50  0001 C CNN
F 1 "VCC" V 2318 1529 50  0000 L CNN
F 2 "" H 2300 1400 50  0001 C CNN
F 3 "" H 2300 1400 50  0001 C CNN
	1    2300 1400
	0    -1   -1   0   
$EndComp
Text GLabel 2300 1500 0    50   Input ~ 0
col0
Text GLabel 2300 1600 0    50   Input ~ 0
col1
Text GLabel 2300 1700 0    50   Input ~ 0
col2
Text GLabel 2300 1800 0    50   Input ~ 0
col3
Text GLabel 2300 1900 0    50   Input ~ 0
col4
Text GLabel 2300 2000 0    50   Input ~ 0
col5
Text GLabel 2300 2100 0    50   Input ~ 0
col6
Text GLabel 2300 2200 0    50   Input ~ 0
col7
NoConn ~ 2300 1100
$Comp
L power:GND #PWR0107
U 1 1 5E679EA7
P 3700 1300
F 0 "#PWR0107" H 3700 1050 50  0001 C CNN
F 1 "GND" V 3705 1170 50  0000 R CNN
F 2 "" H 3700 1300 50  0001 C CNN
F 3 "" H 3700 1300 50  0001 C CNN
	1    3700 1300
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5E67A4D4
P 3700 1400
F 0 "#PWR0108" H 3700 1150 50  0001 C CNN
F 1 "GND" V 3705 1270 50  0000 R CNN
F 2 "" H 3700 1400 50  0001 C CNN
F 3 "" H 3700 1400 50  0001 C CNN
	1    3700 1400
	0    -1   -1   0   
$EndComp
Text GLabel 3700 1200 2    50   Input ~ 0
data
Text GLabel 3700 1500 2    50   Input ~ 0
SDA
Text GLabel 3700 1600 2    50   Input ~ 0
SCL
Text GLabel 3700 1700 2    50   Input ~ 0
row0
Text GLabel 3700 1800 2    50   Input ~ 0
row1
Text GLabel 3700 1900 2    50   Input ~ 0
row2
Text GLabel 3700 2000 2    50   Input ~ 0
row3
Text GLabel 3700 2100 2    50   Input ~ 0
row4
$Comp
L power:VCC #PWR0109
U 1 1 5E644C66
P 5000 1100
F 0 "#PWR0109" H 5000 950 50  0001 C CNN
F 1 "VCC" H 5017 1276 50  0000 C CNN
F 2 "" H 5000 1100 50  0001 C CNN
F 3 "" H 5000 1100 50  0001 C CNN
	1    5000 1100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5E6458B1
P 5000 1600
F 0 "#PWR0110" H 5000 1350 50  0001 C CNN
F 1 "GND" H 5005 1424 50  0000 C CNN
F 2 "" H 5000 1600 50  0001 C CNN
F 3 "" H 5000 1600 50  0001 C CNN
	1    5000 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 1375 4850 1375
Wire Wire Line
	5000 1325 5000 1100
Wire Wire Line
	5000 1375 5000 1600
Wire Wire Line
	4850 1325 5000 1325
Text GLabel 5675 1425 2    50   Input ~ 0
data
$Comp
L Device:R R1
U 1 1 5E669724
P 6125 1400
F 0 "R1" V 6241 1400 50  0000 C CNN
F 1 "R" V 6242 1400 50  0001 C CNN
F 2 "angelina_integerated:R" V 6055 1400 50  0001 C CNN
F 3 "~" H 6125 1400 50  0001 C CNN
	1    6125 1400
	-1   0    0    1   
$EndComp
Text GLabel 6125 1550 3    50   Input ~ 0
SDA
Text GLabel 6350 1550 3    50   Input ~ 0
SCL
$Comp
L power:VCC #PWR0111
U 1 1 5E668256
P 6350 1250
F 0 "#PWR0111" H 6350 1100 50  0001 C CNN
F 1 "VCC" V 6368 1379 50  0000 L CNN
F 2 "" H 6350 1250 50  0001 C CNN
F 3 "" H 6350 1250 50  0001 C CNN
	1    6350 1250
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P1
U 1 1 5E68E7FB
P 5200 1000
F 0 "P1" V 5164 910 50  0000 R CNN
F 1 "i2c-pin-A" V 5071 910 50  0000 R CNN
F 2 "angelina_integerated:1pin_conn" H 5200 1000 50  0001 C CNN
F 3 "~" H 5200 1000 50  0001 C CNN
	1    5200 1000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4850 1425 5200 1425
Wire Wire Line
	5200 1275 4850 1275
Wire Wire Line
	5200 1200 5200 1275
$Comp
L Jumper:SolderJumper_2_Open JP1
U 1 1 5E64A962
P 5525 1425
F 0 "JP1" H 5525 1541 50  0000 C CNN
F 1 "DATA-jumper" H 5525 1542 50  0001 C CNN
F 2 "angelina_integerated:Jumper" H 5525 1425 50  0001 C CNN
F 3 "~" H 5525 1425 50  0001 C CNN
	1    5525 1425
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P2
U 1 1 5E690EF7
P 5200 1700
F 0 "P2" V 5070 1780 50  0000 L CNN
F 1 "i2c-pin-B" V 5163 1780 50  0000 L CNN
F 2 "angelina_integerated:1pin_conn" H 5200 1700 50  0001 C CNN
F 3 "~" H 5200 1700 50  0001 C CNN
	1    5200 1700
	0    1    1    0   
$EndComp
Wire Wire Line
	5200 1500 5200 1425
Connection ~ 5200 1425
Wire Wire Line
	5200 1425 5375 1425
$Comp
L power:VCC #PWR0114
U 1 1 5E6A6336
P 6125 1250
F 0 "#PWR0114" H 6125 1100 50  0001 C CNN
F 1 "VCC" V 6143 1379 50  0000 L CNN
F 2 "" H 6125 1250 50  0001 C CNN
F 3 "" H 6125 1250 50  0001 C CNN
	1    6125 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 11550 8100 11550
Connection ~ 7100 11550
Connection ~ 6500 10500
Wire Wire Line
	3100 11550 5100 11550
Wire Wire Line
	2100 11550 3100 11550
Connection ~ 2100 11550
Connection ~ 1500 10500
Wire Wire Line
	1250 10050 3100 10050
Wire Wire Line
	1250 9300 3100 9300
Connection ~ 1500 8250
$Comp
L Device:D D43
U 1 1 5E8A905C
P 5100 9150
F 0 "D43" V 5053 9229 50  0000 L CNN
F 1 "D" V 5146 9229 50  0000 L CNN
F 2 "angelina_integerated:D3_SMD" H 5100 9150 50  0001 C CNN
F 3 "~" H 5100 9150 50  0001 C CNN
	1    5100 9150
	0    1    1    0   
$EndComp
$Comp
L angelina_integrated:SW_PUSH SW43
U 1 1 5E8A9062
P 4800 9000
F 0 "SW43" H 4800 9260 50  0000 C CNN
F 1 "SW_PUSH" H 4800 9167 50  0000 C CNN
F 2 "angelina_integerated:CherryMX_Hotswap_1u" H 4800 9000 50  0001 C CNN
F 3 "" H 4800 9000 50  0000 C CNN
	1    4800 9000
	1    0    0    -1  
$EndComp
$Comp
L Device:D D42
U 1 1 5E8A9068
P 4100 9150
F 0 "D42" V 4053 9229 50  0000 L CNN
F 1 "D" V 4146 9229 50  0000 L CNN
F 2 "angelina_integerated:D3_SMD" H 4100 9150 50  0001 C CNN
F 3 "~" H 4100 9150 50  0001 C CNN
	1    4100 9150
	0    1    1    0   
$EndComp
$Comp
L angelina_integrated:SW_PUSH SW42
U 1 1 5E8A906E
P 3800 9000
F 0 "SW42" H 3800 9260 50  0000 C CNN
F 1 "SW_PUSH" H 3800 9167 50  0000 C CNN
F 2 "angelina_integerated:CherryMX_Hotswap_1u" H 3800 9000 50  0001 C CNN
F 3 "" H 3800 9000 50  0000 C CNN
	1    3800 9000
	1    0    0    -1  
$EndComp
$Comp
L Device:D D41
U 1 1 5E8A9074
P 3100 9150
F 0 "D41" V 3053 9229 50  0000 L CNN
F 1 "D" V 3146 9229 50  0000 L CNN
F 2 "angelina_integerated:D3_SMD" H 3100 9150 50  0001 C CNN
F 3 "~" H 3100 9150 50  0001 C CNN
	1    3100 9150
	0    1    1    0   
$EndComp
$Comp
L angelina_integrated:SW_PUSH SW41
U 1 1 5E8A907A
P 2800 9000
F 0 "SW41" H 2800 9260 50  0000 C CNN
F 1 "SW_PUSH" H 2800 9167 50  0000 C CNN
F 2 "angelina_integerated:CherryMX_Hotswap_1u" H 2800 9000 50  0001 C CNN
F 3 "" H 2800 9000 50  0000 C CNN
	1    2800 9000
	1    0    0    -1  
$EndComp
$Comp
L Device:D D50
U 1 1 5E8A90BE
P 5100 9900
F 0 "D50" V 5053 9979 50  0000 L CNN
F 1 "D" V 5146 9979 50  0000 L CNN
F 2 "angelina_integerated:D3_SMD" H 5100 9900 50  0001 C CNN
F 3 "~" H 5100 9900 50  0001 C CNN
	1    5100 9900
	0    1    1    0   
$EndComp
$Comp
L angelina_integrated:SW_PUSH SW50
U 1 1 5E8A90C4
P 4800 9750
F 0 "SW50" H 4800 10010 50  0000 C CNN
F 1 "SW_PUSH" H 4800 9917 50  0000 C CNN
F 2 "angelina_integerated:CherryMX_Hotswap_1u" H 4800 9750 50  0001 C CNN
F 3 "" H 4800 9750 50  0000 C CNN
	1    4800 9750
	1    0    0    -1  
$EndComp
$Comp
L Device:D D49
U 1 1 5E8A90CA
P 4100 9900
F 0 "D49" V 4053 9979 50  0000 L CNN
F 1 "D" V 4146 9979 50  0000 L CNN
F 2 "angelina_integerated:D3_SMD" H 4100 9900 50  0001 C CNN
F 3 "~" H 4100 9900 50  0001 C CNN
	1    4100 9900
	0    1    1    0   
$EndComp
$Comp
L angelina_integrated:SW_PUSH SW49
U 1 1 5E8A90D0
P 3800 9750
F 0 "SW49" H 3800 10010 50  0000 C CNN
F 1 "SW_PUSH" H 3800 9917 50  0000 C CNN
F 2 "angelina_integerated:CherryMX_Hotswap_1u" H 3800 9750 50  0001 C CNN
F 3 "" H 3800 9750 50  0000 C CNN
	1    3800 9750
	1    0    0    -1  
$EndComp
$Comp
L Device:D D48
U 1 1 5E8A90D6
P 3100 9900
F 0 "D48" V 3053 9979 50  0000 L CNN
F 1 "D" V 3146 9979 50  0000 L CNN
F 2 "angelina_integerated:D3_SMD" H 3100 9900 50  0001 C CNN
F 3 "~" H 3100 9900 50  0001 C CNN
	1    3100 9900
	0    1    1    0   
$EndComp
$Comp
L angelina_integrated:SW_PUSH SW48
U 1 1 5E8A90DC
P 2800 9750
F 0 "SW48" H 2800 10010 50  0000 C CNN
F 1 "SW_PUSH" H 2800 9917 50  0000 C CNN
F 2 "angelina_integerated:CherryMX_Hotswap_1u" H 2800 9750 50  0001 C CNN
F 3 "" H 2800 9750 50  0000 C CNN
	1    2800 9750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 8250 4500 9000
Connection ~ 4500 9000
Wire Wire Line
	4500 9000 4500 9750
Connection ~ 4500 9750
Wire Wire Line
	4500 9750 4500 10500
Wire Wire Line
	3500 8250 3500 9000
Connection ~ 3500 9000
Wire Wire Line
	3500 9000 3500 9750
Connection ~ 3500 9750
Wire Wire Line
	3500 9750 3500 10500
Connection ~ 4100 9300
Wire Wire Line
	4100 9300 5100 9300
Connection ~ 3100 9300
Wire Wire Line
	3100 9300 4100 9300
Wire Wire Line
	2500 8250 2500 9000
Wire Wire Line
	2500 9000 2500 9750
Connection ~ 2500 9000
Connection ~ 2500 9750
Wire Wire Line
	2500 9750 2500 10500
Connection ~ 3500 8250
Connection ~ 2500 8250
Connection ~ 2500 10500
Connection ~ 5100 9300
Wire Wire Line
	3100 10050 4100 10050
Connection ~ 3100 10050
Connection ~ 4100 10050
Wire Wire Line
	4100 10050 5100 10050
Wire Wire Line
	5100 10050 6100 10050
Connection ~ 5100 10050
Wire Wire Line
	6100 11550 7100 11550
Wire Wire Line
	8100 10800 9100 10800
Connection ~ 8100 10800
Wire Wire Line
	7100 10800 8100 10800
Wire Wire Line
	8100 10050 9100 10050
Connection ~ 8100 10050
Wire Wire Line
	7100 10050 8100 10050
Connection ~ 7100 10800
Wire Wire Line
	6100 10800 7100 10800
Connection ~ 6100 11550
Wire Wire Line
	5100 11550 6100 11550
Connection ~ 6100 10800
Wire Wire Line
	5100 10800 6100 10800
Connection ~ 7100 10050
Wire Wire Line
	6100 10050 7100 10050
Wire Wire Line
	6100 9300 7100 9300
Connection ~ 6100 9300
Wire Wire Line
	5100 9300 6100 9300
Connection ~ 6100 10050
Connection ~ 5100 10800
Wire Wire Line
	4100 10800 5100 10800
Connection ~ 5100 11550
Connection ~ 4100 10800
Wire Wire Line
	3100 10800 4100 10800
Connection ~ 3100 10800
Wire Wire Line
	2100 10800 3100 10800
Connection ~ 3100 11550
Wire Wire Line
	1250 11550 2100 11550
Connection ~ 2100 10800
Wire Wire Line
	1250 10800 2100 10800
Wire Wire Line
	7100 9300 8100 9300
Connection ~ 7100 9300
Wire Wire Line
	8100 9300 9100 9300
Connection ~ 8100 9300
Wire Wire Line
	8100 8550 9100 8550
Connection ~ 8100 8550
Wire Wire Line
	7100 8550 8100 8550
Connection ~ 7100 8550
Wire Wire Line
	6100 8550 7100 8550
Connection ~ 6100 8550
Wire Wire Line
	5100 8550 6100 8550
Connection ~ 5100 8550
Wire Wire Line
	4100 8550 5100 8550
Connection ~ 4100 8550
Wire Wire Line
	3100 8550 4100 8550
Connection ~ 3100 8550
Wire Wire Line
	2100 8550 3100 8550
Connection ~ 2100 8550
Wire Wire Line
	1250 8550 2100 8550
Wire Wire Line
	1500 10500 1500 11250
Wire Wire Line
	2500 7750 2500 8250
Wire Wire Line
	2500 10500 2500 11250
Wire Wire Line
	3500 7750 3500 8250
Wire Wire Line
	4500 10500 4500 11250
Connection ~ 4500 10500
Wire Wire Line
	5500 9750 5500 10500
Connection ~ 5500 9750
Wire Wire Line
	5500 9000 5500 9750
Connection ~ 5500 9000
Wire Wire Line
	5500 8250 5500 9000
Connection ~ 4500 8250
Wire Wire Line
	4500 7750 4500 8250
Wire Wire Line
	5500 10500 5500 11250
Connection ~ 5500 10500
Wire Wire Line
	6500 9750 6500 10500
Connection ~ 6500 9750
Wire Wire Line
	6500 9000 6500 9750
Connection ~ 6500 9000
Wire Wire Line
	6500 8250 6500 9000
Connection ~ 5500 8250
Wire Wire Line
	5500 7725 5500 8250
Wire Wire Line
	7500 9750 7500 10500
Connection ~ 7500 9750
Wire Wire Line
	7500 9000 7500 9750
Connection ~ 7500 9000
Wire Wire Line
	7500 8250 7500 9000
Connection ~ 6500 8250
Wire Wire Line
	6500 7750 6500 8250
Wire Wire Line
	6500 10500 6500 11250
Connection ~ 7500 10500
Wire Wire Line
	8500 9750 8500 10500
Connection ~ 8500 9750
Wire Wire Line
	8500 9000 8500 9750
Connection ~ 8500 9000
Wire Wire Line
	8500 8250 8500 9000
Connection ~ 7500 8250
Wire Wire Line
	7500 7750 7500 8250
Wire Wire Line
	7500 10500 7500 11250
Wire Wire Line
	1500 8250 1500 10500
Connection ~ 8500 8250
Wire Wire Line
	8500 7750 8500 8250
Text GLabel 8500 7750 1    50   Input ~ 0
col0
Text GLabel 7500 7750 1    50   Input ~ 0
col1
Text GLabel 6500 7750 1    50   Input ~ 0
col2
Text GLabel 5500 7725 1    50   Input ~ 0
col3
Text GLabel 4500 7750 1    50   Input ~ 0
col4
Text GLabel 3500 7750 1    50   Input ~ 0
col5
Text GLabel 2500 7750 1    50   Input ~ 0
col6
Wire Wire Line
	1500 7750 1500 8250
Text GLabel 1500 7750 1    50   Input ~ 0
col7
$Comp
L Device:D D56
U 1 1 5E8A91AA
P 3100 10650
F 0 "D56" V 3053 10729 50  0000 L CNN
F 1 "D" V 3146 10729 50  0000 L CNN
F 2 "angelina_integerated:D3_SMD" H 3100 10650 50  0001 C CNN
F 3 "~" H 3100 10650 50  0001 C CNN
	1    3100 10650
	0    1    1    0   
$EndComp
$Comp
L Device:D D63
U 1 1 5E8A91A1
P 2100 11400
F 0 "D63" V 2053 11479 50  0000 L CNN
F 1 "D" V 2146 11479 50  0000 L CNN
F 2 "angelina_integerated:D3_SMD" H 2100 11400 50  0001 C CNN
F 3 "~" H 2100 11400 50  0001 C CNN
	1    2100 11400
	0    1    1    0   
$EndComp
$Comp
L angelina_integrated:SW_PUSH SW63
U 1 1 5E8A919B
P 1800 11250
F 0 "SW63" H 1800 11510 50  0000 C CNN
F 1 "SW_PUSH" H 1800 11417 50  0000 C CNN
F 2 "angelina_integerated:CherryMX_Hotswap_1u" H 1800 11250 50  0001 C CNN
F 3 "" H 1800 11250 50  0000 C CNN
	1    1800 11250
	1    0    0    -1  
$EndComp
Text GLabel 1250 11550 0    50   Input ~ 0
row4
$Comp
L angelina_integrated:SW_PUSH SW64
U 1 1 5E8A918B
P 2800 11250
F 0 "SW64" H 2800 11510 50  0000 C CNN
F 1 "SW_PUSH" H 2800 11417 50  0000 C CNN
F 2 "angelina_integerated:CherryMX_Hotswap_1u" H 2800 11250 50  0001 C CNN
F 3 "" H 2800 11250 50  0000 C CNN
	1    2800 11250
	1    0    0    -1  
$EndComp
$Comp
L Device:D D64
U 1 1 5E8A9185
P 3100 11400
F 0 "D64" V 3053 11479 50  0000 L CNN
F 1 "D" V 3146 11479 50  0000 L CNN
F 2 "angelina_integerated:D3_SMD" H 3100 11400 50  0001 C CNN
F 3 "~" H 3100 11400 50  0001 C CNN
	1    3100 11400
	0    1    1    0   
$EndComp
$Comp
L angelina_integrated:SW_PUSH SW65
U 1 1 5E8A917F
P 4800 11250
F 0 "SW65" H 4800 11510 50  0000 C CNN
F 1 "SW_PUSH" H 4800 11417 50  0000 C CNN
F 2 "angelina_integerated:CherryMX_Hotswap_1.25u" H 4800 11250 50  0001 C CNN
F 3 "" H 4800 11250 50  0000 C CNN
	1    4800 11250
	1    0    0    -1  
$EndComp
$Comp
L Device:D D65
U 1 1 5E8A9179
P 5100 11400
F 0 "D65" V 5053 11479 50  0000 L CNN
F 1 "D" V 5146 11479 50  0000 L CNN
F 2 "angelina_integerated:D3_SMD" H 5100 11400 50  0001 C CNN
F 3 "~" H 5100 11400 50  0001 C CNN
	1    5100 11400
	0    1    1    0   
$EndComp
$Comp
L angelina_integrated:SW_PUSH SW66
U 1 1 5E8A9173
P 5800 11250
F 0 "SW66" H 5800 11510 50  0000 C CNN
F 1 "SW_PUSH" H 5800 11417 50  0000 C CNN
F 2 "angelina_integerated:CherryMX_Hotswap_1.25u" H 5800 11250 50  0001 C CNN
F 3 "" H 5800 11250 50  0000 C CNN
	1    5800 11250
	1    0    0    -1  
$EndComp
$Comp
L Device:D D66
U 1 1 5E8A916D
P 6100 11400
F 0 "D66" V 6053 11479 50  0000 L CNN
F 1 "D" V 6146 11479 50  0000 L CNN
F 2 "angelina_integerated:D3_SMD" H 6100 11400 50  0001 C CNN
F 3 "~" H 6100 11400 50  0001 C CNN
	1    6100 11400
	0    1    1    0   
$EndComp
$Comp
L angelina_integrated:SW_PUSH SW67
U 1 1 5E8A9167
P 6800 11250
F 0 "SW67" H 6800 11510 50  0000 C CNN
F 1 "SW_PUSH" H 6800 11417 50  0000 C CNN
F 2 "angelina_integerated:CherryMX_Hotswap_1u" H 6800 11250 50  0001 C CNN
F 3 "" H 6800 11250 50  0000 C CNN
	1    6800 11250
	1    0    0    -1  
$EndComp
$Comp
L Device:D D67
U 1 1 5E8A9161
P 7100 11400
F 0 "D67" V 7053 11479 50  0000 L CNN
F 1 "D" V 7146 11479 50  0000 L CNN
F 2 "angelina_integerated:D3_SMD" H 7100 11400 50  0001 C CNN
F 3 "~" H 7100 11400 50  0001 C CNN
	1    7100 11400
	0    1    1    0   
$EndComp
$Comp
L angelina_integrated:SW_PUSH SW68
U 1 1 5E8A915B
P 7800 11250
F 0 "SW68" H 7800 11510 50  0000 C CNN
F 1 "SW_PUSH" H 7800 11417 50  0000 C CNN
F 2 "angelina_integerated:CherryMX_Hotswap_1.25u" H 7800 11250 50  0001 C CNN
F 3 "" H 7800 11250 50  0000 C CNN
	1    7800 11250
	1    0    0    -1  
$EndComp
$Comp
L Device:D D68
U 1 1 5E8A9155
P 8100 11400
F 0 "D68" V 8053 11479 50  0000 L CNN
F 1 "D" V 8146 11479 50  0000 L CNN
F 2 "angelina_integerated:D3_SMD" H 8100 11400 50  0001 C CNN
F 3 "~" H 8100 11400 50  0001 C CNN
	1    8100 11400
	0    1    1    0   
$EndComp
Text GLabel 1250 10800 0    50   Input ~ 0
row3
$Comp
L angelina_integrated:SW_PUSH SW55
U 1 1 5E8A9144
P 1800 10500
F 0 "SW55" H 1800 10760 50  0000 C CNN
F 1 "SW_PUSH" H 1800 10667 50  0000 C CNN
F 2 "angelina_integerated:CherryMX_Hotswap_1u" H 1800 10500 50  0001 C CNN
F 3 "" H 1800 10500 50  0000 C CNN
	1    1800 10500
	1    0    0    -1  
$EndComp
$Comp
L Device:D D55
U 1 1 5E8A913E
P 2100 10650
F 0 "D55" V 2053 10729 50  0000 L CNN
F 1 "D" V 2146 10729 50  0000 L CNN
F 2 "angelina_integerated:D3_SMD" H 2100 10650 50  0001 C CNN
F 3 "~" H 2100 10650 50  0001 C CNN
	1    2100 10650
	0    1    1    0   
$EndComp
$Comp
L angelina_integrated:SW_PUSH SW56
U 1 1 5E8A9138
P 2800 10500
F 0 "SW56" H 2800 10760 50  0000 C CNN
F 1 "SW_PUSH" H 2800 10667 50  0000 C CNN
F 2 "angelina_integerated:CherryMX_Hotswap_1u" H 2800 10500 50  0001 C CNN
F 3 "" H 2800 10500 50  0000 C CNN
	1    2800 10500
	1    0    0    -1  
$EndComp
$Comp
L angelina_integrated:SW_PUSH SW57
U 1 1 5E8A9132
P 3800 10500
F 0 "SW57" H 3800 10760 50  0000 C CNN
F 1 "SW_PUSH" H 3800 10667 50  0000 C CNN
F 2 "angelina_integerated:CherryMX_Hotswap_1u" H 3800 10500 50  0001 C CNN
F 3 "" H 3800 10500 50  0000 C CNN
	1    3800 10500
	1    0    0    -1  
$EndComp
$Comp
L Device:D D57
U 1 1 5E8A912C
P 4100 10650
F 0 "D57" V 4053 10729 50  0000 L CNN
F 1 "D" V 4146 10729 50  0000 L CNN
F 2 "angelina_integerated:D3_SMD" H 4100 10650 50  0001 C CNN
F 3 "~" H 4100 10650 50  0001 C CNN
	1    4100 10650
	0    1    1    0   
$EndComp
$Comp
L angelina_integrated:SW_PUSH SW58
U 1 1 5E8A9126
P 4800 10500
F 0 "SW58" H 4800 10760 50  0000 C CNN
F 1 "SW_PUSH" H 4800 10667 50  0000 C CNN
F 2 "angelina_integerated:CherryMX_Hotswap_1u" H 4800 10500 50  0001 C CNN
F 3 "" H 4800 10500 50  0000 C CNN
	1    4800 10500
	1    0    0    -1  
$EndComp
$Comp
L Device:D D58
U 1 1 5E8A9120
P 5100 10650
F 0 "D58" V 5053 10729 50  0000 L CNN
F 1 "D" V 5146 10729 50  0000 L CNN
F 2 "angelina_integerated:D3_SMD" H 5100 10650 50  0001 C CNN
F 3 "~" H 5100 10650 50  0001 C CNN
	1    5100 10650
	0    1    1    0   
$EndComp
$Comp
L angelina_integrated:SW_PUSH SW59
U 1 1 5E8A911A
P 5800 10500
F 0 "SW59" H 5800 10760 50  0000 C CNN
F 1 "SW_PUSH" H 5800 10667 50  0000 C CNN
F 2 "angelina_integerated:CherryMX_Hotswap_1u" H 5800 10500 50  0001 C CNN
F 3 "" H 5800 10500 50  0000 C CNN
	1    5800 10500
	1    0    0    -1  
$EndComp
$Comp
L Device:D D59
U 1 1 5E8A9114
P 6100 10650
F 0 "D59" V 6053 10729 50  0000 L CNN
F 1 "D" V 6146 10729 50  0000 L CNN
F 2 "angelina_integerated:D3_SMD" H 6100 10650 50  0001 C CNN
F 3 "~" H 6100 10650 50  0001 C CNN
	1    6100 10650
	0    1    1    0   
$EndComp
$Comp
L angelina_integrated:SW_PUSH SW60
U 1 1 5E8A910E
P 6800 10500
F 0 "SW60" H 6800 10760 50  0000 C CNN
F 1 "SW_PUSH" H 6800 10667 50  0000 C CNN
F 2 "angelina_integerated:CherryMX_Hotswap_1u" H 6800 10500 50  0001 C CNN
F 3 "" H 6800 10500 50  0000 C CNN
	1    6800 10500
	1    0    0    -1  
$EndComp
$Comp
L Device:D D60
U 1 1 5E8A9108
P 7100 10650
F 0 "D60" V 7053 10729 50  0000 L CNN
F 1 "D" V 7146 10729 50  0000 L CNN
F 2 "angelina_integerated:D3_SMD" H 7100 10650 50  0001 C CNN
F 3 "~" H 7100 10650 50  0001 C CNN
	1    7100 10650
	0    1    1    0   
$EndComp
$Comp
L angelina_integrated:SW_PUSH SW61
U 1 1 5E8A9102
P 7800 10500
F 0 "SW61" H 7800 10760 50  0000 C CNN
F 1 "SW_PUSH" H 7800 10667 50  0000 C CNN
F 2 "angelina_integerated:CherryMX_Hotswap_1u" H 7800 10500 50  0001 C CNN
F 3 "" H 7800 10500 50  0000 C CNN
	1    7800 10500
	1    0    0    -1  
$EndComp
$Comp
L Device:D D61
U 1 1 5E8A90FC
P 8100 10650
F 0 "D61" V 8053 10729 50  0000 L CNN
F 1 "D" V 8146 10729 50  0000 L CNN
F 2 "angelina_integerated:D3_SMD" H 8100 10650 50  0001 C CNN
F 3 "~" H 8100 10650 50  0001 C CNN
	1    8100 10650
	0    1    1    0   
$EndComp
$Comp
L angelina_integrated:SW_PUSH SW62
U 1 1 5E8A90F6
P 8800 10500
F 0 "SW62" H 8800 10760 50  0000 C CNN
F 1 "SW_PUSH" H 8800 10667 50  0000 C CNN
F 2 "angelina_integerated:CherryMX_Hotswap_1u" H 8800 10500 50  0001 C CNN
F 3 "" H 8800 10500 50  0000 C CNN
	1    8800 10500
	1    0    0    -1  
$EndComp
$Comp
L Device:D D62
U 1 1 5E8A90F0
P 9100 10650
F 0 "D62" V 9053 10729 50  0000 L CNN
F 1 "D" V 9146 10729 50  0000 L CNN
F 2 "angelina_integerated:D3_SMD" H 9100 10650 50  0001 C CNN
F 3 "~" H 9100 10650 50  0001 C CNN
	1    9100 10650
	0    1    1    0   
$EndComp
Text GLabel 1250 10050 0    50   Input ~ 0
row2
$Comp
L angelina_integrated:SW_PUSH SW51
U 1 1 5E8A90B8
P 5800 9750
F 0 "SW51" H 5800 10010 50  0000 C CNN
F 1 "SW_PUSH" H 5800 9917 50  0000 C CNN
F 2 "angelina_integerated:CherryMX_Hotswap_1u" H 5800 9750 50  0001 C CNN
F 3 "" H 5800 9750 50  0000 C CNN
	1    5800 9750
	1    0    0    -1  
$EndComp
$Comp
L Device:D D51
U 1 1 5E8A90B2
P 6100 9900
F 0 "D51" V 6053 9979 50  0000 L CNN
F 1 "D" V 6146 9979 50  0000 L CNN
F 2 "angelina_integerated:D3_SMD" H 6100 9900 50  0001 C CNN
F 3 "~" H 6100 9900 50  0001 C CNN
	1    6100 9900
	0    1    1    0   
$EndComp
$Comp
L angelina_integrated:SW_PUSH SW52
U 1 1 5E8A90AC
P 6800 9750
F 0 "SW52" H 6800 10010 50  0000 C CNN
F 1 "SW_PUSH" H 6800 9917 50  0000 C CNN
F 2 "angelina_integerated:CherryMX_Hotswap_1u" H 6800 9750 50  0001 C CNN
F 3 "" H 6800 9750 50  0000 C CNN
	1    6800 9750
	1    0    0    -1  
$EndComp
$Comp
L Device:D D52
U 1 1 5E8A90A6
P 7100 9900
F 0 "D52" V 7053 9979 50  0000 L CNN
F 1 "D" V 7146 9979 50  0000 L CNN
F 2 "angelina_integerated:D3_SMD" H 7100 9900 50  0001 C CNN
F 3 "~" H 7100 9900 50  0001 C CNN
	1    7100 9900
	0    1    1    0   
$EndComp
$Comp
L angelina_integrated:SW_PUSH SW53
U 1 1 5E8A90A0
P 7800 9750
F 0 "SW53" H 7800 10010 50  0000 C CNN
F 1 "SW_PUSH" H 7800 9917 50  0000 C CNN
F 2 "angelina_integerated:CherryMX_Hotswap_1u" H 7800 9750 50  0001 C CNN
F 3 "" H 7800 9750 50  0000 C CNN
	1    7800 9750
	1    0    0    -1  
$EndComp
$Comp
L Device:D D53
U 1 1 5E8A909A
P 8100 9900
F 0 "D53" V 8053 9979 50  0000 L CNN
F 1 "D" V 8146 9979 50  0000 L CNN
F 2 "angelina_integerated:D3_SMD" H 8100 9900 50  0001 C CNN
F 3 "~" H 8100 9900 50  0001 C CNN
	1    8100 9900
	0    1    1    0   
$EndComp
$Comp
L angelina_integrated:SW_PUSH SW54
U 1 1 5E8A9094
P 8800 9750
F 0 "SW54" H 8800 10010 50  0000 C CNN
F 1 "SW_PUSH" H 8800 9917 50  0000 C CNN
F 2 "angelina_integerated:CherryMX_Hotswap_1u" H 8800 9750 50  0001 C CNN
F 3 "" H 8800 9750 50  0000 C CNN
	1    8800 9750
	1    0    0    -1  
$EndComp
$Comp
L Device:D D54
U 1 1 5E8A908E
P 9100 9900
F 0 "D54" V 9053 9979 50  0000 L CNN
F 1 "D" V 9146 9979 50  0000 L CNN
F 2 "angelina_integerated:D3_SMD" H 9100 9900 50  0001 C CNN
F 3 "~" H 9100 9900 50  0001 C CNN
	1    9100 9900
	0    1    1    0   
$EndComp
Text GLabel 1250 9300 0    50   Input ~ 0
row1
$Comp
L angelina_integrated:SW_PUSH SW44
U 1 1 5E8A9056
P 5800 9000
F 0 "SW44" H 5800 9260 50  0000 C CNN
F 1 "SW_PUSH" H 5800 9167 50  0000 C CNN
F 2 "angelina_integerated:CherryMX_Hotswap_1u" H 5800 9000 50  0001 C CNN
F 3 "" H 5800 9000 50  0000 C CNN
	1    5800 9000
	1    0    0    -1  
$EndComp
$Comp
L Device:D D44
U 1 1 5E8A9050
P 6100 9150
F 0 "D44" V 6053 9229 50  0000 L CNN
F 1 "D" V 6146 9229 50  0000 L CNN
F 2 "angelina_integerated:D3_SMD" H 6100 9150 50  0001 C CNN
F 3 "~" H 6100 9150 50  0001 C CNN
	1    6100 9150
	0    1    1    0   
$EndComp
$Comp
L angelina_integrated:SW_PUSH SW45
U 1 1 5E8A904A
P 6800 9000
F 0 "SW45" H 6800 9260 50  0000 C CNN
F 1 "SW_PUSH" H 6800 9167 50  0000 C CNN
F 2 "angelina_integerated:CherryMX_Hotswap_1u" H 6800 9000 50  0001 C CNN
F 3 "" H 6800 9000 50  0000 C CNN
	1    6800 9000
	1    0    0    -1  
$EndComp
$Comp
L Device:D D45
U 1 1 5E8A9044
P 7100 9150
F 0 "D45" V 7053 9229 50  0000 L CNN
F 1 "D" V 7146 9229 50  0000 L CNN
F 2 "angelina_integerated:D3_SMD" H 7100 9150 50  0001 C CNN
F 3 "~" H 7100 9150 50  0001 C CNN
	1    7100 9150
	0    1    1    0   
$EndComp
$Comp
L angelina_integrated:SW_PUSH SW46
U 1 1 5E8A903E
P 7800 9000
F 0 "SW46" H 7800 9260 50  0000 C CNN
F 1 "SW_PUSH" H 7800 9167 50  0000 C CNN
F 2 "angelina_integerated:CherryMX_Hotswap_1u" H 7800 9000 50  0001 C CNN
F 3 "" H 7800 9000 50  0000 C CNN
	1    7800 9000
	1    0    0    -1  
$EndComp
$Comp
L Device:D D46
U 1 1 5E8A9038
P 8100 9150
F 0 "D46" V 8053 9229 50  0000 L CNN
F 1 "D" V 8146 9229 50  0000 L CNN
F 2 "angelina_integerated:D3_SMD" H 8100 9150 50  0001 C CNN
F 3 "~" H 8100 9150 50  0001 C CNN
	1    8100 9150
	0    1    1    0   
$EndComp
$Comp
L angelina_integrated:SW_PUSH SW47
U 1 1 5E8A9032
P 8800 9000
F 0 "SW47" H 8800 9260 50  0000 C CNN
F 1 "SW_PUSH" H 8800 9167 50  0000 C CNN
F 2 "angelina_integerated:CherryMX_Hotswap_1u" H 8800 9000 50  0001 C CNN
F 3 "" H 8800 9000 50  0000 C CNN
	1    8800 9000
	1    0    0    -1  
$EndComp
$Comp
L Device:D D47
U 1 1 5E8A902C
P 9100 9150
F 0 "D47" V 9053 9229 50  0000 L CNN
F 1 "D" V 9146 9229 50  0000 L CNN
F 2 "angelina_integerated:D3_SMD" H 9100 9150 50  0001 C CNN
F 3 "~" H 9100 9150 50  0001 C CNN
	1    9100 9150
	0    1    1    0   
$EndComp
Text GLabel 1250 8550 0    50   Input ~ 0
row0
$Comp
L angelina_integrated:SW_PUSH SW33
U 1 1 5E8A9016
P 1800 8250
F 0 "SW33" H 1800 8510 50  0000 C CNN
F 1 "SW_PUSH" H 1800 8417 50  0000 C CNN
F 2 "angelina_integerated:CherryMX_Hotswap_1u" H 1800 8250 50  0001 C CNN
F 3 "" H 1800 8250 50  0000 C CNN
	1    1800 8250
	1    0    0    -1  
$EndComp
$Comp
L Device:D D33
U 1 1 5E8A9010
P 2100 8400
F 0 "D33" V 2053 8479 50  0000 L CNN
F 1 "D" V 2146 8479 50  0000 L CNN
F 2 "angelina_integerated:D3_SMD" H 2100 8400 50  0001 C CNN
F 3 "~" H 2100 8400 50  0001 C CNN
	1    2100 8400
	0    1    1    0   
$EndComp
$Comp
L angelina_integrated:SW_PUSH SW34
U 1 1 5E8A900A
P 2800 8250
F 0 "SW34" H 2800 8510 50  0000 C CNN
F 1 "SW_PUSH" H 2800 8417 50  0000 C CNN
F 2 "angelina_integerated:CherryMX_Hotswap_1u" H 2800 8250 50  0001 C CNN
F 3 "" H 2800 8250 50  0000 C CNN
	1    2800 8250
	1    0    0    -1  
$EndComp
$Comp
L Device:D D34
U 1 1 5E8A9004
P 3100 8400
F 0 "D34" V 3053 8479 50  0000 L CNN
F 1 "D" V 3146 8479 50  0000 L CNN
F 2 "angelina_integerated:D3_SMD" H 3100 8400 50  0001 C CNN
F 3 "~" H 3100 8400 50  0001 C CNN
	1    3100 8400
	0    1    1    0   
$EndComp
$Comp
L angelina_integrated:SW_PUSH SW35
U 1 1 5E8A8FFE
P 3800 8250
F 0 "SW35" H 3800 8510 50  0000 C CNN
F 1 "SW_PUSH" H 3800 8417 50  0000 C CNN
F 2 "angelina_integerated:CherryMX_Hotswap_1u" H 3800 8250 50  0001 C CNN
F 3 "" H 3800 8250 50  0000 C CNN
	1    3800 8250
	1    0    0    -1  
$EndComp
$Comp
L Device:D D35
U 1 1 5E8A8FF8
P 4100 8400
F 0 "D35" V 4053 8479 50  0000 L CNN
F 1 "D" V 4146 8479 50  0000 L CNN
F 2 "angelina_integerated:D3_SMD" H 4100 8400 50  0001 C CNN
F 3 "~" H 4100 8400 50  0001 C CNN
	1    4100 8400
	0    1    1    0   
$EndComp
$Comp
L angelina_integrated:SW_PUSH SW36
U 1 1 5E8A8FF2
P 4800 8250
F 0 "SW36" H 4800 8510 50  0000 C CNN
F 1 "SW_PUSH" H 4800 8417 50  0000 C CNN
F 2 "angelina_integerated:CherryMX_Hotswap_1u" H 4800 8250 50  0001 C CNN
F 3 "" H 4800 8250 50  0000 C CNN
	1    4800 8250
	1    0    0    -1  
$EndComp
$Comp
L Device:D D36
U 1 1 5E8A8FEC
P 5100 8400
F 0 "D36" V 5053 8479 50  0000 L CNN
F 1 "D" V 5146 8479 50  0000 L CNN
F 2 "angelina_integerated:D3_SMD" H 5100 8400 50  0001 C CNN
F 3 "~" H 5100 8400 50  0001 C CNN
	1    5100 8400
	0    1    1    0   
$EndComp
$Comp
L angelina_integrated:SW_PUSH SW37
U 1 1 5E8A8FE6
P 5800 8250
F 0 "SW37" H 5800 8510 50  0000 C CNN
F 1 "SW_PUSH" H 5800 8417 50  0000 C CNN
F 2 "angelina_integerated:CherryMX_Hotswap_1u" H 5800 8250 50  0001 C CNN
F 3 "" H 5800 8250 50  0000 C CNN
	1    5800 8250
	1    0    0    -1  
$EndComp
$Comp
L Device:D D37
U 1 1 5E8A8FE0
P 6100 8400
F 0 "D37" V 6053 8479 50  0000 L CNN
F 1 "D" V 6146 8479 50  0000 L CNN
F 2 "angelina_integerated:D3_SMD" H 6100 8400 50  0001 C CNN
F 3 "~" H 6100 8400 50  0001 C CNN
	1    6100 8400
	0    1    1    0   
$EndComp
$Comp
L angelina_integrated:SW_PUSH SW38
U 1 1 5E8A8FDA
P 6800 8250
F 0 "SW38" H 6800 8510 50  0000 C CNN
F 1 "SW_PUSH" H 6800 8417 50  0000 C CNN
F 2 "angelina_integerated:CherryMX_Hotswap_1u" H 6800 8250 50  0001 C CNN
F 3 "" H 6800 8250 50  0000 C CNN
	1    6800 8250
	1    0    0    -1  
$EndComp
$Comp
L Device:D D38
U 1 1 5E8A8FD4
P 7100 8400
F 0 "D38" V 7053 8479 50  0000 L CNN
F 1 "D" V 7146 8479 50  0000 L CNN
F 2 "angelina_integerated:D3_SMD" H 7100 8400 50  0001 C CNN
F 3 "~" H 7100 8400 50  0001 C CNN
	1    7100 8400
	0    1    1    0   
$EndComp
$Comp
L angelina_integrated:SW_PUSH SW39
U 1 1 5E8A8FCE
P 7800 8250
F 0 "SW39" H 7800 8510 50  0000 C CNN
F 1 "SW_PUSH" H 7800 8417 50  0000 C CNN
F 2 "angelina_integerated:CherryMX_Hotswap_1u" H 7800 8250 50  0001 C CNN
F 3 "" H 7800 8250 50  0000 C CNN
	1    7800 8250
	1    0    0    -1  
$EndComp
$Comp
L Device:D D39
U 1 1 5E8A8FC8
P 8100 8400
F 0 "D39" V 8053 8479 50  0000 L CNN
F 1 "D" V 8146 8479 50  0000 L CNN
F 2 "angelina_integerated:D3_SMD" H 8100 8400 50  0001 C CNN
F 3 "~" H 8100 8400 50  0001 C CNN
	1    8100 8400
	0    1    1    0   
$EndComp
$Comp
L angelina_integrated:SW_PUSH SW40
U 1 1 5E8A8FC2
P 8800 8250
F 0 "SW40" H 8800 8510 50  0000 C CNN
F 1 "SW_PUSH" H 8800 8417 50  0000 C CNN
F 2 "angelina_integerated:CherryMX_Hotswap_1u" H 8800 8250 50  0001 C CNN
F 3 "" H 8800 8250 50  0000 C CNN
	1    8800 8250
	1    0    0    -1  
$EndComp
$Comp
L Device:D D40
U 1 1 5E8A8FBC
P 9100 8400
F 0 "D40" V 9053 8479 50  0000 L CNN
F 1 "D" V 9146 8479 50  0000 L CNN
F 2 "angelina_integerated:D3_SMD" H 9100 8400 50  0001 C CNN
F 3 "~" H 9100 8400 50  0001 C CNN
	1    9100 8400
	0    1    1    0   
$EndComp
Connection ~ 3100 6800
Connection ~ 3100 3800
Connection ~ 3100 4550
Connection ~ 3100 5300
Wire Wire Line
	3100 6800 4100 6800
Wire Wire Line
	2500 5750 2500 6500
Connection ~ 2500 5750
Wire Wire Line
	2500 5000 2500 5750
Connection ~ 2500 5000
Wire Wire Line
	2500 4250 2500 5000
Connection ~ 2500 4250
Wire Wire Line
	2500 3500 2500 4250
Connection ~ 2500 3500
Wire Wire Line
	2500 3000 2500 3500
Wire Wire Line
	3500 5750 3500 6500
Connection ~ 3500 5750
Wire Wire Line
	3500 5000 3500 5750
Connection ~ 3500 5000
Wire Wire Line
	3500 4250 3500 5000
Connection ~ 3500 4250
Wire Wire Line
	3500 3500 3500 4250
Connection ~ 3500 3500
Wire Wire Line
	3500 3000 3500 3500
Wire Wire Line
	4500 5750 4500 6500
Connection ~ 4500 5750
Wire Wire Line
	4500 5000 4500 5750
Connection ~ 4500 5000
Wire Wire Line
	4500 4250 4500 5000
Connection ~ 4500 4250
Wire Wire Line
	4500 3500 4500 4250
Connection ~ 4500 3500
Wire Wire Line
	4500 3000 4500 3500
Wire Wire Line
	5500 5750 5500 6500
Connection ~ 5500 5750
Wire Wire Line
	5500 5000 5500 5750
Connection ~ 5500 5000
Wire Wire Line
	5500 4250 5500 5000
Connection ~ 5500 4250
Wire Wire Line
	5500 3500 5500 4250
Connection ~ 5500 3500
Wire Wire Line
	5500 2975 5500 3500
Wire Wire Line
	6500 5000 6500 5750
Connection ~ 6500 5000
Wire Wire Line
	6500 4250 6500 5000
Connection ~ 6500 4250
Wire Wire Line
	6500 3500 6500 4250
Connection ~ 6500 3500
Wire Wire Line
	6500 3000 6500 3500
Wire Wire Line
	7500 5750 7500 6500
Connection ~ 7500 5750
Wire Wire Line
	7500 5000 7500 5750
Connection ~ 7500 5000
Wire Wire Line
	7500 4250 7500 5000
Connection ~ 7500 4250
Wire Wire Line
	7500 3500 7500 4250
Connection ~ 7500 3500
Wire Wire Line
	7500 3000 7500 3500
Wire Wire Line
	8500 5750 8500 6500
Connection ~ 8500 5750
Wire Wire Line
	8500 3500 8500 5750
Connection ~ 8500 3500
Wire Wire Line
	8500 3000 8500 3500
Text GLabel 8500 3000 1    50   Input ~ 0
col7
Text GLabel 7500 3000 1    50   Input ~ 0
col6
Text GLabel 6500 3000 1    50   Input ~ 0
col5
Text GLabel 5500 2975 1    50   Input ~ 0
col4
Text GLabel 4500 3000 1    50   Input ~ 0
col3
Text GLabel 3500 3000 1    50   Input ~ 0
col2
Text GLabel 2500 3000 1    50   Input ~ 0
col1
Wire Wire Line
	6100 6800 8100 6800
$Comp
L Device:D D20
U 1 1 5E822DC1
P 3100 5900
F 0 "D20" V 3147 5821 50  0000 R CNN
F 1 "D" V 3054 5821 50  0000 R CNN
F 2 "angelina_integerated:D3_SMD" H 3100 5900 50  0001 C CNN
F 3 "~" H 3100 5900 50  0001 C CNN
	1    3100 5900
	0    -1   -1   0   
$EndComp
Connection ~ 3100 6050
Wire Wire Line
	3100 6050 4100 6050
$Comp
L Device:D D27
U 1 1 5E82AAC9
P 3100 6650
F 0 "D27" V 3147 6571 50  0000 R CNN
F 1 "D" V 3054 6571 50  0000 R CNN
F 2 "angelina_integerated:D3_SMD" H 3100 6650 50  0001 C CNN
F 3 "~" H 3100 6650 50  0001 C CNN
	1    3100 6650
	0    -1   -1   0   
$EndComp
$Comp
L angelina_integrated:SW_PUSH SW27
U 1 1 5E82AACF
P 2800 6500
F 0 "SW27" H 2800 6760 50  0000 C CNN
F 1 "SW_PUSH" H 2800 6667 50  0000 C CNN
F 2 "angelina_integerated:CherryMX_Hotswap_1.25u" H 2800 6500 50  0001 C CNN
F 3 "" H 2800 6500 50  0000 C CNN
	1    2800 6500
	1    0    0    -1  
$EndComp
Connection ~ 4100 6050
Connection ~ 4100 6800
Wire Wire Line
	8100 6800 9100 6800
Connection ~ 8100 6800
Connection ~ 6100 6800
Wire Wire Line
	5100 6800 6100 6800
Connection ~ 5100 6800
Wire Wire Line
	4100 6800 5100 6800
$Comp
L angelina_integrated:SW_PUSH SW28
U 1 1 5E82AAC3
P 3800 6500
F 0 "SW28" H 3800 6760 50  0000 C CNN
F 1 "SW_PUSH" H 3800 6667 50  0000 C CNN
F 2 "angelina_integerated:CherryMX_Hotswap_1u" H 3800 6500 50  0001 C CNN
F 3 "" H 3800 6500 50  0000 C CNN
	1    3800 6500
	1    0    0    -1  
$EndComp
$Comp
L Device:D D28
U 1 1 5E82AABD
P 4100 6650
F 0 "D28" V 4147 6571 50  0000 R CNN
F 1 "D" V 4054 6571 50  0000 R CNN
F 2 "angelina_integerated:D3_SMD" H 4100 6650 50  0001 C CNN
F 3 "~" H 4100 6650 50  0001 C CNN
	1    4100 6650
	0    -1   -1   0   
$EndComp
$Comp
L angelina_integrated:SW_PUSH SW29
U 1 1 5E82AAB7
P 4800 6500
F 0 "SW29" H 4800 6760 50  0000 C CNN
F 1 "SW_PUSH" H 4800 6667 50  0000 C CNN
F 2 "angelina_integerated:CherryMX_Hotswap_1.25u" H 4800 6500 50  0001 C CNN
F 3 "" H 4800 6500 50  0000 C CNN
	1    4800 6500
	1    0    0    -1  
$EndComp
$Comp
L Device:D D29
U 1 1 5E82AAB1
P 5100 6650
F 0 "D29" V 5147 6571 50  0000 R CNN
F 1 "D" V 5054 6571 50  0000 R CNN
F 2 "angelina_integerated:D3_SMD" H 5100 6650 50  0001 C CNN
F 3 "~" H 5100 6650 50  0001 C CNN
	1    5100 6650
	0    -1   -1   0   
$EndComp
$Comp
L angelina_integrated:SW_PUSH SW30
U 1 1 5E82AAAB
P 5800 6500
F 0 "SW30" H 5800 6760 50  0000 C CNN
F 1 "SW_PUSH" H 5800 6667 50  0000 C CNN
F 2 "angelina_integerated:CherryMX_Hotswap_1.25u" H 5800 6500 50  0001 C CNN
F 3 "" H 5800 6500 50  0000 C CNN
	1    5800 6500
	1    0    0    -1  
$EndComp
$Comp
L Device:D D30
U 1 1 5E82AAA5
P 6100 6650
F 0 "D30" V 6147 6571 50  0000 R CNN
F 1 "D" V 6054 6571 50  0000 R CNN
F 2 "angelina_integerated:D3_SMD" H 6100 6650 50  0001 C CNN
F 3 "~" H 6100 6650 50  0001 C CNN
	1    6100 6650
	0    -1   -1   0   
$EndComp
$Comp
L angelina_integrated:SW_PUSH SW31
U 1 1 5E82AA93
P 7800 6500
F 0 "SW31" H 7800 6760 50  0000 C CNN
F 1 "SW_PUSH" H 7800 6667 50  0000 C CNN
F 2 "angelina_integerated:CherryMX_Hotswap_1u" H 7800 6500 50  0001 C CNN
F 3 "" H 7800 6500 50  0000 C CNN
	1    7800 6500
	1    0    0    -1  
$EndComp
$Comp
L Device:D D31
U 1 1 5E82AA8D
P 8100 6650
F 0 "D31" V 8147 6571 50  0000 R CNN
F 1 "D" V 8054 6571 50  0000 R CNN
F 2 "angelina_integerated:D3_SMD" H 8100 6650 50  0001 C CNN
F 3 "~" H 8100 6650 50  0001 C CNN
	1    8100 6650
	0    -1   -1   0   
$EndComp
$Comp
L angelina_integrated:SW_PUSH SW32
U 1 1 5E82AA87
P 8800 6500
F 0 "SW32" H 8800 6760 50  0000 C CNN
F 1 "SW_PUSH" H 8800 6667 50  0000 C CNN
F 2 "angelina_integerated:CherryMX_Hotswap_1u" H 8800 6500 50  0001 C CNN
F 3 "" H 8800 6500 50  0000 C CNN
	1    8800 6500
	1    0    0    -1  
$EndComp
$Comp
L Device:D D32
U 1 1 5E82AA81
P 9100 6650
F 0 "D32" V 9147 6571 50  0000 R CNN
F 1 "D" V 9054 6571 50  0000 R CNN
F 2 "angelina_integerated:D3_SMD" H 9100 6650 50  0001 C CNN
F 3 "~" H 9100 6650 50  0001 C CNN
	1    9100 6650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8100 6050 9100 6050
Connection ~ 8100 6050
Wire Wire Line
	7100 6050 8100 6050
Connection ~ 7100 6050
Wire Wire Line
	6100 6050 7100 6050
Connection ~ 6100 6050
Wire Wire Line
	5100 6050 6100 6050
Connection ~ 5100 6050
Wire Wire Line
	4100 6050 5100 6050
$Comp
L angelina_integrated:SW_PUSH SW20
U 1 1 5E822DC7
P 2800 5750
F 0 "SW20" H 2800 6010 50  0000 C CNN
F 1 "SW_PUSH" H 2800 5917 50  0000 C CNN
F 2 "angelina_integerated:CherryMX_Hotswap_1.75u" H 2800 5750 50  0001 C CNN
F 3 "" H 2800 5750 50  0000 C CNN
	1    2800 5750
	1    0    0    -1  
$EndComp
$Comp
L angelina_integrated:SW_PUSH SW21
U 1 1 5E822DBB
P 3800 5750
F 0 "SW21" H 3800 6010 50  0000 C CNN
F 1 "SW_PUSH" H 3800 5917 50  0000 C CNN
F 2 "angelina_integerated:CherryMX_Hotswap_1u" H 3800 5750 50  0001 C CNN
F 3 "" H 3800 5750 50  0000 C CNN
	1    3800 5750
	1    0    0    -1  
$EndComp
$Comp
L Device:D D21
U 1 1 5E822DB5
P 4100 5900
F 0 "D21" V 4147 5821 50  0000 R CNN
F 1 "D" V 4054 5821 50  0000 R CNN
F 2 "angelina_integerated:D3_SMD" H 4100 5900 50  0001 C CNN
F 3 "~" H 4100 5900 50  0001 C CNN
	1    4100 5900
	0    -1   -1   0   
$EndComp
$Comp
L angelina_integrated:SW_PUSH SW22
U 1 1 5E822DAF
P 4800 5750
F 0 "SW22" H 4800 6010 50  0000 C CNN
F 1 "SW_PUSH" H 4800 5917 50  0000 C CNN
F 2 "angelina_integerated:CherryMX_Hotswap_1u" H 4800 5750 50  0001 C CNN
F 3 "" H 4800 5750 50  0000 C CNN
	1    4800 5750
	1    0    0    -1  
$EndComp
$Comp
L Device:D D22
U 1 1 5E822DA9
P 5100 5900
F 0 "D22" V 5147 5821 50  0000 R CNN
F 1 "D" V 5054 5821 50  0000 R CNN
F 2 "angelina_integerated:D3_SMD" H 5100 5900 50  0001 C CNN
F 3 "~" H 5100 5900 50  0001 C CNN
	1    5100 5900
	0    -1   -1   0   
$EndComp
$Comp
L angelina_integrated:SW_PUSH SW23
U 1 1 5E822DA3
P 5800 5750
F 0 "SW23" H 5800 6010 50  0000 C CNN
F 1 "SW_PUSH" H 5800 5917 50  0000 C CNN
F 2 "angelina_integerated:CherryMX_Hotswap_1u" H 5800 5750 50  0001 C CNN
F 3 "" H 5800 5750 50  0000 C CNN
	1    5800 5750
	1    0    0    -1  
$EndComp
$Comp
L Device:D D23
U 1 1 5E822D9D
P 6100 5900
F 0 "D23" V 6147 5821 50  0000 R CNN
F 1 "D" V 6054 5821 50  0000 R CNN
F 2 "angelina_integerated:D3_SMD" H 6100 5900 50  0001 C CNN
F 3 "~" H 6100 5900 50  0001 C CNN
	1    6100 5900
	0    -1   -1   0   
$EndComp
$Comp
L angelina_integrated:SW_PUSH SW24
U 1 1 5E822D97
P 6800 5750
F 0 "SW24" H 6800 6010 50  0000 C CNN
F 1 "SW_PUSH" H 6800 5917 50  0000 C CNN
F 2 "angelina_integerated:CherryMX_Hotswap_1u" H 6800 5750 50  0001 C CNN
F 3 "" H 6800 5750 50  0000 C CNN
	1    6800 5750
	1    0    0    -1  
$EndComp
$Comp
L Device:D D24
U 1 1 5E822D91
P 7100 5900
F 0 "D24" V 7147 5821 50  0000 R CNN
F 1 "D" V 7054 5821 50  0000 R CNN
F 2 "angelina_integerated:D3_SMD" H 7100 5900 50  0001 C CNN
F 3 "~" H 7100 5900 50  0001 C CNN
	1    7100 5900
	0    -1   -1   0   
$EndComp
$Comp
L angelina_integrated:SW_PUSH SW25
U 1 1 5E822D8B
P 7800 5750
F 0 "SW25" H 7800 6010 50  0000 C CNN
F 1 "SW_PUSH" H 7800 5917 50  0000 C CNN
F 2 "angelina_integerated:CherryMX_Hotswap_1u" H 7800 5750 50  0001 C CNN
F 3 "" H 7800 5750 50  0000 C CNN
	1    7800 5750
	1    0    0    -1  
$EndComp
$Comp
L Device:D D25
U 1 1 5E822D85
P 8100 5900
F 0 "D25" V 8147 5821 50  0000 R CNN
F 1 "D" V 8054 5821 50  0000 R CNN
F 2 "angelina_integerated:D3_SMD" H 8100 5900 50  0001 C CNN
F 3 "~" H 8100 5900 50  0001 C CNN
	1    8100 5900
	0    -1   -1   0   
$EndComp
$Comp
L angelina_integrated:SW_PUSH SW26
U 1 1 5E822D7F
P 8800 5750
F 0 "SW26" H 8800 6010 50  0000 C CNN
F 1 "SW_PUSH" H 8800 5917 50  0000 C CNN
F 2 "angelina_integerated:CherryMX_Hotswap_1u" H 8800 5750 50  0001 C CNN
F 3 "" H 8800 5750 50  0000 C CNN
	1    8800 5750
	1    0    0    -1  
$EndComp
$Comp
L Device:D D26
U 1 1 5E822D79
P 9100 5900
F 0 "D26" V 9147 5821 50  0000 R CNN
F 1 "D" V 9054 5821 50  0000 R CNN
F 2 "angelina_integerated:D3_SMD" H 9100 5900 50  0001 C CNN
F 3 "~" H 9100 5900 50  0001 C CNN
	1    9100 5900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7100 5300 8100 5300
Connection ~ 7100 5300
Wire Wire Line
	6100 5300 7100 5300
Connection ~ 6100 5300
Wire Wire Line
	5100 5300 6100 5300
Connection ~ 5100 5300
Wire Wire Line
	4100 5300 5100 5300
Connection ~ 4100 5300
Wire Wire Line
	3100 5300 4100 5300
$Comp
L angelina_integrated:SW_PUSH SW14
U 1 1 5E81D094
P 2800 5000
F 0 "SW14" H 2800 5260 50  0000 C CNN
F 1 "SW_PUSH" H 2800 5167 50  0000 C CNN
F 2 "angelina_integerated:CherryMX_Hotswap_1.75u" H 2800 5000 50  0001 C CNN
F 3 "" H 2800 5000 50  0000 C CNN
	1    2800 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:D D14
U 1 1 5E81D08E
P 3100 5150
F 0 "D14" V 3147 5071 50  0000 R CNN
F 1 "D" V 3054 5071 50  0000 R CNN
F 2 "angelina_integerated:D3_SMD" H 3100 5150 50  0001 C CNN
F 3 "~" H 3100 5150 50  0001 C CNN
	1    3100 5150
	0    -1   -1   0   
$EndComp
$Comp
L angelina_integrated:SW_PUSH SW15
U 1 1 5E81D088
P 3800 5000
F 0 "SW15" H 3800 5260 50  0000 C CNN
F 1 "SW_PUSH" H 3800 5167 50  0000 C CNN
F 2 "angelina_integerated:CherryMX_Hotswap_1u" H 3800 5000 50  0001 C CNN
F 3 "" H 3800 5000 50  0000 C CNN
	1    3800 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:D D15
U 1 1 5E81D082
P 4100 5150
F 0 "D15" V 4147 5071 50  0000 R CNN
F 1 "D" V 4054 5071 50  0000 R CNN
F 2 "angelina_integerated:D3_SMD" H 4100 5150 50  0001 C CNN
F 3 "~" H 4100 5150 50  0001 C CNN
	1    4100 5150
	0    -1   -1   0   
$EndComp
$Comp
L angelina_integrated:SW_PUSH SW16
U 1 1 5E81D07C
P 4800 5000
F 0 "SW16" H 4800 5260 50  0000 C CNN
F 1 "SW_PUSH" H 4800 5167 50  0000 C CNN
F 2 "angelina_integerated:CherryMX_Hotswap_1u" H 4800 5000 50  0001 C CNN
F 3 "" H 4800 5000 50  0000 C CNN
	1    4800 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:D D16
U 1 1 5E81D076
P 5100 5150
F 0 "D16" V 5147 5071 50  0000 R CNN
F 1 "D" V 5054 5071 50  0000 R CNN
F 2 "angelina_integerated:D3_SMD" H 5100 5150 50  0001 C CNN
F 3 "~" H 5100 5150 50  0001 C CNN
	1    5100 5150
	0    -1   -1   0   
$EndComp
$Comp
L angelina_integrated:SW_PUSH SW17
U 1 1 5E81D070
P 5800 5000
F 0 "SW17" H 5800 5260 50  0000 C CNN
F 1 "SW_PUSH" H 5800 5167 50  0000 C CNN
F 2 "angelina_integerated:CherryMX_Hotswap_1u" H 5800 5000 50  0001 C CNN
F 3 "" H 5800 5000 50  0000 C CNN
	1    5800 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:D D17
U 1 1 5E81D06A
P 6100 5150
F 0 "D17" V 6147 5071 50  0000 R CNN
F 1 "D" V 6054 5071 50  0000 R CNN
F 2 "angelina_integerated:D3_SMD" H 6100 5150 50  0001 C CNN
F 3 "~" H 6100 5150 50  0001 C CNN
	1    6100 5150
	0    -1   -1   0   
$EndComp
$Comp
L angelina_integrated:SW_PUSH SW18
U 1 1 5E81D064
P 6800 5000
F 0 "SW18" H 6800 5260 50  0000 C CNN
F 1 "SW_PUSH" H 6800 5167 50  0000 C CNN
F 2 "angelina_integerated:CherryMX_Hotswap_1u" H 6800 5000 50  0001 C CNN
F 3 "" H 6800 5000 50  0000 C CNN
	1    6800 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:D D18
U 1 1 5E81D05E
P 7100 5150
F 0 "D18" V 7147 5071 50  0000 R CNN
F 1 "D" V 7054 5071 50  0000 R CNN
F 2 "angelina_integerated:D3_SMD" H 7100 5150 50  0001 C CNN
F 3 "~" H 7100 5150 50  0001 C CNN
	1    7100 5150
	0    -1   -1   0   
$EndComp
$Comp
L angelina_integrated:SW_PUSH SW19
U 1 1 5E81D058
P 7800 5000
F 0 "SW19" H 7800 5260 50  0000 C CNN
F 1 "SW_PUSH" H 7800 5167 50  0000 C CNN
F 2 "angelina_integerated:CherryMX_Hotswap_1u" H 7800 5000 50  0001 C CNN
F 3 "" H 7800 5000 50  0000 C CNN
	1    7800 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:D D19
U 1 1 5E81D052
P 8100 5150
F 0 "D19" V 8147 5071 50  0000 R CNN
F 1 "D" V 8054 5071 50  0000 R CNN
F 2 "angelina_integerated:D3_SMD" H 8100 5150 50  0001 C CNN
F 3 "~" H 8100 5150 50  0001 C CNN
	1    8100 5150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7100 4550 8100 4550
Connection ~ 7100 4550
Wire Wire Line
	6100 4550 7100 4550
Connection ~ 6100 4550
Wire Wire Line
	5100 4550 6100 4550
Connection ~ 5100 4550
Wire Wire Line
	4100 4550 5100 4550
Connection ~ 4100 4550
Wire Wire Line
	3100 4550 4100 4550
$Comp
L angelina_integrated:SW_PUSH SW8
U 1 1 5E8169AA
P 2800 4250
F 0 "SW8" H 2800 4510 50  0000 C CNN
F 1 "SW_PUSH" H 2800 4417 50  0000 C CNN
F 2 "angelina_integerated:CherryMX_Hotswap_1.5u" H 2800 4250 50  0001 C CNN
F 3 "" H 2800 4250 50  0000 C CNN
	1    2800 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:D D8
U 1 1 5E8169A4
P 3100 4400
F 0 "D8" V 3147 4321 50  0000 R CNN
F 1 "D" V 3054 4321 50  0000 R CNN
F 2 "angelina_integerated:D3_SMD" H 3100 4400 50  0001 C CNN
F 3 "~" H 3100 4400 50  0001 C CNN
	1    3100 4400
	0    -1   -1   0   
$EndComp
$Comp
L angelina_integrated:SW_PUSH SW9
U 1 1 5E81699E
P 3800 4250
F 0 "SW9" H 3800 4510 50  0000 C CNN
F 1 "SW_PUSH" H 3800 4417 50  0000 C CNN
F 2 "angelina_integerated:CherryMX_Hotswap_1u" H 3800 4250 50  0001 C CNN
F 3 "" H 3800 4250 50  0000 C CNN
	1    3800 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:D D9
U 1 1 5E816998
P 4100 4400
F 0 "D9" V 4147 4321 50  0000 R CNN
F 1 "D" V 4054 4321 50  0000 R CNN
F 2 "angelina_integerated:D3_SMD" H 4100 4400 50  0001 C CNN
F 3 "~" H 4100 4400 50  0001 C CNN
	1    4100 4400
	0    -1   -1   0   
$EndComp
$Comp
L angelina_integrated:SW_PUSH SW10
U 1 1 5E816992
P 4800 4250
F 0 "SW10" H 4800 4510 50  0000 C CNN
F 1 "SW_PUSH" H 4800 4417 50  0000 C CNN
F 2 "angelina_integerated:CherryMX_Hotswap_1u" H 4800 4250 50  0001 C CNN
F 3 "" H 4800 4250 50  0000 C CNN
	1    4800 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:D D10
U 1 1 5E81698C
P 5100 4400
F 0 "D10" V 5147 4321 50  0000 R CNN
F 1 "D" V 5054 4321 50  0000 R CNN
F 2 "angelina_integerated:D3_SMD" H 5100 4400 50  0001 C CNN
F 3 "~" H 5100 4400 50  0001 C CNN
	1    5100 4400
	0    -1   -1   0   
$EndComp
$Comp
L angelina_integrated:SW_PUSH SW11
U 1 1 5E816986
P 5800 4250
F 0 "SW11" H 5800 4510 50  0000 C CNN
F 1 "SW_PUSH" H 5800 4417 50  0000 C CNN
F 2 "angelina_integerated:CherryMX_Hotswap_1u" H 5800 4250 50  0001 C CNN
F 3 "" H 5800 4250 50  0000 C CNN
	1    5800 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:D D11
U 1 1 5E816980
P 6100 4400
F 0 "D11" V 6147 4321 50  0000 R CNN
F 1 "D" V 6054 4321 50  0000 R CNN
F 2 "angelina_integerated:D3_SMD" H 6100 4400 50  0001 C CNN
F 3 "~" H 6100 4400 50  0001 C CNN
	1    6100 4400
	0    -1   -1   0   
$EndComp
$Comp
L angelina_integrated:SW_PUSH SW12
U 1 1 5E81697A
P 6800 4250
F 0 "SW12" H 6800 4510 50  0000 C CNN
F 1 "SW_PUSH" H 6800 4417 50  0000 C CNN
F 2 "angelina_integerated:CherryMX_Hotswap_1u" H 6800 4250 50  0001 C CNN
F 3 "" H 6800 4250 50  0000 C CNN
	1    6800 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:D D12
U 1 1 5E816974
P 7100 4400
F 0 "D12" V 7147 4321 50  0000 R CNN
F 1 "D" V 7054 4321 50  0000 R CNN
F 2 "angelina_integerated:D3_SMD" H 7100 4400 50  0001 C CNN
F 3 "~" H 7100 4400 50  0001 C CNN
	1    7100 4400
	0    -1   -1   0   
$EndComp
$Comp
L angelina_integrated:SW_PUSH SW13
U 1 1 5E81696E
P 7800 4250
F 0 "SW13" H 7800 4510 50  0000 C CNN
F 1 "SW_PUSH" H 7800 4417 50  0000 C CNN
F 2 "angelina_integerated:CherryMX_Hotswap_1u" H 7800 4250 50  0001 C CNN
F 3 "" H 7800 4250 50  0000 C CNN
	1    7800 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:D D13
U 1 1 5E816968
P 8100 4400
F 0 "D13" V 8147 4321 50  0000 R CNN
F 1 "D" V 8054 4321 50  0000 R CNN
F 2 "angelina_integerated:D3_SMD" H 8100 4400 50  0001 C CNN
F 3 "~" H 8100 4400 50  0001 C CNN
	1    8100 4400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8100 3800 9100 3800
Connection ~ 8100 3800
Wire Wire Line
	7100 3800 8100 3800
Connection ~ 7100 3800
Wire Wire Line
	6100 3800 7100 3800
Connection ~ 6100 3800
Wire Wire Line
	5100 3800 6100 3800
Connection ~ 5100 3800
Wire Wire Line
	4100 3800 5100 3800
Connection ~ 4100 3800
Wire Wire Line
	3100 3800 4100 3800
$Comp
L angelina_integrated:SW_PUSH SW1
U 1 1 5E7C4521
P 2800 3500
F 0 "SW1" H 2800 3760 50  0000 C CNN
F 1 "SW_PUSH" H 2800 3667 50  0000 C CNN
F 2 "angelina_integerated:CherryMX_Hotswap_1u" H 2800 3500 50  0001 C CNN
F 3 "" H 2800 3500 50  0000 C CNN
	1    2800 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:D D1
U 1 1 5E7C4527
P 3100 3650
F 0 "D1" V 3147 3571 50  0000 R CNN
F 1 "D" V 3054 3571 50  0000 R CNN
F 2 "angelina_integerated:D3_SMD" H 3100 3650 50  0001 C CNN
F 3 "~" H 3100 3650 50  0001 C CNN
	1    3100 3650
	0    -1   -1   0   
$EndComp
$Comp
L angelina_integrated:SW_PUSH SW2
U 1 1 5E7C550A
P 3800 3500
F 0 "SW2" H 3800 3760 50  0000 C CNN
F 1 "SW_PUSH" H 3800 3667 50  0000 C CNN
F 2 "angelina_integerated:CherryMX_Hotswap_1u" H 3800 3500 50  0001 C CNN
F 3 "" H 3800 3500 50  0000 C CNN
	1    3800 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:D D2
U 1 1 5E7C5510
P 4100 3650
F 0 "D2" V 4147 3571 50  0000 R CNN
F 1 "D" V 4054 3571 50  0000 R CNN
F 2 "angelina_integerated:D3_SMD" H 4100 3650 50  0001 C CNN
F 3 "~" H 4100 3650 50  0001 C CNN
	1    4100 3650
	0    -1   -1   0   
$EndComp
$Comp
L angelina_integrated:SW_PUSH SW3
U 1 1 5E7C6019
P 4800 3500
F 0 "SW3" H 4800 3760 50  0000 C CNN
F 1 "SW_PUSH" H 4800 3667 50  0000 C CNN
F 2 "angelina_integerated:CherryMX_Hotswap_1u" H 4800 3500 50  0001 C CNN
F 3 "" H 4800 3500 50  0000 C CNN
	1    4800 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:D D3
U 1 1 5E7C601F
P 5100 3650
F 0 "D3" V 5147 3571 50  0000 R CNN
F 1 "D" V 5054 3571 50  0000 R CNN
F 2 "angelina_integerated:D3_SMD" H 5100 3650 50  0001 C CNN
F 3 "~" H 5100 3650 50  0001 C CNN
	1    5100 3650
	0    -1   -1   0   
$EndComp
$Comp
L angelina_integrated:SW_PUSH SW4
U 1 1 5E7C758E
P 5800 3500
F 0 "SW4" H 5800 3760 50  0000 C CNN
F 1 "SW_PUSH" H 5800 3667 50  0000 C CNN
F 2 "angelina_integerated:CherryMX_Hotswap_1u" H 5800 3500 50  0001 C CNN
F 3 "" H 5800 3500 50  0000 C CNN
	1    5800 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:D D4
U 1 1 5E7C7594
P 6100 3650
F 0 "D4" V 6147 3571 50  0000 R CNN
F 1 "D" V 6054 3571 50  0000 R CNN
F 2 "angelina_integerated:D3_SMD" H 6100 3650 50  0001 C CNN
F 3 "~" H 6100 3650 50  0001 C CNN
	1    6100 3650
	0    -1   -1   0   
$EndComp
$Comp
L angelina_integrated:SW_PUSH SW5
U 1 1 5E7C80F9
P 6800 3500
F 0 "SW5" H 6800 3760 50  0000 C CNN
F 1 "SW_PUSH" H 6800 3667 50  0000 C CNN
F 2 "angelina_integerated:CherryMX_Hotswap_1u" H 6800 3500 50  0001 C CNN
F 3 "" H 6800 3500 50  0000 C CNN
	1    6800 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:D D5
U 1 1 5E7C80FF
P 7100 3650
F 0 "D5" V 7147 3571 50  0000 R CNN
F 1 "D" V 7054 3571 50  0000 R CNN
F 2 "angelina_integerated:D3_SMD" H 7100 3650 50  0001 C CNN
F 3 "~" H 7100 3650 50  0001 C CNN
	1    7100 3650
	0    -1   -1   0   
$EndComp
$Comp
L angelina_integrated:SW_PUSH SW6
U 1 1 5E7C9548
P 7800 3500
F 0 "SW6" H 7800 3760 50  0000 C CNN
F 1 "SW_PUSH" H 7800 3667 50  0000 C CNN
F 2 "angelina_integerated:CherryMX_Hotswap_1u" H 7800 3500 50  0001 C CNN
F 3 "" H 7800 3500 50  0000 C CNN
	1    7800 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:D D6
U 1 1 5E7C954E
P 8100 3650
F 0 "D6" V 8147 3571 50  0000 R CNN
F 1 "D" V 8054 3571 50  0000 R CNN
F 2 "angelina_integerated:D3_SMD" H 8100 3650 50  0001 C CNN
F 3 "~" H 8100 3650 50  0001 C CNN
	1    8100 3650
	0    -1   -1   0   
$EndComp
$Comp
L angelina_integrated:SW_PUSH SW7
U 1 1 5E7CA479
P 8800 3500
F 0 "SW7" H 8800 3760 50  0000 C CNN
F 1 "SW_PUSH" H 8800 3667 50  0000 C CNN
F 2 "angelina_integerated:CherryMX_Hotswap_1u" H 8800 3500 50  0001 C CNN
F 3 "" H 8800 3500 50  0000 C CNN
	1    8800 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:D D7
U 1 1 5E7CA47F
P 9100 3650
F 0 "D7" V 9147 3571 50  0000 R CNN
F 1 "D" V 9054 3571 50  0000 R CNN
F 2 "angelina_integerated:D3_SMD" H 9100 3650 50  0001 C CNN
F 3 "~" H 9100 3650 50  0001 C CNN
	1    9100 3650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1250 3800 3100 3800
Wire Wire Line
	1250 6800 3100 6800
Text GLabel 1250 6800 0    50   Input ~ 0
row4
Text GLabel 1250 6050 0    50   Input ~ 0
row3
Text GLabel 1250 5300 0    50   Input ~ 0
row2
Text GLabel 1250 4550 0    50   Input ~ 0
row1
Text GLabel 1250 3800 0    50   Input ~ 0
row0
Wire Wire Line
	1250 4550 3100 4550
Wire Wire Line
	1250 5300 3100 5300
Wire Wire Line
	1250 6050 3100 6050
NoConn ~ 3700 2200
NoConn ~ 3700 1100
$Comp
L power:GND #PWR0101
U 1 1 5E835182
P 1000 1075
F 0 "#PWR0101" H 1000 825 50  0001 C CNN
F 1 "GND" H 1005 899 50  0000 C CNN
F 2 "" H 1000 1075 50  0001 C CNN
F 3 "" H 1000 1075 50  0001 C CNN
	1    1000 1075
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5E836051
P 1500 1075
F 0 "#FLG0102" H 1500 1150 50  0001 C CNN
F 1 "PWR_FLAG" H 1500 1251 50  0000 C CNN
F 2 "" H 1500 1075 50  0001 C CNN
F 3 "~" H 1500 1075 50  0001 C CNN
	1    1500 1075
	-1   0    0    1   
$EndComp
$Comp
L Device:R R2
U 1 1 5E668CA7
P 6350 1400
F 0 "R2" V 6234 1400 50  0000 C CNN
F 1 "R" V 6233 1400 50  0001 C CNN
F 2 "angelina_integerated:R" V 6280 1400 50  0001 C CNN
F 3 "~" H 6350 1400 50  0001 C CNN
	1    6350 1400
	-1   0    0    1   
$EndComp
$EndSCHEMATC
