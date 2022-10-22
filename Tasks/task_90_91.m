%{
do the following iteration until number 1 is reached:
1. if n is even do n/2
2. if n is odd do 3n + 1

find the longest possible chain of such iterations for numbers less than
100.
%}
all_count = [];
for i = 2:100
    n = i;
    count = 0;
    while n ~= 1
        if rem(n, 2) == 0
            n = n/2;
        else
            n = 3*n + 1;
        end
        count = count + 1;
    end
    all_count = [all_count count];
end

[max_ele, index] = max(all_count);
fprintf('The longest possible chain is of length %d and is for number %d\n', max_ele, index + 1);