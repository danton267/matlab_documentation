function histogram_5()
x = randn(1000,1);
h = histogram(x,'Normalization','probability');
thumbnail_generator(gcf, 'data_distribution_plots', 'histogram', false);

S = sum(h.Values);
end