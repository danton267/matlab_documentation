function plot_8()
t = 0:seconds(30):minutes(3);
y = rand(1,7);

plot(t,y,'DurationTickFormat','mm:ss');
thumbnail_generator(gcf, 'line_plots', 'plot', false);

end