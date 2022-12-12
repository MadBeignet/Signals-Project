clc; clear all;
message = "Bennett doesn't listen";
message = letters(message)
length(message)


f = 500;
fs = 44100;
n = 0:17000-1;
x1 = sin(2 * f* n / fs);
x2 = sin(4*f*n/fs);



for k=1:length(message)
    message(k)
    switch(message(k))
        case "-"
            sound(x1, fs);
            pause(0.75);

        case "."
            sound(x2,fs);
            pause(0.75);
        otherwise
            
            fprintf("no")
            pause(0.75);
            if k < length(message) && message(k+1) == " "
                pause(2);
                k=k+1
            end
    end
    

end
    
