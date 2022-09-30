%{
Write a MATLAB script that will change the words in string such that the words appear in reverse order. Assume that that the only characters in the input string are letters and spaces. For instance. If the user input = 'Will the ecological jail rule outside the tear'; than the output should be output = 'tear the outside rule jail ecological the Will'.

In this example we are going to do some processing on a data file and then will store the results in a specific folder. Do the following steps to complete this assignment.

Download the file data.csv (it is there in the code and data lecture of this section) and save it on your computer.

Read this file into the MATLAB environment.

Write statements that will only select the rows from the data where the second column has a value greater than or equal to 3. This will result in reduced rows.

Next check if the working directory has a folder named Results.

If yes go to that directory and store reduced data (reduced rows) in csv format in that folder under the name, reduced_data.csv
%}

% part 1
text = 'Will the ecological jail rule outside the tear';
text = categorical(split(text))';
text = flip(text)

%part 2
grtr_three = table2array(data(:,2)) >= 3;
x = table2array(data);
x1 = x(:,1);
x2 = x(:,2);
x3 = x(:,3);
x4 = x(:,4);
y = [x1(grtr_three) x2(grtr_three) x3(grtr_three) x4(grtr_three)];
writematrix(y,"Reduced_data.csv")
