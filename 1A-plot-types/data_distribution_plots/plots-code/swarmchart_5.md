function swarmchart_5()
x1 = ones(1,500);
x2 = 2 * ones(1,500);
x = [x1 x2];
y1 = 2 * randn(1,500);
y2 = [randn(1,250) randn(1,250) + 4];
y = [y1 y2];
swarmchart(x,y,'filled','MarkerFaceAlpha',0.5,'MarkerEdgeAlpha',0.5);
thumbnail_generator(gcf, 'data_distribution_plots', 'swarmchart', false);

end