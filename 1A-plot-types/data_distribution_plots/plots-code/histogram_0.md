function histogram_0()
x = randn(10000,1);
h = histogram(x);
thumbnail_generator(gcf, 'data_distribution_plots', 'histogram', false);

nbins = h.NumBins;
end