function contour3_4()
[X,Y] = meshgrid(-2:0.0125:2);
Z = X.*exp(-X.^2-Y.^2);
[M,c] = contour3(X,Y,Z,30);
c.LineWidth = 3;
thumbnail_generator(gcf, 'contour_plots', 'contour3', true);

end