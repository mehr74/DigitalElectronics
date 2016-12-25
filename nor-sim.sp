* NOR GATE
* SPICE netlist written by Mehrshad Lotfi


.SUBCKT    nor   ina   inb   out   vdd   gnd
	M1	   vdd   inb   mid   vdd   PCH   L=.15u  W=.45u  AD=.3375p  PD=2.4u  AS=.3375p  PS=2.4u		
	M2     mid   ina   out   vdd   PCH   L=.15u  W=.45u  AD=.3375p  PD=2.4u  AS=.3375p  PS=2.4u
	M3     out   ina   gnd   gnd   NCH   L=.15u  W=.45u  AD=.3375p  PD=2.4u  AS=.3375p  PS=2.4u
	M4     out   inb   gnd   gnd   NCH   L=.15u  W=.45u  AD=.3375p  PD=2.4u  AS=.3375p  PS=2.4u
.ENDS

X1		ina   inb   out   vdd   gnd   nor
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