function function_return = insurrancecategorize(age_data, salary_data, purchase_data)
purchase_matrix = ones(length(purchase_data), 1);
for index = 1: length(purchase_data)
    if string(purchase_data(index)) == "Not Purchased"
        purchase_matrix(index) = purchase_matrix(index)*0;
    end
end
function_return = [~purchase_matrix.*age_data, purchase_matrix.*age_data, ~purchase_matrix.*salary_data, purchase_matrix.*salary_data];
end