function contourslice_1()
[X,Y,Z] = meshgrid(-2:.2:2);
V = X.*exp(-X.^2-Y.^2-Z.^2);

xslice = [-1.2,0.8,2];   
yslice = [];
zslice = [];
contourslice(X,Y,Z,V,xslice,yslice,zslice)
view(3)
grid on;
thumbnail_generator(gcf, 'contour_plots', 'contourslice', false);

end