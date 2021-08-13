function histogram2_2()
x = randn(1000,1);
y = randn(1000,1);
h = histogram2(x,y);
thumbnail_generator(gcf, 'data_distribution_plots', 'histogram2', false);

nbins = morebins(h,'x');
nbins = morebins(h,'x');
nbins = fewerbins(h,'y');
nbins = fewerbins(h,'y');
h.NumBins = [20 10];
end