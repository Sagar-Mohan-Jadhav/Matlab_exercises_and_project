function x = enlarge_matrix(A, B)
x = [];
[m, n] = size(A);
for i = 1: m
    for j = 1: B(1)
        x = [x; A(i,:)];
    end
end
A = x;
x = [];
for i = 1: n
    for j = 1: B(2)
        x = [x A(:,i)];
end
end