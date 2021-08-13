function stairs_4()
x1 = linspace(0,2*pi)';
x2 = linspace(0,pi)';
X = [x1,x2];
Y = [sin(5*x1),exp(x2).*sin(5*x2)];

figure
stairs(X,Y);
thumbnail_generator(gcf, 'line_plots', 'stairs', false);

end