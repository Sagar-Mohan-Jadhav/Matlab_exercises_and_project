a = 1: 1000000;
b = num2str(a);
b = b(~isspace(b));
m = str2num(b(1))*str2num(b(10))*str2num(b(100))*str2num(b(1000))*str2num(b(10000))*str2num(b(100000))*str2num(b(1000000));
fprintf("the output is %d\n", m)