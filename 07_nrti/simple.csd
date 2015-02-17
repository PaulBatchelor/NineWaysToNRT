<CsoundSynthesizer>
<CsOptions>
-d -odac:system:playback_ -+rtaudio="jack" 
-B 512
-b 2048
-Lstdin
</CsOptions>
<CsInstruments>

sr	=	96000
ksmps	=	1
nchnls	=	2
0dbfs	=	1

instr 1	

a1 = foscili(0.1, cpsmidinn(p4), 
    1, 1, 1,
    ftgenonce(0, 0, 4096, 10, 1)) * linseg(1, p3, 0) 
outs a1, a1
endin

</CsInstruments>
<CsScore>


</CsScore>
</CsoundSynthesizer>

