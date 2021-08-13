function compass_5()
th = linspace(0,3*pi/2,10);
r = linspace(5,20,10);
[u,v] = pol2cart(th,r);
compass(u,v);
thumbnail_generator(gcf, 'polar_plots', 'compass', false);

view(-90,90);
end