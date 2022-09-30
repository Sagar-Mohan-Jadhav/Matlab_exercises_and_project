function final_list = categorical_to_numeric(list, old_values, new_values)
for i  = 1: length(old_values)
    for j = 1: length(list)
        if list(j) == old_values(i)
            list(j) = new_values(i);
        end
    end
end
final_list = str2double(list);
end

