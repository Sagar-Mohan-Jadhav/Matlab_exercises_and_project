% find the smallest summation number with 20 or more than 20 divisors.
% summation number: summation number is sum of natural numbers less than or
% equal to that number. ex, n6 = 1 + 2 + 3 + 4 + 5 + 6 = 21 and has 1, 21,
% 3, 7 total 4 divisors.

count = 2;
divisors = [];
while length(divisors) < 21
    sum = 0;
    for i = 1: count
        sum = sum + i;
    end
    divisors = [sum];
    for i = sum/2: -1: 1
        if rem(sum, i) == 0
            divisors = [divisors i];
        end
    end
    count = count + 1;
end

fprintf('The smallest summation number with more than 20 divisors is %d and divisors are as follows.\n', sum)
disp(divisors)