function sort_list(new_word, new_meaning)
seq = [' ', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'Ä', 'Ö', 'Ü'];
old_data = readcell('German_vocab.xlsx');
old_data1 = string(old_data(:, 1));
old_data2 = string(old_data(:, 2));
old_data3 = string(old_data(:, 3));
old_data4 = cell2mat(old_data(:, 4));
new_word = upper(new_word);
count = 1;
while new_word(1) ~= old_data3(count) && count <= length(old_data1)
    count = count + 1;
end
flag = 0;
for index = count: length(old_data1)
    count1 = 1;
    count2 = 1;
    count3 = 1;
    b1_word = old_data1(index);
    b1_word = upper(b1_word{1});
    if length(b1_word) >= length(new_word)
        max_count = length(new_word);
    else
        max_count = length(b1_word);
    end
    run = true;
    loop_count = 1;
    while run == true && loop_count <= max_count
        if new_word(count1 + loop_count - 1) ~= b1_word(count1 + loop_count -1)
            while seq(count2) ~= new_word(count1 + loop_count - 1)
                count2 = count2 + 1;
            end
            while seq(count3) ~= b1_word(count1 + loop_count - 1)
                count3 = count3 + 1;
            end
            run = false;
        end
        loop_count = loop_count + 1;
    end
    if count2 >= count3
        if index == length(old_data1)
            index = index + 1;
        end
        flag = 1;
        continue
    else
        break
    end
end
old_word = old_data1(index - 1);
if new_word ~= upper(old_word)
    cell_range = strcat('A', string(index + 1), ':C', string(length(old_data1) + 1));
    writematrix([old_data1(index: length(old_data1)) old_data2(index: length(old_data1)) old_data3(index: length(old_data1))] , 'German_vocab.xlsx', 'Range', cell_range);
    cell_range = strcat('A', string(index), ':A', string(index));
    writematrix(capitalize_first_letter(new_word), 'German_vocab.xlsx', 'Range', cell_range);
    cell_range = strcat('B', string(index), ':B', string(index));
    writematrix(capitalize_first_letter(new_meaning), 'German_vocab.xlsx', 'Range', cell_range);
    cell_range = strcat('D', string(index + 1), ':D', string(length(old_data1) + 1));
    writematrix(old_data4(index: length(old_data1)), 'German_vocab.xlsx', 'Range', cell_range);
    cell_range = strcat('D', string(index), ':D', string(index));
    writematrix(0, 'German_vocab.xlsx', 'Range', cell_range);
    if flag == 1
        cell_range = strcat('C', string(index), ':C', string(index));
        writematrix('', 'German_vocab.xlsx', 'Range', cell_range);
    else
        cell_range = strcat('C', string(index), ':C', string(index));
        writematrix(upper(new_word(1)), 'German_vocab.xlsx', 'Range', cell_range);
        cell_range = strcat('C', string(index + 1), ':C', string(index + 1));
        writematrix('', 'German_vocab.xlsx', 'Range', cell_range);
    end
end
end