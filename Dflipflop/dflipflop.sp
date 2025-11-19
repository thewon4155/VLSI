* SPICE3 file created from (UNNAMED).ext - technology: scmos
*********************** transistor tech file ****************************
.include mosfet.txt
*************************************************************************

************* Define the input signal info. *****************************
.PARAM bitrate1=0.4G
  +freq1='bitrate1/2'
  +per1='1/freq1'
  +td1=0
  +tr1='per1*0.2'
  +tf1='per1*0.2'
  +pw1='per1*0.4'
.PARAM bitrate2=0.1G
  +freq2='bitrate2/2'
  +per2='1/freq2'
  +td2=0
  +tr2='per2*0.025'
  +tf2='per2*0.025'
  +pw2='per2*0.4'

Vin1 in2 0 pulse(0 3.3 td1 tr1 tf1 pw1 per1)
Vin2 in1 0 pulse(0 3.3 td2 tr2 tf2 pw2 per2)
*************************************************************************

************* Define the Vdd and Vss voltage level******************
VDD	vdd	0	DC	3.3v
*************************************************************************
******************** D-Flip flop Circuits *******************************
X1	in1	in2  Q Qnot	vdd	0	D-Flipflop

*************************************************************************
************* Subcircuits ***********************************************
.subckt	D-Flipflop	D Clk	Q Qnot	vdd	gnd
M1000 Qnot dlatch_1/node2 vdd dlatch_1/nand_3/w_n13_1# PMOS w=4u l=1u
+ ad=12p pd=14u as=234p ps=269u
M1001 vdd Q Qnot dlatch_1/nand_3/w_n13_1# PMOS w=4u l=1u
+ ad=0p pd=0u as=0p ps=0u
M1002 dlatch_1/nand_3/a_n2_n27# dlatch_1/node2 gnd gnd NMOS w=2u l=1u
+ ad=6p pd=10u as=55p ps=99u
M1003 Qnot Q dlatch_1/nand_3/a_n2_n27# gnd NMOS w=2u l=1u
+ ad=5p pd=9u as=0p ps=0u
M1004 dlatch_1/node2 node2 vdd dlatch_1/nand_2/w_n13_1# PMOS w=4u l=1u
+ ad=12p pd=14u as=0p ps=0u
M1005 vdd dlatch_1/node3 dlatch_1/node2 dlatch_1/nand_2/w_n13_1# PMOS w=4u l=1u
+ ad=0p pd=0u as=0p ps=0u
M1006 dlatch_1/nand_2/a_n2_n27# node2 gnd gnd NMOS w=2u l=1u
+ ad=6p pd=10u as=0p ps=0u
M1007 dlatch_1/node2 dlatch_1/node3 dlatch_1/nand_2/a_n2_n27# gnd NMOS w=2u l=1u
+ ad=5p pd=9u as=0p ps=0u
M1008 Q dlatch_1/node1 vdd dlatch_1/nand_1/w_n13_1# PMOS w=4u l=1u
+ ad=12p pd=14u as=0p ps=0u
M1009 vdd Qnot Q dlatch_1/nand_1/w_n13_1# PMOS w=4u l=1u
+ ad=0p pd=0u as=0p ps=0u
M1010 dlatch_1/nand_1/a_n2_n27# dlatch_1/node1 gnd gnd NMOS w=2u l=1u
+ ad=6p pd=10u as=0p ps=0u
M1011 Q Qnot dlatch_1/nand_1/a_n2_n27# gnd NMOS w=2u l=1u
+ ad=5p pd=9u as=0p ps=0u
M1012 dlatch_1/node1 node1 vdd dlatch_1/nand_0/w_n13_1# PMOS w=4u l=1u
+ ad=12p pd=14u as=0p ps=0u
M1013 vdd node2 dlatch_1/node1 dlatch_1/nand_0/w_n13_1# PMOS w=4u l=1u
+ ad=0p pd=0u as=0p ps=0u
M1014 dlatch_1/nand_0/a_n2_n27# node1 gnd gnd NMOS w=2u l=1u
+ ad=6p pd=10u as=0p ps=0u
M1015 dlatch_1/node1 node2 dlatch_1/nand_0/a_n2_n27# gnd NMOS w=2u l=1u
+ ad=5p pd=9u as=0p ps=0u
M1016 dlatch_1/node3 node1 vdd dlatch_1/w_n108_n81# PMOS w=4u l=1u
+ ad=14p pd=15u as=0p ps=0u
M1017 dlatch_1/node3 node1 gnd gnd NMOS w=2u l=1u
+ ad=5p pd=9u as=0p ps=0u
M1018 dlatch_0/Qnot dlatch_0/node2 vdd dlatch_0/nand_3/w_n13_1# PMOS w=4u l=1u
+ ad=12p pd=14u as=0p ps=0u
M1019 vdd node1 dlatch_0/Qnot dlatch_0/nand_3/w_n13_1# PMOS w=4u l=1u
+ ad=0p pd=0u as=0p ps=0u
M1020 dlatch_0/nand_3/a_n2_n27# dlatch_0/node2 gnd gnd NMOS w=2u l=1u
+ ad=6p pd=10u as=0p ps=0u
M1021 dlatch_0/Qnot node1 dlatch_0/nand_3/a_n2_n27# gnd NMOS w=2u l=1u
+ ad=5p pd=9u as=0p ps=0u
M1022 dlatch_0/node2 Clk vdd dlatch_0/nand_2/w_n13_1# PMOS w=4u l=1u
+ ad=12p pd=14u as=0p ps=0u
M1023 vdd dlatch_0/node3 dlatch_0/node2 dlatch_0/nand_2/w_n13_1# PMOS w=4u l=1u
+ ad=0p pd=0u as=0p ps=0u
M1024 dlatch_0/nand_2/a_n2_n27# Clk gnd gnd NMOS w=2u l=1u
+ ad=6p pd=10u as=0p ps=0u
M1025 dlatch_0/node2 dlatch_0/node3 dlatch_0/nand_2/a_n2_n27# gnd NMOS w=2u l=1u
+ ad=5p pd=9u as=0p ps=0u
M1026 node1 dlatch_0/node1 vdd dlatch_0/nand_1/w_n13_1# PMOS w=4u l=1u
+ ad=12p pd=14u as=0p ps=0u
M1027 vdd dlatch_0/Qnot node1 dlatch_0/nand_1/w_n13_1# PMOS w=4u l=1u
+ ad=0p pd=0u as=0p ps=0u
M1028 dlatch_0/nand_1/a_n2_n27# dlatch_0/node1 gnd gnd NMOS w=2u l=1u
+ ad=6p pd=10u as=0p ps=0u
M1029 node1 dlatch_0/Qnot dlatch_0/nand_1/a_n2_n27# gnd NMOS w=2u l=1u
+ ad=5p pd=9u as=0p ps=0u
M1030 dlatch_0/node1 D vdd dlatch_0/nand_0/w_n13_1# PMOS w=4u l=1u
+ ad=12p pd=14u as=0p ps=0u
M1031 vdd Clk dlatch_0/node1 dlatch_0/nand_0/w_n13_1# PMOS w=4u l=1u
+ ad=0p pd=0u as=0p ps=0u
M1032 dlatch_0/nand_0/a_n2_n27# D gnd gnd NMOS w=2u l=1u
+ ad=6p pd=10u as=0p ps=0u
M1033 dlatch_0/node1 Clk dlatch_0/nand_0/a_n2_n27# gnd NMOS w=2u l=1u
+ ad=5p pd=9u as=0p ps=0u
M1034 dlatch_0/node3 D vdd dlatch_0/w_n108_n81# PMOS w=4u l=1u
+ ad=14p pd=15u as=0p ps=0u
M1035 dlatch_0/node3 D gnd gnd NMOS w=2u l=1u
+ ad=5p pd=9u as=0p ps=0u
M1036 node2 Clk vdd w_n169_n47# PMOS w=4u l=1u
+ ad=14p pd=15u as=0p ps=0u
M1037 node2 Clk gnd gnd NMOS w=2u l=1u
+ ad=5p pd=9u as=0p ps=0u
C0 vdd dlatch_1/nand_0/w_n13_1# 3.2fF
C1 dlatch_1/w_n108_n81# vdd 2.6fF
C2 vdd node2 2.3fF
C3 dlatch_0/nand_0/w_n13_1# vdd 3.2fF
C4 vdd dlatch_1/nand_2/w_n13_1# 3.2fF
C5 vdd dlatch_1/nand_3/w_n13_1# 3.2fF
C6 dlatch_0/w_n108_n81# vdd 2.3fF
C7 dlatch_0/nand_1/w_n13_1# vdd 3.2fF
C8 vdd dlatch_1/nand_1/w_n13_1# 3.2fF
C9 vdd dlatch_0/nand_3/w_n13_1# 3.2fF
C10 node1 node2 2.4fF
C11 dlatch_0/nand_2/w_n13_1# vdd 3.2fF
C12 Clk D 2.1fF
C13 w_n169_n47# gnd 22.0fF
C14 dlatch_0/w_n108_n81# gnd 30.0fF
C15 Clk gnd 48.6fF
C16 D gnd 22.1fF
C17 dlatch_0/nand_0/w_n13_1# gnd 30.7fF
C18 dlatch_0/Qnot gnd 22.8fF
C19 dlatch_0/node1 gnd 9.1fF
C20 vdd gnd 93.4fF
C21 dlatch_0/nand_1/w_n13_1# gnd 30.7fF
C22 dlatch_0/node3 gnd 7.9fF
C23 dlatch_0/nand_2/w_n13_1# gnd 30.7fF
C24 dlatch_0/node2 gnd 9.3fF
C25 dlatch_0/nand_3/w_n13_1# gnd 30.7fF
C26 dlatch_1/w_n108_n81# gnd 30.0fF
C27 node2 gnd 54.8fF
C28 node1 gnd 53.8fF
C29 dlatch_1/nand_0/w_n13_1# gnd 30.7fF
C30 Q gnd 28.8fF
C31 Qnot gnd 23.5fF
C32 dlatch_1/node1 gnd 9.1fF
C33 dlatch_1/nand_1/w_n13_1# gnd 30.7fF
C34 dlatch_1/node3 gnd 7.9fF
C35 dlatch_1/nand_2/w_n13_1# gnd 30.7fF
C36 gnd gnd 125.0fF
C37 dlatch_1/node2 gnd 9.3fF
C38 dlatch_1/nand_3/w_n13_1# gnd 30.7fF
.ends

************* Define the resoltion and simulation time ******************
.tran 10p 70n
*************************************************************************

************* Plot the results ******************************************
.control
run
plot	v(in1) v(in2)
plot v(Q) v(Qnot)
.endc
*************************************************************************

.end

