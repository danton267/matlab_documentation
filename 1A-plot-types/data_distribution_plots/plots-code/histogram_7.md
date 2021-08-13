function histogram_7()
x = randn(1000,1);
h = histogram(x);
thumbnail_generator(gcf, 'data_distribution_plots', 'histogram', false);

h.NumBins = 15;
h.BinEdges = [-3:3];
h.FaceColor = [0 0.5 0.5];
h.EdgeColor = 'r';
end