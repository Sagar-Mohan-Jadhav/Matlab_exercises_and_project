function incorrect_guess = repeat_incorrect(german_word, english_meaning, incorrect_list)
list = [];
for index = 1: length(incorrect_list)
    fprintf("What is the English meaning of: %s\n", german_word(incorrect_list(index)))
    meaning = input("", 's');
    meaning = capitalize_first_letter(meaning);
    correct_english_meaning = english_meaning(incorrect_list(index));
    correct_english_meaning = capitalize_first_letter(correct_english_meaning{1});
    if string(correct_english_meaning) == string(meaning)
        disp("Correct!")
    else
        fprintf("Wrong! The correct meaning is: %s\n", correct_english_meaning)
        list = [list incorrect_list(index)];
    end
end
incorrect_guess = list;
end