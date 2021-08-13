function pie_2()
X = 1:3;
labels = {'Taxes','Expenses','Profit'};
p = pie(X,labels);
thumbnail_generator(gcf, 'data_distribution_plots', 'pie', false);

t = p(6);
t.BackgroundColor = 'cyan';
t.EdgeColor = 'red';
t.FontSize = 14;
end