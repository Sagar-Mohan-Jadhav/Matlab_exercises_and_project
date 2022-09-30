% csv files can be read using csvread() making sure that it does not
% contain any strings

a = csvread('L65.csv');

%any data can be read using dlmread() function, it has second argument as
%delimeter which is a indication of end of one data.

b = dlmread('L65.txt', '*')
