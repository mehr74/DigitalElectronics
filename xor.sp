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

.END