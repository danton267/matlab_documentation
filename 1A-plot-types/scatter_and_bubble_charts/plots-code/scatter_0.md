function scatter_0()
x = linspace(0,3*pi,200);
y = cos(x) + rand(1,200);  
scatter(x,y);
thumbnail_generator(gcf, 'scatter_and_bubble_charts', 'scatter', false);

end