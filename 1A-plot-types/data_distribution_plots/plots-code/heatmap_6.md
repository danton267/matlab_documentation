function heatmap_6()
T = readtable('outages.csv');
T(1:5,:);
h = heatmap(T,'Region','Cause');
thumbnail_generator(gcf, 'data_distribution_plots', 'heatmap', false);

h.ColorScaling = 'scaledcolumns';
h.ColorScaling = 'scaledrows';
end