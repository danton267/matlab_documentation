function semilogx_8()
x = logspace(-1,2);
y = x;
y(40) = NaN;
semilogx(x,y);
thumbnail_generator(gcf, 'line_plots', 'semilogx', false);

end