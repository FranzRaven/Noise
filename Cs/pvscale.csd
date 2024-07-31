<CsoundSynthesizer>
<CsOptions>
-o pitch.flac --format=flac
</CsOptions>
<CsInstruments>

sr = 44100
ksmps = 16
nchnls = 1
0dbfs = 1

;; example written by joachim heintz 2009

instr 1
ifftsize	=		1024
ioverlap	=		ifftsize / 4
iwinsize	=		ifftsize
iwinshape	=		1; von-Hann window
Sfile		=		"paul-mono.flac"
ain		soundin	Sfile
fftin		pvsanal	ain, ifftsize, ioverlap, iwinsize, iwinshape; fft-analysis of the audio-signal
fftblur	pvscale	fftin, p4, p5, p6; scale
aout		pvsynth	fftblur; resynthesis
		out		aout
endin

</CsInstruments>
<CsScore>
i 1 0 60 0.5   0 2; 
i . + 60 1.5 0 2; 
i . + 60 0.06 1 2; 
i . + 60 1.5 2 5;

</CsScore>
</CsoundSynthesizer>

