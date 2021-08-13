function semilogx_0()
x = logspace(-1,2);
y = x;
semilogx(x,y)
grid on;
thumbnail_generator(gcf, 'line_plots', 'semilogx', false);

end