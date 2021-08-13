function scatter_6()
x = randn(1000,1);
y = randn(1000,1);
s = scatter(x,y,'filled');
thumbnail_generator(gcf, 'scatter_and_bubble_charts', 'scatter', false);

distfromzero = sqrt(x.^2 + y.^2);
s.AlphaData = distfromzero;
s.MarkerFaceAlpha = 'flat';
end