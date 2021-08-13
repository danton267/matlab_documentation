function contour_4()
x = -2:0.2:2;
y = -2:0.2:3;
[X,Y] = meshgrid(x,y);
Z = X.*exp(-X.^2-Y.^2);
contour(X,Y,Z,'ShowText','on');
thumbnail_generator(gcf, 'contour_plots', 'contour', false);

end