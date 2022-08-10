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
4 3 2 1
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
patern = '';
stars = [];
for i = 1:5
    patern = patern + string('*');
    stars = [stars; patern];
end
for i = 1:4
    stars(5+i) = stars(5-i);
end
for i = 1:9
    fprintf('%s\n', stars(i));
end

%Q2
n = input('Enter a odd number: ');
pat_mat = ones(n, n);
max_ele = (n + 1)/2;
for i = 1:n
    for j = 1:n
        if i <= max_ele && j <= max_ele
            min_ele = min([i, j]);
            pat_mat(i, j) = max_ele - min_ele + 1;
        elseif i <= max_ele && j > max_ele
            min_ele = min([i, n - j + 1]);
            pat_mat(i, j) = max_ele - min_ele + 1; 
        elseif i > max_ele && j <= max_ele
            min_ele = min([n - i + 1, j]);
            pat_mat(i, j) = max_ele - min_ele + 1;
        else
            min_ele = min([n - i + 1, n - j + 1]);
            pat_mat(i, j) =  max_ele - min_ele + 1;
        end
    end
end
disp(pat_mat)
% Q3
n = input('Enter an even number: ');
for i = 2:n
    if isprime(n - i)
        p_num = n - i;
        break
    end
end
fprintf('Two such pairs for number %d are %d and %d.\n', n, p_num, n - p_num)
%Q4
n = input('Enter a positive number: ');
p_mat = ones(n);
c = 1;
for i = 1:n
    for j = 1:n
        p_mat(i, j) = i*i + j*c - 1*c;
    end
    c = -1*c;
end
disp(p_mat)

%Q5
n_array = [];
while true
    n = input('Enter a number: ');
    n_array = [n_array n];
    Loop_continue = input('Want to enter another number? y or n: ', 's');
    if Loop_continue == 'n'
        break
    end
end
for i = 2:length(n_array)
    if n_array(i) <= n_array(i - 1)
        disp('not monotonically increasing');
        break
    end
    if i == length(n_array)
        disp('monotonically increasing')
    end
end

%Q6
nmb = input('Enter a positive number: ');
mat_nmb = ones(nmb);
sign_nmb = 0;
for i = 1:nmb
    for j = 1:nmb
        mat_nmb(i , j) = sign_nmb;
        if mat_nmb(i, j) == 0
            sign_nmb = 1;
        else
            sign_nmb = 0;
        end
    end
end
disp(mat_nmb)