%1.
A = rand(10)
B = [A(1, length(A)) A(1, 1) A(length(A), length(A)) A(length(A), 1)]

%2.
X = 'qwertytrewq'
isequal(X, reverse(X))

%3.
A = rand(5)
Row_to_delete = 3
[A(1:(Row_to_delete-1),:)', A((Row_to_delete+1):end,:)']'

%4.
a=[1;2;3]; b=[4;5;6]; c=[7;8;9]; A=[a,b,c]; B=[a,b];

%5.
A = [8 9 10 11];
B = [5];
C = [9 8 5];
m = max([length(A), length(B), length(C)]);
[[zeros(1, m-length(A)), A]; [zeros(1, m-length(B)), B]; [zeros(1, m-length(C)), C]]

%6.
A=[1:1:7; 9:-2:-3; 2.^[2:1:8]]

%7.
A=[4 5 6 9; 7 8 9 9; 8 7 4 5];
[0 0 1]*A

%8.
eye(3)*A
