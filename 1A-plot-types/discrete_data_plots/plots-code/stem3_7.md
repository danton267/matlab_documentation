function stem3_7()
figure
theta = linspace(0,2*pi);
X = cos(theta);
Y = sin(theta);
Z = theta;
stem3(X,Y,Z,':*m');
thumbnail_generator(gcf, 'discrete_data_plots', 'stem3', true);

end