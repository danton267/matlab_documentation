function fcontour_4()
f = @(x,y) exp(-(x/3).^2-(y/3).^2) + exp(-(x+2).^2-(y+2).^2);
fc = fcontour(f);
thumbnail_generator(gcf, 'contour_plots', 'fcontour', false);

fc.LineWidth = 1;
fc.LineStyle = '--';
fc.LevelList = [1 0.9 0.8 0.2 0.1];
colorbar;
end