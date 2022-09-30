
% reading a text file and converting it into a string
text = fileread('D:\String Theory.txt');
text = string(text);

%spliting the text into lines of strings
text = splitlines(text);

%removing the empty lines
empty_lines = text == '';
text = text(~empty_lines);

%removing white spaces before and after the lines
text = strip(text);

%joining a string back together to form a big string
text = join(text);

%removing unwanted characters from text and replacing it with $
remove_character = {'.', ','};
text = replace(text, remove_character, '$');

%calculating the frequency of the words
text = split(text);
x = tabulate(text)

