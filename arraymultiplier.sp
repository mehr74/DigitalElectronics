* ARRAY-MULTIPLIER
* SPICE netlist written by Mehrshad Lotfi

.include fa.sp

XAND00   ina0  inb0  m00  vdd  gnd  and
XAND01   ina0  inb1  m01  vdd  gnd  and  
XAND02   ina0  inb2  m02  vdd  gnd  and  
XAND03   ina0  inb3  m03  vdd  gnd  and  
XAND04   ina0  inb4  m04  vdd  gnd  and  

XAND10   ina1  inb0  m10  vdd  gnd  and  
XAND11   ina1  inb1  m11  vdd  gnd  and  
XAND12   ina1  inb2  m12  vdd  gnd  and  
XAND13   ina1  inb3  m13  vdd  gnd  and  
XAND14   ina1  inb4  m14  vdd  gnd  and  

XAND20   ina2  inb0  m20   vdd   gnd   and  
XAND21   ina2  inb1  m21   vdd   gnd   and  
XAND22   ina2  inb2  m22   vdd   gnd   and  
XAND23   ina2  inb3  m23   vdd   gnd   and  
XAND24   ina2  inb4  m24   vdd   gnd   and

XAND30   ina3  inb0  m30   vdd   gnd   and  
XAND31   ina3  inb1  m31   vdd   gnd   and  
XAND32   ina3  inb2  m32   vdd   gnd   and  
XAND33   ina3  inb3  m33   vdd   gnd   and  
XAND34   ina3  inb4  m34   vdd   gnd   and

XAND40   ina4  inb0  m40   vdd   gnd   and
XAND41   ina4  inb1  m41   vdd   gnd   and
XAND42   ina4  inb2  m42   vdd   gnd   and
XAND43   ina4  inb3  m43   vdd   gnd   and
XAND44   ina4  inb4  m44   vdd   gnd   and


XFA01    gnd   m40   m31   s01   c01   vdd   gnd   fa
XFA02    gnd   m30   m21   s02   c02   vdd   gnd   fa
XFA03    gnd   m20   m11   s03   c03   vdd   gnd   fa
XFA04    gnd   m10   m01   s04   c04   vdd   gnd   fa

XFA05    c01   m41   m32   s05   c05   vdd   gnd   fa
XFA06    c02   s01   m22   s06   c06   vdd   gnd   fa
XFA07    c03   s02   m12   s07   c07   vdd   gnd   fa
XFA08    c04   s03   m02   s08   c08   vdd   gnd   fa

XFA09    c05   m42   m33   s09   c09   vdd   gnd   fa
XFA10    c06   s05   m23   s10   c10   vdd   gnd   fa
XFA11    c07   s06   m13   s11   c11   vdd   gnd   fa
XFA12    c08   s07   m03   s12   c12   vdd   gnd   fa

XFA13    c09   m43   m34   s13   c13   vdd   gnd   fa
XFA14    c10   s09   m24   s14   c14   vdd   gnd   fa
XFA15    c11   s10   m14   s15   c15   vdd   gnd   fa
XFA16    c12   s11   m04   s16   c16   vdd   gnd   fa

XFA17    c13   m44   c18   s17   c17   vdd   gnd   fa
XFA18    c14   s13   c19   s18   c18   vdd   gnd   fa
XFA19    c15   s14   c20   s19   c19   vdd   gnd   fa
XFA20    c16   s15   gnd   s20   c20   vdd   gnd   fa

VP0     p0    m00   0v
VP1     p1    s04   0v
VP2     p2    s08   0v
VP3     p3    s12   0v
VP4     p4    s16   0v
VP5     p5    s20   0v
VP6     p6    s19   0v
VP7     p7    s18   0v
VP8     p8    s17   0v
VP9     p9    c17   0v

VINA0   ina0   0   3.3v
VINA1   ina1   0   3.3v
VINA2   ina2   0   3.3v
VINA3   ina3   0   3.3v
VINA4   ina4   0   3.3v

VINB0  	inb0   0   3.3v
VINB1   inb1   0   3.3v
VINB2   inb2   0   3.3v
VINB3   inb3   0   3.3v
VINB4   inb4   0   3.3v

Vvdd 	vdd   0     3.3v
Vgnd 	gnd   0     0v

.trans 1ns 54ns
.print V(ina0)  V(ina1)  V(ina2)  V(ina3)  V(ina4)  ٰV(inb0)  V(inb1)  V(inb2)  V(inb3)  V(inb4)  V(p0)    V(p1)    V(p2)    V(p3)    V(p4)  V(p5)    V(p6)    V(p7)    V(p8)    V(p9)


.MODEL PCH PMOS LEVEL = 1
.MODEL NCH NMOS LEVEL = 1

.END
