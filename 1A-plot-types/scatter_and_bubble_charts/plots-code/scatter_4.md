function scatter_4()
theta = linspace(0,2*pi,150);
x = sin(theta) + 0.75*rand(1,150);
y = cos(theta) + 0.75*rand(1,150);  
sz = 140;
scatter(x,y,sz,'d');
thumbnail_generator(gcf, 'scatter_and_bubble_charts', 'scatter', false);

end