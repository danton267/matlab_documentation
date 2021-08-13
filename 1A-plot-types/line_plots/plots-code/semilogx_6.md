function semilogx_6()
tiledlayout('flow')
ax1 = nexttile;
x = logspace(-1,2);
y1 = 1./x;
semilogx(ax1,x,y1);
thumbnail_generator(gcf, 'line_plots', 'semilogx', false);

ax2 = nexttile;
y2 = x;
semilogx(ax2,x,y2);
thumbnail_generator(gcf, 'line_plots', 'semilogx', false);

end