MIDIClient.init;
MIDIClient.initialized;
MIDIClient.list;
MIDIClient.sources;
MIDIClient.sources[4].postln;
MIDIClient.destinations[5].postln;
MIDIClient.destinations;
MIDIIn.connectAll;

m = MIDIOut(4)
m.connect(7)
m.disconnectAll

k = MIDIOut(1)
k.connect(1)


(
Pdef(\synth1, Pbind(
	\type, \midi,
	\midicmd, \noteOn,
	\midiout, m,
	\chan, 0,
	\midinote, Pwrand([45,50,54,56, 58]*0.89, [0.3,0.4,0.2,0.2,0.12]*0.58, inf),
	\amp, Pexprand(5, 30, inf),
	\sustain, 0.2,
	\dur, 1/16,
	\stretch, 4*60/120

)).play.quant_(4*60/120);
)



Pdef(\synth1).stop;

m.noteOn(0, 33, 90)
m.noteOff(0,  0 )

k.noteOn(0, 33 , 60)
k.noteOff(0,54, 0 )
k.disconnect(7)

m.allNotesOff(0)
CmdPeriod.add({(0..127).do{arg n; m.noteOff(0, n)}})
