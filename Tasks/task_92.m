%{
find the highest N digit pandigital prime number, where N is user input
%}

n = input("Enter N: ");
highest_panprime = [];

for index = (10^(n - 1)):((10^n) - 1)
    num_rep = false;
    if isprime(index)
        str_num = num2str(index);
        for j = 1: n - 1
            for k = j + 1: n
                if str_num(j) == str_num(k)
                    num_rep = true;
                end
            end
        end
        if ~num_rep
            highest_panprime = [highest_panprime index];
        end
    end
end

fprintf('The highest %d digit pandigital prime number is %d.\n', n, max(highest_panprime));