function histogram_2()
X = randn(1000,1);
h = histogram(X);
thumbnail_generator(gcf, 'data_distribution_plots', 'histogram', false);

Nbins = morebins(h);
Nbins = morebins(h);
h.NumBins = 31;
end