function barh_9()
x = [1980 1990 2000];
y = [8 15 25; 30 35 40; 50 55 62];

% Grouped
tiledlayout(2,1);
ax1 = nexttile;
barh(ax1,x,y)
title('Grouped Style')

% Stacked
ax2 = nexttile;
barh(ax2,x,y,'stacked')
title('Stacked Style');
thumbnail_generator(gcf, 'discrete_data_plots', 'barh', false);

end