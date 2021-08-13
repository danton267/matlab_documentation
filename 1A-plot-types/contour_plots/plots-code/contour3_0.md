function contour3_0()
[X,Y,Z] = sphere(50);
contour3(X,Y,Z);
thumbnail_generator(gcf, 'contour_plots', 'contour3', true);

end