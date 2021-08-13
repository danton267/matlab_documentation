function loglog_5()
y = [0.001 0.01 0.1 1 10 100];
loglog(y)
grid on;
thumbnail_generator(gcf, 'line_plots', 'loglog', false);

y = [0.0010    0.0100    0.1000
     0.0100    0.1000    1.0000
     0.1000    1.0000   10.0000
     1.0000   10.5000  100.0000
    10.0000  100.0000 1000.0000];

loglog(y)
grid on;
thumbnail_generator(gcf, 'line_plots', 'loglog', false);

end