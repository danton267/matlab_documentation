function pie3_2()
y2010 = [50 0 100 95];
y2011 = [65 22 97 120];
labels = {'Investments','Cash','Operations','Sales'};
t = tiledlayout (2,1);
ax1 = nexttile;
pie3(ax1,y2010)
title('2010')
legend(labels)

ax2 = nexttile;
pie3(ax2,y2011)
title('2011')
legend(labels);
thumbnail_generator(gcf, 'data_distribution_plots', 'pie3', true);

end