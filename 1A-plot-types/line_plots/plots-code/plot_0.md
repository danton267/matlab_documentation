function plot_0()
x = 0:pi/100:2*pi;
y = sin(x);
plot(x,y);
thumbnail_generator(gcf, 'line_plots', 'plot', false);

end