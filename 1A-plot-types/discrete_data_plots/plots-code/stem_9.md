function stem_9()
X = linspace(0,2);
Y = X.^3;
Z = exp(X).*cos(Y);
h = stem3(X,Y,Z,'filled');
thumbnail_generator(gcf, 'discrete_data_plots', 'stem', false);

h.Color = 'm';
h.MarkerFaceColor = 'y';
view(-10,35);
end