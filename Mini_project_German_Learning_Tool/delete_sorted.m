function delete_sorted(index_count, correct_count, german_word, english_meaning)
cell_range = strcat('A', string(index_count), ':B', string(length(correct_count) - 1));
writematrix([german_word(index_count + 1: length(correct_count)) english_meaning(index_count + 1: length(correct_count))] , 'German_vocab_new.xlsx', 'Range', cell_range);
cell_range = strcat('C', string(index_count), ':C', string(length(correct_count) - 1));
writematrix(correct_count(index_count + 1: length(correct_count)), 'German_vocab_new.xlsx', 'Range', cell_range);
cell_range = strcat('A', string(length(correct_count)), ':A', string(length(correct_count)));
writematrix('', 'German_vocab_new.xlsx', 'Range', cell_range)
cell_range = strcat('B', string(length(correct_count)), ':B', string(length(correct_count)));
writematrix('', 'German_vocab_new.xlsx', 'Range', cell_range)
cell_range = strcat('C', string(length(correct_count)), ':C', string(length(correct_count)));
writematrix('', 'German_vocab_new.xlsx', 'Range', cell_range)
end