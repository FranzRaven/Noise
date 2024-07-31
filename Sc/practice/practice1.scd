s.boot;

m = Scale.major;
m.class

(
x = {
	var num;
	num = 8;
	num = num.squared -1;
}
)

x.value

(
~notes = {
	|root = 0,
	cant = 3 |
	var scale = Scale.major.degrees;
	var chord;
	scale = scale + root;
	chord = scale.keep(cant);
};
)

~notes.(3,4)

Scale.directory

m = Scale.major.degrees;
m = Scale.major.semitones;
k = Knob.new.front
// Collect
(
v = Scale.major.degrees;
v.collect({
	|item|
	item.postln;
	item + rrand(1,44)
});
)
// Do
(
y = Scale.major.degrees;
z = y.do({
	|nn|
	nn.postln;
	nn + rrand(1,44)
});
)

v;
y;
z;
