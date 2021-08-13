function histogram2_5()
x = randn(1000,1);
y = randn(1000,1);
Xedges = [-Inf -2:0.4:2 Inf];
Yedges = [-Inf -2:0.4:2 Inf];
h = histogram2(x,y,Xedges,Yedges);
thumbnail_generator(gcf, 'data_distribution_plots', 'histogram2', false);

h.Normalization = 'countdensity';
end