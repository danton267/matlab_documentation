function quiver_3()
[X,Y] = meshgrid(-pi:pi/8:pi,-pi:pi/8:pi);
U = sin(Y);
V = cos(X);
quiver(X,Y,U,V,'r');
thumbnail_generator(gcf, 'vector_fields', 'quiver', false);

end