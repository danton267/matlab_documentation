function fcontour_2()
f = @(x,y) x.^2 - y.^2;
fcontour(f,'--','LineWidth',2);
thumbnail_generator(gcf, 'contour_plots', 'fcontour', false);

end