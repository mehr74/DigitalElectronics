* NAND GATE
* SPICE netlist written by Mehrshad Lotfi


.SUBCKT nor ina inb out vdd gnd
	M1     out   inb   mid   gnd   NCH   L=.15u  W=.45u  AD=.3375p  PD=2.4u  AS=.3375p  PS=2.4u
	M2     mid   ina   gnd   gnd   NCH   L=.15u  W=.45u  AD=.3375p  PD=2.4u  AS=.3375p  PS=2.4u
	M3     out   ina   vdd   vdd   PCH   L=.15u  W=.45u  AD=66p     PD=2.4u  AS=.3375p  PS=2.4u
	M4     out   inb   vdd   vdd   PCH   L=.15u  W=.45u  AD=.3375p  PD=2.4u  AS=.3375p  PS=2.4u	
.ENDS

.END