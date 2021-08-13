function bubblechart_2()
x = 1:20;
y = rand(1,20);
sz = rand(1,20);
bubblechart(x,y,sz);
thumbnail_generator(gcf, 'scatter_and_bubble_charts', 'bubblechart', false);

bc = bubblechart(x,y,sz,'MarkerFaceAlpha',0.20);
thumbnail_generator(gcf, 'scatter_and_bubble_charts', 'bubblechart', false);

bc.MarkerEdgeColor = [0.5 0 0.5];
end