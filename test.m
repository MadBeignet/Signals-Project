f = 500;
fs = 44100;
n = 0:100000-1;
x1 = sin(2 * f* n / fs);
x2 = sin(4*f*n/fs);

sound(x2, fs);