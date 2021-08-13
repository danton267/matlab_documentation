function area_5()
tiledlayout('flow')
ax1 = nexttile;
Y1 = [3 6; 1 5; 7 2; 5 9];
area(ax1,Y1);
thumbnail_generator(gcf, 'line_plots', 'area', false);

ax2 = nexttile;
Y2 = [4 2 11; 5 6 0; 1 7 2; 9 5 9];
area(ax2,Y2);
thumbnail_generator(gcf, 'line_plots', 'area', false);

end