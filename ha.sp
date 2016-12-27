* HALFADDER GATE
* SPICE netlist written by Mehrshad Lotfi

.include xor.sp


.SUBCKT    ha    ina   inb   sum   co    vdd   gnd
	X1     ina   inb   sum   vdd   gnd   xor
	X2     ina   inb   co    gnd   inv
.ENDS

.END