data = readtable('E:\Notes\Matlab\Lecture Study\Machine Learning for Data Science using MATLAB\Data Preprocessing\Data_1.csv');

%removing missing data
data1 = rmmissing(data);
data2 = rmmissing(data, 2);

%replacing missing data with mean of the data
avg_data = mean(data.Age, 'omitnan');
data3 = fillmissing(data.Age, "constant", avg_data);
avg_data = mean(data.AnnualSalary, 'omitnan');
data4 = fillmissing(data.AnnualSalary, "constant", avg_data);

tab = table(data.Location, data3, data4, data.Opinion);
tab.Properties.VariableNames = {'Location', 'Age', 'AnnualSalary', 'Opinion'};
data
tab
