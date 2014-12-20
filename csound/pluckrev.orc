sr	=	96000
ksmps	=	1
nchnls	=	2
0dbfs	=	1

instr 1	

icps = cpsmidinn(p4)
a1 pluck 0.1, icps, icps, 0, 1
outs a1, a1

endin
