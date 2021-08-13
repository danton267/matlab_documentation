function quiver3_3()
[X,Y] = meshgrid(-pi/2:pi/8:pi/2,-pi/2:pi/8:pi/2);
Z = sin(X) + cos(Y);
[U,V,W] = surfnorm(Z);
quiver3(X,Y,Z,U,V,W,'r')
axis equal;
thumbnail_generator(gcf, 'vector_fields', 'quiver3', true);

end