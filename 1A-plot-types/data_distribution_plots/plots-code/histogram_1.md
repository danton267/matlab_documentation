function histogram_1()
x = randn(1000,1);
nbins = 25;
h = histogram(x,nbins);
thumbnail_generator(gcf, 'data_distribution_plots', 'histogram', false);

counts = h.Values;
end