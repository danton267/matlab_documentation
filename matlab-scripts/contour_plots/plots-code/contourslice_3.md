function contourslice_3()
[X,Y,Z] = meshgrid(-5:0.2:5);
V = X.*exp(-X.^2-Y.^2-Z.^2);

[xsurf,ysurf] = meshgrid(-2:0.2:2);
zsurf = xsurf.^2-ysurf.^2;
contourslice(X,Y,Z,V,xsurf,ysurf,zsurf,20)
view(3)
grid on;
thumbnail_generator(gcf, 'contour_plots', 'contourslice', false);

end