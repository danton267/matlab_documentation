function stem_2()
figure
X = linspace(0,2*pi,50)';
Y = cos(X);
stem(X,Y);
thumbnail_generator(gcf, 'discrete_data_plots', 'stem', false);

end