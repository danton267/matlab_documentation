function scatter3_7()
[X,Y,Z] = sphere(16);
x = [0.5*X(:); 0.75*X(:); X(:)];
y = [0.5*Y(:); 0.75*Y(:); Y(:)];
z = [0.5*Z(:); 0.75*Z(:); Z(:)];
S = repmat([70,50,20],numel(X),1);
C = repmat([1,2,3],numel(X),1);
s = S(:);
c = C(:);
h = scatter3(x,y,z,s,c);
thumbnail_generator(gcf, 'scatter_and_bubble_charts', 'scatter3', true);

h.MarkerFaceColor = [0 0.5 0.5];
end