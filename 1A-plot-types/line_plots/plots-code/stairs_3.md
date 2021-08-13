function stairs_3()
X = linspace(0,4*pi,50)';
Y = [0.5*cos(X), 2*cos(X)];

figure
stairs(X,Y);
thumbnail_generator(gcf, 'line_plots', 'stairs', false);

end