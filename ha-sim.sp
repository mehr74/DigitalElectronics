* HALFADDER GATE
* SPICE netlist written by Mehrshad Lotfi

.include xor.sp


.SUBCKT    ha    ina   inb   sum   co    vdd   gnd
	X1     ina   inb   sum   vdd   gnd   xor
	X2     ina   inb   co    vdd   gnd   and
.ENDS

X1		ina   inb   sum   co   vdd   gnd   ha
C0		sum   gnd   2E-15F
C1      co    gnd   2E-15F
Vvdd 	vdd   0     3.3v
Vgnd 	gnd   0     0v
VINA  	ina   0     pulse(0 3.3 0 1ps 1ps 500ns 1000ns)
VINB    inb   0     pulse(0 3.3 0 1ps 1ps 1000ns 2000ns)


.trans 1ns 5400ns 0.1ms
.print tran ina inb out

.MODEL PCH PMOS LEVEL = 1
.MODEL NCH NMOS LEVEL = 1

.END