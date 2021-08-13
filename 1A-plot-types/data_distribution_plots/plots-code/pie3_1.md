function pie3_1()
x = 1:3;
labels = {'Taxes','Expenses','Profit'};
    
figure
pie3(x,labels);
thumbnail_generator(gcf, 'data_distribution_plots', 'pie3', true);

end