% find the next prime number to the number defined by the user

n = input('Enter a positive number: ');
prime_num = n + 1;
while true
    if isprime(prime_num)
        break
    end
    prime_num = prime_num + 1;
end

fprintf('The next nearest prime number is %d\n', prime_num);
