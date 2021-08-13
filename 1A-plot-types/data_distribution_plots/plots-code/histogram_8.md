function histogram_8()
x = 2*randn(5000,1) + 5;
histogram(x,'Normalization','pdf');
thumbnail_generator(gcf, 'data_distribution_plots', 'histogram', false);

end