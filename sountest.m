f = 500;
fs = 44100;
n = 0:17000-1;
x1 = sin(2 * f* n / fs);
x2 = sin(4*f*n/fs);
spacec = sin(6*f*n/fs);
spacew = sin(8*f*n/fs);

for i = 1:100
    sound(x1, fs);
    pause(.5)
    sound(x2,fs);
     pause(.5)
     sound(spacec,fs);
     pause(.5)
     sound(spacew,fs);
     pause(.5)
end