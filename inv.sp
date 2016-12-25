* INV GATE
* SPICE netlist written by Mehrshad Lotfi


.SUBCKT    inv   in    out   vdd   gnd
	M1	   out   in    vdd   vdd   PCH   L=.15u  W=.45u  AD=.3375p  PD=2.4u  AS=.3375p  PS=2.4u		
	M2     out   in    gnd   gnd   NCH   L=.15u  W=.45u  AD=.3375p  PD=2.4u  AS=.3375p  PS=2.4u
.ENDS


.END