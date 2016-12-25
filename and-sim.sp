* AND GATE
* SPICE netlist written by Mehrshad Lotfi

.include nand.sp
.include inv.sp

.SUBCKT     and   ina   inb   out   vdd   gnd
	X1		ina   inb   mid   vdd   gnd   nand
	X2		mid   out   vdd   gnd   inv
.ENDS

X1		ina   inb   out   vdd   gnd   and
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