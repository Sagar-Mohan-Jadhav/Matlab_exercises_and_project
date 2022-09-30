%first create a function in separate matlab script and name that script
%same as the name of the function.

m = input('Enter a number: ');
n = input('Enter second number: ');

[x, y] = stats(m, n);

fprintf('The sum of given numbers is %d and the difference is %d\n', x, y)