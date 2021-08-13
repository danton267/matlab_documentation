function stem_11()
X = linspace(0,2*pi,50)';
Y = (exp(0.3*X).*sin(3*X));
stem(X,Y,'BaseValue',2);
thumbnail_generator(gcf, 'discrete_data_plots', 'stem', false);

end