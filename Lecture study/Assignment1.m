% %Q1
% A = [1 0 0 0;0 1 0 0;1 1 1 0];
% A(:,1)=0.25*A(:,1);
% A(:,2)=0.05*A(:,2);
% A(:,3)=0.10*A(:,3);
% A(:,4)=0.01*A(:,4);
% x= sum(A');
% [M, I]=max(x);
% %Person with most money
% I
% %Ammount of most money
% M

% %Q2
% %to convert from fah to cel
% Tf= 30; %Given temp in fah
% Tc= (Tf- 32)*(5/9)
% %to convert from cel to fah
% Tc= 30; %Given temp in cel
% Tf= (Tc*9/5)+32

% %Q3
% A=[1 2 3];
% B=[10 15 20];
% x= sum(A.*B)/sum(B)

% %Q4
% A=[1 3 4 2 6 7 5 6];
% B=[4 6 -2 3 4 0];
% x= intersect(A, B);
% isempty(x)

% %Q5
% A=[10 30 40 20 60 70 50 60];
% B=[4 6 0 3 4 0 2 5];
% sum(A.*B)