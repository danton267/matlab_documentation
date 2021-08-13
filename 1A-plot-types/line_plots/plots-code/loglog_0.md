function loglog_0()
x = logspace(-1,2);
y = 2.^x;
loglog(x,y)
grid on;
thumbnail_generator(gcf, 'line_plots', 'loglog', false);

end