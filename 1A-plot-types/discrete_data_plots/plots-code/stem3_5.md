function stem3_5()
X = linspace(-pi,pi,40);
Z = cos(X);
stem3(Z,'filled');
thumbnail_generator(gcf, 'discrete_data_plots', 'stem3', true);

end