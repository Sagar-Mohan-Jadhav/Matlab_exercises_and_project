%{
The purpose of this project is to make an app which helps improve German vocabulary
Process-
It takes an Excel document (German_vocab.xml) as an input which has German words 
and their meanings. It gives 5 random words to the user and asks for their meaning in English
and checks if the meaning is correct, if not it gives correct meaning as
output.
%}
while true
    german_vocab = importfile("German_vocab.xlsx");
    german_vocab = table2cell(german_vocab);
    german_word = string(german_vocab(:, 1));
    english_meaning = string(german_vocab(:, 2));
    for index = 1: 5
        random_integer = randi(length(german_word));
        fprintf('What is the English meaning of word: %s\n', german_word(random_integer))
        meaning = input("", 's');
        random_german_word = german_word(random_integer);
        random_german_word = capitalize_first_letter(random_german_word{1});
        meaning = capitalize_first_letter(meaning);
        actual_meaning = english_meaning(random_integer);
        if string(meaning) == string(capitalize_first_letter(actual_meaning{1}))
            disp("Correct")
        else
            fprintf("The correct meaning is: %s\n", english_meaning(random_integer))
        end
    end
    run = input("Want to run again? y or n\n", 's');
    if run == 'n'
        break
    end
end

