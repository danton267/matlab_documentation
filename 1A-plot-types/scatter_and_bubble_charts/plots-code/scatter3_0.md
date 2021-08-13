function scatter3_0()
figure
[X,Y,Z] = sphere(16);
x = [0.5*X(:); 0.75*X(:); X(:)];
y = [0.5*Y(:); 0.75*Y(:); Y(:)];
z = [0.5*Z(:); 0.75*Z(:); Z(:)];
scatter3(x,y,z);
thumbnail_generator(gcf, 'scatter_and_bubble_charts', 'scatter3', true);

end