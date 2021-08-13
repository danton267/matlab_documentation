function semilogx_7()
x = logspace(-1,2);
y1 = x;
y2 = -x;
slg = semilogx(x,y1,x,y2);
thumbnail_generator(gcf, 'line_plots', 'semilogx', false);

slg(1).LineWidth = 3;
slg(2).Color = [0.4 0 1];
end