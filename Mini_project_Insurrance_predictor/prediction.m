function result = prediction(new_person_salary, new_person_age, np_salary, np_age, p_salary, p_age, insurrance_purchase)
distance_matrix = [];
for index = 1: length(insurrance_purchase)
    if string(insurrance_purchase(index)) == "Not Purchased"
        distance = sqrt((new_person_salary - np_salary(index))^2 + (new_person_age - np_age(index))^2);
    else
        distance = sqrt((new_person_salary - p_salary(index))^2 + (new_person_age - p_age(index))^2);
    end
    distance_matrix = [distance_matrix; distance];
end
[~, distance_index] = sort(distance_matrix);
np_count = 0;
p_count = 0;
for index = 1:  10
    if string(insurrance_purchase(distance_index(index))) == "Not Purchased"
        np_count = np_count + 1;
    else
        p_count = p_count + 1;
    end
end
if np_count > p_count
    result = -1;
elseif p_count > np_count
    result = 1;
else
    result = 0;
end
end