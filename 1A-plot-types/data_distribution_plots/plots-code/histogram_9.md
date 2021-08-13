function histogram_9()
histogram(randn(10));
savefig('histogram.fig');
close gcf;
thumbnail_generator(gcf, 'data_distribution_plots', 'histogram', false);

h = openfig('histogram.fig');
thumbnail_generator(gcf, 'data_distribution_plots', 'histogram', false);

y = findobj(h,'type','histogram');
thumbnail_generator(gcf, 'data_distribution_plots', 'histogram', false);

end