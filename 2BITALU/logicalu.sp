* SPICE3 file created from logicalu0.ext - technology: scmos

*********************** transistor tech file ****************************
.include mosfet.txt
*************************************************************************

************* Define the input signal info. *****************************
.PARAM bitrate1=0.05Meg
+freq1='bitrate1/2'
+per1='1/freq1'
+td1='per1/2'
+tr1=0
+tf1=0
+pw1='per1*0.5'

.PARAM bitrate2=0.025Meg
+freq2='bitrate2/2'
+per2='1/freq2'
+td2='per2/2'
+tr2=0
+tf2=0
+pw2='per2*0.5'

.PARAM bitrate3=0.2Meg
+freq3='bitrate3/2'
+per3='1/freq3'
+td3='per3/2'
+tr3=0
+tf3=0
+pw3='per3*0.5'

.PARAM bitrate4=0.1Meg
+freq4='bitrate4/2'
+per4='1/freq4'
+td4='per4/2'
+tr4=0
+tf4=0
+pw4='per4*0.5'

.PARAM bitrate5=1Meg
+freq5='bitrate5/2'
+per5='1/freq5'
+td5='per5/2'
+tr5=0
+tf5=0
+pw5='per5*0.5'

Vin1 in1 0 pulse(0 3.3 td1 tr1 tf1 pw1 per1)
Vin2 in2 0 pulse(0 3.3 td2 tr2 tf2 pw2 per2)
Vin3 in3 0 pulse(0 3.3 td3 tr3 tf3 pw3 per3)
Vin4 in4 0 pulse(0 3.3 td4 tr4 tf4 pw4 per4)
Vin5 in5 0 pulse(0 3.3 td5 tr5 tf5 pw5 per5)


*************************************************************************

************* Define the Vdd and Vss voltage level******************
VDD	vdd	0	DC	3.3v
*************************************************************************
******************** logicalu Circuits *******************************
X1	in2   in1   in4   in3  in5  r_result  node9  node1 node2 node3 node4 node5 node6 node7 node8 Qnot  vdd	0    logicalu

*************************************************************************
************* Subcircuits ***********************************************
.subckt   logicalu	input_a   input_b   ins_0   ins_1   clk	r_result  node9  node1 node2 node3 node4 node5 node7 node6 node8 Qnot  vdd   gnd


M1000 dff_3/Qnot dff_3/dlatch_1/node2 vdd dff_3/dlatch_1/nand_3/w_n13_1# pmos w=4u l=1u
+ ad=12p pd=14u as=1398p ps=1605u
M1001 vdd node8 dff_3/Qnot dff_3/dlatch_1/nand_3/w_n13_1# pmos w=4u l=1u
+ ad=0p pd=0u as=0p ps=0u
M1002 dff_3/dlatch_1/nand_3/a_n2_n27# dff_3/dlatch_1/node2 gnd gnd nmos w=2u l=1u
+ ad=6p pd=10u as=335p ps=603u
M1003 dff_3/Qnot node8 dff_3/dlatch_1/nand_3/a_n2_n27# gnd nmos w=2u l=1u
+ ad=5p pd=9u as=0p ps=0u
M1004 dff_3/dlatch_1/node2 clk vdd dff_3/dlatch_1/nand_2/w_n13_1# pmos w=4u l=1u
+ ad=12p pd=14u as=0p ps=0u
M1005 vdd dff_3/dlatch_1/node3 dff_3/dlatch_1/node2 dff_3/dlatch_1/nand_2/w_n13_1# pmos w=4u l=1u
+ ad=0p pd=0u as=0p ps=0u
M1006 dff_3/dlatch_1/nand_2/a_n2_n27# clk gnd gnd nmos w=2u l=1u
+ ad=6p pd=10u as=0p ps=0u
M1007 dff_3/dlatch_1/node2 dff_3/dlatch_1/node3 dff_3/dlatch_1/nand_2/a_n2_n27# gnd nmos w=2u l=1u
+ ad=5p pd=9u as=0p ps=0u
M1008 node8 dff_3/dlatch_1/node1 vdd dff_3/dlatch_1/nand_1/w_n13_1# pmos w=4u l=1u
+ ad=12p pd=14u as=0p ps=0u
M1009 vdd dff_3/Qnot node8 dff_3/dlatch_1/nand_1/w_n13_1# pmos w=4u l=1u
+ ad=0p pd=0u as=0p ps=0u
M1010 dff_3/dlatch_1/nand_1/a_n2_n27# dff_3/dlatch_1/node1 gnd gnd nmos w=2u l=1u
+ ad=6p pd=10u as=0p ps=0u
M1011 node8 dff_3/Qnot dff_3/dlatch_1/nand_1/a_n2_n27# gnd nmos w=2u l=1u
+ ad=5p pd=9u as=0p ps=0u
M1012 dff_3/dlatch_1/node1 dff_3/node2 vdd dff_3/dlatch_1/nand_0/w_n13_1# pmos w=4u l=1u
+ ad=12p pd=14u as=0p ps=0u
M1013 vdd clk dff_3/dlatch_1/node1 dff_3/dlatch_1/nand_0/w_n13_1# pmos w=4u l=1u
+ ad=0p pd=0u as=0p ps=0u
M1014 dff_3/dlatch_1/nand_0/a_n2_n27# dff_3/node2 gnd gnd nmos w=2u l=1u
+ ad=6p pd=10u as=0p ps=0u
M1015 dff_3/dlatch_1/node1 clk dff_3/dlatch_1/nand_0/a_n2_n27# gnd nmos w=2u l=1u
+ ad=5p pd=9u as=0p ps=0u
M1016 dff_3/dlatch_1/node3 dff_3/node2 vdd dff_3/dlatch_1/w_n108_n81# pmos w=4u l=1u
+ ad=14p pd=15u as=0p ps=0u
M1017 dff_3/dlatch_1/node3 dff_3/node2 gnd gnd nmos w=2u l=1u
+ ad=5p pd=9u as=0p ps=0u
M1018 dff_3/dlatch_0/Qnot dff_3/dlatch_0/node2 vdd dff_3/dlatch_0/nand_3/w_n13_1# pmos w=4u l=1u
+ ad=12p pd=14u as=0p ps=0u
M1019 vdd dff_3/node2 dff_3/dlatch_0/Qnot dff_3/dlatch_0/nand_3/w_n13_1# pmos w=4u l=1u
+ ad=0p pd=0u as=0p ps=0u
M1020 dff_3/dlatch_0/nand_3/a_n2_n27# dff_3/dlatch_0/node2 gnd gnd nmos w=2u l=1u
+ ad=6p pd=10u as=0p ps=0u
M1021 dff_3/dlatch_0/Qnot dff_3/node2 dff_3/dlatch_0/nand_3/a_n2_n27# gnd nmos w=2u l=1u
+ ad=5p pd=9u as=0p ps=0u
M1022 dff_3/dlatch_0/node2 dff_3/node1 vdd dff_3/dlatch_0/nand_2/w_n13_1# pmos w=4u l=1u
+ ad=12p pd=14u as=0p ps=0u
M1023 vdd dff_3/dlatch_0/node3 dff_3/dlatch_0/node2 dff_3/dlatch_0/nand_2/w_n13_1# pmos w=4u l=1u
+ ad=0p pd=0u as=0p ps=0u
M1024 dff_3/dlatch_0/nand_2/a_n2_n27# dff_3/node1 gnd gnd nmos w=2u l=1u
+ ad=6p pd=10u as=0p ps=0u
M1025 dff_3/dlatch_0/node2 dff_3/dlatch_0/node3 dff_3/dlatch_0/nand_2/a_n2_n27# gnd nmos w=2u l=1u
+ ad=5p pd=9u as=0p ps=0u
M1026 dff_3/node2 dff_3/dlatch_0/node1 vdd dff_3/dlatch_0/nand_1/w_n13_1# pmos w=4u l=1u
+ ad=12p pd=14u as=0p ps=0u
M1027 vdd dff_3/dlatch_0/Qnot dff_3/node2 dff_3/dlatch_0/nand_1/w_n13_1# pmos w=4u l=1u
+ ad=0p pd=0u as=0p ps=0u
M1028 dff_3/dlatch_0/nand_1/a_n2_n27# dff_3/dlatch_0/node1 gnd gnd nmos w=2u l=1u
+ ad=6p pd=10u as=0p ps=0u
M1029 dff_3/node2 dff_3/dlatch_0/Qnot dff_3/dlatch_0/nand_1/a_n2_n27# gnd nmos w=2u l=1u
+ ad=5p pd=9u as=0p ps=0u
M1030 dff_3/dlatch_0/node1 ins_1 vdd dff_3/dlatch_0/nand_0/w_n13_1# pmos w=4u l=1u
+ ad=12p pd=14u as=0p ps=0u
M1031 vdd dff_3/node1 dff_3/dlatch_0/node1 dff_3/dlatch_0/nand_0/w_n13_1# pmos w=4u l=1u
+ ad=0p pd=0u as=0p ps=0u
M1032 dff_3/dlatch_0/nand_0/a_n2_n27# ins_1 gnd gnd nmos w=2u l=1u
+ ad=6p pd=10u as=0p ps=0u
M1033 dff_3/dlatch_0/node1 dff_3/node1 dff_3/dlatch_0/nand_0/a_n2_n27# gnd nmos w=2u l=1u
+ ad=5p pd=9u as=0p ps=0u
M1034 dff_3/dlatch_0/node3 ins_1 vdd dff_3/dlatch_0/w_n108_n81# pmos w=4u l=1u
+ ad=14p pd=15u as=0p ps=0u
M1035 dff_3/dlatch_0/node3 ins_1 gnd gnd nmos w=2u l=1u
+ ad=5p pd=9u as=0p ps=0u
M1036 dff_3/node1 clk vdd dff_3/w_66_n34# pmos w=4u l=1u
+ ad=14p pd=15u as=0p ps=0u
M1037 dff_3/node1 clk gnd gnd nmos w=2u l=1u
+ ad=5p pd=9u as=0p ps=0u
M1038 dff_2/Qnot dff_2/dlatch_1/node2 vdd dff_2/dlatch_1/nand_3/w_n13_1# pmos w=4u l=1u
+ ad=12p pd=14u as=0p ps=0u
M1039 vdd node5 dff_2/Qnot dff_2/dlatch_1/nand_3/w_n13_1# pmos w=4u l=1u
+ ad=0p pd=0u as=0p ps=0u
M1040 dff_2/dlatch_1/nand_3/a_n2_n27# dff_2/dlatch_1/node2 gnd gnd nmos w=2u l=1u
+ ad=6p pd=10u as=0p ps=0u
M1041 dff_2/Qnot node5 dff_2/dlatch_1/nand_3/a_n2_n27# gnd nmos w=2u l=1u
+ ad=5p pd=9u as=0p ps=0u
M1042 dff_2/dlatch_1/node2 clk vdd dff_2/dlatch_1/nand_2/w_n13_1# pmos w=4u l=1u
+ ad=12p pd=14u as=0p ps=0u
M1043 vdd dff_2/dlatch_1/node3 dff_2/dlatch_1/node2 dff_2/dlatch_1/nand_2/w_n13_1# pmos w=4u l=1u
+ ad=0p pd=0u as=0p ps=0u
M1044 dff_2/dlatch_1/nand_2/a_n2_n27# clk gnd gnd nmos w=2u l=1u
+ ad=6p pd=10u as=0p ps=0u
M1045 dff_2/dlatch_1/node2 dff_2/dlatch_1/node3 dff_2/dlatch_1/nand_2/a_n2_n27# gnd nmos w=2u l=1u
+ ad=5p pd=9u as=0p ps=0u
M1046 node5 dff_2/dlatch_1/node1 vdd dff_2/dlatch_1/nand_1/w_n13_1# pmos w=4u l=1u
+ ad=12p pd=14u as=0p ps=0u
M1047 vdd dff_2/Qnot node5 dff_2/dlatch_1/nand_1/w_n13_1# pmos w=4u l=1u
+ ad=0p pd=0u as=0p ps=0u
M1048 dff_2/dlatch_1/nand_1/a_n2_n27# dff_2/dlatch_1/node1 gnd gnd nmos w=2u l=1u
+ ad=6p pd=10u as=0p ps=0u
M1049 node5 dff_2/Qnot dff_2/dlatch_1/nand_1/a_n2_n27# gnd nmos w=2u l=1u
+ ad=5p pd=9u as=0p ps=0u
M1050 dff_2/dlatch_1/node1 dff_2/node2 vdd dff_2/dlatch_1/nand_0/w_n13_1# pmos w=4u l=1u
+ ad=12p pd=14u as=0p ps=0u
M1051 vdd clk dff_2/dlatch_1/node1 dff_2/dlatch_1/nand_0/w_n13_1# pmos w=4u l=1u
+ ad=0p pd=0u as=0p ps=0u
M1052 dff_2/dlatch_1/nand_0/a_n2_n27# dff_2/node2 gnd gnd nmos w=2u l=1u
+ ad=6p pd=10u as=0p ps=0u
M1053 dff_2/dlatch_1/node1 clk dff_2/dlatch_1/nand_0/a_n2_n27# gnd nmos w=2u l=1u
+ ad=5p pd=9u as=0p ps=0u
M1054 dff_2/dlatch_1/node3 dff_2/node2 vdd dff_2/dlatch_1/w_n108_n81# pmos w=4u l=1u
+ ad=14p pd=15u as=0p ps=0u
M1055 dff_2/dlatch_1/node3 dff_2/node2 gnd gnd nmos w=2u l=1u
+ ad=5p pd=9u as=0p ps=0u
M1056 dff_2/dlatch_0/Qnot dff_2/dlatch_0/node2 vdd dff_2/dlatch_0/nand_3/w_n13_1# pmos w=4u l=1u
+ ad=12p pd=14u as=0p ps=0u
M1057 vdd dff_2/node2 dff_2/dlatch_0/Qnot dff_2/dlatch_0/nand_3/w_n13_1# pmos w=4u l=1u
+ ad=0p pd=0u as=0p ps=0u
M1058 dff_2/dlatch_0/nand_3/a_n2_n27# dff_2/dlatch_0/node2 gnd gnd nmos w=2u l=1u
+ ad=6p pd=10u as=0p ps=0u
M1059 dff_2/dlatch_0/Qnot dff_2/node2 dff_2/dlatch_0/nand_3/a_n2_n27# gnd nmos w=2u l=1u
+ ad=5p pd=9u as=0p ps=0u
M1060 dff_2/dlatch_0/node2 dff_2/node1 vdd dff_2/dlatch_0/nand_2/w_n13_1# pmos w=4u l=1u
+ ad=12p pd=14u as=0p ps=0u
M1061 vdd dff_2/dlatch_0/node3 dff_2/dlatch_0/node2 dff_2/dlatch_0/nand_2/w_n13_1# pmos w=4u l=1u
+ ad=0p pd=0u as=0p ps=0u
M1062 dff_2/dlatch_0/nand_2/a_n2_n27# dff_2/node1 gnd gnd nmos w=2u l=1u
+ ad=6p pd=10u as=0p ps=0u
M1063 dff_2/dlatch_0/node2 dff_2/dlatch_0/node3 dff_2/dlatch_0/nand_2/a_n2_n27# gnd nmos w=2u l=1u
+ ad=5p pd=9u as=0p ps=0u
M1064 dff_2/node2 dff_2/dlatch_0/node1 vdd dff_2/dlatch_0/nand_1/w_n13_1# pmos w=4u l=1u
+ ad=12p pd=14u as=0p ps=0u
M1065 vdd dff_2/dlatch_0/Qnot dff_2/node2 dff_2/dlatch_0/nand_1/w_n13_1# pmos w=4u l=1u
+ ad=0p pd=0u as=0p ps=0u
M1066 dff_2/dlatch_0/nand_1/a_n2_n27# dff_2/dlatch_0/node1 gnd gnd nmos w=2u l=1u
+ ad=6p pd=10u as=0p ps=0u
M1067 dff_2/node2 dff_2/dlatch_0/Qnot dff_2/dlatch_0/nand_1/a_n2_n27# gnd nmos w=2u l=1u
+ ad=5p pd=9u as=0p ps=0u
M1068 dff_2/dlatch_0/node1 ins_0 vdd dff_2/dlatch_0/nand_0/w_n13_1# pmos w=4u l=1u
+ ad=12p pd=14u as=0p ps=0u
M1069 vdd dff_2/node1 dff_2/dlatch_0/node1 dff_2/dlatch_0/nand_0/w_n13_1# pmos w=4u l=1u
+ ad=0p pd=0u as=0p ps=0u
M1070 dff_2/dlatch_0/nand_0/a_n2_n27# ins_0 gnd gnd nmos w=2u l=1u
+ ad=6p pd=10u as=0p ps=0u
M1071 dff_2/dlatch_0/node1 dff_2/node1 dff_2/dlatch_0/nand_0/a_n2_n27# gnd nmos w=2u l=1u
+ ad=5p pd=9u as=0p ps=0u
M1072 dff_2/dlatch_0/node3 ins_0 vdd dff_2/dlatch_0/w_n108_n81# pmos w=4u l=1u
+ ad=14p pd=15u as=0p ps=0u
M1073 dff_2/dlatch_0/node3 ins_0 gnd gnd nmos w=2u l=1u
+ ad=5p pd=9u as=0p ps=0u
M1074 dff_2/node1 clk vdd dff_2/w_66_n34# pmos w=4u l=1u
+ ad=14p pd=15u as=0p ps=0u
M1075 dff_2/node1 clk gnd gnd nmos w=2u l=1u
+ ad=5p pd=9u as=0p ps=0u
M1076 Qnot dff_4/dlatch_1/node2 vdd dff_4/dlatch_1/nand_3/w_n13_1# pmos w=4u l=1u
+ ad=12p pd=14u as=0p ps=0u
M1077 vdd r_result Qnot dff_4/dlatch_1/nand_3/w_n13_1# pmos w=4u l=1u
+ ad=0p pd=0u as=0p ps=0u
M1078 dff_4/dlatch_1/nand_3/a_n2_n27# dff_4/dlatch_1/node2 gnd gnd nmos w=2u l=1u
+ ad=6p pd=10u as=0p ps=0u
M1079 Qnot r_result dff_4/dlatch_1/nand_3/a_n2_n27# gnd nmos w=2u l=1u
+ ad=5p pd=9u as=0p ps=0u
M1080 dff_4/dlatch_1/node2 clk vdd dff_4/dlatch_1/nand_2/w_n13_1# pmos w=4u l=1u
+ ad=12p pd=14u as=0p ps=0u
M1081 vdd dff_4/dlatch_1/node3 dff_4/dlatch_1/node2 dff_4/dlatch_1/nand_2/w_n13_1# pmos w=4u l=1u
+ ad=0p pd=0u as=0p ps=0u
M1082 dff_4/dlatch_1/nand_2/a_n2_n27# clk gnd gnd nmos w=2u l=1u
+ ad=6p pd=10u as=0p ps=0u
M1083 dff_4/dlatch_1/node2 dff_4/dlatch_1/node3 dff_4/dlatch_1/nand_2/a_n2_n27# gnd nmos w=2u l=1u
+ ad=5p pd=9u as=0p ps=0u
M1084 r_result dff_4/dlatch_1/node1 vdd dff_4/dlatch_1/nand_1/w_n13_1# pmos w=4u l=1u
+ ad=12p pd=14u as=0p ps=0u
M1085 vdd Qnot r_result dff_4/dlatch_1/nand_1/w_n13_1# pmos w=4u l=1u
+ ad=0p pd=0u as=0p ps=0u
M1086 dff_4/dlatch_1/nand_1/a_n2_n27# dff_4/dlatch_1/node1 gnd gnd nmos w=2u l=1u
+ ad=6p pd=10u as=0p ps=0u
M1087 r_result Qnot dff_4/dlatch_1/nand_1/a_n2_n27# gnd nmos w=2u l=1u
+ ad=5p pd=9u as=0p ps=0u
M1088 dff_4/dlatch_1/node1 dff_4/node2 vdd dff_4/dlatch_1/nand_0/w_n13_1# pmos w=4u l=1u
+ ad=12p pd=14u as=0p ps=0u
M1089 vdd clk dff_4/dlatch_1/node1 dff_4/dlatch_1/nand_0/w_n13_1# pmos w=4u l=1u
+ ad=0p pd=0u as=0p ps=0u
M1090 dff_4/dlatch_1/nand_0/a_n2_n27# dff_4/node2 gnd gnd nmos w=2u l=1u
+ ad=6p pd=10u as=0p ps=0u
M1091 dff_4/dlatch_1/node1 clk dff_4/dlatch_1/nand_0/a_n2_n27# gnd nmos w=2u l=1u
+ ad=5p pd=9u as=0p ps=0u
M1092 dff_4/dlatch_1/node3 dff_4/node2 vdd dff_4/dlatch_1/w_n108_n81# pmos w=4u l=1u
+ ad=14p pd=15u as=0p ps=0u
M1093 dff_4/dlatch_1/node3 dff_4/node2 gnd gnd nmos w=2u l=1u
+ ad=5p pd=9u as=0p ps=0u
M1094 dff_4/dlatch_0/Qnot dff_4/dlatch_0/node2 vdd dff_4/dlatch_0/nand_3/w_n13_1# pmos w=4u l=1u
+ ad=12p pd=14u as=0p ps=0u
M1095 vdd dff_4/node2 dff_4/dlatch_0/Qnot dff_4/dlatch_0/nand_3/w_n13_1# pmos w=4u l=1u
+ ad=0p pd=0u as=0p ps=0u
M1096 dff_4/dlatch_0/nand_3/a_n2_n27# dff_4/dlatch_0/node2 gnd gnd nmos w=2u l=1u
+ ad=6p pd=10u as=0p ps=0u
M1097 dff_4/dlatch_0/Qnot dff_4/node2 dff_4/dlatch_0/nand_3/a_n2_n27# gnd nmos w=2u l=1u
+ ad=5p pd=9u as=0p ps=0u
M1098 dff_4/dlatch_0/node2 dff_4/node1 vdd dff_4/dlatch_0/nand_2/w_n13_1# pmos w=4u l=1u
+ ad=12p pd=14u as=0p ps=0u
M1099 vdd dff_4/dlatch_0/node3 dff_4/dlatch_0/node2 dff_4/dlatch_0/nand_2/w_n13_1# pmos w=4u l=1u
+ ad=0p pd=0u as=0p ps=0u
M1100 dff_4/dlatch_0/nand_2/a_n2_n27# dff_4/node1 gnd gnd nmos w=2u l=1u
+ ad=6p pd=10u as=0p ps=0u
M1101 dff_4/dlatch_0/node2 dff_4/dlatch_0/node3 dff_4/dlatch_0/nand_2/a_n2_n27# gnd nmos w=2u l=1u
+ ad=5p pd=9u as=0p ps=0u
M1102 dff_4/node2 dff_4/dlatch_0/node1 vdd dff_4/dlatch_0/nand_1/w_n13_1# pmos w=4u l=1u
+ ad=12p pd=14u as=0p ps=0u
M1103 vdd dff_4/dlatch_0/Qnot dff_4/node2 dff_4/dlatch_0/nand_1/w_n13_1# pmos w=4u l=1u
+ ad=0p pd=0u as=0p ps=0u
M1104 dff_4/dlatch_0/nand_1/a_n2_n27# dff_4/dlatch_0/node1 gnd gnd nmos w=2u l=1u
+ ad=6p pd=10u as=0p ps=0u
M1105 dff_4/node2 dff_4/dlatch_0/Qnot dff_4/dlatch_0/nand_1/a_n2_n27# gnd nmos w=2u l=1u
+ ad=5p pd=9u as=0p ps=0u
M1106 dff_4/dlatch_0/node1 node9 vdd dff_4/dlatch_0/nand_0/w_n13_1# pmos w=4u l=1u
+ ad=12p pd=14u as=0p ps=0u
M1107 vdd dff_4/node1 dff_4/dlatch_0/node1 dff_4/dlatch_0/nand_0/w_n13_1# pmos w=4u l=1u
+ ad=0p pd=0u as=0p ps=0u
M1108 dff_4/dlatch_0/nand_0/a_n2_n27# node9 gnd gnd nmos w=2u l=1u
+ ad=6p pd=10u as=0p ps=0u
M1109 dff_4/dlatch_0/node1 dff_4/node1 dff_4/dlatch_0/nand_0/a_n2_n27# gnd nmos w=2u l=1u
+ ad=5p pd=9u as=0p ps=0u
M1110 dff_4/dlatch_0/node3 node9 vdd dff_4/dlatch_0/w_n108_n81# pmos w=4u l=1u
+ ad=14p pd=15u as=0p ps=0u
M1111 dff_4/dlatch_0/node3 node9 gnd gnd nmos w=2u l=1u
+ ad=5p pd=9u as=0p ps=0u
M1112 dff_4/node1 clk vdd dff_4/w_66_n34# pmos w=4u l=1u
+ ad=14p pd=15u as=0p ps=0u
M1113 dff_4/node1 clk gnd gnd nmos w=2u l=1u
+ ad=5p pd=9u as=0p ps=0u
M1114 node9 mux_1/node1 vdd mux_1/nand_2/w_n13_1# pmos w=4u l=1u
+ ad=12p pd=14u as=0p ps=0u
M1115 vdd mux_1/node2 node9 mux_1/nand_2/w_n13_1# pmos w=4u l=1u
+ ad=0p pd=0u as=0p ps=0u
M1116 mux_1/nand_2/a_n2_n27# mux_1/node1 gnd gnd nmos w=2u l=1u
+ ad=6p pd=10u as=0p ps=0u
M1117 node9 mux_1/node2 mux_1/nand_2/a_n2_n27# gnd nmos w=2u l=1u
+ ad=5p pd=9u as=0p ps=0u
M1118 mux_1/node2 mux_1/node3 vdd mux_1/nand_1/w_n13_1# pmos w=4u l=1u
+ ad=12p pd=14u as=0p ps=0u
M1119 vdd node6 mux_1/node2 mux_1/nand_1/w_n13_1# pmos w=4u l=1u
+ ad=0p pd=0u as=0p ps=0u
M1120 mux_1/nand_1/a_n2_n27# mux_1/node3 gnd gnd nmos w=2u l=1u
+ ad=6p pd=10u as=0p ps=0u
M1121 mux_1/node2 node6 mux_1/nand_1/a_n2_n27# gnd nmos w=2u l=1u
+ ad=5p pd=9u as=0p ps=0u
M1122 mux_1/node1 node7 vdd mux_1/nand_0/w_n13_1# pmos w=4u l=1u
+ ad=12p pd=14u as=0p ps=0u
M1123 vdd node8 mux_1/node1 mux_1/nand_0/w_n13_1# pmos w=4u l=1u
+ ad=0p pd=0u as=0p ps=0u
M1124 mux_1/nand_0/a_n2_n27# node7 gnd gnd nmos w=2u l=1u
+ ad=6p pd=10u as=0p ps=0u
M1125 mux_1/node1 node8 mux_1/nand_0/a_n2_n27# gnd nmos w=2u l=1u
+ ad=5p pd=9u as=0p ps=0u
M1126 mux_1/node3 node8 vdd mux_1/w_n44_n6# pmos w=4u l=1u
+ ad=12p pd=14u as=0p ps=0u
M1127 mux_1/node3 node8 gnd gnd nmos w=2u l=1u
+ ad=5p pd=9u as=0p ps=0u
M1128 dff_1/Qnot dff_1/dlatch_1/node2 vdd dff_1/dlatch_1/nand_3/w_n13_1# pmos w=4u l=1u
+ ad=12p pd=14u as=0p ps=0u
M1129 vdd node2 dff_1/Qnot dff_1/dlatch_1/nand_3/w_n13_1# pmos w=4u l=1u
+ ad=0p pd=0u as=0p ps=0u
M1130 dff_1/dlatch_1/nand_3/a_n2_n27# dff_1/dlatch_1/node2 gnd gnd nmos w=2u l=1u
+ ad=6p pd=10u as=0p ps=0u
M1131 dff_1/Qnot node2 dff_1/dlatch_1/nand_3/a_n2_n27# gnd nmos w=2u l=1u
+ ad=5p pd=9u as=0p ps=0u
M1132 dff_1/dlatch_1/node2 clk vdd dff_1/dlatch_1/nand_2/w_n13_1# pmos w=4u l=1u
+ ad=12p pd=14u as=0p ps=0u
M1133 vdd dff_1/dlatch_1/node3 dff_1/dlatch_1/node2 dff_1/dlatch_1/nand_2/w_n13_1# pmos w=4u l=1u
+ ad=0p pd=0u as=0p ps=0u
M1134 dff_1/dlatch_1/nand_2/a_n2_n27# clk gnd gnd nmos w=2u l=1u
+ ad=6p pd=10u as=0p ps=0u
M1135 dff_1/dlatch_1/node2 dff_1/dlatch_1/node3 dff_1/dlatch_1/nand_2/a_n2_n27# gnd nmos w=2u l=1u
+ ad=5p pd=9u as=0p ps=0u
M1136 node2 dff_1/dlatch_1/node1 vdd dff_1/dlatch_1/nand_1/w_n13_1# pmos w=4u l=1u
+ ad=12p pd=14u as=0p ps=0u
M1137 vdd dff_1/Qnot node2 dff_1/dlatch_1/nand_1/w_n13_1# pmos w=4u l=1u
+ ad=0p pd=0u as=0p ps=0u
M1138 dff_1/dlatch_1/nand_1/a_n2_n27# dff_1/dlatch_1/node1 gnd gnd nmos w=2u l=1u
+ ad=6p pd=10u as=0p ps=0u
M1139 node2 dff_1/Qnot dff_1/dlatch_1/nand_1/a_n2_n27# gnd nmos w=2u l=1u
+ ad=5p pd=9u as=0p ps=0u
M1140 dff_1/dlatch_1/node1 dff_1/node2 vdd dff_1/dlatch_1/nand_0/w_n13_1# pmos w=4u l=1u
+ ad=12p pd=14u as=0p ps=0u
M1141 vdd clk dff_1/dlatch_1/node1 dff_1/dlatch_1/nand_0/w_n13_1# pmos w=4u l=1u
+ ad=0p pd=0u as=0p ps=0u
M1142 dff_1/dlatch_1/nand_0/a_n2_n27# dff_1/node2 gnd gnd nmos w=2u l=1u
+ ad=6p pd=10u as=0p ps=0u
M1143 dff_1/dlatch_1/node1 clk dff_1/dlatch_1/nand_0/a_n2_n27# gnd nmos w=2u l=1u
+ ad=5p pd=9u as=0p ps=0u
M1144 dff_1/dlatch_1/node3 dff_1/node2 vdd dff_1/dlatch_1/w_n108_n81# pmos w=4u l=1u
+ ad=14p pd=15u as=0p ps=0u
M1145 dff_1/dlatch_1/node3 dff_1/node2 gnd gnd nmos w=2u l=1u
+ ad=5p pd=9u as=0p ps=0u
M1146 dff_1/dlatch_0/Qnot dff_1/dlatch_0/node2 vdd dff_1/dlatch_0/nand_3/w_n13_1# pmos w=4u l=1u
+ ad=12p pd=14u as=0p ps=0u
M1147 vdd dff_1/node2 dff_1/dlatch_0/Qnot dff_1/dlatch_0/nand_3/w_n13_1# pmos w=4u l=1u
+ ad=0p pd=0u as=0p ps=0u
M1148 dff_1/dlatch_0/nand_3/a_n2_n27# dff_1/dlatch_0/node2 gnd gnd nmos w=2u l=1u
+ ad=6p pd=10u as=0p ps=0u
M1149 dff_1/dlatch_0/Qnot dff_1/node2 dff_1/dlatch_0/nand_3/a_n2_n27# gnd nmos w=2u l=1u
+ ad=5p pd=9u as=0p ps=0u
M1150 dff_1/dlatch_0/node2 dff_1/node1 vdd dff_1/dlatch_0/nand_2/w_n13_1# pmos w=4u l=1u
+ ad=12p pd=14u as=0p ps=0u
M1151 vdd dff_1/dlatch_0/node3 dff_1/dlatch_0/node2 dff_1/dlatch_0/nand_2/w_n13_1# pmos w=4u l=1u
+ ad=0p pd=0u as=0p ps=0u
M1152 dff_1/dlatch_0/nand_2/a_n2_n27# dff_1/node1 gnd gnd nmos w=2u l=1u
+ ad=6p pd=10u as=0p ps=0u
M1153 dff_1/dlatch_0/node2 dff_1/dlatch_0/node3 dff_1/dlatch_0/nand_2/a_n2_n27# gnd nmos w=2u l=1u
+ ad=5p pd=9u as=0p ps=0u
M1154 dff_1/node2 dff_1/dlatch_0/node1 vdd dff_1/dlatch_0/nand_1/w_n13_1# pmos w=4u l=1u
+ ad=12p pd=14u as=0p ps=0u
M1155 vdd dff_1/dlatch_0/Qnot dff_1/node2 dff_1/dlatch_0/nand_1/w_n13_1# pmos w=4u l=1u
+ ad=0p pd=0u as=0p ps=0u
M1156 dff_1/dlatch_0/nand_1/a_n2_n27# dff_1/dlatch_0/node1 gnd gnd nmos w=2u l=1u
+ ad=6p pd=10u as=0p ps=0u
M1157 dff_1/node2 dff_1/dlatch_0/Qnot dff_1/dlatch_0/nand_1/a_n2_n27# gnd nmos w=2u l=1u
+ ad=5p pd=9u as=0p ps=0u
M1158 dff_1/dlatch_0/node1 input_b vdd dff_1/dlatch_0/nand_0/w_n13_1# pmos w=4u l=1u
+ ad=12p pd=14u as=0p ps=0u
M1159 vdd dff_1/node1 dff_1/dlatch_0/node1 dff_1/dlatch_0/nand_0/w_n13_1# pmos w=4u l=1u
+ ad=0p pd=0u as=0p ps=0u
M1160 dff_1/dlatch_0/nand_0/a_n2_n27# input_b gnd gnd nmos w=2u l=1u
+ ad=6p pd=10u as=0p ps=0u
M1161 dff_1/dlatch_0/node1 dff_1/node1 dff_1/dlatch_0/nand_0/a_n2_n27# gnd nmos w=2u l=1u
+ ad=5p pd=9u as=0p ps=0u
M1162 dff_1/dlatch_0/node3 input_b vdd dff_1/dlatch_0/w_n108_n81# pmos w=4u l=1u
+ ad=14p pd=15u as=0p ps=0u
M1163 dff_1/dlatch_0/node3 input_b gnd gnd nmos w=2u l=1u
+ ad=5p pd=9u as=0p ps=0u
M1164 dff_1/node1 clk vdd dff_1/w_66_n34# pmos w=4u l=1u
+ ad=14p pd=15u as=0p ps=0u
M1165 dff_1/node1 clk gnd gnd nmos w=2u l=1u
+ ad=5p pd=9u as=0p ps=0u
M1166 node6 mux_0/node1 vdd mux_0/nand_2/w_n13_1# pmos w=4u l=1u
+ ad=12p pd=14u as=0p ps=0u
M1167 vdd mux_0/node2 node6 mux_0/nand_2/w_n13_1# pmos w=4u l=1u
+ ad=0p pd=0u as=0p ps=0u
M1168 mux_0/nand_2/a_n2_n27# mux_0/node1 gnd gnd nmos w=2u l=1u
+ ad=6p pd=10u as=0p ps=0u
M1169 node6 mux_0/node2 mux_0/nand_2/a_n2_n27# gnd nmos w=2u l=1u
+ ad=5p pd=9u as=0p ps=0u
M1170 mux_0/node2 mux_0/node3 vdd mux_0/nand_1/w_n13_1# pmos w=4u l=1u
+ ad=12p pd=14u as=0p ps=0u
M1171 vdd node4 mux_0/node2 mux_0/nand_1/w_n13_1# pmos w=4u l=1u
+ ad=0p pd=0u as=0p ps=0u
M1172 mux_0/nand_1/a_n2_n27# mux_0/node3 gnd gnd nmos w=2u l=1u
+ ad=6p pd=10u as=0p ps=0u
M1173 mux_0/node2 node4 mux_0/nand_1/a_n2_n27# gnd nmos w=2u l=1u
+ ad=5p pd=9u as=0p ps=0u
M1174 mux_0/node1 node3 vdd mux_0/nand_0/w_n13_1# pmos w=4u l=1u
+ ad=12p pd=14u as=0p ps=0u
M1175 vdd node5 mux_0/node1 mux_0/nand_0/w_n13_1# pmos w=4u l=1u
+ ad=0p pd=0u as=0p ps=0u
M1176 mux_0/nand_0/a_n2_n27# node3 gnd gnd nmos w=2u l=1u
+ ad=6p pd=10u as=0p ps=0u
M1177 mux_0/node1 node5 mux_0/nand_0/a_n2_n27# gnd nmos w=2u l=1u
+ ad=5p pd=9u as=0p ps=0u
M1178 mux_0/node3 node5 vdd mux_0/w_n44_n6# pmos w=4u l=1u
+ ad=12p pd=14u as=0p ps=0u
M1179 mux_0/node3 node5 gnd gnd nmos w=2u l=1u
+ ad=5p pd=9u as=0p ps=0u
M1180 node3 node1 vdd nand_0/w_n13_1# pmos w=4u l=1u
+ ad=12p pd=14u as=0p ps=0u
M1181 vdd node2 node3 nand_0/w_n13_1# pmos w=4u l=1u
+ ad=0p pd=0u as=0p ps=0u
M1182 nand_0/a_n2_n27# node1 gnd gnd nmos w=2u l=1u
+ ad=6p pd=10u as=0p ps=0u
M1183 node3 node2 nand_0/a_n2_n27# gnd nmos w=2u l=1u
+ ad=5p pd=9u as=0p ps=0u
M1184 dff_0/Qnot dff_0/dlatch_1/node2 vdd dff_0/dlatch_1/nand_3/w_n13_1# pmos w=4u l=1u
+ ad=12p pd=14u as=0p ps=0u
M1185 vdd node1 dff_0/Qnot dff_0/dlatch_1/nand_3/w_n13_1# pmos w=4u l=1u
+ ad=0p pd=0u as=0p ps=0u
M1186 dff_0/dlatch_1/nand_3/a_n2_n27# dff_0/dlatch_1/node2 gnd gnd nmos w=2u l=1u
+ ad=6p pd=10u as=0p ps=0u
M1187 dff_0/Qnot node1 dff_0/dlatch_1/nand_3/a_n2_n27# gnd nmos w=2u l=1u
+ ad=5p pd=9u as=0p ps=0u
M1188 dff_0/dlatch_1/node2 clk vdd dff_0/dlatch_1/nand_2/w_n13_1# pmos w=4u l=1u
+ ad=12p pd=14u as=0p ps=0u
M1189 vdd dff_0/dlatch_1/node3 dff_0/dlatch_1/node2 dff_0/dlatch_1/nand_2/w_n13_1# pmos w=4u l=1u
+ ad=0p pd=0u as=0p ps=0u
M1190 dff_0/dlatch_1/nand_2/a_n2_n27# clk gnd gnd nmos w=2u l=1u
+ ad=6p pd=10u as=0p ps=0u
M1191 dff_0/dlatch_1/node2 dff_0/dlatch_1/node3 dff_0/dlatch_1/nand_2/a_n2_n27# gnd nmos w=2u l=1u
+ ad=5p pd=9u as=0p ps=0u
M1192 node1 dff_0/dlatch_1/node1 vdd dff_0/dlatch_1/nand_1/w_n13_1# pmos w=4u l=1u
+ ad=12p pd=14u as=0p ps=0u
M1193 vdd dff_0/Qnot node1 dff_0/dlatch_1/nand_1/w_n13_1# pmos w=4u l=1u
+ ad=0p pd=0u as=0p ps=0u
M1194 dff_0/dlatch_1/nand_1/a_n2_n27# dff_0/dlatch_1/node1 gnd gnd nmos w=2u l=1u
+ ad=6p pd=10u as=0p ps=0u
M1195 node1 dff_0/Qnot dff_0/dlatch_1/nand_1/a_n2_n27# gnd nmos w=2u l=1u
+ ad=5p pd=9u as=0p ps=0u
M1196 dff_0/dlatch_1/node1 dff_0/node2 vdd dff_0/dlatch_1/nand_0/w_n13_1# pmos w=4u l=1u
+ ad=12p pd=14u as=0p ps=0u
M1197 vdd clk dff_0/dlatch_1/node1 dff_0/dlatch_1/nand_0/w_n13_1# pmos w=4u l=1u
+ ad=0p pd=0u as=0p ps=0u
M1198 dff_0/dlatch_1/nand_0/a_n2_n27# dff_0/node2 gnd gnd nmos w=2u l=1u
+ ad=6p pd=10u as=0p ps=0u
M1199 dff_0/dlatch_1/node1 clk dff_0/dlatch_1/nand_0/a_n2_n27# gnd nmos w=2u l=1u
+ ad=5p pd=9u as=0p ps=0u
M1200 dff_0/dlatch_1/node3 dff_0/node2 vdd dff_0/dlatch_1/w_n108_n81# pmos w=4u l=1u
+ ad=14p pd=15u as=0p ps=0u
M1201 dff_0/dlatch_1/node3 dff_0/node2 gnd gnd nmos w=2u l=1u
+ ad=5p pd=9u as=0p ps=0u
M1202 dff_0/dlatch_0/Qnot dff_0/dlatch_0/node2 vdd dff_0/dlatch_0/nand_3/w_n13_1# pmos w=4u l=1u
+ ad=12p pd=14u as=0p ps=0u
M1203 vdd dff_0/node2 dff_0/dlatch_0/Qnot dff_0/dlatch_0/nand_3/w_n13_1# pmos w=4u l=1u
+ ad=0p pd=0u as=0p ps=0u
M1204 dff_0/dlatch_0/nand_3/a_n2_n27# dff_0/dlatch_0/node2 gnd gnd nmos w=2u l=1u
+ ad=6p pd=10u as=0p ps=0u
M1205 dff_0/dlatch_0/Qnot dff_0/node2 dff_0/dlatch_0/nand_3/a_n2_n27# gnd nmos w=2u l=1u
+ ad=5p pd=9u as=0p ps=0u
M1206 dff_0/dlatch_0/node2 dff_0/node1 vdd dff_0/dlatch_0/nand_2/w_n13_1# pmos w=4u l=1u
+ ad=12p pd=14u as=0p ps=0u
M1207 vdd dff_0/dlatch_0/node3 dff_0/dlatch_0/node2 dff_0/dlatch_0/nand_2/w_n13_1# pmos w=4u l=1u
+ ad=0p pd=0u as=0p ps=0u
M1208 dff_0/dlatch_0/nand_2/a_n2_n27# dff_0/node1 gnd gnd nmos w=2u l=1u
+ ad=6p pd=10u as=0p ps=0u
M1209 dff_0/dlatch_0/node2 dff_0/dlatch_0/node3 dff_0/dlatch_0/nand_2/a_n2_n27# gnd nmos w=2u l=1u
+ ad=5p pd=9u as=0p ps=0u
M1210 dff_0/node2 dff_0/dlatch_0/node1 vdd dff_0/dlatch_0/nand_1/w_n13_1# pmos w=4u l=1u
+ ad=12p pd=14u as=0p ps=0u
M1211 vdd dff_0/dlatch_0/Qnot dff_0/node2 dff_0/dlatch_0/nand_1/w_n13_1# pmos w=4u l=1u
+ ad=0p pd=0u as=0p ps=0u
M1212 dff_0/dlatch_0/nand_1/a_n2_n27# dff_0/dlatch_0/node1 gnd gnd nmos w=2u l=1u
+ ad=6p pd=10u as=0p ps=0u
M1213 dff_0/node2 dff_0/dlatch_0/Qnot dff_0/dlatch_0/nand_1/a_n2_n27# gnd nmos w=2u l=1u
+ ad=5p pd=9u as=0p ps=0u
M1214 dff_0/dlatch_0/node1 input_a vdd dff_0/dlatch_0/nand_0/w_n13_1# pmos w=4u l=1u
+ ad=12p pd=14u as=0p ps=0u
M1215 vdd dff_0/node1 dff_0/dlatch_0/node1 dff_0/dlatch_0/nand_0/w_n13_1# pmos w=4u l=1u
+ ad=0p pd=0u as=0p ps=0u
M1216 dff_0/dlatch_0/nand_0/a_n2_n27# input_a gnd gnd nmos w=2u l=1u
+ ad=6p pd=10u as=0p ps=0u
M1217 dff_0/dlatch_0/node1 dff_0/node1 dff_0/dlatch_0/nand_0/a_n2_n27# gnd nmos w=2u l=1u
+ ad=5p pd=9u as=0p ps=0u
M1218 dff_0/dlatch_0/node3 input_a vdd dff_0/dlatch_0/w_n108_n81# pmos w=4u l=1u
+ ad=14p pd=15u as=0p ps=0u
M1219 dff_0/dlatch_0/node3 input_a gnd gnd nmos w=2u l=1u
+ ad=5p pd=9u as=0p ps=0u
M1220 dff_0/node1 clk vdd dff_0/w_66_n34# pmos w=4u l=1u
+ ad=14p pd=15u as=0p ps=0u
M1221 dff_0/node1 clk gnd gnd nmos w=2u l=1u
+ ad=5p pd=9u as=0p ps=0u
M1222 node7 node6 vdd w_1175_n15# pmos w=4u l=1u
+ ad=12p pd=14u as=0p ps=0u
M1223 node7 node6 gnd gnd nmos w=2u l=1u
+ ad=5p pd=9u as=0p ps=0u
M1224 a_688_n206# node2 vdd w_677_n208# pmos w=8u l=1u
+ ad=24p pd=22u as=0p ps=0u
M1225 node4 node1 a_688_n206# w_677_n208# pmos w=8u l=1u
+ ad=24p pd=22u as=0p ps=0u
M1226 node4 node2 gnd gnd nmos w=2u l=1u
+ ad=6p pd=10u as=0p ps=0u
M1227 gnd node1 node4 gnd nmos w=2u l=1u
+ ad=0p pd=0u as=0p ps=0u
C0 dff_3/dlatch_0/nand_2/w_n13_1# vdd 3.2fF
C1 ins_1 dff_3/node1 2.1fF
C2 vdd dff_0/dlatch_1/nand_0/w_n13_1# 3.2fF
C3 dff_2/node2 clk 2.4fF
C4 vdd dff_1/dlatch_1/nand_2/w_n13_1# 3.2fF
C5 input_a dff_0/node1 2.1fF
C6 vdd dff_0/dlatch_1/w_n108_n81# 2.3fF
C7 vdd dff_1/w_66_n34# 2.0fF
C8 vdd dff_0/dlatch_0/nand_1/w_n13_1# 3.2fF
C9 dff_2/w_66_n34# vdd 2.0fF
C10 vdd gnd 10.2fF
C11 vdd dff_0/dlatch_1/nand_3/w_n13_1# 3.2fF
C12 dff_2/dlatch_1/nand_0/w_n13_1# vdd 3.2fF
C13 dff_4/node2 clk 2.4fF
C14 dff_4/dlatch_0/nand_0/w_n13_1# vdd 3.2fF
C15 vdd mux_1/nand_2/w_n13_1# 3.2fF
C16 vdd mux_0/nand_2/w_n13_1# 3.2fF
C17 vdd clk 9.7fF
C18 vdd dff_1/dlatch_1/nand_1/w_n13_1# 3.2fF
C19 dff_3/dlatch_0/nand_0/w_n13_1# vdd 3.2fF
C20 vdd dff_4/dlatch_1/w_n108_n81# 2.3fF
C21 vdd dff_4/dlatch_0/nand_1/w_n13_1# 3.2fF
C22 dff_3/w_66_n34# vdd 2.0fF
C23 vdd w_677_n208# 2.8fF
C24 vdd dff_1/dlatch_1/nand_0/w_n13_1# 3.2fF
C25 vdd dff_0/dlatch_1/nand_2/w_n13_1# 3.2fF
C26 vdd mux_1/nand_1/w_n13_1# 3.2fF
C27 dff_2/dlatch_0/nand_0/w_n13_1# vdd 3.2fF
C28 vdd dff_0/dlatch_0/nand_3/w_n13_1# 3.2fF
C29 dff_3/dlatch_0/nand_1/w_n13_1# vdd 3.2fF
C30 vdd dff_1/dlatch_1/w_n108_n81# 2.3fF
C31 dff_4/dlatch_0/nand_3/w_n13_1# vdd 3.2fF
C32 vdd dff_1/dlatch_0/nand_1/w_n13_1# 3.2fF
C33 vdd dff_0/dlatch_0/w_n108_n81# 2.3fF
C34 dff_2/dlatch_1/w_n108_n81# vdd 2.3fF
C35 dff_0/node2 clk 2.4fF
C36 dff_2/dlatch_1/nand_3/w_n13_1# vdd 3.2fF
C37 vdd dff_0/dlatch_1/nand_1/w_n13_1# 3.2fF
C38 node9 dff_4/node1 2.1fF
C39 dff_2/dlatch_0/nand_1/w_n13_1# vdd 3.2fF
C40 vdd mux_0/nand_1/w_n13_1# 3.2fF
C41 dff_4/dlatch_1/nand_2/w_n13_1# vdd 3.2fF
C42 dff_3/dlatch_1/nand_0/w_n13_1# vdd 3.2fF
C43 vdd dff_0/dlatch_0/nand_2/w_n13_1# 3.2fF
C44 vdd mux_1/nand_0/w_n13_1# 3.2fF
C45 dff_3/dlatch_1/w_n108_n81# vdd 2.3fF
C46 dff_2/dlatch_0/nand_3/w_n13_1# vdd 3.2fF
C47 vdd dff_4/dlatch_0/w_n108_n81# 2.3fF
C48 vdd dff_1/dlatch_0/nand_0/w_n13_1# 3.2fF
C49 input_b dff_1/node1 2.1fF
C50 dff_2/dlatch_1/nand_2/w_n13_1# vdd 3.2fF
C51 vdd mux_0/nand_0/w_n13_1# 3.2fF
C52 vdd dff_1/dlatch_1/nand_3/w_n13_1# 3.2fF
C53 vdd dff_1/dlatch_0/w_n108_n81# 2.3fF
C54 vdd dff_4/dlatch_1/nand_0/w_n13_1# 3.2fF
C55 dff_1/node2 clk 2.4fF
C56 dff_4/dlatch_1/nand_1/w_n13_1# vdd 3.2fF
C57 dff_3/dlatch_1/nand_2/w_n13_1# vdd 3.2fF
C58 vdd dff_4/dlatch_0/nand_2/w_n13_1# 3.2fF
C59 ins_0 dff_2/node1 2.1fF
C60 dff_2/dlatch_0/w_n108_n81# vdd 2.3fF
C61 node1 node2 2.3fF
C62 vdd nand_0/w_n13_1# 3.2fF
C63 vdd dff_0/w_66_n34# 2.0fF
C64 vdd dff_1/dlatch_0/nand_2/w_n13_1# 3.2fF
C65 dff_3/dlatch_0/nand_3/w_n13_1# vdd 3.2fF
C66 dff_4/dlatch_1/nand_3/w_n13_1# vdd 3.2fF
C67 dff_3/dlatch_1/nand_3/w_n13_1# vdd 3.2fF
C68 vdd dff_0/dlatch_0/nand_0/w_n13_1# 3.2fF
C69 dff_2/dlatch_0/nand_2/w_n13_1# vdd 3.2fF
C70 dff_3/dlatch_0/w_n108_n81# vdd 2.3fF
C71 dff_3/node2 clk 2.4fF
C72 dff_2/dlatch_1/nand_1/w_n13_1# vdd 3.2fF
C73 dff_3/dlatch_1/nand_1/w_n13_1# vdd 3.2fF
C74 vdd dff_1/dlatch_0/nand_3/w_n13_1# 3.2fF
C75 vdd dff_4/w_66_n34# 2.0fF
C76 gnd clk 11.7fF
C77 w_677_n208# gnd 42.6fF
C78 w_1175_n15# gnd 19.2fF
C79 dff_0/w_66_n34# gnd 24.0fF
C80 dff_0/dlatch_0/w_n108_n81# gnd 30.0fF
C81 dff_0/node1 gnd 45.1fF
C82 input_a gnd 26.3fF
C83 dff_0/dlatch_0/nand_0/w_n13_1# gnd 30.7fF
C84 dff_0/dlatch_0/Qnot gnd 22.8fF
C85 dff_0/dlatch_0/node1 gnd 9.1fF
C86 dff_0/dlatch_0/nand_1/w_n13_1# gnd 30.7fF
C87 dff_0/dlatch_0/node3 gnd 7.9fF
C88 dff_0/dlatch_0/nand_2/w_n13_1# gnd 30.7fF
C89 dff_0/dlatch_0/node2 gnd 9.3fF
C90 dff_0/dlatch_0/nand_3/w_n13_1# gnd 30.7fF
C91 dff_0/dlatch_1/w_n108_n81# gnd 30.0fF
C92 clk gnd 656.7fF
C93 dff_0/node2 gnd 54.9fF
C94 dff_0/dlatch_1/nand_0/w_n13_1# gnd 30.7fF
C95 dff_0/Qnot gnd 24.5fF
C96 dff_0/dlatch_1/node1 gnd 9.1fF
C97 dff_0/dlatch_1/nand_1/w_n13_1# gnd 30.7fF
C98 dff_0/dlatch_1/node3 gnd 7.9fF
C99 dff_0/dlatch_1/nand_2/w_n13_1# gnd 30.7fF
C100 dff_0/dlatch_1/node2 gnd 9.3fF
C101 dff_0/dlatch_1/nand_3/w_n13_1# gnd 30.7fF
C102 gnd gnd 869.3fF
C103 node3 gnd 35.8fF
C104 node2 gnd 62.7fF
C105 node1 gnd 62.8fF
C106 nand_0/w_n13_1# gnd 30.7fF
C107 mux_0/w_n44_n6# gnd 19.2fF
C108 node5 gnd 98.1fF
C109 mux_0/nand_0/w_n13_1# gnd 30.7fF
C110 node4 gnd 40.0fF
C111 mux_0/node3 gnd 9.3fF
C112 mux_0/nand_1/w_n13_1# gnd 30.7fF
C113 node6 gnd 37.3fF
C114 mux_0/node2 gnd 12.8fF
C115 mux_0/node1 gnd 10.7fF
C116 mux_0/nand_2/w_n13_1# gnd 30.7fF
C117 dff_1/w_66_n34# gnd 24.0fF
C118 dff_1/dlatch_0/w_n108_n81# gnd 30.0fF
C119 dff_1/node1 gnd 45.1fF
C120 input_b gnd 25.6fF
C121 dff_1/dlatch_0/nand_0/w_n13_1# gnd 30.7fF
C122 dff_1/dlatch_0/Qnot gnd 22.8fF
C123 dff_1/dlatch_0/node1 gnd 9.1fF
C124 dff_1/dlatch_0/nand_1/w_n13_1# gnd 30.7fF
C125 dff_1/dlatch_0/node3 gnd 7.9fF
C126 dff_1/dlatch_0/nand_2/w_n13_1# gnd 30.7fF
C127 dff_1/dlatch_0/node2 gnd 9.3fF
C128 dff_1/dlatch_0/nand_3/w_n13_1# gnd 30.7fF
C129 dff_1/dlatch_1/w_n108_n81# gnd 30.0fF
C130 dff_1/node2 gnd 54.9fF
C131 dff_1/dlatch_1/nand_0/w_n13_1# gnd 30.7fF
C132 dff_1/Qnot gnd 24.5fF
C133 dff_1/dlatch_1/node1 gnd 9.1fF
C134 dff_1/dlatch_1/nand_1/w_n13_1# gnd 30.7fF
C135 dff_1/dlatch_1/node3 gnd 7.9fF
C136 dff_1/dlatch_1/nand_2/w_n13_1# gnd 30.7fF
C137 dff_1/dlatch_1/node2 gnd 9.3fF
C138 dff_1/dlatch_1/nand_3/w_n13_1# gnd 30.7fF
C139 mux_1/w_n44_n6# gnd 19.2fF
C140 node8 gnd 136.1fF
C141 node7 gnd 19.0fF
C142 mux_1/nand_0/w_n13_1# gnd 30.7fF
C143 mux_1/node3 gnd 9.3fF
C144 mux_1/nand_1/w_n13_1# gnd 30.7fF
C145 mux_1/node2 gnd 12.8fF
C146 mux_1/node1 gnd 10.7fF
C147 mux_1/nand_2/w_n13_1# gnd 30.7fF
C148 dff_4/w_66_n34# gnd 24.0fF
C149 dff_4/dlatch_0/w_n108_n81# gnd 30.0fF
C150 dff_4/node1 gnd 45.1fF
C151 node9 gnd 30.9fF
C152 dff_4/dlatch_0/nand_0/w_n13_1# gnd 30.7fF
C153 dff_4/dlatch_0/Qnot gnd 22.8fF
C154 dff_4/dlatch_0/node1 gnd 9.1fF
C155 dff_4/dlatch_0/nand_1/w_n13_1# gnd 30.7fF
C156 dff_4/dlatch_0/node3 gnd 7.9fF
C157 dff_4/dlatch_0/nand_2/w_n13_1# gnd 30.7fF
C158 dff_4/dlatch_0/node2 gnd 9.3fF
C159 dff_4/dlatch_0/nand_3/w_n13_1# gnd 30.7fF
C160 dff_4/dlatch_1/w_n108_n81# gnd 30.0fF
C161 dff_4/node2 gnd 54.9fF
C162 dff_4/dlatch_1/nand_0/w_n13_1# gnd 30.7fF
C163 r_result gnd 33.6fF
C164 Qnot gnd 28.1fF
C165 dff_4/dlatch_1/node1 gnd 9.1fF
C166 vdd gnd 568.5fF
C167 dff_4/dlatch_1/nand_1/w_n13_1# gnd 30.7fF
C168 dff_4/dlatch_1/node3 gnd 7.9fF
C169 dff_4/dlatch_1/nand_2/w_n13_1# gnd 30.7fF
C170 dff_4/dlatch_1/node2 gnd 9.3fF
C171 dff_4/dlatch_1/nand_3/w_n13_1# gnd 30.7fF
C172 dff_2/w_66_n34# gnd 24.0fF
C173 dff_2/dlatch_0/w_n108_n81# gnd 30.0fF
C174 dff_2/node1 gnd 45.1fF
C175 ins_0 gnd 25.2fF
C176 dff_2/dlatch_0/nand_0/w_n13_1# gnd 30.7fF
C177 dff_2/dlatch_0/Qnot gnd 22.8fF
C178 dff_2/dlatch_0/node1 gnd 9.1fF
C179 dff_2/dlatch_0/nand_1/w_n13_1# gnd 30.7fF
C180 dff_2/dlatch_0/node3 gnd 7.9fF
C181 dff_2/dlatch_0/nand_2/w_n13_1# gnd 30.7fF
C182 dff_2/dlatch_0/node2 gnd 9.3fF
C183 dff_2/dlatch_0/nand_3/w_n13_1# gnd 30.7fF
C184 dff_2/dlatch_1/w_n108_n81# gnd 30.0fF
C185 dff_2/node2 gnd 54.9fF
C186 dff_2/dlatch_1/nand_0/w_n13_1# gnd 30.7fF
C187 dff_2/Qnot gnd 24.5fF
C188 dff_2/dlatch_1/node1 gnd 9.1fF
C189 dff_2/dlatch_1/nand_1/w_n13_1# gnd 30.7fF
C190 dff_2/dlatch_1/node3 gnd 7.9fF
C191 dff_2/dlatch_1/nand_2/w_n13_1# gnd 30.7fF
C192 dff_2/dlatch_1/node2 gnd 9.3fF
C193 dff_2/dlatch_1/nand_3/w_n13_1# gnd 30.7fF
C194 dff_3/w_66_n34# gnd 24.0fF
C195 dff_3/dlatch_0/w_n108_n81# gnd 30.0fF
C196 dff_3/node1 gnd 45.1fF
C197 ins_1 gnd 25.2fF
C198 dff_3/dlatch_0/nand_0/w_n13_1# gnd 30.7fF
C199 dff_3/dlatch_0/Qnot gnd 22.8fF
C200 dff_3/dlatch_0/node1 gnd 9.1fF
C201 dff_3/dlatch_0/nand_1/w_n13_1# gnd 30.7fF
C202 dff_3/dlatch_0/node3 gnd 7.9fF
C203 dff_3/dlatch_0/nand_2/w_n13_1# gnd 30.7fF
C204 dff_3/dlatch_0/node2 gnd 9.3fF
C205 dff_3/dlatch_0/nand_3/w_n13_1# gnd 30.7fF
C206 dff_3/dlatch_1/w_n108_n81# gnd 30.0fF
C207 dff_3/node2 gnd 54.9fF
C208 dff_3/dlatch_1/nand_0/w_n13_1# gnd 30.7fF
C209 dff_3/Qnot gnd 24.5fF
C210 dff_3/dlatch_1/node1 gnd 9.1fF
C211 dff_3/dlatch_1/nand_1/w_n13_1# gnd 30.7fF
C212 dff_3/dlatch_1/node3 gnd 7.9fF
C213 dff_3/dlatch_1/nand_2/w_n13_1# gnd 30.7fF
C214 dff_3/dlatch_1/node2 gnd 9.3fF
C215 dff_3/dlatch_1/nand_3/w_n13_1# gnd 30.7fF


.ends
************* Define the resoltion and simulation time ******************
.tran 50n 100u
*************************************************************************

************* Plot the results ******************************************
.control
run
plot	v(r_result) v(node9)+'4' v(in4)+'8'  v(in3)+'12'  v(in2)+'16'  v(in1)+'20'  v(in5)+'24' v(node1)+40 v(node3)+28  v(node4)+32 v(node5)+36 v(node6)+44 v(node8)+48 v(node2)+52 v(node7)+56
.endc
*************************************************************************

.end
