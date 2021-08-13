function contour_0()
x = linspace(-2*pi,2*pi);
y = linspace(0,4*pi);
[X,Y] = meshgrid(x,y);
Z = sin(X)+cos(Y);
contour(X,Y,Z);
thumbnail_generator(gcf, 'contour_plots', 'contour', false);

end