<CsoundSynthesizer>
<CsOptions>
</CsOptions>
; ==============================================
<CsInstruments>

sr	=	48000
ksmps	=	1
nchnls	=	2
0dbfs	=	1

instr 1	

 aRaise expseg 2, 20, 100
 aModulator poscil 0.5, aRaise
 iDCOffset = 0.3
 aCarrier poscil iDCOffset-aModulator, 440
 out aCarrier, aCarrier

endin


</CsInstruments>
; ==============================================
<CsScore>

i 1 0 3
i . + 3
</CsScore>
</CsoundSynthesizer>

