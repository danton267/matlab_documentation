function stairs_5()
X = linspace(0,4*pi,20);
Y = sin(X);

figure
stairs(Y, '-.or');
thumbnail_generator(gcf, 'line_plots', 'stairs', false);

end