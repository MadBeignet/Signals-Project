while true
    recordblocking(recorder,.2);
    audioarray = getaudiodata(recorder);
     data_fft = fft(audioarray);
    [maxS, indexMax] = max(abs(data_fft(:,1)));
    indexMax
end