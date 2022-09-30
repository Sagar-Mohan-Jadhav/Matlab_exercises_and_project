x = 1: 10000;
y = tan(x);
h = animatedline;

for i = x
    addpoints(h,i,y(i));
    drawnow;
end