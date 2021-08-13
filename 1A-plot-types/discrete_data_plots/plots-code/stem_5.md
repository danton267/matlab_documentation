function stem_5()
X = linspace(0,10,20)';
Y = (exp(0.25*X));
stem(X,Y,'filled');
thumbnail_generator(gcf, 'discrete_data_plots', 'stem', false);

end