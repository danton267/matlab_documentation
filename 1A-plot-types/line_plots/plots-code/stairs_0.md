function stairs_0()
X = linspace(0,4*pi,40);
Y = sin(X);

figure
stairs(Y);
thumbnail_generator(gcf, 'line_plots', 'stairs', false);

end