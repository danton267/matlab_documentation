function plot_11()
r = 2;
xc = 4;
yc = 3;

theta = linspace(0,2*pi);
x = r*cos(theta) + xc;
y = r*sin(theta) + yc;
plot(x,y)
axis equal;
thumbnail_generator(gcf, 'line_plots', 'plot', false);

end