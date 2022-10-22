%{
take a word as the input from the user and determine whether the value of
the word is a triangle number or not.
1. word value: the summation of alphabetical positions of all the letters
in the word.
2. triangle number: n th triangle number is given by Tn = (1/2)(n*(n+1)) 
%}

n = input('Enter a word: ','s');
alph = ['a' 'b' 'c' 'd' 'e' 'f' 'g' 'h' 'i' 'j' 'k' 'l' 'm' 'n' 'o' 'p' 'q' 'r' 's' 't' 'u' 'v' 'w' 'x' 'y' 'z'];
word_sum = 0;
tr_num = 0;
is_tr = false;
num_count = 1;

for index = 1:length(n)
    [~, l_index] = find(alph == n(index));
    word_sum = word_sum + l_index;
end
while tr_num <= word_sum
    tr_num = (0.5)*(num_count)*(num_count + 1);
    if tr_num == word_sum
        is_tr = true;
    end
    num_count = num_count + 1;
end
if is_tr
    fprintf('The word value of the entered word %s is traingle number\n', n);
else
    fprintf('The word value of the entered word %s is not a triangle number\n', n);
end