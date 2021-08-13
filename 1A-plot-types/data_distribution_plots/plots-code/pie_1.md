function pie_1()
X = 1:3;
labels = {'Taxes','Expenses','Profit'};
pie(X,labels);
thumbnail_generator(gcf, 'data_distribution_plots', 'pie', false);

end