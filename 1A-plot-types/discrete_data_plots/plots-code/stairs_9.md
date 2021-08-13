function stairs_9()
X = linspace(0,4*pi,50)';
Y = [0.5*cos(X), 2*cos(X)];
[xb,yb] = stairs(X,Y);
thumbnail_generator(gcf, 'discrete_data_plots', 'stairs', false);

figure
plot(xb,yb);
end