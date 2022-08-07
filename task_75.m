%ask the user for a number and give out a prime number next to the number
%provided by the user

user_number = input('Enter a number: ');
loop_on = logical(1);
while loop_on
    if isprime(user_number + 1) == true
        prime_number = user_number + 1;
        break
    end
    user_number = user_number + 1;
end

fprintf('The prime number next to the input number is %d\n', prime_number);

