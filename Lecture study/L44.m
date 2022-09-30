syms x y z;
f = x + y + z == 6
f1 = 2*x - 5*y + 4*z == 4
f2 = 3*y + z == 9
f3 = 4*x^4 + 3*x^2 + 9
p = sym2poly(f3)