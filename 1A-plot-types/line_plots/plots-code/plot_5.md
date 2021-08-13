function plot_5()
x = linspace(0,10);
y = sin(x);
plot(x,y,'-o','MarkerIndices',1:5:length(y));
thumbnail_generator(gcf, 'line_plots', 'plot', false);

end