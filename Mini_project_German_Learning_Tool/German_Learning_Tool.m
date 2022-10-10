%{
The purpose of this project is to make an app which helps improve German vocabulary
Process-
It takes an Excel document (German_vocab.xml) as an input which has German words 
and their meanings. It gives 5 random words to the user and asks for their meaning in English
and checks if the meaning is correct, if not it gives correct meaning as
output.
added function-
1. now it repeats the words at the end of the each cycle which user
incorrectly guessed, till the user corrects it.
2. now it can ask english word and asks user to type in the german meaning
of that word.
%}

while true
    mode = input("Choose function:\n1- Guess English meaning\n2- Guess German meaning\n");
    german_vocab = importfile("German_vocab.xlsx");
    german_vocab = table2cell(german_vocab);
    german_word = string(german_vocab(:, 1));
    english_meaning = string(german_vocab(:, 2));
    incorrect_guess = [];
    if mode == 1
        for index = 1: 5
            random_integer = randi(length(german_word));
            fprintf('What is the English meaning of word: %s\n', german_word(random_integer))
            meaning = input("", 's');
            meaning = capitalize_first_letter(meaning);
            actual_meaning = english_meaning(random_integer);
            if string(meaning) == string(capitalize_first_letter(actual_meaning{1}))
                disp("Correct!")
            else
                fprintf("Wrong! The correct meaning is: %s\n", english_meaning(random_integer))
                incorrect_guess = [incorrect_guess random_integer];
            end
        end
        while ~isempty(incorrect_guess)
            incorrect_guess = repeat_incorrect(german_word, english_meaning, incorrect_guess);
        end
        run = input("Want to run again? y or n\n", 's');
        if run == 'n'
            break
        end
    else
        for index = 1: 5
            random_integer = randi(length(english_meaning));
            fprintf('What is the German meaning of word: %s\n', english_meaning(random_integer))
            meaning = input("", 's');
            meaning = capitalize_first_letter(meaning);
            actual_meaning = german_word(random_integer);
            if string(meaning) == string(capitalize_first_letter(actual_meaning{1}))
                disp("Correct!")
            else
                fprintf("Wrong! The correct meaning is: %s\n", german_word(random_integer))
                incorrect_guess = [incorrect_guess random_integer];
            end
        end
        while ~isempty(incorrect_guess)
            incorrect_guess = repeat_incorrect(english_meaning, german_word, incorrect_guess);
        end
        run = input("Want to run again? y or n\n", 's');
        if run == 'n'
            break
        end
    end
end

