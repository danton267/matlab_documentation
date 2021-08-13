function stem_4()
figure
x1 = linspace(0,2*pi,50)';
x2 = linspace(pi,3*pi,50)';
X = [x1, x2];
Y = [cos(x1), 0.5*sin(x2)];
stem(X,Y);
thumbnail_generator(gcf, 'discrete_data_plots', 'stem', false);

end