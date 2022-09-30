height = [4; 3; 7; 8; 4; 6];
width = [5; 3; 8; 9; 3; 5];
length = [9; 7; 7; 4; 3; 2];

tab = table(height, width, length);
% giving column names
tab = table(height, width, length, 'VariableNames', {'Height_cm','Width_cm','Length_cm'});

%giving rows names
tab = table(height, width, length, 'RowNames', {'object1','object2','object3','object4','object5','object6'});
disp(tab)
%one more way to give row names

tab.Properties.RowNames = {'cube1','cube2','cube3','cube4','cube5','cube6'};
disp(tab)
%adding units to the data

tab.Properties.VariableUnits = {'cm', 'cm', 'cm'};

%adding description to the variables

tab.Properties.VariableDescriptions = {'This is height of cube' 'This is width of cube' 'this is length of cube'};

summary(tab) % used to get more information about the table

% individual elements od the table can be accessed using following sintax

tab.height