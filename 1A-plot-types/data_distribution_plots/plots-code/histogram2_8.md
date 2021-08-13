function histogram2_8()
histogram2(randn(100,1),randn(100,1));
savefig('histogram2.fig');
close gcf;
thumbnail_generator(gcf, 'data_distribution_plots', 'histogram2', false);

h = openfig('histogram2.fig');
thumbnail_generator(gcf, 'data_distribution_plots', 'histogram2', false);

y = findobj(h,'type','histogram2');
thumbnail_generator(gcf, 'data_distribution_plots', 'histogram2', false);

end