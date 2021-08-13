function fplot_3()
fplot(@(x) sin(x+pi/5),'Linewidth',2);
hold on
fplot(@(x) sin(x-pi/5),'--or');
fplot(@(x) sin(x),'-.*c')
hold off;
thumbnail_generator(gcf, 'line_plots', 'fplot', false);

end