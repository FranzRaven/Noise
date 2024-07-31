s.boot;
s.scope;
s.meter;
s.quit;
s.plotTreeView.plot;
s.plotTree;
s.queryAllNodes;


s.prepareForRecord; // if you want to start recording at a precise moment in time, you have to call this first.
s.record;
s.pauseRecording; // pausable
s.record // start again
s.stopRecording; // this closes the file and deallocates the buffer recording node, etc.

CmdPeriod.run;
s.freeAll;

(
x = {
  PinkNoise.ar(0.4, 0);
};
)

(
x = {
  arg freq;
  Saw.ar(freq: ,mul: 0.4,add: 0)
}
)

(
  x = {
  var sig;
  sig = Varsaw.ar(freq: [300, 301], width: 0.4);
  sig = sig * \amp.kr(-20.dbamp);
}
)
x.play;
x.set(\freq: 120)
x.release;
s.freeAll;
s.Synth(1026).free
