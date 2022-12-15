
function morse = letters2morse(message)
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
    % receives uppercase characters
    morse = "";
    characters = char(upper(message));

    for k = 1:length(characters)
        if characters(k) ~= " "
            morse = morse + " " + lets(find(lets == characters(k)),2);
        else
            morse = morse + " ";
        end
    end
    morse = char(morse);
end
