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
of that word. with added function 1 also applicable.
3. adding newer words to a separate section in excel file.
4. Keeps count of consequitive correct guesses of each word in German_vocab_new excel file.
5. now if user corrects certain word consequetively more than 10 times from
german_vocab_new excel file then that word is added alphabetically to the German_vocab 
excel sheet from German_vocab_new after running the function sort_list.
%}
old_new = input("Chose one of the following:\n1- Practice new words\n2- Practice old words.\n3- Sort words\n");
if old_new ~= 3
    mode = input("Choose function:\n1- Guess English meaning\n2- Guess German meaning\n");
end
while true
    if old_new == 2
        german_vocab = readcell("German_vocab.xlsx");
        german_word = string(german_vocab(:, 1));
        english_meaning = string(german_vocab(:, 2));
        incorrect_guess = [];
        if mode == 1
            for index = 1: 7
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
            for index = 1: 7
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
    elseif old_new == 1
        german_vocab = readcell("German_vocab_new.xlsx");
        correct_count = cell2mat(german_vocab(:, 3));
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
                    correct_count(random_integer) = correct_count(random_integer) + 1;
                    cell_range = strcat('C', string(random_integer), ':C', string(random_integer));
                    xlswrite('German_vocab_new.xlsx', correct_count(random_integer), cell_range{1});
                else
                    fprintf("Wrong! The correct meaning is: %s\n", english_meaning(random_integer))
                    incorrect_guess = [incorrect_guess random_integer];
                    correct_count(random_integer) = 0;
                    cell_range = strcat('C', string(random_integer), ':C', string(random_integer));
                    xlswrite('German_vocab_new.xlsx', correct_count(random_integer), cell_range{1});
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
                    correct_count(random_integer) = correct_count(random_integer) + 1;
                    cell_range = strcat('C', string(random_integer), ':C', string(random_integer));
                    xlswrite('German_vocab_new.xlsx', correct_count(random_integer), cell_range{1});
                else
                    fprintf("Wrong! The correct meaning is: %s\n", german_word(random_integer))
                    incorrect_guess = [incorrect_guess random_integer];
                    correct_count(random_integer) = 0;
                    cell_range = strcat('C', string(random_integer), ':C', string(random_integer));
                    xlswrite('German_vocab_new.xlsx', correct_count(random_integer), cell_range{1});
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
    elseif old_new == 3
        german_vocab = readcell("German_vocab_new.xlsx");
        correct_count = cell2mat(german_vocab(:, 3));
        german_word = string(german_vocab(:, 1));
        english_meaning = string(german_vocab(:, 2));
        for word_count = 1: length(correct_count)
            pro_german_word = german_word(word_count);
            pro_english_meaning = english_meaning(word_count);
            if correct_count(word_count) > 10
                sort_list(pro_german_word{1}, pro_english_meaning{1})
            end
        end
        break
    end
end
