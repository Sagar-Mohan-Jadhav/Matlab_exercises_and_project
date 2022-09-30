% %one simple example of switch cases
% 
% fruit = input('Enter a fruit that you like ','s');
% 
% switch fruit
%     case 'banana'
%         disp('you like banana');
%     case 'pineapple'
%         disp('you like pineapple');
%     case 'jackfruit'
%         disp('you like jackfruit');
%     otherwise
%         disp('you dont like any of the listed fruits');
% end

%swich cases can have multiple acceptable inputs
number = input('Enter a number ');

switch number
    case {1, 4}
        disp('number is either 1 or 4');
    case {0.5, 2}
        disp('number is either 0.5 or 2');
    case {7, 0, -2}
        disp('number is 7 or 0 or -2');
end
