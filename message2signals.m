clc; clear all;
message = input("What message would you like to send?:\n","s");
message = letters(message)
length(message);

pauseTime = .8;
f = 500;
fs = 44100;
% length of the array translates to the time of the signal
n = 0:17000-1;

dot = sin(2 * f* n / fs);
dash = sin(4*f*n/fs);
spacec = sin(6*f*n/fs);
spacew = sin(8*f*n/fs);

% refresh the word
sound(spacew,fs);
pause(pauseTime);
sound(spacew,fs);
pause(pauseTime);

for k=1:length(message)
    message(k);
    % if dot, dash, space, or two spaces, play the respective frequency
    switch(message(k))
        case "-"
            sound(dot, fs);
            pause(pauseTime);

        case "."
            sound(dash,fs);
            pause(pauseTime);
        otherwise
            if (k < length(message) && message(k+1) == " ")
                sound(spacew, fs);
                pause(pauseTime);
                k=k+1; % skips the second space
                fprintf("  ");
            else
                fprintf(" ");
                sound(spacec,fs);
                pause(pauseTime);
            end
    end
end
% end the signals
sound(spacew,fs);
pause(pauseTime);
    
