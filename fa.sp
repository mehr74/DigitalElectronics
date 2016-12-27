* FULLADDER GATE
* SPICE netlist written by Mehrshad Lotfi

.include ha.sp


.SUBCKT    fa    ina   inb   inc   sum   co    vdd   gnd
	X1     ina   inb   m1    m2    vdd   gnd   ha
	X2     inc   m1    sum   m3    vdd   gnd   ha
	X3     m2    m3    co    vdd   gnd    or
.ENDS

.END