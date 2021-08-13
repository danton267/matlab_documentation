function contourf_2()
[X,Y,Z] = peaks(50);
contourf(X,Y,Z,[2 3],'ShowText','on');
thumbnail_generator(gcf, 'contour_plots', 'contourf', false);

end