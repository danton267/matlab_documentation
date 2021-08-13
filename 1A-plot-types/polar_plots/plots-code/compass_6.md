function compass_6()
u = [7 5 -2 -5 8];
tiledlayout(1,2)

% Left plot
ax1 = nexttile;
v1 = [3 7 5 -4 -6];
compass(ax1,u,v1)
title(ax1,'Left Plot')

% Right plot
ax2 = nexttile;
v2 = [-3 -4 -5 6 6];
compass(ax2,u,v2)
title(ax2,'Right Plot');
thumbnail_generator(gcf, 'polar_plots', 'compass', false);

end