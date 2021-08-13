function semilogx_1()
x = logspace(-1,2);
y1 = x;
y2 = -x;
semilogx(x,y1,x,y2)
grid on;
thumbnail_generator(gcf, 'line_plots', 'semilogx', false);

end