function fplot_5()
fplot(@(x) sin(x))
hold on 
fplot(@(x) cos(x))
hold off;
thumbnail_generator(gcf, 'line_plots', 'fplot', false);

end