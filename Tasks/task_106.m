%{
Q:1. Write a MATLAB function named string_multiplication() that accepts two arguments, i.e., a
string str and an integer N. The function should return one big string that will contain N
instances of the string str with no spaces.
Q:2. Suppose we are given a matrix A with dimensions of m* n. Given another vector say B of
size 1-by-2 which will indicate how much we want to enlarge each element of the matrix A. The
first value in the matrix B (called p), indicates how many rows we want to enlarge each element
of A and the second value in the matrix B (called q) indicate how many columns we want to
enlarge we want to enlarge each element of A. The resultant matrix called Enlarge_matrix will
be of size (m*p)-by-(n*q) in which each element of A has been replicated in p rows and q
columns. Here is an example of this
Suppose
A = [1 2 3;
4 5 6
7 8 9]
And
B = [3 2];
Then the result will look something like this
Enlarge_matrix = [ 1 1 2 2 3 3
 1 1 2 2 3 3
1 1 2 2 3 3
4 4 5 5 6 6
4 4 5 5 6 6
4 4 5 5 6 6
7 7 8 8 9 9
7 7 8 8 9 9
7 7 8 8 9 9]
%}

%Q1 
str = input('Enter a word: ', 's');
N = input('Enter a positive number: ');

a = string_multiplication(str, N);

disp(a)

%Q2
clear
p = input('Enter number of rows: ');
q = input('Enter number of columns: ');
a = ones(p, q);
for i = 1: p
    fprintf('Enter the %d row elements: \n', i)
    for j = 1: q
        a(i, j) = input('');
    end
end

p = input('Enter row-wise enlargement of each element: ');
q = input('Enter column_wise enlargement of each element: ');
b = [p, q];

new_matrix = enlarge_matrix(a, b);

disp(a)
disp(new_matrix)
