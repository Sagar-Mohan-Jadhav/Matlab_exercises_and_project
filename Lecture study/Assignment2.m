%1.
Q = [4 5 6 0 0 1 2 3 -1 -2];
find(Q>0)

%2.
X = [4 5 6 1 2 3];
flip(X)

%3.
X = [4 5 6 1 7 3];
X(1:2:end)

%4.
A=rand(10);
A(6:end,6:end)

%5.
A = [8 9 7 4 5 2 6 5 4 1 3 9 8 7 5 2 3];
unique(A(logical([A<5].*[A>=2])))

%6.
A = [5 8 8 8 9 9 6 6 5 5 4 1 2 3 5 3 3];
m= [tabulate(-A)];
[m(:,1)*(-1), m(:,2:3)]

%7.
A = [5 8 0 8 9 9 6 0 5 5 0 1 2 0 5 3 3];
A(not(ismember(A, 0)))

%8.
A= 100*rand(1,10)
[sum(and(A<25,A>1)),sum(and(A>25,A<75)),sum(A>75)]

%9.
A='hello world'
sort(A)

%10.
A=[5 7 6 9 0 3 0 0 9; 4 0 0 7 0 8 3 0 0; 6 0 0 0 0 4 0 5 3]
[m,n]=min(sum(ismember(A',0)))
A(n,:)




