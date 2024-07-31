s.boot;

MIDIClient.init;
MIDIClient.destinations;
MIDIIn.connectAll;
MIDIFunc.trace(false);  // muestra todas las interacciones MIDI

(
MIDIdef.noteOn(\on, {
  arg val, num, chan, src;
  [val,num,chan,src].postln;
});
)
(
MIDIdef.noteOff(\off,{
  arg val, num, chan, src;
  [val,num,chan,src].postln;
})
)
MIDIdef(\off).disable;
MIDIdef(\on).enable;

