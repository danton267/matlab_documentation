function plotmatrix_0()
X = randn(50,3);
Y = reshape(1:150,50,3);  
plotmatrix(X,Y);
thumbnail_generator(gcf, 'data_distribution_plots', 'plotmatrix', false);

end