% find the sum of even numbers in fibonacci sequence whos value does not
% exceed 10000

fib = [1 2];
total = 2;

for i = 3: 10000
    num = fib(i - 1) + fib(i - 2);
    if num > 10000
        break
    end
    fib = [fib num];
    if rem(num, 2) == 0
        total = total + num;
    end
end

fprintf('The sum of even numbers in fibonacci sequence whos value does not exceed 10000 is %d\n', total)


