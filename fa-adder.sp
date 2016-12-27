* FULLADDER GATE
* SPICE netlist written by Mehrshad Lotfi

.include ha.sp


.SUBCKT    fa    ina   inb   inc   sum   co    vdd   gnd
	X1     ina   inb   m1    m2    vdd   gnd   ha
	X2     inc   m1    sum   m3    vdd   gnd   ha
	X3     m2    m3    co    vdd   gnd    or
.ENDS

X1		ina   inb   inc   sum   co   vdd   gnd   fa
C0		sum   gnd   2E-15F
C1      co    gnd   2E-15F
Vvdd 	vdd   0     3.3v
Vgnd 	gnd   0     0v
VINA  	ina   0     pulse(0 3.3 0 1ps 1ps 500ns 1000ns)
VINB    inb   0     pulse(0 3.3 0 1ps 1ps 1000ns 2000ns)
VINC    inc   0     pulse(0 3.3 0 1ps 1ps 2000ns 4000ns)


.trans 1ns 5400ns 0.1ms
.print tran ina inb out

.MODEL PCH PMOS LEVEL = 1
.MODEL NCH NMOS LEVEL = 1


.END