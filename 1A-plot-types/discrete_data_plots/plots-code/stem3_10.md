function stem3_10()
X = linspace(0,2);
Y = X.^3;
Z = exp(X).*cos(Y);
h = stem3(X,Y,Z,'filled');
thumbnail_generator(gcf, 'discrete_data_plots', 'stem3', true);

h.Color = 'm';
h.MarkerFaceColor = 'y';
view(-10,35);
end