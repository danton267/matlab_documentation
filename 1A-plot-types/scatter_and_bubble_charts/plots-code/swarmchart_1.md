function swarmchart_1()
x1 = ones(1,500);
x2 = 2 * ones(1,500);
x3 = 3 * ones(1,500);
y1 = 2 * randn(1,500);
y2 = [randn(1,250) randn(1,250) + 4];
y3 = 5 * randn(1,500) + 5;
swarmchart(x1,y1,5)
hold on
swarmchart(x2,y2,5)
swarmchart(x3,y3,5)
hold off;
thumbnail_generator(gcf, 'scatter_and_bubble_charts', 'swarmchart', false);

end