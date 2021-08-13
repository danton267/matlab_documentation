function heatmap_4()
cdata = [45 60 32; 43 54 76; 32 94 68; 23 95 58];
h = heatmap(cdata);
thumbnail_generator(gcf, 'data_distribution_plots', 'heatmap', false);

end