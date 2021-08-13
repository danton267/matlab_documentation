function swarmchart3_4()
x = [zeros(1,500) ones(1,500)];
y = randi(4,1,1000);
z = randn(1,1000).^2;
s = swarmchart3(x,y,z);
xlabel('X')
ylabel('Y');
thumbnail_generator(gcf, 'scatter_and_bubble_charts', 'swarmchart3', true);

s.XJitter = 'rand';
s.XJitterWidth = 0.5;
s.YJitter = 'randn';
s.YJitterWidth = 0.1;
end