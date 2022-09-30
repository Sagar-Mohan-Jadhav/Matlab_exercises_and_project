function [total, difference] = stats(a, b) %total and difference are outputs and a and b are inputs to the function.
total = 0;
difference = 0;  % initialized only because return statement is there
if a == b
    disp('The numbers are equal.')
    return           % this return statement stops the function script and returns back to the main script. whenever return statement is there you need to initialize all the variables
end
total = a + b;
difference = a - b;
end