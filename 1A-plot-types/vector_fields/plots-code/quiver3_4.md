function quiver3_4()
[X,Y] = meshgrid(-2:0.25:0,-2:0.25:0);
Z1 = -0.5*(X.^2 + Y.^2);
[U1,V1,W1] = surfnorm(Z1);
Z2 = -X.*Y;
[U2,V2,W2] = surfnorm(Z2);

tiledlayout(1,2)

% Left plot
ax1 = nexttile;
quiver3(ax1,X,Y,Z1,U1,V1,W1)
axis equal
title(ax1,'Left Plot')

% Right plot
ax2 = nexttile;
quiver3(ax2,X,Y,Z2,U2,V2,W2)
axis equal
title(ax2,'Right Plot');
thumbnail_generator(gcf, 'vector_fields', 'quiver3', true);

end