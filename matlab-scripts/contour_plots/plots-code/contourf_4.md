function contourf_4()
[X,Y,Z] = peaks;
contourf(X,Y,Z,'--');
thumbnail_generator(gcf, 'contour_plots', 'contourf', false);

end