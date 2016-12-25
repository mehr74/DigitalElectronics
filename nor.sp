* NOR GATE
* SPICE netlist written by Mehrshad Lotfi


.SUBCKT    nor   ina   inb   out   vdd   gnd
	M1	   vdd   inb   mid   vdd   PCH   L=.15u  W=.45u  AD=.3375p  PD=2.4u  AS=.3375p  PS=2.4u		
	M2     mid   ina   out   vdd   PCH   L=.15u  W=.45u  AD=.3375p  PD=2.4u  AS=.3375p  PS=2.4u
	M3     out   ina   gnd   gnd   NCH   L=.15u  W=.45u  AD=.3375p  PD=2.4u  AS=.3375p  PS=2.4u
	M4     out   inb   gnd   gnd   NCH   L=.15u  W=.45u  AD=.3375p  PD=2.4u  AS=.3375p  PS=2.4u
.ENDS

.END