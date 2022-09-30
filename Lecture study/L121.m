% sorting of rows

height = [4; 3; 7; 8; 4; 6];
width = [5; 3; 8; 9; 3; 5];
length = [9; 7; 7; 4; 3; 2];

tab = table(height, width, length);
tab.Properties.RowNames = {'cube1' 'cube2' 'cube3' 'cube4' 'cube5' 'cube6'};

tab = sortrows(tab, ["height", "width"], ["Ascend", "Ascend"]);
disp(tab)

