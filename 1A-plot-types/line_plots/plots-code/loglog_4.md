function loglog_4()
x = logspace(-1,2,10000);
y1 = 5 + 3*sin(x/4);
y2 = 5 - 3*sin(x/4);
loglog(x,y1,x,y2,'--')
legend('Signal 1','Signal 2','Location','northwest');
thumbnail_generator(gcf, 'line_plots', 'loglog', false);

end