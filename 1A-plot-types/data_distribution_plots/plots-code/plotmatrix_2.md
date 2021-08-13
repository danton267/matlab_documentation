function plotmatrix_2()
X = randn(50,3);  
plotmatrix(X,'*r');
thumbnail_generator(gcf, 'data_distribution_plots', 'plotmatrix', false);

end