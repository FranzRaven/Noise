<CsoundSynthesizer>
<CsOptions>
-o  paul.flac --format=flac
</CsOptions>
<CsInstruments>
sr = 44100
ksmps = 100
0dbfs = 1
nchnls = 2

giwav ftgen 0, 0, 0, 1, "/home/franz/Ardour/piezo/export/Selection.flac", 0, 0, 1

instr 1
aout paulstretch 10, .10, giwav
outs aout, aout
endin

</CsInstruments>
<CsScore>
i1 0 60

</CsScore>
</CsoundSynthesizer>

