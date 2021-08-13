function histogram2_1()
x = randn(1000,1);
y = randn(1000,1);
nbins = 5;
h = histogram2(x,y,nbins);
thumbnail_generator(gcf, 'data_distribution_plots', 'histogram2', false);

counts = h.Values;
end