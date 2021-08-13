function loglog_1()
x = logspace(-1,2);
y1 = 10.^x;
y2 = 1./10.^x;
loglog(x,y1,x,y2)
grid on;
thumbnail_generator(gcf, 'line_plots', 'loglog', false);

end