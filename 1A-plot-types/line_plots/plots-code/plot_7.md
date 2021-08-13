function plot_7()
x = linspace(0,10,150);
y = cos(5*x);
figure
plot(x,y,'Color',[0,0.7,0.9])

title('2-D Line Plot')
xlabel('x')
ylabel('cos(5x)');
thumbnail_generator(gcf, 'line_plots', 'plot', false);

end