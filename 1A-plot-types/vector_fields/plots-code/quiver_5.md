function quiver_5()
[X,Y] = meshgrid(-pi:pi/8:pi,-pi:pi/8:pi);
U = sin(Y);
V = cos(X);

q = quiver(X,Y,U,V);
q.ShowArrowHead = 'off';
q.Marker = '.';
thumbnail_generator(gcf, 'vector_fields', 'quiver', false);

end