function stem3_0()
figure
X = linspace(-pi/2,pi/2,40);
Z = cos(X);
stem3(Z);
thumbnail_generator(gcf, 'discrete_data_plots', 'stem3', true);

end