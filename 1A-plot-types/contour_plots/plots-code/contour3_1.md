function contour3_1()
[X,Y] = meshgrid(-5:0.25:5);
Z = X.^2 + Y.^2;
contour3(Z);
thumbnail_generator(gcf, 'contour_plots', 'contour3', true);

contour3(X,Y,Z,50);
thumbnail_generator(gcf, 'contour_plots', 'contour3', true);

end