function stairs_2()
X = linspace(0,4*pi,40);
Y = sin(X);

figure
stairs(X,Y);
thumbnail_generator(gcf, 'discrete_data_plots', 'stairs', false);

end