function swarmchart3_1()
x = [zeros(1,500) ones(1,500)];
y = ones(1,1000);
z = randn(1,1000).^2;
swarmchart3(x,y,z,5);
thumbnail_generator(gcf, 'scatter_and_bubble_charts', 'swarmchart3', true);

end