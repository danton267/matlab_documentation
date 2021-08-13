function fcontour_6()
f = @(x,y) sin(x) + cos(y);
fcontour(f,'LevelList',[-1 0 1]);
thumbnail_generator(gcf, 'contour_plots', 'fcontour', false);

end