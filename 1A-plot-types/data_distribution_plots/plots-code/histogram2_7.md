function histogram2_7()
x = randn(1000,1);
y = randn(1000,1);
h = histogram2(x,y);
thumbnail_generator(gcf, 'data_distribution_plots', 'histogram2', false);

h.FaceColor = 'flat';
h.NumBins = [10 25];
h.DisplayStyle = 'tile';
view(2);
end