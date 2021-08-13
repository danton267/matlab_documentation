function quiver_4()
[X,Y] = meshgrid(0:pi/8:pi,-pi:pi/8:pi);
U1 = sin(X);
V1 = cos(Y);
U2 = sin(Y);
V2 = cos(X); ;
tiledlayout(1,2)

ax1 = nexttile;
quiver(ax1,X,Y,U1,V1)
axis equal
title(ax1,'Left Plot')

ax2 = nexttile;
quiver(ax2,X,Y,U2,V2)
axis equal
title(ax2,'Right Plot');
thumbnail_generator(gcf, 'vector_fields', 'quiver', false);

end