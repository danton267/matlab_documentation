function pie_6()
X = categorical({'North','South','North','East','South','West'});
explode = {'North','South'};
pie(X,explode);
thumbnail_generator(gcf, 'data_distribution_plots', 'pie', false);

explode = [0 1 1 0];
pie(X,explode);
thumbnail_generator(gcf, 'data_distribution_plots', 'pie', false);

end