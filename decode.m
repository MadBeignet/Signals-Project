function decodedMessage = decode(word)
lets = [
    "E",".";
    "T","-";
    "I","..";
    "A",".-";
    "N","-.";
    "M","--";
    "S","...";
    "U","..-";
    "R",".-.";
    "W",".--";
    "D","-..";
    "K","-.-";
    "G","--.";
    "O","---";
    "H", "....";
    "V", "...-";
    "F","..-.";
    "L",".-..";
    "P",".--.";
    "J",".---";
    "B","-...";
    "X","-..-";
    "C","-.-.";
    "Y","-.--";
    "Z","--..";
    "Q","--.-";
    "5",".....";
    "4","....-";
    "3","...--";
    "2","..---";
    "+",".-.-.";
    "1",".----";
    "6","-....";
    "=","-...-";
    "/","-..-.";
    "7","--...";
    "8","---..";
    "9","----.";
    "0","-----";
    "'","-----.";
    ];
    decodedMessage = "";
        letters = split(word);
        
        for l = 1:length(letters)
            if length(lets(lets(:,2) == letters(l))) ~= 0
                decodedMessage = decodedMessage + lets(find(lets(:,2) == letters(l)),1);
            else
                decodedMessage = decodedMessage + "-";
            end
        end
end

        