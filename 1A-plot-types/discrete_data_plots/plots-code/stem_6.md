function stem_6()
figure
X = linspace(0,2*pi,50)';
Y = (exp(X).*sin(X));
stem(X,Y,':diamondr');
thumbnail_generator(gcf, 'discrete_data_plots', 'stem', false);

end