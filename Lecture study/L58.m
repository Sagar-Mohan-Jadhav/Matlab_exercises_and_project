% dir

% dir *.m

% dir *7.m

% dir *4*.m

% dir *\*.m

% dir **\*.m

% y = dir;
% y(3)

% y = dir;
% y(3).name
% y(3).folder

y = dir('slprj');
x = dir('slprj\sim\varcache\Lecture2');
y(3)
x(5)