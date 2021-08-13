function plot_10()
x = linspace(-2*pi,2*pi);
y1 = sin(x);
y2 = cos(x);
p = plot(x,y1,x,y2);
thumbnail_generator(gcf, 'line_plots', 'plot', false);

p(1).LineWidth = 2;
p(2).Marker = '*';
end