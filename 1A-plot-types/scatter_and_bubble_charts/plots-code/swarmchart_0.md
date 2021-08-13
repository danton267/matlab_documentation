function swarmchart_0()
x = [ones(1,500) 2*ones(1,500) 3*ones(1,500)];
y1 = 2 * randn(1,500);
y2 = 3 * randn(1,500) + 5;
y3 = 5 * randn(1,500) + 5;
y = [y1 y2 y3];
swarmchart(x,y);
thumbnail_generator(gcf, 'scatter_and_bubble_charts', 'swarmchart', false);

end