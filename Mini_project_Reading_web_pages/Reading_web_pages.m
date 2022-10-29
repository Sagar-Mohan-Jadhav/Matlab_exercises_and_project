%{
we first ask user the term they want to search then we use combinations of
words types by user to get the best search results possible.
to determine the best search result we will look for words searched by user
on the web page and the web page with most appearances of searched words
will open.
%}
clear all
search_term = string(input("Enter the search term that you want to search on web: ", 's'));
search_words = strsplit(search_term);
combinations = perms(1: length(search_words));

for index = 1: length(search_words)
    search_term(index) = join(search_words(combinations(index, :)));
    search_term(index) = replace(search_term(index), " ", "+");
end
for index = 1: length(search_term)
    search_term(index) = strcat("https://search.brave.com/search?q=", search_term(index));
    search_result(index) = string(extractHTMLText(webread(search_term(index))));
    pause(1);
end

for index = 1: length(search_result)
    appearances = 0;
    for count = 1: length(search_words)
        search_result_words = strsplit(search_result(index));
        appearances = sum(ismember(search_result_words, search_words(count))) + appearances;
        count_list(index) = appearances;
    end
end

