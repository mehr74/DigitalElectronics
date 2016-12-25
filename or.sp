* OR GATE
* SPICE netlist written by Mehrshad Lotfi

.include nor.sp
.include inv.sp

.SUBCKT    or    ina   inb   out   vdd   gnd
	X1     ina   inb   mid   vdd   gnd  nor
	X2     mid   out   vdd   gnd   inv
.ENDS

.END