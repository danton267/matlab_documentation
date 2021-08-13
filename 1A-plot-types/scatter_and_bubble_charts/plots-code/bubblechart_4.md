function bubblechart_4()
x = 1:20;
y1 = rand(1,20);
y2 = rand(1,20);
sz1 = randi([20 500],[1,20]);
sz2 = randi([20 500],[1,20]);

% Plot data in a tiled chart layout
t = tiledlayout(1,1);
nexttile
bubblechart(x,y1,sz1)
hold on
bubblechart(x,y2,sz1)
hold off;
thumbnail_generator(gcf, 'scatter_and_bubble_charts', 'bubblechart', false);

blgd = bubblelegend('Population');
lgd = legend('Springfield','Fairview');
blgd.Layout.Tile = 'east';
lgd.Layout.Tile = 'east';
end