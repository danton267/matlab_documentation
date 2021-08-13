function quiver3_2()
[X,Y] = meshgrid(-2:0.25:2,-1:0.2:1);
Z = X.*exp(-X.^2 - Y.^2);
[U,V,W] = surfnorm(X,Y,Z);
quiver3(X,Y,Z,U,V,W)
hold on
surf(X,Y,Z)
axis equal;
thumbnail_generator(gcf, 'vector_fields', 'quiver3', true);

end