function stairs_1()
X = linspace(0,4*pi,50)';
Y = [0.5*cos(X), 2*cos(X)];

figure
stairs(Y);
thumbnail_generator(gcf, 'discrete_data_plots', 'stairs', false);

end