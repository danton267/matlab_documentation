function loglog_3()
x = logspace(-1,2,20);
y = 10.^x;
loglog(x,y,'s','MarkerFaceColor',[0 0.447 0.741])
grid on;
thumbnail_generator(gcf, 'line_plots', 'loglog', false);

end