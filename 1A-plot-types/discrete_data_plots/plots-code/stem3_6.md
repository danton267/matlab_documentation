function stem3_6()
figure
X = linspace(-pi,pi,40);
Z = cos(X);
stem3(Z,'--*m');
thumbnail_generator(gcf, 'discrete_data_plots', 'stem3', true);

end