previous = 0;
endTimer = 0;
recorder = audiorecorder(44100,16,1);
currWord="";
newD=true;

wordArray =[]

while endTimer<40
    
    recordblocking(recorder,.2);
    audioarray = getaudiodata(recorder);
     data_fft = fft(audioarray);
   
    [maxS, indexMax] = max(abs(data_fft(:,1)));
    indexMax;
    if (indexMax <67 & indexMax>63  & newD)
        %clc;
       % 'DOT'
        currWord=currWord + ".";
        newD=false;
    elseif(indexMax <36 & indexMax> 30 & newD)
        %clc;
       % 'DASH'
        currWord=currWord + "-";
        newD=false;
    elseif(indexMax<98&indexMax>94 &newD)
        %clc;
       % 'NEWCHAR'
        currWord=currWord + " ";
        newD=false;
    elseif(indexMax>120&indexMax<140 &newD)
        clc;
        %'NEWWORD'
        wordArray =[wordArray currWord]
        currWord = "";
        newD=false;
    else
        newD=true;
   
        
        
    end
    
    
    
    
end

decode(wordArray)

