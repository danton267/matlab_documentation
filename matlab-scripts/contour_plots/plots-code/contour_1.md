function contour_1()
[X,Y,Z] = peaks;
contour(X,Y,Z,20);
thumbnail_generator(gcf, 'contour_plots', 'contour', false);

end