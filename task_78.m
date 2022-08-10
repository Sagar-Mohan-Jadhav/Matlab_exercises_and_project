%{
Q:1. Write a program that will print the stars in format given below.
*
***
*****
*******
*********
*********
*******
*****
***
*
__________________________________________________________________________
Q:2. Given n (always odd), return output a that has concentric rings of the numbers 1 through
(n+1)/2 around the center point. For instance, if n = 5, we will have the following matrix.
[ 3 3 3 3 3
 3 2 2 2 3
 3 2 1 2 3
 3 2 2 2 3
 3 3 3 3 3]
__________________________________________________________________________
Q:3. The Goldbach conjecture asserts that every even integer greater than 2 can be expressed
as the sum of two primes. Write a script that will accept an even integer and then it will return
primes p1 and p2 that satisfy the condition n = p1 + p2. Note that the primes are not always
unique. The program should just return one such combination of the primes.
__________________________________________________________________________
Q:4. Given a positive integer n taken from the user, your program should create an n-by-n
matrix in which the integers from 1 to n2 wind back and forth along the rows as shown in the
examples below.
N = 4
[1 2 3 4
8 7 6 5
9 10 11 12
16 15 14 13]
__________________________________________________________________________
Q:5. Write a MATLAB script that will accept an array of numeric values from the user and then
return a statement ‘monotonically increasing’ if the elements of the input array increases
monotonically (i.e. each element is larger than the previous). Otherwise return a statement
stating that it is ‘not monotonically increasing’.
__________________________________________________________________________
Q:6. Write a MATLAB script that will accept an integer value N from the user and then it will
create a matrix A of alternating ones and zeros of the same size. For instance if the user enter 5
than it will create
A = [0 1 0 1 0
 1 0 1 0 1
 0 1 0 1 0
 1 0 1 0 1
 0 1 0 1 0]
%}

%Q.1
c = 1;
for i = 1:5
    patern(i) = patern(i-1) + string('*');
    disp(patern);
end
for i = 1:4
    patern = patern - string('*');
    disp(patern);
end
