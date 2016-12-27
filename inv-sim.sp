* INV GATE
* SPICE netlist written by Mehrshad Lotfi


.SUBCKT    inv   in    out   vdd   gnd
	M1	   out   in    vdd   vdd   PCH   L=.15u  W=.45u  AD=.3375p  PD=2.4u  AS=.3375p  PS=2.4u		
	M2     out   in    gnd   gnd   NCH   L=.15u  W=.45u  AD=.3375p  PD=2.4u  AS=.3375p  PS=2.4u
.ENDS

X1		in    out   vdd   gnd   inv
C0		out	  gnd   2E-15F
Vvdd 	vdd   0     3.3v
Vgnd 	gnd   0     0v
VINA  	in    0     pulse(0 3.3 0 1ps 1ps 500ns 1000ns)



.trans 1ns 5400ns 0.1ms
.print tran in out

.MODEL PCH PMOS LEVEL = 1
.MODEL NCH NMOS LEVEL = 1

.END