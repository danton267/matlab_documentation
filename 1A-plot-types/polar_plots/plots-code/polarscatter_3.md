function polarscatter_3()
th = linspace(0,360,50);
r = 0.005*th/10;
th_radians = deg2rad(th);
polarscatter(th_radians,r);
thumbnail_generator(gcf, 'polar_plots', 'polarscatter', false);

end