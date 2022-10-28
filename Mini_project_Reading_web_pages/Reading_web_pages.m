%{
we first ask user the term they want to search then we use combinations of
words types by user to get the best search results possible.
to determine the best search result we will look for words searched by user
on the web page and the web page with most appearances of searched words
will open.
%}
search_term = string(input("Enter the search term that you want to search on web: ", 's'));
search_words = strsplit(search_term);
combinations = perms(1: length(search_words));


for index = 1: length(search_words(1, :))
    search_term(index) = join(search_words(combinations(index, :)));
    search_term(index) = replace(search_term(index), " ", "+");
end

for index = 1: length(search_term)
    search_term(index) = strcat("https://www.google.com/search?q=", search_term(index));
    search_result(index) = string(extractHTMLText(webread(search_term(index)))); 
end
search_result(1)