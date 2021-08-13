function stem3_3()
figure
X = linspace(-5,5,60);
Y = cos(X);
Z = X.^2;
stem3(X,Y,Z)
view(-8,30);
thumbnail_generator(gcf, 'discrete_data_plots', 'stem3', true);

end