function fcontour_0()
f = @(x,y) sin(x) + cos(y);
fcontour(f);
thumbnail_generator(gcf, 'contour_plots', 'fcontour', false);

end