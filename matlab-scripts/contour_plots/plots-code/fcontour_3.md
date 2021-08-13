function fcontour_3()
fcontour(@(x,y) sin(x)+cos(y))
hold on
fcontour(@(x,y) x-y)
hold off;
thumbnail_generator(gcf, 'contour_plots', 'fcontour', false);

end