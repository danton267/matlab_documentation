function scatter_5()
theta = linspace(0,2*pi,300);
x = sin(theta) + 0.75*rand(1,300);
y = cos(theta) + 0.75*rand(1,300);  
sz = 40;
scatter(x,y,sz,'MarkerEdgeColor',[0 .5 .5],...
              'MarkerFaceColor',[0 .7 .7],...
              'LineWidth',1.5);
thumbnail_generator(gcf, 'scatter_and_bubble_charts', 'scatter', false);

end