function contourslice_0()
[X,Y,Z,V] = flow;
zslice = 0;
contourslice(X,Y,Z,V,[],[],zslice)
grid on;
thumbnail_generator(gcf, 'contour_plots', 'contourslice', false);

end