function contour3_2()
[X,Y] = meshgrid(-2:0.25:2);
Z = X.*exp(-X.^2-Y.^2);
contour3(X,Y,Z,[-.2 -.1 .1 .2],'ShowText','on');
thumbnail_generator(gcf, 'contour_plots', 'contour3', true);

end