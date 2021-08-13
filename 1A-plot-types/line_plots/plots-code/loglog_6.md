function loglog_6()
tiledlayout('flow')
ax1 = nexttile;
x = logspace(-1,2);
y1 = 10.^x;
loglog(ax1,x,y1);
thumbnail_generator(gcf, 'line_plots', 'loglog', false);

ax2 = nexttile;
y2 = 1./10.^x;
loglog(ax2,x,y2);
thumbnail_generator(gcf, 'line_plots', 'loglog', false);

end