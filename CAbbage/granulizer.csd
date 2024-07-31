<Cabbage>
form caption("Granulizer") size(400, 300), guiMode("queue"), colour(23, 23, 23), pluginId("def1")
rslider bounds(310, 1, 100, 100), channel("gain"), range(0, 1, 0, 1, .01), text("Gain"), trackerColour("lime"), outlineColour(0, 0, 0, 50), textColour("gray")
soundfiler bounds(0, 0, 200, 100)
filebutton bounds(0, 100, 60,20),channel("filebutton1"), colour(90, 134, 134, 134)
</Cabbage>
<CsoundSynthesizer>
<CsOptions>
-n -d
</CsOptions>
<CsInstruments>
; Initialize the global variables. 
ksmps = 32
nchnls = 2
0dbfs = 1

instr 1
    gSfilepath  chnget  "filebutton1"
    kFileChanged changed gSfilepath 

    if kFileChanged == 1 then                ; if user has requested a new file...
        event   "i", "LoadSoundFile", 0, 0   ; call instrument to update sample storage function table 
    endif  
endin

instr   LoadSoundFile   ; load sound file   
    if filevalid(gSfilepath) == 1 then
        Smessage sprintfk "file(\"%s\")", gSfilepath            ; print sound file to viewer
        chnset Smessage, "soundfiler1"  
    endif
endin

instr 2
kGain cabbageGetValue "gain"

a1 inch 1
a2 inch 2

outs a1*kGain, a2*kGain
endin

</CsInstruments>
<CsScore>
;causes Csound to run for about 7000 years...
f0 z
;starts instrument 1 and runs it for a week
i1 0 [60*60*24*7] 
</CsScore>
</CsoundSynthesizer>
