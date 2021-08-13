function quiver3_1()
[X,Y,Z] = sphere(10);
[U,V,W] = surfnorm(X,Y,Z);
quiver3(X,Y,Z,U,V,W,0)
axis equal;
thumbnail_generator(gcf, 'vector_fields', 'quiver3', true);

figure
quiver3(X,Y,Z,U,V,W)
axis equal;
thumbnail_generator(gcf, 'vector_fields', 'quiver3', true);

end