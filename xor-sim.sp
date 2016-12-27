* XOR GATE
* SPICE netlist written by Mehrshad Lotfi

.include or.sp


.SUBCKT    xor   ina   inb   out   vdd   gnd
	X1     ina   na    vdd   gnd   inv
	X2     inb   nb    vdd   gnd   inv
	X3     ina   nb    mda   vdd   gnd   and
	X4     inb   na    mdb   vdd   gnd   and
	X5     mda   mdb   out   vdd   gnd   or
.ENDS

X1		ina   inb   out   vdd   gnd   xor
C0		out	  gnd   2E-15F
Vvdd 	vdd   0     1.8v
Vgnd 	gnd   0     0v
VINA  	ina	  0     pulse(0 3.3 0 1ps 1ps 500ns 1000ns)
VINB    inb   0     pulse(0 3.3 0 1ps 1ps 1000ns 2000ns)


.trans 1ns 5400ns 0.1ms
.print tran ina inb out

.MODEL PCH PMOS LEVEL = 1
.MODEL NCH NMOS LEVEL = 1

.END