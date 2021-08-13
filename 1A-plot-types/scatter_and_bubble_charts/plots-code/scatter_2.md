function scatter_2()
x = linspace(0,3*pi,200);
y = cos(x) + rand(1,200);
c = linspace(1,10,length(x));
scatter(x,y,[],c);
thumbnail_generator(gcf, 'scatter_and_bubble_charts', 'scatter', false);

end