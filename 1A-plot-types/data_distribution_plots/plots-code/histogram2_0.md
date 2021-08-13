function histogram2_0()
x = randn(10000,1);
y = randn(10000,1);
h = histogram2(x,y);
thumbnail_generator(gcf, 'data_distribution_plots', 'histogram2', false);

xlabel('x')
ylabel('y');
nXnY = h.NumBins;
end