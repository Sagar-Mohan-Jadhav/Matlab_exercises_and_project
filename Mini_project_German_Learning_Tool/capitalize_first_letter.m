function capitalized_word = capitalize_first_letter(word)
capitalized_word = strcat(upper(word(1)), lower(word(2:end)));
end