function histogram_3()
x = randn(1000,1);
edges = [-10 -2:0.25:2 10];
h = histogram(x,edges);
thumbnail_generator(gcf, 'data_distribution_plots', 'histogram', false);

h.Normalization = 'countdensity';
end