deviceReader = audioDeviceReader;
fileWriter = dsp.AudioFileWriter(SampleRate=deviceReader.SampleRate);
process = @(x) x.*5;
tic
while toc<5
    mySignal = deviceReader();
    myProcessedSignal = process(mySignal);
    fileWriter(myProcessedSignal)
end
disp("End Signal Input")
release(deviceReader)
release(fileWriter)