function contour_3()
[X,Y,Z] = peaks;
contour(X,Y,Z,'--');
thumbnail_generator(gcf, 'contour_plots', 'contour', false);

end