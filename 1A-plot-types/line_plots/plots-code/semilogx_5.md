function semilogx_5()
y = [0 10 20 30 40];
semilogx(y)
grid on;
thumbnail_generator(gcf, 'line_plots', 'semilogx', false);

y = [ 0    10    20
     10    20    30
     20    30    40
     30    40    50
     40    50    60];

semilogx(y)
grid on;
thumbnail_generator(gcf, 'line_plots', 'semilogx', false);

end