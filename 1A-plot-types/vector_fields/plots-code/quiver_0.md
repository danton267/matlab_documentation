function quiver_0()
load('wind','x','y','u','v')
X = x(11:22,11:22,1);
Y = y(11:22,11:22,1);
U = u(11:22,11:22,1);
V = v(11:22,11:22,1);
quiver(X,Y,U,V)
axis equal;
thumbnail_generator(gcf, 'vector_fields', 'quiver', false);

end