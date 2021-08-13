function histogram2_6()
x = randn(1000,1);
y = randn(1000,1);
h = histogram2(x,y,'Normalization','probability');
thumbnail_generator(gcf, 'data_distribution_plots', 'histogram2', false);

S = sum(h.Values(:));
end