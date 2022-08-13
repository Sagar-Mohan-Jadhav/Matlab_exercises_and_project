%{
find the highest N digit pandigital prime number, where N is user input
%}

n = input("Enter a positive number: ");
highest_panprime = [];

for i = (10^(n - 1)):((10^n) - 1)
    num_rep = false;
    if isprime(i)
        x = num2str(i);
        for j = 1: n - 1
            for k = j + 1: n
                if x(j) == x(k)
                    num_rep = true;
                end
            end
        end
        if ~num_rep
            highest_panprime = [highest_panprime i];
        end
    end
end

fprintf('The highest %d digit pandigital prime number is %d\n', n, max(highest_panprime));