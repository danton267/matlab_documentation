function fcontour_7()
f = @(x,y) sin(x).*sin(y);
tiledlayout(2,1)
nexttile
fcontour(f)
title('Default Mesh Density (71)')

nexttile
fcontour(f,'MeshDensity',200)
title('Custom Mesh Density (200)');
thumbnail_generator(gcf, 'contour_plots', 'fcontour', false);

end