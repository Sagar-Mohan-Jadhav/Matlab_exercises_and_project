% determine if two user input numbers have same digits or not

num1 = input('Enter a number: ', 's');
num2 = input('Enter another number: ', 's');

count1 = 0;
count2 = 0;
if length(num1) == length(num2)
    for i = 0: 9
        for j = 1: length(num1)
            if string(i) == num1(j)
                count1 = count1 + 1;
            end
            if string(i) == num2(j)
                count2 = count2 + 1;
            end
        end
        if count1 ~= count2
            fprintf('The entered numbers %s and %s, does not have same digits\n', num1, num2)
            return
        end
    end
else
    fprintf('The entered numbers %s and %s, does not have same digits\n', num1, num2)
    return
end

fprintf('The entered numbers %s and %s, have same digits\n', num1, num2)