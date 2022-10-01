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
function_return = insurrancecategorize(insurrance_age, insurrance_salary, insurrance_purchase);
np_age = function_return(:, 1);
p_age = function_return(:, 2);
np_salary = function_return(:, 3);
p_salary = function_return(:, 4);
plot(np_salary, np_age, "LineStyle","none", "Marker","*", "Color",[1, 0, 0])
legend("not insurred")
hold on
plot(p_salary, p_age, "LineStyle","none", "Marker","*", "Color",[0, 0, 1])
hold off
legend("Not insurred", "Insurred")
