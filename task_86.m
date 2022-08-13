% Find Nth prime number, where N is user defined

n = input('Enter a positive number: ');
prime_num = 2;
prime_count = 0;
while true
    if isprime(prime_num)
        prime_count = prime_count + 1;        
    end
    if prime_count == n
        break
    end
    prime_num = prime_num + 1;
end

fprintf("The %dth prime number is %d\n", n, prime_num);