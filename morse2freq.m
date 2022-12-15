clc; clear all;
message = "";
message = letters(message)
length(message)

pauseTime = .8;
f = 500;
fs = 44100;
n = 0:17000-1;
x1 = sin(2 * f* n / fs);
x2 = sin(4*f*n/fs);
spacec = sin(6*f*n/fs);
spacew = sin(8*f*n/fs);



for k=1:length(message)
    message(k)
    switch(message(k))
        case "-"
            sound(x1, fs);
            pause(pauseTime);

        case "."
            sound(x2,fs);
            pause(pauseTime);
        otherwise
            if (k < length(message) && message(k+1) == " ")
                sound(spacew, fs);
                pause(pauseTime);
                k=k+1
                fprintf("  ");
            else
                fprintf(" ");
                sound(spacec,fs);
                pause(pauseTime);
            end
    end
    

end
    
