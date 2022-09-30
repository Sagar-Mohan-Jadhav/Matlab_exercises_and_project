data = [ 1 3 5 -8 0.9999991 0.99998 1.99999999 10 0 -2 ];
edge=-4:3:9;
O=discretize(data,edge)
O1=discretize(data,edge,'IncludedEdge','right')
edge1=[-10 -1 0 2 3.003 6.5 10];
O2=discretize(data,edge1,'IncludedEdge','right')
[O3, edge3]=discretize(data,4,'IncludedEdge','right')