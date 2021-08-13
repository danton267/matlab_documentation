function scatter3_3()
z = linspace(0,4*pi,250);
x = 2*cos(z) + rand(1,250);
y = 2*sin(z) + rand(1,250);
scatter3(x,y,z,'filled')
view(-30,10);
thumbnail_generator(gcf, 'scatter_and_bubble_charts', 'scatter3', true);

end