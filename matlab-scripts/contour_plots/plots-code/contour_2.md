function contour_2()
[X,Y,Z] = peaks;
v = [1,1];
contour(X,Y,Z,v);
thumbnail_generator(gcf, 'contour_plots', 'contour', false);

end