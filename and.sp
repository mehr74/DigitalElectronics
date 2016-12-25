* AND GATE
* SPICE netlist written by Mehrshad Lotfi

.include nand.sp
.include inv.sp

.SUBCKT     and   ina   inb   out   vdd   gnd
	X1		ina   inb   mid   vdd   gnd   nand
	X2		mid   out   vdd   gnd   inv
.ENDS

.END