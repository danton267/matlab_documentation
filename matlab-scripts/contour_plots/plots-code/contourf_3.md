function contourf_3()
[X,Y,Z] = peaks;
contourf(X,Y,Z,[2 2]);
thumbnail_generator(gcf, 'contour_plots', 'contourf', false);

end