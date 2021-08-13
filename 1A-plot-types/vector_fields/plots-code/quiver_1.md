function quiver_1()
[X,Y] = meshgrid(0:6,0:6);
U = 0.25*X;
V = 0.5*Y;
quiver(X,Y,U,V,0);
thumbnail_generator(gcf, 'vector_fields', 'quiver', false);

end