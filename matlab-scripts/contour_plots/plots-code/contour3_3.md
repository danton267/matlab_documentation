function contour3_3()
[X,Y,Z] = peaks;
contour3(X,Y,Z,[2 2]);
thumbnail_generator(gcf, 'contour_plots', 'contour3', true);

end