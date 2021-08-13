function pie_5()
y2010 = [50 0 100 95];
y2011 = [65 22 97 120];
labels = {'Investments','Cash','Operations','Sales'};
t = tiledlayout(1,2,'TileSpacing','compact');

% Create pie charts
ax1 = nexttile;
pie(ax1,y2010)
title('2010')

ax2 = nexttile;
pie(ax2,y2011)
title('2011')

% Create legend
lgd = legend(labels);
lgd.Layout.Tile = 'east';
thumbnail_generator(gcf, 'data_distribution_plots', 'pie', false);

end