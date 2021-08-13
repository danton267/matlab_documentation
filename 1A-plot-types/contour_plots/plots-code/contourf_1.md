function contourf_1()
x = linspace(-2*pi,2*pi);
y = linspace(0,4*pi);
[X,Y] = meshgrid(x,y);
Z = sin(X) + cos(Y);
contourf(X,Y,Z,10);
thumbnail_generator(gcf, 'contour_plots', 'contourf', false);

end