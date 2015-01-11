sr	=	96000
ksmps	=	1
nchnls	=	2
0dbfs	=	1

instr 1	
icps = cpsmidinn(p4)
;random amplitude
iamp = random(0.2, 0.25)
;a pluck using a saw
a1 pluck iamp, icps, icps, ftgenonce(0, 0, 4096, 7, 1, 4096, -1), 1 
a1 *= linsegr(1, 1, 0)
;scoop out the low end
a1 = buthp(a1, 300)
outs a1, a1
endin

instr 2
exitnow 
endin
