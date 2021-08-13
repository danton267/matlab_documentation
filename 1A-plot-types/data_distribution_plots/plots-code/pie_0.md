function pie_0()
X = [1 3 0.5 2.5 2];
pie(X);
thumbnail_generator(gcf, 'data_distribution_plots', 'pie', false);

explode = [0 1 0 1 0];
pie(X,explode);
thumbnail_generator(gcf, 'data_distribution_plots', 'pie', false);

end