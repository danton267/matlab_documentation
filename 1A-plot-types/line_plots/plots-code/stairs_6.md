function stairs_6()
X = linspace(0,4*pi,20);
Y = sin(X);

figure
stairs(Y,'LineWidth',2,'Marker','d','MarkerFaceColor','c');
thumbnail_generator(gcf, 'line_plots', 'stairs', false);

end