%{
In this example we are going to do some processing on a text file and then represent the
results in graphical using plotting functions. Do the following steps to complete this project.
1. Download the file file named as Example_text.txt (it is attached as a resource to this
lecture) and save it on your computer.
2. Replace the special characters '.', ',', ':', '/','"', '"' that are present in the text file using a
space character. You will need to convert it into the string first for this purpose using the
string() function.
3. Next, break the string into individual words.
4. Find the frequencies of the words in the text file.
5. Find a sorted list of words in descending order based on their respective frequencies.
6. Create a bar plot of the top 10 most frequently occurring words. On the x-axis we expect
the names of the words and on the y-axis we should have the percentage frequencies of
the words. (Note: please note that the tabulate() may return a cell array. Cell data type
is covered in the later portion of the course. But for now you need to know that when
applying the bar() function, the first argument which is in this case is cell needs to be
converted to categorical which you can do by calling a function categorical() and the
second argument needs to be in numeric format so for that you can convert the cell to
numeric of matrix by calling the function cell2mat()). The final output should be
something like this

%}

text = fileread('E:\Notes\Matlab\Lecture Study\Example_text.txt');

%part 2
text = string(text);
a = char(39); %to remove ' from the text
characters_to_replace  = {'.',',',':','/',a, '"'};
text = replace(text, characters_to_replace, ' ');

%part3
text = split(text);

%part4
text_content = tabulate(text);

%part5
[frequency, index] = sort(cell2mat(text_content(:,3)),"descend");

%part6
top_words = categorical(text_content(index(1:10,1)));
top_frequencies = frequency(1:10,1);
bar(top_words, top_frequencies);