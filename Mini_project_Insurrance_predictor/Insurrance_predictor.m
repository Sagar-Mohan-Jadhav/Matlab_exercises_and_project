%{
This is a mini project to predict whether a person with given input age and
salary will buy insurrance or not from a company.
For this we have a data of 400 people. (Insurrance_data.csv)
%}

insurrancedata = table2cell(Insurrancedata);
insurrance_age = insurrancedata(:, 1);
insurrance_age = cell2mat(insurrance_age);
insurrance_salary = insurrancedata(:, 2);
insurrance_salary = cell2mat(insurrance_salary);
insurrance_purchase = insurrancedata(:, 3);
string(insurrance_purchase(1)) == "Not Purchased"
