function stem_1()
figure
X = linspace(0,2*pi,50)';
Y = [cos(X), 0.5*sin(X)];
stem(Y);
thumbnail_generator(gcf, 'discrete_data_plots', 'stem', false);

end