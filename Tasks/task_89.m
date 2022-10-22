% calculate next 4 prime numbers from the number given by the user

n = input('Enter a positive number:');
prime_num = n + 1;
count = 0;
while true
    if isprime(prime_num)
        count = count + 1;
        fprintf('The next %dth prime number is %d\n', count, prime_num);
    end
    if count == 4
        break
    end
    prime_num = prime_num + 1;
end