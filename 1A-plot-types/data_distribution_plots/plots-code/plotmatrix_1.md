function plotmatrix_1()
X = randn(50,3);  
plotmatrix(X);
thumbnail_generator(gcf, 'data_distribution_plots', 'plotmatrix', false);

end