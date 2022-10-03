%{
This is a mini project to predict whether a person with given input age and
salary will buy insurrance or not from a company.
For this we have a data of 400 people. (Insurrance_data.csv)
%}
Insurrancedata = importfile("Insurrance_data.csv");
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
new_person_age = input("Enter the age of the new customer you want to sell insurrance to\n");
new_person_salary = input("Enter the annual salary of the new customer you want to sell insurrance to\n");

%Plot
plot(np_salary, np_age, "LineStyle","none", "Marker","*", "Color",[0, 1, 0])
legend("not insurred")
hold on
plot(p_salary, p_age, "LineStyle","none", "Marker","*", "Color",[0, 0, 1])
plot(new_person_salary, new_person_age, "LineStyle", "none", "Marker", "square", "Color", [0.7 0 0], "LineWidth", 2)
hold off
legend("Not insurred", "Insurred", "New customer")
xlabel("Salary")
ylabel("Age")

%prediction calculation
result = prediction(new_person_salary, new_person_age, np_salary, np_age, p_salary, p_age, insurrance_purchase);
if result == -1
    fprintf("New customer is unlikely to purchase the insurrance\n")
elseif result == 1
    fprintf("New customer is likely to purchase the insurrance\n")
else
    fprintf("New customer might or might not purchase insurrance\n")
end
