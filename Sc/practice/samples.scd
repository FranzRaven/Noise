
s.scope;
s.meter;
s.status;
s.tree;

~loci="/home/franz/.hydrogen/data/drumkits/"
~d1="Synthie-1/"
(  
~b = [
	"909_xOver_1.wav",//over:    0
	"am_sine_01_2.wav",//amsine:  1
	"chh_02.wav",//chh:           2
	"drum_01.wav"	,//kick:        3
	"drum_08_01.wav",//kick2:     4
	"fx_18-2.wav",//fx:           5
	"juno6_ohh_soft.wav",//oh:    6
	"juno6_perc_012.wav",//perc:  7
	"juno6_xO_7.wav",//xo:        8
	"sim_k02-0.wav",//k2:         9 
	"sw_01.wav",//sw:             10
	"synth_01.wav",//synth:       11
	"tom_01.wav",//tom:           12
  "xp909_clap1.wav",	//clap    13
  "xp909_tom1.wav",	//tom1      14
])

~b.[1]
~b.at(3)

(
x=Buffer.read(s,~loci++~d1++~b.at(0))
)
~b
x.play



