function pie_7()
X = categorical({'North','South','North','East','South','West'});
explode = {};
labels = {'E','N','S','W'};
pie(X,explode,labels);
thumbnail_generator(gcf, 'data_distribution_plots', 'pie', false);

X = categorical({'North','South','North','East','South','West'});
explode = {'West'};
labels = {'E','N','S','W'};
pie(X,explode,labels);
thumbnail_generator(gcf, 'data_distribution_plots', 'pie', false);

end