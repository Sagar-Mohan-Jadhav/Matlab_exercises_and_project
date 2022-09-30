a = input("Enter a number ");
l= 1:a-1;
l1 = rem(l, 3) == 0;
l2 = rem(l, 5) == 0;
l3= or(l1, l2)
s= sum(l.*l3)