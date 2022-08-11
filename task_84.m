%{
Q:1. Write a matlab script which will accept a 2D matrix from the user as input which contains
only 0 and 1's. The user needs also to specify the size of the matrix. The script should determine
the largest square submatrix size that contains all 1's. A square submatrix is one of equal rows
and columns, and your program should return the size of the largest submatrix that contains
only 1's. For example: if if the user input a matrix [1 0 1 0 0; 1 0 1 1 1; 1 1 1 1 1 ; 1 0 0 1 0 ] then
this looks like the following matrix:
1 0 1 0 0
1 0 1 1 1
1 1 1 1 1
1 0 0 1 0
For the input above, you can see the bolded 1's create the largest square submatrix of size 2x2,
so your program should return the 4. You can assume the input will not be empty. Further
assume that the maximum matrix size that the user can input is 10*10.
__________________________________________________________________________
Q:2. Consider two positions on the 8x8 chess board with no pieces namely (x,y) and (a,b). The
position (x,y) is our current position and the position (a,b) is the position we want to move to
(or the next position). The x,y,a,b takes on values between 1 and 8. Moreover, we assume that
the position we want to move to (i.e., next position) is somewhere above and to the right of the
current position. This leads to the following two condition, i.e., a > x and b > y. Write a script
that should determine how many ways are there of traveling from (x y) on the board to (a,b)
moving only up and to the right. For example: if the user enters (1 1) as a current position and
(2 2) as the next position then your program should output 2 because there are only two
possible ways to travel from space (1 1) on a chessboard to space (2 2).
So in conclusion, you script should ask the user for a current position and next position and
then output the possible ways of moving from current position to next position.
__________________________________________________________________________
Q:3. Consider a 2-D matrix that contains only the integers 1, 0, or 2. From the position in the
matrix containing a 1, return the number of spaces either left, right, down, or up you must
move to reach an enemy which is represented by a 2. You may wrap around one side of the
matrix to the other as well. For instance, if the user input the matrix [0 0 0 0; 1 0 0 0; 0 0 0 2; 0 0
0 2] then this looks like the following:
0 0 0 0
1 0 0 0
0 0 0 2
0 0 0 2
For this input your program should return 2 because the closest enemy is 2 spaces away from
the 1 by moving left to wrap to the other side and then moving down once. The array will
contain any number of 0's and 2's, but only a single 1. It may not contain any 2's at all as well,
where in that case your program should return a 0.
%}

%Q1
m = input('Enter the number of rows in the matrix: ');
n = input('Enter the number of columns in the matrix: ');
sq_mat = ones(m, n);
for i = 1:m
    fprintf('Enter the %d row elements\n', i);
    for j = 1:n
        sq_mat(i, j) = input('');
    end
end
disp(sq_mat)
if sum(sum(sq_mat)) > 0
    count = 1;
else
    count = 0;
end
zero_yes = 0;
for i = 1:m
    for j = 1:n
        if sq_mat(i, j) == 1
            for c = 1:max([m, n])
                if (i + c) > m || (j + c) > n
                    continue
                end
                for l = 0:c
                    for q = 0:c
                        if sq_mat(i + l, j + q) == 0
                            zero_yes = 1;
                        end
                    end
                end
                if zero_yes ~= 1 && (c + 1)  > count
                    count = c + 1;
                end
            end
        end
        zero_yes = 0;
    end
end
disp(count)
clear