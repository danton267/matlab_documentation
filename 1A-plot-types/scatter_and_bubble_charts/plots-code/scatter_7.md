function scatter_7()
x = linspace(0,3*pi,200);
y = cos(x) + rand(1,200);
tiledlayout(2,1)

% Top plot
ax1 = nexttile;
scatter(ax1,x,y)

% Bottom plot
ax2 = nexttile;
scatter(ax2,x,y,'filled','d');
thumbnail_generator(gcf, 'scatter_and_bubble_charts', 'scatter', false);

end