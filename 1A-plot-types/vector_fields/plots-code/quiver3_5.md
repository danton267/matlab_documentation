function quiver3_5()
[X,Y] = meshgrid(-3:0.5:3,-3:0.5:3);
Z = 0.2*(Y.^2 - X.^2);
[U,V,W] = surfnorm(Z);

q = quiver3(X,Y,Z,U,V,W);
axis equal
q.ShowArrowHead = 'off';
q.Marker = '.';
thumbnail_generator(gcf, 'vector_fields', 'quiver3', true);

end